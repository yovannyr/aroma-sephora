package com.arvatosystems.fortytwo.sephora.order.mapping.impl

import com.arvatosystems.fortytwo.a42order.order.mapping.impl.PurchaseOrderDTOMappers
import com.arvatosystems.fortytwo.annotations.AutoExtendMapper
import com.arvatosystems.fortytwo.sephora.order.SephoraPurchaseOrderDTO
import com.arvatosystems.fortytwo.sephora.order.entities.SepPurchaseOrderEntity

@AutoExtendMapper
class SephoraPurchaseOrderMapper extends PurchaseOrderDTOMappers {
   def void _entity2dto(SepPurchaseOrderEntity entity, SephoraPurchaseOrderDTO dto) {}
}