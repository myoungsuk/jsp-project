<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login & Register</title>
    <link rel="stylesheet" type="text/css" href="../css/project.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">

<div class="container mt-5">

    <!-- Page Header (top.jsp and top2.jsp) -->



    <div class="text-center mb-5">
			<jsp:include page="top.jsp"></jsp:include>
		<div id="top2">
			<jsp:include page="top2.jsp"></jsp:include>
		</div>
        <h1>Login & Register</h1>
        <hr class="divider">
    </div>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <% if (session.getAttribute("id") == null) { %>

            <!-- Login Form -->
            <div class="card mb-4">
                <div class="card-header bg-primary text-white">Login</div>
                <div class="card-body">
                    <form action="login.jsp">
                        <div class="mb-3">
                            <label class="form-label">ID</label>
                            <input type="text" name="id" class="form-control"
                                   placeholder="Enter your ID">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" name="pw" class="form-control"
                                   placeholder="Enter your password">
                        </div>
                        <div class="d-grid gap-2">
                            <button type="submit" class="btn btn-primary">Login</button>
                        </div>
                    </form>
                </div>
            </div>

            <!-- Register Form -->
            <div class="card">
                <div class="card-header bg-secondary text-white">Register</div>
                <div class="card-body">
                    <form action="member2.jsp">
                        <div class="mb-3">
                            <label class="form-label">ID</label>
                            <input type="text" name="id" class="form-control"
                                   placeholder="Enter your ID">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" name="pw" class="form-control"
                                   placeholder="Enter your password">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" name="name" class="form-control"
                                   placeholder="Enter your name">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Phone</label>
                            <input type="text" name="tel" class="form-control"
                                   placeholder="Enter your phone number">
                        </div>
                        <div class="d-grid gap-2">
                            <button type="submit" class="btn btn-secondary">Register</button>
                        </div>
                    </form>
                </div>
            </div>

            <% } else { %>
            <!-- User Information -->
            <div class="text-center mt-5">
                <h2>Welcome, <%= session.getAttribute("id") %>!</h2>
                <a href="logout.jsp" class="btn btn-info mt-3">Logout</a>
            </div>

            <% } %>
        </div>
    </div>
</div>

</body>
</html>
