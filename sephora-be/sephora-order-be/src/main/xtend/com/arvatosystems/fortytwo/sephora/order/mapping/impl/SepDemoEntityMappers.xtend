package com.arvatosystems.fortytwo.sephora.order.mapping.impl

import com.arvatosystems.fortytwo.annotations.AutoMap
import com.arvatosystems.fortytwo.sephora.demo.SepDemoDTO
import com.arvatosystems.fortytwo.sephora.demo.entities.SepDemoEntity
import com.arvatosystems.fortytwo.sephora.order.persistence.ISepDemoEntityResolver
import javax.enterprise.context.ApplicationScoped

@ApplicationScoped
@AutoMap
class SepDemoEntityMappers {
   ISepDemoEntityResolver resolver;
   
   def void d2eSepDemoDTO(SepDemoEntity entity, SepDemoDTO dto, boolean onlyActive) {}
   def void e2dSepDemoDTO(SepDemoEntity entity, SepDemoDTO dto) {}
}