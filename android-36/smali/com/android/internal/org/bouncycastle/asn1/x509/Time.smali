.class public Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Time.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field blacklist time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 4
    .param p1, "time"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 45
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 46
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    if-nez v0, :cond_15

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_c

    goto :goto_15

    .line 49
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown object passed to Time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_15
    :goto_15
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Date;)V
    .registers 8
    .param p1, "time"    # Ljava/util/Date;

    .line 64
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 68
    .local v0, "tz":Ljava/util/SimpleTimeZone;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 70
    .local v3, "dateF":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "d":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    .local v1, "year":I
    const/16 v4, 0x79e

    if-lt v1, v4, :cond_4c

    const/16 v4, 0x801

    if-le v1, v4, :cond_3f

    goto :goto_4c

    .line 81
    :cond_3f
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERUTCTime;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    goto :goto_53

    .line 77
    :cond_4c
    :goto_4c
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 83
    :goto_53
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Date;Ljava/util/Locale;)V
    .registers 9
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 97
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 101
    .local v0, "tz":Ljava/util/SimpleTimeZone;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 102
    .local v3, "dateF":Ljava/text/SimpleDateFormat;
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 105
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "d":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, "year":I
    const/16 v4, 0x79e

    if-lt v1, v4, :cond_53

    const/16 v4, 0x801

    if-le v1, v4, :cond_46

    goto :goto_53

    .line 116
    :cond_46
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERUTCTime;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    goto :goto_5a

    .line 112
    :cond_53
    :goto_53
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 118
    :goto_5a
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 4
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 35
    if-eqz p1, :cond_b

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0

    .line 37
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "choice item must be explicitly tagged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 123
    if-eqz p0, :cond_43

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_7

    goto :goto_43

    .line 127
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v0, :cond_14

    .line 129
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 131
    :cond_14
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_21

    .line 133
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 136
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_43
    :goto_43
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method


# virtual methods
.method public blacklist getDate()Ljava/util/Date;
    .registers 5

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v0, :cond_f

    .line 157
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->getAdjustedDate()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 161
    :cond_f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    .line 164
    :catch_18
    move-exception v0

    .line 166
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid date string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getTime()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v0, :cond_f

    .line 143
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->getAdjustedTime()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
