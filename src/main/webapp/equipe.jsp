<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

<mt:admin_template>
	<jsp:attribute name="content">
	<div class="container-fluid">         
         <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-info">
                  <h4 class="card-title ">Equipe do projeto</h4>
                </div>
                <div class="card-body">
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Nome</th>
							<th>E-mail</th>
							<th>Phone</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Diomar Victor</td>
							<td>20182022010@iesp.edu.br</td>
							<td>(83) 98767-4487</td>
						</tr>
						<tr>
							<td>Edson Ferreira</td>
							<td>20182022002@iesp.edu.br</td>
							<td>(83) 98895-4323</td>
						</tr>
						
					</tbody>
				</table>
			</div>
                </div>
              </div>
            </div>
          </div>
    </div>
        </jsp:attribute>
</mt:admin_template>