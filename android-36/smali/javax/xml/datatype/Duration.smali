.class public abstract Ljavax/xml/datatype/Duration;
.super Ljava/lang/Object;
.source "Duration.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o getCalendarTimeInMillis(Ljava/util/Calendar;)J
    .registers 3
    .param p0, "cal"    # Ljava/util/Calendar;

    .line 978
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I
    .registers 4
    .param p1, "field"    # Ljavax/xml/datatype/DatatypeConstants$Field;

    .line 413
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    .line 414
    .local v0, "n":Ljava/lang/Number;
    if-eqz v0, :cond_b

    .line 415
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1

    .line 417
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .registers 9
    .param p1, "bd"    # Ljava/math/BigDecimal;

    .line 937
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "intString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 940
    .local v1, "scale":I
    if-nez v1, :cond_f

    .line 941
    return-object v0

    .line 946
    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    .line 947
    .local v2, "insertionPoint":I
    const-string v3, "0."

    if-nez v2, :cond_2a

    .line 948
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 950
    :cond_2a
    if-lez v2, :cond_37

    .line 951
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 952
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/16 v4, 0x2e

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 955
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    rsub-int/lit8 v5, v2, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 956
    .local v4, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_47
    neg-int v5, v2

    if-ge v3, v5, :cond_52

    .line 958
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 957
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 960
    .end local v3    # "i":I
    :cond_52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v4

    .line 962
    .end local v4    # "buf":Ljava/lang/StringBuilder;
    .local v3, "buf":Ljava/lang/StringBuilder;
    :goto_56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public abstract whitelist test-api add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
.end method

.method public abstract whitelist test-api addTo(Ljava/util/Calendar;)V
.end method

.method public whitelist test-api addTo(Ljava/util/Date;)V
    .registers 5
    .param p1, "date"    # Ljava/util/Date;

    .line 554
    if-eqz p1, :cond_15

    .line 558
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 559
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 560
    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    .line 561
    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 562
    return-void

    .line 555
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "date == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api compare(Ljavax/xml/datatype/Duration;)I
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "duration"    # Ljava/lang/Object;

    .line 854
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 855
    return v0

    .line 857
    :cond_4
    instance-of v1, p1, Ljavax/xml/datatype/Duration;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 858
    move-object v1, p1

    check-cast v1, Ljavax/xml/datatype/Duration;

    invoke-virtual {p0, v1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0

    .line 860
    :cond_15
    return v2
.end method

.method public whitelist test-api getDays()I
    .registers 2

    .line 256
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;
.end method

.method public whitelist test-api getHours()I
    .registers 2

    .line 270
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getMinutes()I
    .registers 2

    .line 284
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getMonths()I
    .registers 2

    .line 243
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getSeconds()I
    .registers 2

    .line 299
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api getSign()I
.end method

.method public whitelist test-api getTimeInMillis(Ljava/util/Calendar;)J
    .registers 7
    .param p1, "startInstant"    # Ljava/util/Calendar;

    .line 333
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 334
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    .line 335
    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v1

    .line 336
    invoke-static {p1}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 335
    return-wide v1
.end method

.method public whitelist test-api getTimeInMillis(Ljava/util/Date;)J
    .registers 7
    .param p1, "startInstant"    # Ljava/util/Date;

    .line 371
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 372
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 373
    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    .line 374
    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public whitelist test-api getXMLSchemaType()Ljavax/xml/namespace/QName;
    .registers 10

    .line 158
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v0

    .line 159
    .local v0, "yearSet":Z
    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v1}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v1

    .line 160
    .local v1, "monthSet":Z
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v2}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v2

    .line 161
    .local v2, "daySet":Z
    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v3

    .line 162
    .local v3, "hourSet":Z
    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v4}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v4

    .line 163
    .local v4, "minuteSet":Z
    sget-object v5, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v5}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v5

    .line 166
    .local v5, "secondSet":Z
    if-eqz v0, :cond_33

    if-eqz v1, :cond_33

    if-eqz v2, :cond_33

    if-eqz v3, :cond_33

    if-eqz v4, :cond_33

    if-eqz v5, :cond_33

    .line 172
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION:Ljavax/xml/namespace/QName;

    return-object v6

    .line 176
    :cond_33
    if-nez v0, :cond_42

    if-nez v1, :cond_42

    if-eqz v2, :cond_42

    if-eqz v3, :cond_42

    if-eqz v4, :cond_42

    if-eqz v5, :cond_42

    .line 182
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION_DAYTIME:Ljavax/xml/namespace/QName;

    return-object v6

    .line 186
    :cond_42
    if-eqz v0, :cond_51

    if-eqz v1, :cond_51

    if-nez v2, :cond_51

    if-nez v3, :cond_51

    if-nez v4, :cond_51

    if-nez v5, :cond_51

    .line 192
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION_YEARMONTH:Ljavax/xml/namespace/QName;

    return-object v6

    .line 196
    :cond_51
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "javax.xml.datatype.Duration#getXMLSchemaType(): this Duration does not match one of the XML Schema date/time datatypes: year set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " month set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " day set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hour set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " minute set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " second set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public whitelist test-api getYears()I
    .registers 2

    .line 230
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public whitelist test-api isLongerThan(Ljavax/xml/datatype/Duration;)Z
    .registers 4
    .param p1, "duration"    # Ljavax/xml/datatype/Duration;

    .line 791
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public abstract whitelist test-api isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z
.end method

