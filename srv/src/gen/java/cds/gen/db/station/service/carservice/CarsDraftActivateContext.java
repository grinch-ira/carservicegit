package cds.gen.db.station.service.carservice;

import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.services.EventContext;
import com.sap.cds.services.EventName;
import java.lang.Override;
import java.lang.String;
import javax.annotation.processing.Generated;

@EventName("draftActivate")
@Generated("cds-maven-plugin")
public interface CarsDraftActivateContext extends EventContext {
  String CDS_NAME = "draftActivate";

  @Override
  CarService getService();

  CqnSelect getCqn();

  void setCqn(CqnSelect select);

  static CarsDraftActivateContext create() {
    return EventContext.create(CarsDraftActivateContext.class, "db.station.service.CarService.Cars");
  }

  void setResult(Cars result);

  Cars getResult();

  static CarsDraftActivateContext create(String entityName) {
    return EventContext.create(CarsDraftActivateContext.class, entityName);
  }
}
