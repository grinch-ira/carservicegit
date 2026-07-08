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
public interface CustomersDraftEditContext extends EventContext {
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

  static CustomersDraftEditContext create() {
    return EventContext.create(CustomersDraftEditContext.class, "db.station.service.CarService.Customers");
  }

  void setResult(Customers result);

  Customers getResult();

  static CustomersDraftEditContext create(String entityName) {
    return EventContext.create(CustomersDraftEditContext.class, entityName);
  }
}
