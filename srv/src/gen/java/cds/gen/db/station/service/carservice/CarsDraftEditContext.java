package cds.gen.db.station.service.carservice;

import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.services.EventContext;
import com.sap.cds.services.EventName;
import java.lang.Boolean;
import java.lang.Override;
import java.lang.String;
import javax.annotation.processing.Generated;

@EventName("draftEdit")
@Generated("cds-maven-plugin")
public interface CarsDraftEditContext extends EventContext {
  String PRESERVE_CHANGES = "PreserveChanges";

  String CDS_NAME = "draftEdit";

  @CdsName(PRESERVE_CHANGES)
  Boolean getPreserveChanges();

  @CdsName(PRESERVE_CHANGES)
  void setPreserveChanges(Boolean preserveChanges);

  @Override
  CarService getService();

  CqnSelect getCqn();

  void setCqn(CqnSelect select);

  static CarsDraftEditContext create() {
    return EventContext.create(CarsDraftEditContext.class, "db.station.service.CarService.Cars");
  }

  void setResult(Cars result);

  Cars getResult();

  static CarsDraftEditContext create(String entityName) {
    return EventContext.create(CarsDraftEditContext.class, entityName);
  }
}
