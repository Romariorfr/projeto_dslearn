package com.devsuperior.dslearnbds.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.devsuperior.dslearnbds.dto.DeliveryRevisionDTO;
import com.devsuperior.dslearnbds.services.DeliveryService;

@RestController
@RequestMapping(value = "/deliveries")
public class DeliverResource {

	@Autowired
	private DeliveryService service;

	@PutMapping(value = "/{id}")
	@PreAuthorize("hasAnyRole('ADMIN','INSTRUCTOR')")
	public ResponseEntity<Void> saveRevision(@PathVariable Long id, @RequestBody DeliveryRevisionDTO dto) {
		service.saveRevision(id, dto);
		return ResponseEntity.noContent().build();

	}

}
