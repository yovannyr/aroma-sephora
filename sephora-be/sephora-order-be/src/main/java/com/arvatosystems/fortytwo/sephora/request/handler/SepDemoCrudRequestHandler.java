package com.arvatosystems.fortytwo.sephora.request.handler;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Inject;

import com.arvatosystems.fortytwo.base.api.ServiceResponse;
import com.arvatosystems.fortytwo.base.data.FullTrackingWithActiveColumnAndVersion;
import com.arvatosystems.fortytwo.base.persistence.impl.AbstractCrudLongKeyRequestHandler;
import com.arvatosystems.fortytwo.sephora.demo.SepDemoDTO;
import com.arvatosystems.fortytwo.sephora.demo.SepDemoRef;
import com.arvatosystems.fortytwo.sephora.demo.entities.SepDemoEntity;
import com.arvatosystems.fortytwo.sephora.order.mapping.ISepDemoDTOMappers;
import com.arvatosystems.fortytwo.sephora.order.persistence.ISepDemoEntityResolver;
import com.arvatosystems.fortytwo.sephora.request.SepDemoCrudRequest;

@Stateless
@LocalBean
public class SepDemoCrudRequestHandler extends 
AbstractCrudLongKeyRequestHandler<SepDemoRef, SepDemoDTO, FullTrackingWithActiveColumnAndVersion, SepDemoEntity, SepDemoCrudRequest> {
	
	@Inject
	ISepDemoEntityResolver sepDemoEntityResolver;
	
	@Inject
	ISepDemoDTOMappers sepDemoDTOMappers;
	
	@Override
	public ServiceResponse execute(SepDemoCrudRequest request) throws Exception {
		 return super.execute(sepDemoDTOMappers, sepDemoEntityResolver, request);
	}

}
