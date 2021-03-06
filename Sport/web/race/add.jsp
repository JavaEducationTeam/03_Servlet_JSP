<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- breadcrumb -->
<ol class="breadcrumb">
    <li>Adminisztr�ci�</li>
    <li>Verseny</li>
    <li class="active">Felvitel</li>
</ol>

<div class="panel panel-default">
    <div class="panel-heading">Verseny felvitele</div>
    <div class="panel-body">
        <!-- Form -->        
        <form method="post" action="${pageContext.request.contextPath}/admin/race/add">
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">Merkozes/futam neve</span>
                <input type="text" name="name" class="form-control" placeholder="Bajnoks�g neve" aria-describedby="basic-addon1">
            </div>
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">Le�r�s</span>
                <input type="text" name="desc" class="form-control" placeholder="Le�r�s" aria-describedby="basic-addon1">
            </div>

            <div class="input-group"> 
                <span class="input-group-addon" id="basic-addon1">Sport�g</span>
                <select class="form-control" id="sel1" name="sport" aria-describedby="basic-addon1">
                    <c:forEach var="item" items="${applicationScope['dataModel'].sportTypeDAO.all}">
                        <option value="${item.name}">${item.name}</option>
                    </c:forEach>
                </select>
            </div>                    
            
            <div class="input-group"> 
                <span class="input-group-addon" id="basic-addon1">Szezon</span>
                <select class="form-control" id="sel1" name="season" aria-describedby="basic-addon1">
                    <c:forEach var="item" items="${applicationScope['dataModel'].seasonDAO.all}">
                        <option value="${item.name}">${item.name}</option>
                    </c:forEach>
                </select>
            </div>                    

            <div class="input-group"> 
                <span class="input-group-addon" id="basic-addon1">Sorozat</span>
                <select class="form-control" id="sel1" name="championship" aria-describedby="basic-addon1">
                    <c:forEach var="item" items="${applicationScope['dataModel'].seriesDAO.all}">
                        <option value="${item.name}">${item.name}</option>
                    </c:forEach>
                </select>
            </div>                    

            <div class="input-group"> 
                <span class="input-group-addon" id="basic-addon1">Verseny</span>
                <select class="form-control" id="sel1" name="competition" aria-describedby="basic-addon1">
                    <c:forEach var="item" items="${applicationScope['dataModel'].championshipDAO.all}">
                        <option value="${item.name}">${item.name}</option>
                    </c:forEach>
                </select>
            </div>                    

            <c:if test="${selectedChampionship == null}">
                <div class="input-group"> 
                    <span class="input-group-addon" id="basic-addon1">Fordul�</span>
                    <select class="form-control" id="sel1" name="competition" aria-describedby="basic-addon1">
<%--
                        <c:forEach var="item" items="${applicationScope['dataModel'].competitionDAO.all}">
                            <option value="${item.name}">${item.name}</option>
                        </c:forEach>
--%>
                    </select>
                </div>                    
            </c:if>
            

            <div class="input-group">
                <input type="submit" value="Felvitel" class="form-control" aria-describedby="basic-addon1">
            </div>

        </form>     
    </div>
</div>            
