package com.arvatosystems.fortytwo.sephora.order.persistence.impl

import com.arvatosystems.fortytwo.annotations.AutoResolver
import com.arvatosystems.fortytwo.sephora.demo.SepDemoRef
import com.arvatosystems.fortytwo.sephora.demo.entities.SepDemoEntity
import java.util.List

@AutoResolver
class SepDemoResolvers {
    
    def SepDemoEntity  getSepDemoEntity(SepDemoRef ref, boolean onlyActive) { null }
    
    def List<SepDemoEntity> findByObjectRef(boolean onlyActive, List<Long> objectRef) { null }
    
}