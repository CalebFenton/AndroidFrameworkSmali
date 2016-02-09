.class public abstract Ljavax/xml/datatype/Duration;
.super Ljava/lang/Object;
.source "Duration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getCalendarTimeInMillis(Ljava/util/Calendar;)J
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 978
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method private getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I
    .locals 2
    .param p1, "field"    # Ljavax/xml/datatype/DatatypeConstants$Field;

    #@0
    .prologue
    .line 413
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    #@3
    move-result-object v0

    #@4
    .line 414
    .local v0, "n":Ljava/lang/Number;
    if-eqz v0, :cond_0

    #@6
    .line 415
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 417
    :cond_0
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method private toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 7
    .param p1, "bd"    # Ljava/math/BigDecimal;

    #@0
    .prologue
    .line 937
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    #@3
    move-result-object v5

    #@4
    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 938
    .local v3, "intString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    #@b
    move-result v4

    #@c
    .line 940
    .local v4, "scale":I
    if-nez v4, :cond_0

    #@e
    .line 941
    return-object v3

    #@f
    .line 946
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@12
    move-result v5

    #@13
    sub-int v2, v5, v4

    #@15
    .line 947
    .local v2, "insertionPoint":I
    if-nez v2, :cond_1

    #@17
    .line 948
    new-instance v5, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v6, "0."

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    return-object v5

    #@2c
    .line 950
    :cond_1
    if-lez v2, :cond_2

    #@2e
    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@33
    .line 952
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v5, 0x2e

    #@35
    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@38
    .line 962
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    return-object v5

    #@3d
    .line 955
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@3f
    rsub-int/lit8 v5, v2, 0x3

    #@41
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@44
    move-result v6

    #@45
    add-int/2addr v5, v6

    #@46
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@49
    .line 956
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "0."

    #@4c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 957
    const/4 v1, 0x0

    #@50
    .local v1, "i":I
    :goto_1
    neg-int v5, v2

    #@51
    if-ge v1, v5, :cond_3

    #@53
    .line 958
    const/16 v5, 0x30

    #@55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@58
    .line 957
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_1

    #@5b
    .line 960
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    goto :goto_0
.end method


# virtual methods
.method public abstract add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
.end method

.method public abstract addTo(Ljava/util/Calendar;)V
.end method

