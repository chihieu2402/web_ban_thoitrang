
        document.querySelectorAll('.ratingA input').forEach(radio => {
            radio.addEventListener('change', () => {
                const selectedValue = document.querySelector('.ratingA input:checked').value;
                console.log('Selected Rating:', selectedValue);
                // Send the selected value to the server using AJAX or form submission
                const form = document.getElementById('ratingForm');
                const formData = new FormData(form);
                formData.append('rating', selectedValue);
                fetch('/submitRating', {
                    method: 'POST',
                    body: formData
                }).then(response => response.text()).then(data => {
                    console.log(data); // Handle response from the server
                });
            });
        });
