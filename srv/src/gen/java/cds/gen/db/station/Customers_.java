package cds.gen.db.station;

import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.ElementRef;
import com.sap.cds.ql.LinkedStructuredType;
import java.lang.String;
import javax.annotation.processing.Generated;

@CdsName("db.station.Customers")
@Generated("cds-maven-plugin")
public interface Customers_ extends LinkedStructuredType<Customers, Customers_> {
  String ID = "ID";

  String CDS_NAME = "db.station.Customers";

  @CdsName(ID)
  ElementRef<String> ID();

  ElementRef<String> name();

  ElementRef<String> surname();

  ElementRef<String> email();
}