.method public addTo(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 554
    if-nez p1, :cond_0

    #@2
    .line 555
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "date == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 558
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    #@d
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    #@10
    .line 559
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@13
    .line 560
    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    #@16
    .line 561
    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    #@19
    move-result-wide v2

    #@1a
    invoke-virtual {p1, v2, v3}, Ljava/util/Date;->setTime(J)V

    #@1d
    .line 551
    return-void
.end method

.method public abstract compare(Ljavax/xml/datatype/Duration;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "duration"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 854
    if-ne p1, p0, :cond_0

    #@4
    .line 855
    return v0

    #@5
    .line 857
    :cond_0
    instance-of v2, p1, Ljavax/xml/datatype/Duration;

    #@7
    if-eqz v2, :cond_2

    #@9
    .line 858
    check-cast p1, Ljavax/xml/datatype/Duration;

    #@b
    .end local p1    # "duration":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_1

    #@11
    :goto_0
    return v0

    #@12
    :cond_1
    move v0, v1

    #@13
    goto :goto_0

    #@14
    .line 860
    .restart local p1    # "duration":Ljava/lang/Object;
    :cond_2
    return v1
.end method

.method public getDays()I
    .locals 1

    #@0
    .prologue
    .line 256
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@2
    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public abstract getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;
.end method

.method public getHours()I
    .locals 1

    #@0
    .prologue
    .line 270
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@2
    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMinutes()I
    .locals 1

    #@0
    .prologue
    .line 284
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@2
    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMonths()I
    .locals 1

    #@0
    .prologue
    .line 243
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@2
    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSeconds()I
    .locals 1

    #@0
    .prologue
    .line 299
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@2
    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public abstract getSign()I
.end method

.method public getTimeInMillis(Ljava/util/Calendar;)J
    .locals 6
    .param p1, "startInstant"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 333
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Calendar;

    #@6
    .line 334
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    #@9
    .line 335
    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    #@c
    move-result-wide v2

    #@d
    .line 336
    invoke-static {p1}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    #@10
    move-result-wide v4

    #@11
    .line 335
    sub-long/2addr v2, v4

    #@12
    return-wide v2
.end method

.method public getTimeInMillis(Ljava/util/Date;)J
    .locals 6
    .param p1, "startInstant"    # Ljava/util/Date;

    #@0
    .prologue
    .line 371
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    #@5
    .line 372
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@8
    .line 373
    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    #@b
    .line 374
    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    #@e
    move-result-wide v2

    #@f
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@12
    move-result-wide v4

    #@13
    sub-long/2addr v2, v4

    #@14
    return-wide v2
.end method

.method public getXMLSchemaType()Ljavax/xml/namespace/QName;
    .locals 9

    #@0
    .prologue
    .line 158
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@2
    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    #@5
    move-result v5

    #@6
    .line 159
    .local v5, "yearSet":Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@8
    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    #@b
    move-result v3

    #@c
    .line 160
    .local v3, "monthSet":Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@e
    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    #@11
    move-result v0

    #@12
    .line 161
    .local v0, "daySet":Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@14
    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    #@17
    move-result v1

    #@18
    .line 162
    .local v1, "hourSet":Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@1a
    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    #@1d
    move-result v2

    #@1e
    .line 163
    .local v2, "minuteSet":Z
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@20
    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    #@23
    move-result v4

    #@24
    .line 166
    .local v4, "secondSet":Z
    if-eqz v5, :cond_0

    #@26
    if-eqz v3, :cond_0

    #@28
    if-eqz v0, :cond_0

    #@2a
    if-eqz v1, :cond_0

    #@2c
    if-eqz v2, :cond_0

    #@2e
    if-eqz v4, :cond_0

    #@30
    .line 172
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION:Ljavax/xml/namespace/QName;

    #@32
    return-object v6

    #@33
    .line 176
    :cond_0
    if-nez v5, :cond_1

    #@35
    .line 177
    if-eqz v3, :cond_3

    #@37
    .line 186
    :cond_1
    if-eqz v5, :cond_2

    #@39
    if-eqz v3, :cond_2

    #@3b
    .line 188
    if-eqz v0, :cond_4

    #@3d
    .line 196
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    #@3f
    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v8, "javax.xml.datatype.Duration#getXMLSchemaType(): this Duration does not match one of the XML Schema date/time datatypes: year set = "

    #@47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    .line 200
    const-string/jumbo v8, " month set = "

    #@52
    .line 197
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    .line 201
    const-string/jumbo v8, " day set = "

    #@5d
    .line 197
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    .line 202
    const-string/jumbo v8, " hour set = "

    #@68
    .line 197
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    .line 203
    const-string/jumbo v8, " minute set = "

    #@73
    .line 197
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v7

    #@77
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    .line 204
    const-string/jumbo v8, " second set = "

    #@7e
    .line 197
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v7

    #@8a
    .line 196
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v6

    #@8e
    .line 176
    :cond_3
    if-eqz v0, :cond_1

    #@90
    if-eqz v1, :cond_1

    #@92
    if-eqz v2, :cond_1

    #@94
    if-eqz v4, :cond_1

    #@96
    .line 182
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION_DAYTIME:Ljavax/xml/namespace/QName;

    #@98
    return-object v6

    #@99
    .line 189
    :cond_4
    if-nez v1, :cond_2

    #@9b
    .line 190
    if-nez v2, :cond_2

    #@9d
    .line 191
    if-nez v4, :cond_2

    #@9f
    .line 192
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION_YEARMONTH:Ljavax/xml/namespace/QName;

    #@a1
    return-object v6
.end method

.method public getYears()I
    .locals 1

    #@0
    .prologue
    .line 230
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@2
    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public abstract hashCode()I
.end method

.method public isLongerThan(Ljavax/xml/datatype/Duration;)Z
    .locals 2
    .param p1, "duration"    # Ljavax/xml/datatype/Duration;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 791
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public abstract isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z
.end method

.method public isShorterThan(Ljavax/xml/datatype/Duration;)Z
    .locals 2
    .param p1, "duration"    # Ljavax/xml/datatype/Duration;

    #@0
    .prologue
    .line 813
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public multiply(I)Ljavax/xml/datatype/Duration;
    .locals 2
    .param p1, "factor"    # I

    #@0
    .prologue
    .line 634
    int-to-long v0, p1

    #@1
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public abstract multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;
.end method

.method public abstract negate()Ljavax/xml/datatype/Duration;
.end method

.method public abstract normalizeWith(Ljava/util/Calendar;)Ljavax/xml/datatype/Duration;
.end method

.method public subtract(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
    .locals 1
    .param p1, "rhs"    # Ljavax/xml/datatype/Duration;

    #@0
    .prologue
    .line 614
    invoke-virtual {p1}, Ljavax/xml/datatype/Duration;->negate()Ljavax/xml/datatype/Duration;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const/16 v9, 0x4d

    #@2
    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 887
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getSign()I

    #@a
    move-result v7

    #@b
    if-gez v7, :cond_0

    #@d
    .line 888
    const/16 v7, 0x2d

    #@f
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12
    .line 890
    :cond_0
    const/16 v7, 0x50

    #@14
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 892
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@19
    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    #@1c
    move-result-object v6

    #@1d
    check-cast v6, Ljava/math/BigInteger;

    #@1f
    .line 893
    .local v6, "years":Ljava/math/BigInteger;
    if-eqz v6, :cond_1

    #@21
    .line 894
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v7

    #@25
    const/16 v8, 0x59

    #@27
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    .line 897
    :cond_1
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@2c
    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Ljava/math/BigInteger;

    #@32
    .line 898
    .local v4, "months":Ljava/math/BigInteger;
    if-eqz v4, :cond_2

    #@34
    .line 899
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 902
    :cond_2
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@3d
    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    #@40
    move-result-object v1

    #@41
    check-cast v1, Ljava/math/BigInteger;

    #@43
    .line 903
    .local v1, "days":Ljava/math/BigInteger;
    if-eqz v1, :cond_3

    #@45
    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    const/16 v8, 0x44

    #@4b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4e
    .line 907
    :cond_3
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@50
    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    #@53
    move-result-object v2

    #@54
    check-cast v2, Ljava/math/BigInteger;

    #@56
    .line 908
    .local v2, "hours":Ljava/math/BigInteger;
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@58
    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    #@5b
    move-result-object v3

    #@5c
    check-cast v3, Ljava/math/BigInteger;

    #@5e
    .line 909
    .local v3, "minutes":Ljava/math/BigInteger;
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@60
    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    #@63
    move-result-object v5

    #@64
    check-cast v5, Ljava/math/BigDecimal;

    #@66
    .line 910
    .local v5, "seconds":Ljava/math/BigDecimal;
    if-nez v2, :cond_4

    #@68
    if-eqz v3, :cond_8

    #@6a
    .line 911
    :cond_4
    :goto_0
    const/16 v7, 0x54

    #@6c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6f
    .line 912
    if-eqz v2, :cond_5

    #@71
    .line 913
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    const/16 v8, 0x48

    #@77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7a
    .line 915
    :cond_5
    if-eqz v3, :cond_6

    #@7c
    .line 916
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@83
    .line 918
    :cond_6
    if-eqz v5, :cond_7

    #@85
    .line 919
    invoke-direct {p0, v5}, Ljavax/xml/datatype/Duration;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    #@88
    move-result-object v7

    #@89
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v7

    #@8d
    const/16 v8, 0x53

    #@8f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@92
    .line 923
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v7

    #@96
    return-object v7

    #@97
    .line 910
    :cond_8
    if-eqz v5, :cond_7

    #@99
    goto :goto_0
.end method
