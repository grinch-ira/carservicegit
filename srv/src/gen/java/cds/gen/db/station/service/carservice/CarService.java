package cds.gen.db.station.service.carservice;

import com.sap.cds.ql.CdsName;
import com.sap.cds.services.cds.ApplicationService;
import com.sap.cds.services.cds.CqnService;
import com.sap.cds.services.cds.RemoteService;
import com.sap.cds.services.draft.DraftService;
import javax.annotation.processing.Generated;

@Generated("cds-maven-plugin")
@CdsName(CarService_.CDS_NAME)
public interface CarService extends CqnService {
  interface Application extends ApplicationService, CarService {
  }

  interface Remote extends RemoteService, CarService {
  }

  interface Draft extends DraftService, CarService {
  }
}
