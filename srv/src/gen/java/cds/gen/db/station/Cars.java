package cds.gen.db.station;

import com.sap.cds.CdsData;
import com.sap.cds.Struct;
import com.sap.cds.ql.CdsName;
import java.lang.Integer;
import java.lang.Object;
import java.lang.String;
import java.time.Instant;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.processing.Generated;

@CdsName("db.station.Cars")
@Generated("cds-maven-plugin")
public interface Cars extends CdsData {
  String ID = "ID";

  String CREATED_AT = "createdAt";

  String CREATED_BY = "createdBy";

  String MODIFIED_AT = "modifiedAt";

  String MODIFIED_BY = "modifiedBy";

  String LICENSE_PLATE = "licensePlate";

  String BRAND = "brand";

  String MODEL = "model";

  String YEAR = "year";

  String CUSTOMER = "customer";

  String CUSTOMER_ID = "customer_ID";

  @CdsName(ID)
  String getId();

  @CdsName(ID)
  void setId(String id);

  Instant getCreatedAt();

  void setCreatedAt(Instant createdAt);

  String getCreatedBy();

  void setCreatedBy(String createdBy);

  Instant getModifiedAt();

  void setModifiedAt(Instant modifiedAt);

  String getModifiedBy();

  void setModifiedBy(String modifiedBy);

  String getLicensePlate();

  void setLicensePlate(String licensePlate);

  String getBrand();

  void setBrand(String brand);

  String getModel();

  void setModel(String model);

  Integer getYear();

  void setYear(Integer year);

  Customers getCustomer();

  void setCustomer(Map<String, ?> customer);

  @CdsName(CUSTOMER_ID)
  String getCustomerId();

  @CdsName(CUSTOMER_ID)
  void setCustomerId(String customerId);

  Cars_ ref();

  static Cars create() {
    return Struct.create(Cars.class);
  }

  static Cars of(Map<String, Object> map) {
    return Struct.access(map).as(Cars.class);
  }

  static Cars create(String id) {
    Map<String, Object> keys = new HashMap<>();
    keys.put(ID, id);
    return Struct.access(keys).as(Cars.class);
  }
}
