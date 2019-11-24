package com.enixclever.ec_document.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.enixclever.ec_document.dto.Ec_documentDTO;
import com.enixclever.ec_document.mapper.Ec_documentMapper;
import com.enixclever.util.page.PageObject;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
@Repository
public class Ec_documentServiceImpl implements Ec_documentService{
	
	private Ec_documentMapper mapper;
	
	public List<Ec_documentDTO> list(PageObject pageObject) {
	
	pageObject.calcuDBData();
	pageObject.calcuDisplayData();

	return mapper.list(pageObject);
}
}