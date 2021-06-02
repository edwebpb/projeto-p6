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
                  <h4 class="card-title">Edição de contato</h4>
                  <p class="card-category">ID ${id}</p>
                </div>
                <div class="card-body">
                  <form action="${pageContext.request.contextPath}/alterar" method="post">
                  	<input type="hidden" name="id" value="${id}" />
                    <div class="row">
                      
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Nome</label>
                          <input type="text" name="name" class="form-control" value="${name}" maxlength="30" required="required">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Email</label>
                          <input type="email" name="email" class="form-control" value="${email}" maxlength="50" required="required">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Fone</label>
                          <input type="text" name="phone" class="form-control" value="${phone}" maxlength="50" required="required">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Senha</label>
                          <input type="password" name="password" class="form-control" value="${password}" maxlength="50" required="required">
                        </div>
                      </div>
                    </div>
                    <button type="submit" class="btn btn-success">Alterar</button>
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
          </div>
    </div>
        </jsp:attribute>
</mt:admin_template>