.class public Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1GeneralizedTime.java"


# instance fields
.field private time:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "time"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 93
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@9
    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 91
    return-void

    #@d
    .line 99
    :catch_0
    move-exception v0

    #@e
    .line 100
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "invalid date string: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 4
    .param p1, "time"    # Ljava/util/Date;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 112
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@5
    const-string/jumbo v1, "yyyyMMddHHmmss\'Z\'"

    #@8
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@b
    .line 114
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    #@d
    const-string/jumbo v2, "Z"

    #@10
    const/4 v3, 0x0

    #@11
    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@14
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@17
    .line 116
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@21
    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Locale;)V
    .locals 4
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 130
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@5
    const-string/jumbo v1, "yyyyMMddHHmmss\'Z\'"

    #@8
    invoke-direct {v0, v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@b
    .line 132
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    #@d
    const-string/jumbo v2, "Z"

    #@10
    const/4 v3, 0x0

    #@11
    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@14
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@17
    .line 134
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@21
    .line 128
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 140
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@5
    .line 138
    return-void
.end method

.method private calculateGMTOffset()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 207
    const-string/jumbo v4, "+"

    #@3
    .line 208
    .local v4, "sign":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@6
    move-result-object v5

    #@7
    .line 209
    .local v5, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    #@a
    move-result v3

    #@b
    .line 210
    .local v3, "offset":I
    if-gez v3, :cond_0

    #@d
    .line 212
    const-string/jumbo v4, "-"

    #@10
    .line 213
    neg-int v3, v3

    #@11
    .line 215
    :cond_0
    const v6, 0x36ee80

    #@14
    div-int v1, v3, v6

    #@16
    .line 216
    .local v1, "hours":I
    mul-int/lit8 v6, v1, 0x3c

    #@18
    mul-int/lit8 v6, v6, 0x3c

    #@1a
    mul-int/lit16 v6, v6, 0x3e8

    #@1c
    sub-int v6, v3, v6

    #@1e
    const v7, 0xea60

    #@21
    div-int v2, v6, v7

    #@23
    .line 220
    .local v2, "minutes":I
    :try_start_0
    invoke-virtual {v5}, Ljava/util/TimeZone;->useDaylightTime()Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_1

    #@29
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v5, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_1

    #@33
    .line 222
    const-string/jumbo v6, "+"

    #@36
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_2

    #@3c
    const/4 v6, 0x1

    #@3d
    :goto_0
    add-int/2addr v1, v6

    #@3e
    .line 230
    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v7, "GMT"

    #@46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->convert(I)Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    const-string/jumbo v7, ":"

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->convert(I)Ljava/lang/String;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    return-object v6

    #@6a
    .line 222
    :cond_2
    const/4 v6, -0x1

    #@6b
    goto :goto_0

    #@6c
    .line 226
    :catch_0
    move-exception v0

    #@6d
    .local v0, "e":Ljava/text/ParseException;
    goto :goto_1
.end method

.method private convert(I)Ljava/lang/String;
    .locals 2
    .param p1, "time"    # I

    #@0
    .prologue
    .line 235
    const/16 v0, 0xa

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "0"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 240
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    .line 71
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    #@6
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 73
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 77
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@11
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@13
    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    #@1a
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 35
    if-eqz p0, :cond_0

    #@2
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 37
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 40
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, [B

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 44
    :try_start_0
    check-cast p0, [B

    #@f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    return-object v1

    #@16
    .line 47
    :catch_0
    move-exception v0

    #@17
    .line 48
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "encoding error in getInstance: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@37
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "illegal object in getInstance: "

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1
.end method

.method private hasFractionalSeconds()Z
    .locals 3

    #@0
    .prologue
    .line 327
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@3
    array-length v1, v1

    #@4
    if-eq v0, v1, :cond_1

    #@6
    .line 329
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@8
    aget-byte v1, v1, v0

    #@a
    const/16 v2, 0x2e

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 331
    const/16 v1, 0xe

    #@10
    if-ne v0, v1, :cond_0

    #@12
    .line 333
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 327
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 337
    :cond_1
    const/4 v1, 0x0

    #@18
    return v1
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 2
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 362
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 364
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@a
    .end local p1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@c
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@2
    const/16 v1, 0x18

    #@4
    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    #@7
    .line 354
    return-void
.end method

.method encodedLength()I
    .locals 2

    #@0
    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@2
    array-length v0, v1

    #@3
    .line 349
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@6
    move-result v1

    #@7
    add-int/lit8 v1, v1, 0x1

    #@9
    add-int/2addr v1, v0

    #@a
    return v1
.end method

.method public getDate()Ljava/util/Date;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0xe

    #@2
    const/4 v8, 0x0

    #@3
    .line 247
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@5
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    .line 248
    .local v5, "stime":Ljava/lang/String;
    move-object v1, v5

    #@a
    .line 250
    .local v1, "d":Ljava/lang/String;
    const-string/jumbo v6, "Z"

    #@d
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_3

    #@13
    .line 252
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_2

    #@19
    .line 254
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@1b
    const-string/jumbo v6, "yyyyMMddHHmmss.SSS\'Z\'"

    #@1e
    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@21
    .line 261
    .local v2, "dateF":Ljava/text/SimpleDateFormat;
    :goto_0
    new-instance v6, Ljava/util/SimpleTimeZone;

    #@23
    const-string/jumbo v7, "Z"

    #@26
    invoke-direct {v6, v8, v7}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@29
    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@2c
    .line 291
    :goto_1
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_1

    #@32
    .line 294
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 296
    .local v3, "frac":Ljava/lang/String;
    const/4 v4, 0x1

    #@37
    .local v4, "index":I
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@3a
    move-result v6

    #@3b
    if-ge v4, v6, :cond_0

    #@3d
    .line 298
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@40
    move-result v0

    #@41
    .line 299
    .local v0, "ch":C
    const/16 v6, 0x30

    #@43
    if-gt v6, v0, :cond_0

    #@45
    const/16 v6, 0x39

    #@47
    if-le v0, v6, :cond_8

    #@49
    .line 305
    .end local v0    # "ch":C
    :cond_0
    add-int/lit8 v6, v4, -0x1

    #@4b
    const/4 v7, 0x3

    #@4c
    if-le v6, v7, :cond_9

    #@4e
    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const/4 v7, 0x4

    #@54
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v6

    #@79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    .line 322
    .end local v3    # "frac":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_1
    :goto_3
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@80
    move-result-object v6

    #@81
    return-object v6

    #@82
    .line 258
    .end local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@84
    const-string/jumbo v6, "yyyyMMddHHmmss\'Z\'"

    #@87
    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@8a
    .restart local v2    # "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_0

    #@8b
    .line 263
    .end local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_3
    const/16 v6, 0x2d

    #@8d
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    #@90
    move-result v6

    #@91
    if-gtz v6, :cond_4

    #@93
    const/16 v6, 0x2b

    #@95
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    #@98
    move-result v6

    #@99
    if-lez v6, :cond_6

    #@9b
    .line 265
    :cond_4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    #@9e
    move-result-object v1

    #@9f
    .line 266
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    #@a2
    move-result v6

    #@a3
    if-eqz v6, :cond_5

    #@a5
    .line 268
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@a7
    const-string/jumbo v6, "yyyyMMddHHmmss.SSSz"

    #@aa
    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@ad
    .line 275
    .restart local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :goto_4
    new-instance v6, Ljava/util/SimpleTimeZone;

    #@af
    const-string/jumbo v7, "Z"

    #@b2
    invoke-direct {v6, v8, v7}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@b5
    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@b8
    goto/16 :goto_1

    #@ba
    .line 272
    .end local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@bc
    const-string/jumbo v6, "yyyyMMddHHmmssz"

    #@bf
    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@c2
    .restart local v2    # "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_4

    #@c3
    .line 279
    .end local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_6
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    #@c6
    move-result v6

    #@c7
    if-eqz v6, :cond_7

    #@c9
    .line 281
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@cb
    const-string/jumbo v6, "yyyyMMddHHmmss.SSS"

    #@ce
    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@d1
    .line 288
    .restart local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :goto_5
    new-instance v6, Ljava/util/SimpleTimeZone;

    #@d3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@d6
    move-result-object v7

    #@d7
    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@da
    move-result-object v7

    #@db
    invoke-direct {v6, v8, v7}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@de
    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@e1
    goto/16 :goto_1

    #@e3
    .line 285
    .end local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_7
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@e5
    const-string/jumbo v6, "yyyyMMddHHmmss"

    #@e8
    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@eb
    .restart local v2    # "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_5

    #@ec
    .line 296
    .restart local v0    # "ch":C
    .restart local v3    # "frac":Ljava/lang/String;
    .restart local v4    # "index":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    #@ee
    goto/16 :goto_2

    #@f0
    .line 310
    .end local v0    # "ch":C
    :cond_9
    add-int/lit8 v6, v4, -0x1

    #@f2
    const/4 v7, 0x1

    #@f3
    if-ne v6, v7, :cond_a

    #@f5
    .line 312
    new-instance v6, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@fd
    move-result-object v7

    #@fe
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v6

    #@102
    const-string/jumbo v7, "00"

    #@105
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v6

    #@109
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@10c
    move-result-object v7

    #@10d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v6

    #@111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v3

    #@115
    .line 313
    new-instance v6, Ljava/lang/StringBuilder;

    #@117
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@11a
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11d
    move-result-object v7

    #@11e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v6

    #@122
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v6

    #@126
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v1

    #@12a
    goto/16 :goto_3

    #@12c
    .line 315
    :cond_a
    add-int/lit8 v6, v4, -0x1

    #@12e
    const/4 v7, 0x2

    #@12f
    if-ne v6, v7, :cond_1

    #@131
    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@139
    move-result-object v7

    #@13a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v6

    #@13e
    const-string/jumbo v7, "0"

    #@141
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v6

    #@145
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@148
    move-result-object v7

    #@149
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v6

    #@14d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v3

    #@151
    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    #@153
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@156
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@159
    move-result-object v7

    #@15a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v6

    #@15e
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v6

    #@162
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@165
    move-result-object v1

    #@166
    goto/16 :goto_3
.end method

.method public getTime()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x2d

    #@2
    const/16 v6, 0x2b

    #@4
    const/4 v5, 0x0

    #@5
    .line 168
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@7
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 173
    .local v2, "stime":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@e
    move-result v3

    #@f
    add-int/lit8 v3, v3, -0x1

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v3

    #@15
    const/16 v4, 0x5a

    #@17
    if-ne v3, v4, :cond_0

    #@19
    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@21
    move-result v4

    #@22
    add-int/lit8 v4, v4, -0x1

    #@24
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    const-string/jumbo v4, "GMT+00:00"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    return-object v3

    #@38
    .line 179
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@3b
    move-result v3

    #@3c
    add-int/lit8 v1, v3, -0x5

    #@3e
    .line 180
    .local v1, "signPos":I
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v0

    #@42
    .line 181
    .local v0, "sign":C
    if-eq v0, v7, :cond_1

    #@44
    if-ne v0, v6, :cond_2

    #@46
    .line 183
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    .line 184
    const-string/jumbo v4, "GMT"

    #@56
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    .line 185
    add-int/lit8 v4, v1, 0x3

    #@5c
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    .line 186
    const-string/jumbo v4, ":"

    #@67
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    .line 187
    add-int/lit8 v4, v1, 0x3

    #@6d
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    return-object v3

    #@7a
    .line 191
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@7d
    move-result v3

    #@7e
    add-int/lit8 v1, v3, -0x3

    #@80
    .line 192
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@83
    move-result v0

    #@84
    .line 193
    if-eq v0, v7, :cond_3

    #@86
    if-ne v0, v6, :cond_4

    #@88
    .line 195
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v3

    #@95
    .line 196
    const-string/jumbo v4, "GMT"

    #@98
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v3

    #@9c
    .line 197
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9f
    move-result-object v4

    #@a0
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v3

    #@a4
    .line 198
    const-string/jumbo v4, ":00"

    #@a7
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v3

    #@ab
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v3

    #@af
    return-object v3

    #@b0
    .line 202
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v3

    #@b9
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->calculateGMTOffset()Ljava/lang/String;

    #@bc
    move-result-object v4

    #@bd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v3

    #@c5
    return-object v3
.end method

.method public getTimeString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 342
    const/4 v0, 0x0

    #@1
    return v0
.end method
