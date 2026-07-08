package cds.gen.db.station.service.carservice;

import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.services.EventContext;
import com.sap.cds.services.EventName;
import java.lang.Override;
import java.lang.String;
import javax.annotation.processing.Generated;

@EventName("draftActivate")
@Generated("cds-maven-plugin")
public interface CustomersDraftActivateContext extends EventContext {
  String CDS_NAME = "draftActivate";

  @Override
  CarService getService();

  CqnSelect getCqn();

  void setCqn(CqnSelect select);

  static CustomersDraftActivateContext create() {
    return EventContext.create(CustomersDraftActivateContext.class, "db.station.service.CarService.Customers");
  }

  void setResult(Customers result);

  Customers getResult();

  static CustomersDraftActivateContext create(String entityName) {
    return EventContext.create(CustomersDraftActivateContext.class, entityName);
  }
}
