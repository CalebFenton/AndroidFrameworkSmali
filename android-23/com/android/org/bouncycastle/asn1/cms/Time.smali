.class public Lcom/android/org/bouncycastle/asn1/cms/Time;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Time.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 2
    .param p1, "time"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 53
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 54
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 59
    :cond_0
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@d
    .line 51
    return-void

    #@e
    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "unknown object passed to Time"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 7
    .param p1, "time"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 69
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 72
    new-instance v2, Ljava/util/SimpleTimeZone;

    #@6
    const-string/jumbo v4, "Z"

    #@9
    invoke-direct {v2, v6, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@c
    .line 73
    .local v2, "tz":Ljava/util/SimpleTimeZone;
    new-instance v1, Ljava/text/SimpleDateFormat;

    #@e
    const-string/jumbo v4, "yyyyMMddHHmmss"

    #@11
    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@14
    .line 75
    .local v1, "dateF":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@17
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    const-string/jumbo v5, "Z"

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 78
    .local v0, "d":Ljava/lang/String;
    const/4 v4, 0x4

    #@30
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@37
    move-result v3

    #@38
    .line 80
    .local v3, "year":I
    const/16 v4, 0x79e

    #@3a
    if-lt v3, v4, :cond_0

    #@3c
    const/16 v4, 0x801

    #@3e
    if-le v3, v4, :cond_1

    #@40
    .line 82
    :cond_0
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    #@42
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    #@45
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@47
    .line 70
    :goto_0
    return-void

    #@48
    .line 86
    :cond_1
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    #@4a
    const/4 v5, 0x2

    #@4b
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    #@52
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@54
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Locale;)V
    .locals 7
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 99
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 103
    new-instance v2, Ljava/util/SimpleTimeZone;

    #@6
    const-string/jumbo v4, "Z"

    #@9
    invoke-direct {v2, v6, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@c
    .line 104
    .local v2, "tz":Ljava/util/SimpleTimeZone;
    new-instance v1, Ljava/text/SimpleDateFormat;

    #@e
    const-string/jumbo v4, "yyyyMMddHHmmss"

    #@11
    invoke-direct {v1, v4, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@14
    .line 106
    .local v1, "dateF":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@17
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    const-string/jumbo v5, "Z"

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 109
    .local v0, "d":Ljava/lang/String;
    const/4 v4, 0x4

    #@30
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@37
    move-result v3

    #@38
    .line 111
    .local v3, "year":I
    const/16 v4, 0x79e

    #@3a
    if-lt v3, v4, :cond_0

    #@3c
    const/16 v4, 0x801

    #@3e
    if-le v3, v4, :cond_1

    #@40
    .line 113
    :cond_0
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    #@42
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    #@45
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@47
    .line 101
    :goto_0
    return-void

    #@48
    .line 117
    :cond_1
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    #@4a
    const/4 v5, 0x2

    #@4b
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    #@52
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@54
    goto :goto_0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/cms/Time;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/cms/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Time;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Time;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 138
    if-eqz p0, :cond_0

    #@2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Time;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 140
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/Time;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 142
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 144
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/Time;

    #@f
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@11
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/cms/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@14
    return-object v0

    #@15
    .line 146
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@17
    if-eqz v0, :cond_3

    #@19
    .line 148
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/Time;

    #@1b
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@1d
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/cms/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@20
    return-object v0

    #@21
    .line 151
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "unknown object in factory: "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 178
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->getAdjustedDate()Ljava/util/Date;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@11
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@13
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 186
    :catch_0
    move-exception v0

    #@19
    .line 187
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "invalid date string: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 161
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->getAdjustedTime()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@11
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@13
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    return-object v0
.end method
