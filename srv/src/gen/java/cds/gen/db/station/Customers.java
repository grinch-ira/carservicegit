package cds.gen.db.station;

import com.sap.cds.CdsData;
import com.sap.cds.Struct;
import com.sap.cds.ql.CdsName;
import java.lang.Object;
import java.lang.String;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.processing.Generated;

@CdsName("db.station.Customers")
@Generated("cds-maven-plugin")
public interface Customers extends CdsData {
  String ID = "ID";

  String NAME = "name";

  String SURNAME = "surname";

  String EMAIL = "email";

  @CdsName(ID)
  String getId();

  @CdsName(ID)
  void setId(String id);

  String getName();

  void setName(String name);

  String getSurname();

  void setSurname(String surname);

  String getEmail();

  void setEmail(String email);

  Customers_ ref();

  static Customers create() {
    return Struct.create(Customers.class);
  }

  static Customers of(Map<String, Object> map) {
    return Struct.access(map).as(Customers.class);
  }

  static Customers create(String id) {
    Map<String, Object> keys = new HashMap<>();
    keys.put(ID, id);
    return Struct.access(keys).as(Customers.class);
  }
}
