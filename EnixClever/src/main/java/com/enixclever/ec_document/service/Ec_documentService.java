package com.enixclever.ec_document.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.enixclever.ec_document.dto.Ec_documentDTO;
import com.enixclever.util.page.PageObject;

@Service
public interface Ec_documentService {
	
	public List<Ec_documentDTO> list(PageObject pageObject);
}
