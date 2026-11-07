.class public Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1GeneralizedTime.java"


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final blacklist contents:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4

    .line 123
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 124
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    .line 127
    :try_start_9
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 131
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid date string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor blacklist <init>([B)V
    .registers 4

    .line 176
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 177
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2e

    .line 181
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    const/4 p1, 0x0

    .line 183
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result p0

    if-eqz p0, :cond_26

    return-void

    .line 185
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal characters in GeneralizedTime string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "GeneralizedTime string too short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist calculateGMTDateFormat()Ljava/text/SimpleDateFormat;
    .registers 4

    .line 298
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 300
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss.SSSz"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_31

    .line 302
    :cond_e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasSeconds()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 304
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmssz"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_31

    .line 306
    :cond_1c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasMinutes()Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 308
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmz"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_31

    .line 312
    :cond_2a
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHz"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 315
    :goto_31
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p0
.end method

.method private blacklist calculateGMTOffset(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 259
    const-string v0, ":"

    const-string v1, "GMT"

    .line 260
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 261
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    .line 262
    const-string v4, "+"

    if-gez v3, :cond_14

    neg-int v3, v3

    .line 265
    const-string v5, "-"

    goto :goto_15

    :cond_14
    move-object v5, v4

    :goto_15
    const v6, 0x36ee80

    .line 267
    div-int v7, v3, v6

    mul-int/2addr v6, v7

    sub-int/2addr v3, v6

    const v6, 0xea60

    .line 268
    div-int/2addr v3, v6

    .line 272
    :try_start_20
    invoke-virtual {v2}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 274
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 276
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->pruneFractionalSeconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 278
    :cond_30
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->calculateGMTDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v6

    .line 279
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->convert(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->convert(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 279
    invoke-virtual {v2, p1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 282
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_65
    .catch Ljava/text/ParseException; {:try_start_20 .. :try_end_65} :catch_6b

    if-eqz p1, :cond_69

    const/4 p1, 0x1

    goto :goto_6a

    :cond_69
    const/4 p1, -0x1

    :goto_6a
    add-int/2addr v7, p1

    .line 291
    :catch_6b
    :cond_6b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->convert(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->convert(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist convert(I)Ljava/lang/String;
    .registers 3

    const/16 p0, 0xa

    if-ge p1, p0, :cond_16

    .line 356
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 359
    :cond_16
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 2

    .line 500
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 4

    if-eqz p0, :cond_63

    .line 69
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_7

    goto :goto_63

    .line 73
    :cond_7
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_19

    .line 75
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 76
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_19

    .line 78
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0

    .line 81
    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_44

    .line 85
    :try_start_1d
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoding error in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

    .line 71
    :cond_63
    :goto_63
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object p0
.end method

.method private blacklist isDigit(I)Z
    .registers 3

    .line 460
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    array-length v0, p0

    if-le v0, p1, :cond_11

    aget-byte p0, p0, p1

    const/16 p1, 0x30

    if-lt p0, p1, :cond_11

    const/16 p1, 0x39

    if-gt p0, p1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist pruneFractionalSeconds(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 p0, 0xe

    .line 322
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    .line 324
    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-gt v4, v3, :cond_1e

    const/16 v4, 0x39

    if-le v3, v4, :cond_1b

    goto :goto_1e

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    :goto_1e
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-le v3, v4, :cond_50

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    if-ne v3, v1, :cond_82

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "00"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_82
    const/4 v1, 0x2

    if-ne v3, v1, :cond_b5

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b5
    return-object p1
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 485
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 490
    :cond_6
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/16 v0, 0x18

    .line 475
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    return-void
.end method

.method final blacklist encodeConstructed()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist encodedLength(Z)I
    .registers 2

    .line 470
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method public blacklist getDate()Ljava/util/Date;
    .registers 7

    .line 366
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    .line 369
    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_51

    .line 371
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 373
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss.SSS\'Z\'"

    sget-object v5, Lcom/android/org/bouncycastle/asn1/LocaleUtil;->EN_Locale:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_48

    .line 375
    :cond_1f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasSeconds()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 377
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss\'Z\'"

    sget-object v5, Lcom/android/org/bouncycastle/asn1/LocaleUtil;->EN_Locale:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_48

    .line 379
    :cond_2f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasMinutes()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 381
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmm\'Z\'"

    sget-object v5, Lcom/android/org/bouncycastle/asn1/LocaleUtil;->EN_Locale:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_48

    .line 385
    :cond_3f
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHH\'Z\'"

    sget-object v5, Lcom/android/org/bouncycastle/asn1/LocaleUtil;->EN_Locale:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 388
    :goto_48
    new-instance v4, Ljava/util/SimpleTimeZone;

    invoke-direct {v4, v3, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_b6

    :cond_51
    const/16 v1, 0x2d

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_ae

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_62

    goto :goto_ae

    .line 397
    :cond_62
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 401
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss.SSS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_71
    move-object v2, v1

    goto :goto_9d

    .line 403
    :cond_73
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasSeconds()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 407
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_71

    .line 409
    :cond_83
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasMinutes()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 413
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmm"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_71

    .line 419
    :cond_93
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHH"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_71

    .line 422
    :goto_9d
    new-instance v1, Ljava/util/SimpleTimeZone;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_b6

    .line 392
    :cond_ae
    :goto_ae
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->calculateGMTDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v2

    .line 425
    :goto_b6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 427
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->pruneFractionalSeconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    :cond_c0
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTime()Ljava/lang/String;
    .registers 9

    .line 214
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    const/4 v3, 0x0

    if-ne v1, v2, :cond_31

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GMT+00:00"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 225
    :cond_31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x6

    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 227
    const-string v4, "GMT"

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    if-eq v2, v6, :cond_45

    if-ne v2, v5, :cond_4e

    :cond_45
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, -0x9

    if-ne v2, v1, :cond_4e

    return-object v0

    .line 233
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x5

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v6, :cond_a0

    if-ne v7, v5, :cond_5d

    goto :goto_a0

    .line 244
    :cond_5d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_80

    if-ne v2, v5, :cond_6c

    goto :goto_80

    .line 254
    :cond_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->calculateGMTOffset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 248
    :cond_80
    :goto_80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":00"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 237
    :cond_a0
    :goto_a0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x2

    .line 239
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist hasFractionalSeconds()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 435
    :goto_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    array-length v3, v2

    if-eq v1, v3, :cond_16

    .line 437
    aget-byte v2, v2, v1

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_13

    const/16 v2, 0xe

    if-ne v1, v2, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    return v0
.end method

.method protected blacklist hasMinutes()Z
    .registers 2

    const/16 v0, 0xa

    .line 455
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist hasSeconds()Z
    .registers 2

    const/16 v0, 0xc

    .line 450
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 495
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 480
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;-><init>([B)V

    return-object v0
.end method
