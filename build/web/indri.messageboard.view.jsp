<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Message Board</title>
        <!-- Bootstrap 5 CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome untuk ikon -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <style>
            :root {
                --primary-color: #4e73df;
                --secondary-color: #f8f9fc;
                --accent-color: #2e59d9;
                --text-color: #5a5c69;
            }
            
            body {
                background-color: var(--secondary-color);
                color: var(--text-color);
                font-family: 'Nunito', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            }
            
            .message-board-container {
                max-width: 800px;
                margin: 2rem auto;
                padding: 2rem;
                background: white;
                border-radius: 0.35rem;
                box-shadow: 0 0.15rem 1.75rem 0 rgba(58, 59, 69, 0.15);
                display: flex;
                flex-direction: column;
                height: 90vh;
            }
            
            .header {
                text-align: center;
                margin-bottom: 1rem;
                padding-bottom: 1rem;
                border-bottom: 1px solid #e3e6f0;
                flex-shrink: 0;
            }
            
            .header h1 {
                color: var(--primary-color);
                font-weight: 700;
            }
            
            .messages-container {
                flex-grow: 1;
                overflow-y: auto;
                margin-bottom: 1rem;
                padding-right: 0.5rem;
            }
            
            /* Custom scrollbar */
            .messages-container::-webkit-scrollbar {
                width: 8px;
            }
            
            .messages-container::-webkit-scrollbar-track {
                background: #f1f1f1;
                border-radius: 10px;
            }
            
            .messages-container::-webkit-scrollbar-thumb {
                background: var(--primary-color);
                border-radius: 10px;
            }
            
            .messages-container::-webkit-scrollbar-thumb:hover {
                background: var(--accent-color);
            }
            
            .message-card {
                border-left: 0.25rem solid var(--primary-color);
                margin-bottom: 1rem;
                transition: transform 0.2s;
            }
            
            .message-card:hover {
                transform: translateX(5px);
            }
            
            .message-header {
                display: flex;
                align-items: center;
                margin-bottom: 0.5rem;
            }
            
            .user-avatar {
                width: 40px;
                height: 40px;
                border-radius: 50%;
                margin-right: 10px;
                object-fit: cover;
                border: 2px solid var(--primary-color);
            }
            
            .message-content {
                padding: 1rem;
                background-color: #f8f9fc;
                border-radius: 0 0.35rem 0.35rem 0;
            }
            
            .sender-name {
                font-weight: 600;
                color: var(--primary-color);
                margin-bottom: 0;
            }
            
            .message-time {
                font-size: 0.8rem;
                color: #858796;
                margin-left: auto;
            }
            
            .message-text {
                margin-bottom: 0;
                word-wrap: break-word;
            }
            
            .form-container {
                background-color: white;
                padding: 1.5rem;
                border-radius: 0.35rem;
                box-shadow: 0 0.15rem 1.75rem 0 rgba(58, 59, 69, 0.1);
                flex-shrink: 0;
            }
            
            .btn-primary {
                background-color: var(--primary-color);
                border-color: var(--primary-color);
            }
            
            .btn-primary:hover {
                background-color: var(--accent-color);
                border-color: var(--accent-color);
            }
            
            .form-control:focus {
                border-color: var(--primary-color);
                box-shadow: 0 0 0 0.2rem rgba(78, 115, 223, 0.25);
            }
            
            /* Animasi untuk pesan baru */
            @keyframes fadeIn {
                from { opacity: 0; transform: translateY(10px); }
                to { opacity: 1; transform: translateY(0); }
            }
            
            .message-card:last-child {
                animation: fadeIn 0.3s ease-out;
            }
        </style>
    </head>
    <body>
        <div class="message-board-container">
            <div class="header">
                <h1><i class="fas fa-comments me-2"></i>Message Board</h1>
                <p class="text-muted">Bagikan pesan Anda dengan tim</p>
            </div>
            
            <!-- Daftar Pesan dengan Scroll -->
            <div class="messages-container">
                <div class="messages">
                    <c:forEach items="${list}" var="row">
                        <div class="message-card">
                            <div class="message-content">
                                <div class="message-header">
                                    <img src="Images/shakyla-pp.jpg?name=${row.pengirim}&background=4e73df&color=fff" 
                                         alt="${row.pengirim}" class="user-avatar">
                                    <span class="sender-name">${row.pengirim}</span>
                                    <span class="message-time"><i class="far fa-clock me-1"></i>Just now</span>
                                </div>
                                <p class="message-text">${row.pesan}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            
            <!-- Form Pesan -->
            <div class="form-container">
                <form method="post">
                    <div class="mb-3">
                        <label for="pengirim" class="form-label"><i class="fas fa-user me-1"></i>Nama Pengirim</label>
                        <input type="text" class="form-control" id="pengirim" name="pengirim" placeholder="Masukkan nama Anda" required>
                    </div>
                    <div class="mb-3">
                        <label for="pesan" class="form-label"><i class="fas fa-comment me-1"></i>Pesan</label>
                        <textarea class="form-control" id="pesan" name="pesan" rows="3" placeholder="Tulis pesan Anda di sini..." required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">
                        <i class="fas fa-paper-plane me-1"></i> Kirim Pesan
                    </button>
                </form>
            </div>
        </div>

        <!-- Bootstrap JS Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        
        <!-- Script untuk auto-scroll ke bawah -->
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                const messagesContainer = document.querySelector('.messages-container');
                messagesContainer.scrollTop = messagesContainer.scrollHeight;
            });
        </script>
    </body>
</html>
