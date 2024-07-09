<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Connect Phantom Wallet</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/web3.js/1.3.0/web3.min.js"></script>
</head>
<body>
	<button id="connectButton">Connect Phantom Wallet</button>
	<script>
        document.getElementById('connectButton').addEventListener('click', async () => {
            if (window.solana && window.solana.isPhantom) {
                try {
                    // Kết nối ví Phantom
                    const response = await window.solana.connect();
                    console.log('Connected to Phantom Wallet:', response.publicKey.toString());

                    // Gửi thông tin public key đến server Java
                    fetch('/connect', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify({ publicKey: response.publicKey.toString() })
                    }).then(response => response.json())
                      .then(data => console.log(data))
                      .catch(error => console.error('Error:', error));

                } catch (err) {
                    console.error('User rejected the request:', err);
                }
            } else {
                alert('Phantom Wallet not found. Please install it.');
            }
        });
    </script>
</body>
</html>
