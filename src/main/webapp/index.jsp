<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Wiki System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: #f4f4f4;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        header {
            border-bottom: 2px solid #3498db; 
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        nav ul {
            list-style: none;
            padding: 0;
        }
        nav ul li {
            display: inline;
            margin-right: 10px;
        }
        .recent-articles article {
            margin-bottom: 30px; 
            background: #f9f9f9;
            padding: 20px; 
            border-left: 4px solid #3498db; 
            transition: background 0.3s;
        }
        .recent-articles article:hover {
            background: #f0f0f0; 
        }
        .recent-articles article h3 {
            margin-top: 0;
            color: #333; 
        }
        .recent-articles article p {
            color: #666;
        }
        .recent-articles article a {
            color: #3498db;
            text-decoration: none; 
        }
        .recent-articles article a:hover {
            text-decoration: underline; 
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>Wiki Application</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="articles.jsp">Articles</a></li>
                    <li><a href="categories.jsp">Categories</a></li>
                    <li><a href="login.jsp">Admin</a></li>
                </ul>
            </nav>
        </header>
        <section class="recent-articles">
            <h2>Recent Articles</h2>
            <article> 
                <h3>Edwards scored 43 points, Jokic scored 32+9, and the Timberwolves defeated the Nuggets to lead 1-0.</h3>
                <p>Timberwolves: Edwards had 43 points, 7 rebounds and 3 assists, Towns had 20 points, 4 rebounds and 3 assists, Reed had 16 points, 4 rebounds and 3 assists. <a href="https://www.politico.com/news/magazine/2024/05/05/jim-courtovich-lobbying-trump-00155924">Read more</a></p>
            </article>
            <article>
                <h3>An 18-year-old Maryland Chinese man was arrested for promoting attacks on elementary schools. He wanted to be a serial killer.</h3>
                <p>Recently, the US police said that an 18-year-old Maryland youth (Andrea Ye), a Chinese-American named Alex in English, wrote a 129-page manifesto detailing a plan to attack an elementary school. He wrote that he wanted to be famous. Alex had already He was arrested Wednesday. <a href="ants.html">Read more</a></p>
            </article>
            <article>
                <h3>Han Zhenxiang, academician of the Chinese Academy of Sciences and former president of Zhejiang University, passed away</h3>
                <p>Professor Han Zhenxiang, a member of the Communist Party of China, an academician of the Chinese Academy of Sciences, a well-known expert on power systems and automation in my country, and the former president of Zhejiang University, died in Hangzhou at 8:52 am on May 4, 2024 due to ineffective treatment. He was 94 years old. <a href="oop.html">Read more</a></p>
            </article>
        </section>
    </div>
</body>
</html>