.method public whitelist test-api isShorterThan(Ljavax/xml/datatype/Duration;)Z
    .registers 4
    .param p1, "duration"    # Ljavax/xml/datatype/Duration;

    .line 813
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api multiply(I)Ljavax/xml/datatype/Duration;
    .registers 4
    .param p1, "factor"    # I

    .line 634
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;
.end method

.method public abstract whitelist test-api negate()Ljavax/xml/datatype/Duration;
.end method

.method public abstract whitelist test-api normalizeWith(Ljava/util/Calendar;)Ljavax/xml/datatype/Duration;
.end method

.method public whitelist test-api subtract(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
    .registers 3
    .param p1, "rhs"    # Ljavax/xml/datatype/Duration;

    .line 614
    invoke-virtual {p1}, Ljavax/xml/datatype/Duration;->negate()Ljavax/xml/datatype/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 887
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v1

    if-gez v1, :cond_10

    .line 888
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 890
    :cond_10
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 892
    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v1}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 893
    .local v1, "years":Ljava/math/BigInteger;
    if-eqz v1, :cond_28

    .line 894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x59

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 897
    :cond_28
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v2}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 898
    .local v2, "months":Ljava/math/BigInteger;
    const/16 v3, 0x4d

    if-eqz v2, :cond_3b

    .line 899
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 902
    :cond_3b
    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    .line 903
    .local v4, "days":Ljava/math/BigInteger;
    if-eqz v4, :cond_4e

    .line 904
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x44

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 907
    :cond_4e
    sget-object v5, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v5}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    check-cast v5, Ljava/math/BigInteger;

    .line 908
    .local v5, "hours":Ljava/math/BigInteger;
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    .line 909
    .local v6, "minutes":Ljava/math/BigInteger;
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v7

    check-cast v7, Ljava/math/BigDecimal;

    .line 910
    .local v7, "seconds":Ljava/math/BigDecimal;
    if-nez v5, :cond_6c

    if-nez v6, :cond_6c

    if-eqz v7, :cond_94

    .line 911
    :cond_6c
    const/16 v8, 0x54

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 912
    if-eqz v5, :cond_7c

    .line 913
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x48

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 915
    :cond_7c
    if-eqz v6, :cond_85

    .line 916
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 918
    :cond_85
    if-eqz v7, :cond_94

    .line 919
    invoke-direct {p0, v7}, Ljavax/xml/datatype/Duration;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v8, 0x53

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 923
    :cond_94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
