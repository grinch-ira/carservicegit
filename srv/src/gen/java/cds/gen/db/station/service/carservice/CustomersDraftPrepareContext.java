package cds.gen.db.station.service.carservice;

import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.services.EventContext;
import com.sap.cds.services.EventName;
import java.lang.Override;
import java.lang.String;
import javax.annotation.processing.Generated;

@EventName("draftPrepare")
@Generated("cds-maven-plugin")
public interface CustomersDraftPrepareContext extends EventContext {
  String SIDE_EFFECTS_QUALIFIER = "SideEffectsQualifier";

  String CDS_NAME = "draftPrepare";

  @CdsName(SIDE_EFFECTS_QUALIFIER)
  String getSideEffectsQualifier();

  @CdsName(SIDE_EFFECTS_QUALIFIER)
  void setSideEffectsQualifier(String sideEffectsQualifier);

  @Override
  CarService getService();

  CqnSelect getCqn();

  void setCqn(CqnSelect select);

  static CustomersDraftPrepareContext create() {
    return EventContext.create(CustomersDraftPrepareContext.class, "db.station.service.CarService.Customers");
  }

  void setResult(Customers result);

  Customers getResult();

  static CustomersDraftPrepareContext create(String entityName) {
    return EventContext.create(CustomersDraftPrepareContext.class, entityName);
  }
}
