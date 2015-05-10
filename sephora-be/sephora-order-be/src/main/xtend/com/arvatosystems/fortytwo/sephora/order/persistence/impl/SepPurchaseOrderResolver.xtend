package com.arvatosystems.fortytwo.sephora.order.persistence.impl

import com.arvatosystems.fortytwo.sephora.order.SephoraPurchaseOrderDTO
import com.arvatosystems.fortytwo.sephora.order.entities.SepPurchaseOrderEntity
import com.arvatosystems.fortytwo.annotations.AutoResolver

@AutoResolver
class SepPurchaseOrderResolver {
    def SepPurchaseOrderEntity  getSepPurchaseOrderEntity(SephoraPurchaseOrderDTO dto, boolean onlyActive) { null }
}