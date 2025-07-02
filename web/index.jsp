<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Project Group 6</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
        }
        .team {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }
        .member {
            width: 180px;
            background-color: #f9f9f9;
            border-radius: 8px;
            text-align: center;
            padding: 10px;
            box-shadow: 0 0 5px rgba(0,0,0,0.1);
        }
        .member img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 10px;
        }
        .member-name {
            font-weight: bold;
            margin-bottom: 5px;
        }
        .member a {
            display: inline-block;
            padding: 6px 12px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Project Group 6</h1>

        <div class="team">
            <div class="member">
                <img src="Images/petet-pp.jpg" alt="Vina">
                <div class="member-name">Vina</div>
                <a href="vina.messageboard.jsp">View Board</a>
            </div>

            <div class="member">
                <img src="Images/shakyla-pp.jpg" alt="Shakyla">
                <div class="member-name">Shakyla</div>
                <a href="shakyla.messageboard.jsp">View Board</a>
            </div>

            <div class="member">
                <img src="Images/yanti-pp.jpg" alt="Indri">
                <div class="member-name">Indri</div>
                <a href="indri.messageboard.jsp">View Board</a>
            </div>

            <div class="member">
                <img src="Images/sarah-pp.jpg" alt="Sarah">
                <div class="member-name">Sarah</div>
                <a href="sarah.messageboard.jsp">View Board</a>
