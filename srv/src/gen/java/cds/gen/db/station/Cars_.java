package cds.gen.db.station;

import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.ElementRef;
import com.sap.cds.ql.LinkedStructuredType;
import com.sap.cds.ql.cqn.CqnPredicate;
import java.lang.Integer;
import java.lang.String;
import java.time.Instant;
import java.util.function.Function;
import javax.annotation.processing.Generated;

@CdsName("db.station.Cars")
@Generated("cds-maven-plugin")
public interface Cars_ extends LinkedStructuredType<Cars, Cars_> {
  String ID = "ID";

  String CUSTOMER_ID = "customer_ID";

  String CDS_NAME = "db.station.Cars";

  @CdsName(ID)
  ElementRef<String> ID();

  ElementRef<Instant> createdAt();

  ElementRef<String> createdBy();

  ElementRef<Instant> modifiedAt();

  ElementRef<String> modifiedBy();

  ElementRef<String> licensePlate();

  ElementRef<String> brand();

  ElementRef<String> model();

  ElementRef<Integer> year();

  Customers_ customer();

  Customers_ customer(Function<Customers_, CqnPredicate> filter);

  @CdsName(CUSTOMER_ID)
  ElementRef<String> customer_ID();
}
