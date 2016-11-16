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
    .line 91
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 94
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@9
    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 92
    return-void

    #@d
    .line 100
    :catch_0
    move-exception v0

    #@e
    .line 101
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
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

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
    .line 110
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 115
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@5
    const-string/jumbo v1, "yyyyMMddHHmmss\'Z\'"

    #@8
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@a
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@d
    .line 118
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    #@f
    const-string/jumbo v2, "Z"

    #@12
    const/4 v3, 0x0

    #@13
    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@16
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@19
    .line 120
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@23
    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Locale;)V
    .locals 4
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 136
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@5
    const-string/jumbo v1, "yyyyMMddHHmmss\'Z\'"

    #@8
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@a
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@d
    .line 137
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@f
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    #@16
    .line 140
    new-instance v1, Ljava/util/SimpleTimeZone;

    #@18
    const-string/jumbo v2, "Z"

    #@1b
    const/4 v3, 0x0

    #@1c
    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@1f
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@22
    .line 142
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@2c
    .line 132
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 148
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@5
    .line 146
    return-void
.end method

.method private calculateGMTOffset()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 216
    const-string/jumbo v4, "+"

    #@3
    .line 217
    .local v4, "sign":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@6
    move-result-object v5

    #@7
    .line 218
    .local v5, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    #@a
    move-result v3

    #@b
    .line 219
    .local v3, "offset":I
    if-gez v3, :cond_0

    #@d
    .line 221
    const-string/jumbo v4, "-"

    #@10
    .line 222
    neg-int v3, v3

    #@11
    .line 224
    :cond_0
    const v6, 0x36ee80

    #@14
    div-int v1, v3, v6

    #@16
    .line 225
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
    .line 229
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
    .line 231
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
    .line 239
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
    .line 231
    :cond_2
    const/4 v6, -0x1

    #@6b
    goto :goto_0

    #@6c
    .line 235
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
    .line 244
    const/16 v0, 0xa

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 246
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
    .line 249
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
    .line 70
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    .line 72
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    #@6
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 74
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 78
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
    .line 36
    if-eqz p0, :cond_0

    #@2
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 38
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 41
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, [B

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 45
    :try_start_0
    nop

    #@e
    nop

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
    .line 48
    :catch_0
    move-exception v0

    #@17
    .line 49
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
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

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
    .line 53
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
    .line 354
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
    .line 356
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@8
    aget-byte v1, v1, v0

    #@a
    const/16 v2, 0x2e

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 358
    const/16 v1, 0xe

    #@10
    if-ne v0, v1, :cond_0

    #@12
    .line 360
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 354
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 364
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
    .line 389
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 391
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@8
    nop

    #@9
    nop

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
    .line 383
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@2
    const/16 v1, 0x18

    #@4
    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    #@7
    .line 381
    return-void
.end method

.method encodedLength()I
    .locals 2

    #@0
    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@2
    array-length v0, v1

    #@3
    .line 376
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
    .line 256
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@5
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    .line 257
    .local v5, "stime":Ljava/lang/String;
    move-object v1, v5

    #@a
    .line 259
    .local v1, "d":Ljava/lang/String;
    const-string/jumbo v6, "Z"

    #@d
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_3

    #@13
    .line 261
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_2

    #@19
    .line 265
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@1b
    const-string/jumbo v6, "yyyyMMddHHmmss.SSS\'Z\'"

    #@1e
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@20
    invoke-direct {v2, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@23
    .line 276
    .local v2, "dateF":Ljava/text/SimpleDateFormat;
    :goto_0
    new-instance v6, Ljava/util/SimpleTimeZone;

    #@25
    const-string/jumbo v7, "Z"

    #@28
    invoke-direct {v6, v8, v7}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@2b
    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@2e
    .line 318
    :goto_1
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_1

    #@34
    .line 321
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    .line 323
    .local v3, "frac":Ljava/lang/String;
    const/4 v4, 0x1

    #@39
    .local v4, "index":I
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@3c
    move-result v6

    #@3d
    if-ge v4, v6, :cond_0

    #@3f
    .line 325
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result v0

    #@43
    .line 326
    .local v0, "ch":C
    const/16 v6, 0x30

    #@45
    if-gt v6, v0, :cond_0

    #@47
    const/16 v6, 0x39

    #@49
    if-le v0, v6, :cond_8

    #@4b
    .line 332
    .end local v0    # "ch":C
    :cond_0
    add-int/lit8 v6, v4, -0x1

    #@4d
    const/4 v7, 0x3

    #@4e
    if-le v6, v7, :cond_9

    #@50
    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const/4 v7, 0x4

    #@56
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    .line 335
    new-instance v6, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@72
    move-result-object v7

    #@73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v6

    #@7b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    .line 349
    .end local v3    # "frac":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_1
    :goto_3
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@82
    move-result-object v6

    #@83
    return-object v6

    #@84
    .line 272
    .end local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@86
    const-string/jumbo v6, "yyyyMMddHHmmss\'Z\'"

    #@89
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@8b
    invoke-direct {v2, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@8e
    .restart local v2    # "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_0

    #@8f
    .line 278
    .end local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_3
    const/16 v6, 0x2d

    #@91
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    #@94
    move-result v6

    #@95
    if-gtz v6, :cond_4

    #@97
    const/16 v6, 0x2b

    #@99
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    #@9c
    move-result v6

    #@9d
    if-lez v6, :cond_6

    #@9f
    .line 280
    :cond_4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    #@a2
    move-result-object v1

    #@a3
    .line 281
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    #@a6
    move-result v6

    #@a7
    if-eqz v6, :cond_5

    #@a9
    .line 285
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@ab
    const-string/jumbo v6, "yyyyMMddHHmmss.SSSz"

    #@ae
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@b0
    invoke-direct {v2, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@b3
    .line 296
    .restart local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :goto_4
    new-instance v6, Ljava/util/SimpleTimeZone;

    #@b5
    const-string/jumbo v7, "Z"

    #@b8
    invoke-direct {v6, v8, v7}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@bb
    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@be
    goto/16 :goto_1

    #@c0
    .line 292
    .end local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@c2
    const-string/jumbo v6, "yyyyMMddHHmmssz"

    #@c5
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@c7
    invoke-direct {v2, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@ca
    .restart local v2    # "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_4

    #@cb
    .line 300
    .end local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_6
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    #@ce
    move-result v6

    #@cf
    if-eqz v6, :cond_7

    #@d1
    .line 304
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@d3
    const-string/jumbo v6, "yyyyMMddHHmmss.SSS"

    #@d6
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@d8
    invoke-direct {v2, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@db
    .line 315
    .restart local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :goto_5
    new-instance v6, Ljava/util/SimpleTimeZone;

    #@dd
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@e0
    move-result-object v7

    #@e1
    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@e4
    move-result-object v7

    #@e5
    invoke-direct {v6, v8, v7}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@e8
    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@eb
    goto/16 :goto_1

    #@ed
    .line 311
    .end local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_7
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@ef
    const-string/jumbo v6, "yyyyMMddHHmmss"

    #@f2
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@f4
    invoke-direct {v2, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@f7
    .restart local v2    # "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_5

    #@f8
    .line 323
    .restart local v0    # "ch":C
    .restart local v3    # "frac":Ljava/lang/String;
    .restart local v4    # "index":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    #@fa
    goto/16 :goto_2

    #@fc
    .line 337
    .end local v0    # "ch":C
    :cond_9
    add-int/lit8 v6, v4, -0x1

    #@fe
    const/4 v7, 0x1

    #@ff
    if-ne v6, v7, :cond_a

    #@101
    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@109
    move-result-object v7

    #@10a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v6

    #@10e
    const-string/jumbo v7, "00"

    #@111
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v6

    #@115
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@118
    move-result-object v7

    #@119
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v6

    #@11d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v3

    #@121
    .line 340
    new-instance v6, Ljava/lang/StringBuilder;

    #@123
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@126
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@129
    move-result-object v7

    #@12a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v6

    #@12e
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v6

    #@132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@135
    move-result-object v1

    #@136
    goto/16 :goto_3

    #@138
    .line 342
    :cond_a
    add-int/lit8 v6, v4, -0x1

    #@13a
    const/4 v7, 0x2

    #@13b
    if-ne v6, v7, :cond_1

    #@13d
    .line 344
    new-instance v6, Ljava/lang/StringBuilder;

    #@13f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@142
    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@145
    move-result-object v7

    #@146
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v6

    #@14a
    const-string/jumbo v7, "0"

    #@14d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v6

    #@151
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@154
    move-result-object v7

    #@155
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v6

    #@159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15c
    move-result-object v3

    #@15d
    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    #@15f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@162
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@165
    move-result-object v7

    #@166
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v6

    #@16a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v6

    #@16e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v1

    #@172
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
    .line 177
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    #@7
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 182
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
    .line 184
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
    .line 188
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@3b
    move-result v3

    #@3c
    add-int/lit8 v1, v3, -0x5

    #@3e
    .line 189
    .local v1, "signPos":I
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v0

    #@42
    .line 190
    .local v0, "sign":C
    if-eq v0, v7, :cond_1

    #@44
    if-ne v0, v6, :cond_2

    #@46
    .line 192
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
    .line 193
    const-string/jumbo v4, "GMT"

    #@56
    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    .line 194
    add-int/lit8 v4, v1, 0x3

    #@5c
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    .line 195
    const-string/jumbo v4, ":"

    #@67
    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    .line 196
    add-int/lit8 v4, v1, 0x3

    #@6d
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    .line 192
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
    .line 200
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@7d
    move-result v3

    #@7e
    add-int/lit8 v1, v3, -0x3

    #@80
    .line 201
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@83
    move-result v0

    #@84
    .line 202
    if-eq v0, v7, :cond_3

    #@86
    if-ne v0, v6, :cond_4

    #@88
    .line 204
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
    .line 205
    const-string/jumbo v4, "GMT"

    #@98
    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v3

    #@9c
    .line 206
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9f
    move-result-object v4

    #@a0
    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v3

    #@a4
    .line 207
    const-string/jumbo v4, ":00"

    #@a7
    .line 204
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
    .line 211
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
    .line 158
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
    .line 399
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
    .line 369
    const/4 v0, 0x0

    #@1
    return v0
.end method
