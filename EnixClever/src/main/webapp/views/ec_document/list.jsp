<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ENIXClever</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no"
    />
    <meta name="description" content="This is an example dashboard created using build-in elements and components.">

    <!-- Disable tap highlight on IE -->
    <meta name="msapplication-tap-highlight" content="no">

<link href="${pageContext.request.contextPath}/resources/css/main.87c0748b313a1dda75f5.css" type="text/css" rel="stylesheet"></head>
<body>
<div class="app-container app-theme-white body-tabs-shadow fixed-header fixed-sidebar">
    <div class="app-header header-shadow">
        <div class="app-header__logo">
            <div class="logo-src"></div>
            <div class="header__pane ml-auto">
                <div>
                    <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>
            </div>
        </div>
        <div class="app-header__mobile-menu">
            <div>
                <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                    <span class="hamburger-box">
                        <span class="hamburger-inner"></span>
                    </span>
                </button>
            </div>
        </div>
        <div class="app-header__menu">
            <span>
                <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                    <span class="btn-icon-wrapper">
                        <i class="fa fa-ellipsis-v fa-w-6"></i>
                    </span>
                </button>
            </span>
        </div>    
		<div class="app-header__content">
            <div class="app-header-left">
                <div class="search-wrapper">
                    <div class="input-holder">
                        <input type="text" class="search-input" placeholder="Keywords">
                        <button class="search-icon"><span></span></button>
                    </div>
                    <button class="close"></button>
                </div>
            </div>
        </div>
    </div>    
	<div class="app-main">
            <div class="app-sidebar sidebar-shadow">
                <div class="app-header__logo">
                    <div class="logo-src"></div>
                    <div class="header__pane ml-auto">
                        <div>
                            <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="app-header__mobile-menu">
                    <div>
                        <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="app-header__menu">
                    <span>
                        <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                            <span class="btn-icon-wrapper">
                                <i class="fa fa-ellipsis-v fa-w-6"></i>
                            </span>
                        </button>
                    </span>
                </div>    
				<div class="scrollbar-sidebar">
                    <div class="app-sidebar__inner">
                        <ul class="vertical-nav-menu">
                            <li class="app-sidebar__heading">Dashboard</li>
                            <li class="mm-active">
                                <a href="#">
                                    <i class="metismenu-icon pe-7s-rocket"></i>
                                    문서 분석 리스트
                                </a>
							</li>
							<li class="app-sidebar__heading">Data Bank</li>
							<li>
								<a href="document-list.html">
									<i class="metismenu-icon pe-7s-display2"></i>
									최근 문서
								</a>
							</li>
							<li>
								<a href="#">
									<i class="metismenu-icon pe-7s-diamond"></i>
									Data Type
									<i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
								</a>
								<ul>
									<li>
										<a href="filetype-list.html">
											<i class="metismenu-icon"></i>
											JPG
										</a>
									</li>
									<li>
										<a href="#">
											<i class="metismenu-icon"></i>
											AI
										</a>
									</li>
									<li>
										<a href="#">
											<i class="metismenu-icon"></i>
											PNG
										</a>
									</li>
									<li>
										<a href="#">
											<i class="metismenu-icon"></i>
											PDF
										</a>
									</li>
								</ul>
							</li>
							<li class="app-sidebar__heading ">Data Search</li>
							<li>
								<a href="document-search.html">
									<i class="metismenu-icon pe-7s-search"></i>
									상세 검색
								</a>
							</li>
                        </ul> 
                    </div>
                </div>
            </div>    
			
<!--Main data insert start-->

			<div class="app-main__outer">
                <div class="app-main__inner">
                    <div class="app-page-title">
                        <div class="page-title-wrapper">
                            <div class="page-title-heading">
                                <div class="page-title-icon">
                                    <i class="pe-7s-car icon-gradient bg-mean-fruit">
                                    </i>
                                </div>
                                <div>문서 분석 리스트
                                    <div class="page-title-subheading">등록된 문서를 조회합니다.
                                    </div>
                                </div>
                            </div>
                            <div class="page-title-actions">
                                <button type="button" data-toggle="tooltip" title="Example Tooltip" data-placement="bottom" class="btn-shadow mr-3 btn btn-dark">
                                    <i class="fa fa-star"></i>
                                </button>                                
                            </div>    
						</div>
                    </div>           
					
					<div class="main-card mb-3 card">
					<div class="card-body">
						<table style="width: 100%;" id="example" class="table table-hover table-striped table-bordered">
							<thead>
							<tr>
								<th>문서ID</th>
								<th>문서명</th>
								<th>요약정보</th>
								<th>등록자ID</th>
								<th>등록자 이름</th>
								<th>등록일</th>
								<th>공개여부</th>
								<th>첨부문서 개수</th>
								<th>수정일</th>
								<th>조회수</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach items="${list }" var="dto" >
								<tr class="dataRow">
									<td>${dto.DOC_ID }</td>
									<td>${dto.DOC_NAME }</td>
									<td>${dto.DOC_SUMMARY }</td>
									<td>${dto.DOC_AUTHOR_ID }</td>
									<td>${dto.DOC_AUTHOR_NAME }</td>
									<td><fmt:formatDate value="${dto.DOC_CREATION_DATE }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
									<td>${dto.DOC_IS_OPEN }</td>
									<td>${dto.DOC_ATTACH_FILES }</td>
									<td><fmt:formatDate value="${dto.DOC_MODIFY_DATE }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
									<td>${dto.DOC_HIT }</td>
								</tr>
								</c:forEach>
							</tbody>
							
						</table>
					</div>	
			</div>
			
			<!--Main data end -->	
				</div>
				<div class="app-wrapper-footer">
				<div class="app-footer">
					<div class="app-footer__inner">
												<div class="app-footer-right">
							<div class="footer-dots">
								enixone inc.
							</div>
						</div>
					</div>
				</div>
                </div>	
			</div>
                </div>
			</div>
			
<div class="app-drawer-overlay d-none animated fadeIn"></div>
<script type="text/javascript" src="<c:url value="resources/assets/scripts/main.87c0748b313a1dda75f5.js"/>"></script>
</body>
</html>