<!-- Bootstrap CSS (you can replace this with your preferred version or CDN link) -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    /* Custom styles go here */

    body {
      font-family: 'Arial', sans-serif;
      background-color: #f8f9fa;
      margin: 0;
      padding: 0;
    }

    header {
      background-color: #007bff;
      color: #fff;
      padding: 15px;
      text-align: center;
    }

    .container {
      margin-top: 20px;
    }

    .topics-list, .categories-list {
      background-color: #fff;
      padding: 15px;
      margin-bottom: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    /* Responsive styles */
    @media (max-width: 767px) {
      .topics-list, .categories-list {
        padding: 10px;
      }
    }
	
	
	
	
		body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

.forum-container {
    max-width: 1200px;
    margin: 20px auto;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.recent-topics,
.forum-categories {
    width: 100%;
    margin-bottom: 20px;
}

.topic-list,
.category-list {
    list-style: none;
    padding: 0;
}

.topic-item,
.category-item {
    border: 1px solid #ddd;
    margin-bottom: 10px;
    padding: 10px;
}

.topic-info {
    font-size: 14px;
    color: #888;
}

a {
    text-decoration: none;
    color: #333;
}

@media screen and (min-width: 768px) {
    .recent-topics,
    .forum-categories {
        width: 48%;
    }
}


 /* Reset default margin and padding for better consistency */
        body, h1, h2, h3, p, ul, li {
            margin: 0;
            padding: 0;
        }

        /* Set a base font size and family */
        body {
            font-family: Arial, sans-serif;
            font-size: 14px;
        }

        /* Style the forum section */
        section {
            margin: 20px;
            padding: 20px;
            border: 1px solid #ccc;
        }

        /* Style forum categories */
        .cForumTitle {
            background-color: #f0f0f0;
            padding: 10px;
            margin-bottom: 10px;
        }

        /* Style forum rows */
        .cForumRow {
            background-color: #fff;
            border: 1px solid #ddd;
            margin-bottom: 10px;
        }

        /* Style topic items */
        .ipsDataItem {
            padding: 10px;
            border-bottom: 1px solid #eee;
        }

        /* Style user photos */
        .ipsUserPhoto_tiny {
            border-radius: 50%;
            margin-right: 10px;
        }

        /* Style last poster information */
        .ipsDataItem_lastPoster {
            list-style: none;
        }

        /* Style links */
        a {
            color: #007BFF;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Style time element */
        time {
            color: #6c757d;
        }

        /* Style the categories toggle icon */
        .ipsJS_show::before {
            content: '▶';
            margin-right: 5px;
        }

        /* Style the zebra striping for forum rows */
        .zebraStriped .ipsDataItem:nth-child(even) {
            background-color: #f9f9f9;
        }
  </style>