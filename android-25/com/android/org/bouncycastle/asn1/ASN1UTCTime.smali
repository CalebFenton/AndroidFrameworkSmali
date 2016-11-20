.class public Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1UTCTime.java"


# instance fields
.field private time:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "time"    # Ljava/lang/String;

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 109
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    #@9
    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 107
    return-void

    #@d
    .line 115
    :catch_0
    move-exception v0

    #@e
    .line 116
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
    .line 124
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 129
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@5
    const-string/jumbo v1, "yyMMddHHmmss\'Z\'"

    #@8
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@a
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@d
    .line 132
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
    .line 134
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    #@23
    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Locale;)V
    .locals 4
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 150
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@5
    const-string/jumbo v1, "yyMMddHHmmss\'Z\'"

    #@8
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@a
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@d
    .line 151
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    #@14
    .line 154
    new-instance v1, Ljava/util/SimpleTimeZone;

    #@16
    const-string/jumbo v2, "Z"

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@1d
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@20
    .line 156
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    #@2a
    .line 146
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "time"    # [B

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 162
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    #@5
    .line 160
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;
    .locals 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    .line 86
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    if-nez p1, :cond_0

    #@6
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 88
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 92
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@11
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@13
    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;-><init>([B)V

    #@1a
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 50
    if-eqz p0, :cond_0

    #@2
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 52
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 55
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, [B

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 59
    :try_start_0
    nop

    #@e
    nop

    #@f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    return-object v1

    #@16
    .line 62
    :catch_0
    move-exception v0

    #@17
    .line 63
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
    .line 67
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


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 2
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 311
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 313
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    #@8
    nop

    #@9
    nop

    #@a
    .end local p1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    #@c
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    const/16 v2, 0x17

    #@2
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@5
    .line 298
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    #@7
    array-length v1, v2

    #@8
    .line 300
    .local v1, "length":I
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    #@b
    .line 302
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-eq v0, v1, :cond_0

    #@e
    .line 304
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    #@10
    aget-byte v2, v2, v0

    #@12
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@15
    .line 302
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 294
    :cond_0
    return-void
.end method

.method encodedLength()I
    .locals 2

    #@0
    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    #@2
    array-length v0, v1

    #@3
    .line 289
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

.method public getAdjustedDate()Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v1, "yyyyMMddHHmmssz"

    #@5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@a
    .line 198
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    #@c
    const-string/jumbo v2, "Z"

    #@f
    const/4 v3, 0x0

    #@10
    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@13
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@16
    .line 200
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->getAdjustedTime()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public getAdjustedTime()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->getTime()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 270
    .local v0, "d":Ljava/lang/String;
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v1

    #@9
    const/16 v2, 0x35

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "20"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    return-object v1

    #@22
    .line 276
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "19"

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    return-object v1
.end method

.method public getDate()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 177
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v1, "yyMMddHHmmssz"

    #@5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@a
    .line 180
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->getTime()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public getTime()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const/16 v9, 0xd

    #@2
    const/16 v8, 0xf

    #@4
    const/16 v7, 0xc

    #@6
    const/16 v6, 0xa

    #@8
    const/4 v5, 0x0

    #@9
    .line 221
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    #@b
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 226
    .local v2, "stime":Ljava/lang/String;
    const/16 v3, 0x2d

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@14
    move-result v3

    #@15
    if-gez v3, :cond_1

    #@17
    const/16 v3, 0x2b

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@1c
    move-result v3

    #@1d
    if-gez v3, :cond_1

    #@1f
    .line 228
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@22
    move-result v3

    #@23
    const/16 v4, 0xb

    #@25
    if-ne v3, v4, :cond_0

    #@27
    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    const-string/jumbo v4, "00GMT+00:00"

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    return-object v3

    #@40
    .line 234
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    const-string/jumbo v4, "GMT+00:00"

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    return-object v3

    #@59
    .line 239
    :cond_1
    const/16 v3, 0x2d

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@5e
    move-result v1

    #@5f
    .line 240
    .local v1, "index":I
    if-gez v1, :cond_2

    #@61
    .line 242
    const/16 v3, 0x2b

    #@63
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@66
    move-result v1

    #@67
    .line 244
    :cond_2
    move-object v0, v2

    #@68
    .line 246
    .local v0, "d":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@6b
    move-result v3

    #@6c
    add-int/lit8 v3, v3, -0x3

    #@6e
    if-ne v1, v3, :cond_3

    #@70
    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    const-string/jumbo v4, "00"

    #@7c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    .line 251
    :cond_3
    if-ne v1, v6, :cond_4

    #@86
    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v3

    #@93
    const-string/jumbo v4, "00GMT"

    #@96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v3

    #@9a
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9d
    move-result-object v4

    #@9e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v3

    #@a2
    const-string/jumbo v4, ":"

    #@a5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v3

    #@a9
    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v3

    #@b5
    return-object v3

    #@b6
    .line 257
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@be
    move-result-object v4

    #@bf
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v3

    #@c3
    const-string/jumbo v4, "GMT"

    #@c6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v3

    #@ca
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@cd
    move-result-object v4

    #@ce
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v3

    #@d2
    const-string/jumbo v4, ":"

    #@d5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v3

    #@d9
    const/16 v4, 0x11

    #@db
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@de
    move-result-object v4

    #@df
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v3

    #@e3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v3

    #@e7
    return-object v3
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

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
    .line 282
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
