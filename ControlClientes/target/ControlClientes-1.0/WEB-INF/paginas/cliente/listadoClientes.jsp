<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<section id="clientes">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <h4>Listado de Clientes</h4>
                    </div>
                            <a href="https://nicepage.com/c/sports-html-templates" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-1">Botón</a>
        <div class="u-align-center u-border-3 u-border-palette-1-base u-container-style u-group u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h6 class="u-text u-text-default u-text-1">TOTAL DE CLIENTES</h6>
          </div>
        </div>
        <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-group-2">
          <div class="u-container-layout u-container-layout-2">
            <h6 class="u-text u-text-default u-text-2">SALDO TOTAL</h6>
          </div>
        </div>
        <div class="u-expanded-width u-table u-table-responsive u-table-1">
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Saldo</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Iteramos cada elemento de la lista de clientes -->
                            <c:forEach var="cliente" items="${clientes}" varStatus="status" >
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${cliente.nombre} ${cliente.apellido}</td>
                                    <td> <fmt:formatNumber value="${cliente.saldo}" type="currency"/> </td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/ServletControlador?accion=editar&idCliente=${cliente.idCliente}"
                                           class="btn btn-secondary">
                                            <i class="fas fa-angle-double-right"></i> Editar
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <!--Inicio Tarjetas para los totales-->
            <div class="col-md-3">
                <div class="card text-center bg-danger text-white mb-3">
                    <div class="card-body">
                        <h3>Saldo Total</h3>
                        <h4 class="display-4">
                            <fmt:formatNumber value="${saldoTotal}" type="currency" />
                        </h4>
                    </div>
                </div>

                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Total Clientes</h3>
                        <h4 class="display-4">
                            <i class="fas fa-users"></i> ${totalClientes}
                        </h4>
                    </div>
                </div>        
            </div>
            <!--Fin Tarjetas para los totales-->
        </div>
    </div>
</section>

<!-- Agregar cliente MODAL -->
<jsp:include page="/WEB-INF/paginas/cliente/agregarCliente.jsp"/>


                        