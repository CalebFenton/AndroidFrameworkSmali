.class public abstract Ljavax/xml/datatype/XMLGregorianCalendar;
.super Ljava/lang/Object;
.source "XMLGregorianCalendar.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api add(Ljavax/xml/datatype/Duration;)V
.end method

.method public abstract whitelist test-api clear()V
.end method

.method public abstract whitelist test-api clone()Ljava/lang/Object;
.end method

.method public abstract whitelist test-api compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 663
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 664
    return v0

    .line 666
    :cond_4
    instance-of v1, p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 667
    move-object v1, p1

    check-cast v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {p0, v1}, Ljavax/xml/datatype/XMLGregorianCalendar;->compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0

    .line 669
    :cond_15
    return v2
.end method

.method public abstract whitelist test-api getDay()I
.end method

.method public abstract whitelist test-api getEon()Ljava/math/BigInteger;
.end method

.method public abstract whitelist test-api getEonAndYear()Ljava/math/BigInteger;
.end method

.method public abstract whitelist test-api getFractionalSecond()Ljava/math/BigDecimal;
.end method

.method public abstract whitelist test-api getHour()I
.end method

.method public whitelist test-api getMillisecond()I
    .registers 4

    .line 591
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v0

    .line 594
    .local v0, "fractionalSeconds":Ljava/math/BigDecimal;
    if-nez v0, :cond_9

    .line 595
    const/high16 v1, -0x80000000

    return v1

    .line 598
    :cond_9
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    return v1
.end method

.method public abstract whitelist test-api getMinute()I
.end method

.method public abstract whitelist test-api getMonth()I
.end method

.method public abstract whitelist test-api getSecond()I
.end method

.method public abstract whitelist test-api getTimeZone(I)Ljava/util/TimeZone;
.end method

.method public abstract whitelist test-api getTimezone()I
.end method

.method public abstract whitelist test-api getXMLSchemaType()Ljavax/xml/namespace/QName;
.end method

.method public abstract whitelist test-api getYear()I
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 684
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    .line 685
    .local v0, "timezone":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_9

    .line 686
    const/4 v0, 0x0

    .line 688
    :cond_9
    move-object v1, p0

    .line 689
    .local v1, "gc":Ljavax/xml/datatype/XMLGregorianCalendar;
    if-eqz v0, :cond_10

    .line 690
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->normalize()Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    .line 692
    :cond_10
    invoke-virtual {v1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v2

    .line 693
    invoke-virtual {v1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v3

    add-int/2addr v2, v3

    .line 694
    invoke-virtual {v1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v3

    add-int/2addr v2, v3

    .line 695
    invoke-virtual {v1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v3

    add-int/2addr v2, v3

    .line 696
    invoke-virtual {v1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v3

    add-int/2addr v2, v3

    .line 697
    invoke-virtual {v1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v3

    add-int/2addr v2, v3

    .line 692
    return v2
.end method

.method public abstract whitelist test-api isValid()Z
.end method

.method public abstract whitelist test-api normalize()Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract whitelist test-api reset()V
.end method

.method public abstract whitelist test-api setDay(I)V
.end method

.method public abstract whitelist test-api setFractionalSecond(Ljava/math/BigDecimal;)V
.end method

.method public abstract whitelist test-api setHour(I)V
.end method

.method public abstract whitelist test-api setMillisecond(I)V
.end method

.method public abstract whitelist test-api setMinute(I)V
.end method

.method public abstract whitelist test-api setMonth(I)V
.end method

.method public abstract whitelist test-api setSecond(I)V
.end method

.method public whitelist test-api setTime(III)V
    .registers 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->setTime(IIILjava/math/BigDecimal;)V

    .line 335
    return-void
.end method

.method public whitelist test-api setTime(IIII)V
    .registers 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "millisecond"    # I

    .line 446
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->setHour(I)V

    .line 447
    invoke-virtual {p0, p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->setMinute(I)V

    .line 448
    invoke-virtual {p0, p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->setSecond(I)V

    .line 449
    invoke-virtual {p0, p4}, Ljavax/xml/datatype/XMLGregorianCalendar;->setMillisecond(I)V

    .line 450
    return-void
.end method

.method public whitelist test-api setTime(IIILjava/math/BigDecimal;)V
    .registers 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "fractional"    # Ljava/math/BigDecimal;

    .line 422
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->setHour(I)V

    .line 423
    invoke-virtual {p0, p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->setMinute(I)V

    .line 424
    invoke-virtual {p0, p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->setSecond(I)V

    .line 425
    invoke-virtual {p0, p4}, Ljavax/xml/datatype/XMLGregorianCalendar;->setFractionalSecond(Ljava/math/BigDecimal;)V

    .line 426
    return-void
.end method

.method public abstract whitelist test-api setTimezone(I)V
.end method

.method public abstract whitelist test-api setYear(I)V
.end method

.method public abstract whitelist test-api setYear(Ljava/math/BigInteger;)V
.end method

.method public abstract whitelist test-api toGregorianCalendar()Ljava/util/GregorianCalendar;
.end method

.method public abstract whitelist test-api toGregorianCalendar(Ljava/util/TimeZone;Ljava/util/Locale;Ljavax/xml/datatype/XMLGregorianCalendar;)Ljava/util/GregorianCalendar;
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 843
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->toXMLFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api toXMLFormat()Ljava/lang/String;
.end method
