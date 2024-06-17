package com.fpoly.controller;

import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.property.TextAlignment;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.ByteArrayOutputStream;

@RestController
public class PdfController {

    @PostMapping("/api/pdf/create")
    public ResponseEntity<byte[]> createPdf(
            @RequestParam("name") String name,
            @RequestParam("phone") String phone,
            @RequestParam("address") String address) {
        try (ByteArrayOutputStream baos = new ByteArrayOutputStream()) {
            PdfWriter writer = new PdfWriter(baos);
            PdfDocument pdfDoc = new PdfDocument(writer);
            Document document = new Document(pdfDoc);

            // Tạo tiêu đề
            Paragraph title = new Paragraph("Thông tin thanh toán")
                    .setTextAlignment(TextAlignment.CENTER)
                    .setFontSize(20)
                    .setBold()
                    .setFontColor(ColorConstants.BLUE);
            document.add(title);

            // Thêm thông tin khách hàng
            Paragraph customerInfo = new Paragraph()
                    .add("Họ và tên: " + name)
                    .add("\nSố điện thoại: " + phone)
                    .add("\nĐịa chỉ: " + address)
                    .setTextAlignment(TextAlignment.LEFT)
                    .setMarginTop(20);
            document.add(customerInfo);

            // Thêm dấu ngăn ngắn
            Paragraph divider = new Paragraph("---------------------------------------------------")
                    .setTextAlignment(TextAlignment.CENTER)
                    .setMarginTop(20);
            document.add(divider);

            // Thêm đoạn văn bản tổng thanh toán
            Paragraph total = new Paragraph("Tổng thanh toán: [Thêm tổng số tiền ở đây]")
                    .setTextAlignment(TextAlignment.RIGHT)
                    .setFontSize(16)
                    .setBold()
                    .setMarginTop(20);
            document.add(total);

            document.close();

            // Tạo header để tải file PDF
            HttpHeaders headers = new HttpHeaders();
            headers.add("Content-Disposition", "inline; filename=thanh_toan.pdf");

            return ResponseEntity
                    .ok()
                    .headers(headers)
                    .contentType(org.springframework.http.MediaType.APPLICATION_PDF)
                    .body(baos.toByteArray());
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }
}
