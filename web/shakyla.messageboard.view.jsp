<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Kotak Pesan</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f0f4f8;
                margin: 0;
                padding: 0;
            }
            .container {
                max-width: 600px;
                margin: 50px auto;
                background-color: #ffffff;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 0 15px rgba(0,0,0,0.1);
            }
            h1 {
                text-align: center;
                color: #333;
            }
            .message-box {
                margin-top: 20px;
                padding: 10px;
                border-bottom: 1px solid #eee;
            }
            .pengirim {
                font-weight: bold;
                color: #0077cc;
            }
            .pesan {
                margin-left: 10px;
                color: #444;
            }
            form {
                margin-top: 30px;
                display: flex;
                flex-direction: column;
                gap: 10px;
            }
            input {
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 14px;
            }
            button {
                padding: 10px;
                background-color: #0077cc;
                color: white;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            button:hover {
                background-color: #005fa3;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Kotak Pesan</h1>

            <c:forEach items="${list}" var="row">
                <div class="message-box">
                    <span class="pengirim">${row.pengirim}</span>
                    <span class="pesan">${row.pesan}</span>
                </div>
            </c:forEach>

            <form method="post">
                <input name="pengirim" placeholder="Nama Pengirim" required>
                <input name="pesan" placeholder="Tulis pesan Anda..." required>
                <button type="submit">Kirim</button>
            </form>
        </div>
    </body>
</html>