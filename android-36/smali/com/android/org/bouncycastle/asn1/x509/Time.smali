.class public Lcom/android/org/bouncycastle/asn1/x509/Time;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Time.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field blacklist time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 46
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    if-nez v0, :cond_14

    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_c

    goto :goto_14

    .line 49
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown object passed to Time"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_14
    :goto_14
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method public constructor greylist <init>(Ljava/util/Date;)V
    .registers 8

    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 69
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 71
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    .line 74
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x79e

    if-lt v0, v1, :cond_49

    const/16 v1, 0x801

    if-le v0, v1, :cond_3c

    goto :goto_49

    .line 82
    :cond_3c
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-void

    .line 78
    :cond_49
    :goto_49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 4

    if-eqz p0, :cond_3e

    .line 124
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_7

    goto :goto_3e

    .line 128
    :cond_7
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v0, :cond_13

    .line 130
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 132
    :cond_13
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_1f

    .line 134
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 137
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_3e
    :goto_3e
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object p0
.end method


# virtual methods
.method public blacklist getDate()Ljava/util/Date;
    .registers 4

    .line 156
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v0, :cond_d

    .line 158
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->getAdjustedDate()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 162
    :cond_d
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object p0
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid date string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getTime()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v0, :cond_d

    .line 144
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->getAdjustedTime()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 148
    :cond_d
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 186
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
