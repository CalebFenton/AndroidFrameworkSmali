.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1BitString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1BitString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;
.implements Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

.field private static final blacklist table:[C


# instance fields
.field final blacklist contents:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    const/16 v0, 0x10

    .line 66
    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->table:[C

    return-void

    :array_14
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor blacklist <init>([BI)V
    .registers 4

    .line 167
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_28

    .line 172
    array-length v0, p1

    if-nez v0, :cond_13

    if-nez p2, :cond_b

    goto :goto_13

    .line 174
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "zero length data with non-zero pad bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_13
    const/4 v0, 0x7

    if-gt p2, v0, :cond_20

    if-ltz p2, :cond_20

    int-to-byte p2, p2

    .line 181
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->prepend([BB)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    return-void

    .line 178
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 170
    :cond_28
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'data\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor blacklist <init>([BZ)V
    .registers 5

    .line 185
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p2, :cond_3a

    if-eqz p1, :cond_32

    .line 192
    array-length p2, p1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2a

    const/4 p2, 0x0

    .line 197
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    if-lez p2, :cond_3a

    .line 200
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_22

    const/4 v0, 0x7

    if-gt p2, v0, :cond_1a

    goto :goto_3a

    .line 206
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "zero length data with non-zero pad bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'contents\' cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 190
    :cond_32
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'contents\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_3a
    :goto_3a
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    return-void
.end method

.method static blacklist createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 7

    .line 397
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2f

    const/4 v2, 0x0

    .line 403
    aget-byte v3, p0, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-lez v3, :cond_29

    const/4 v5, 0x7

    if-gt v3, v5, :cond_21

    const/4 v5, 0x2

    if-lt v0, v5, :cond_21

    sub-int/2addr v0, v1

    .line 411
    aget-byte v0, p0, v0

    shl-int v1, v4, v3

    and-int/2addr v1, v0

    int-to-byte v1, v1

    if-eq v0, v1, :cond_29

    .line 414
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    invoke-direct {v0, p0, v2}, Lcom/android/org/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    return-object v0

    .line 408
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid pad bits detected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 418
    :cond_29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p0, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BZ)V

    return-object v0

    .line 400
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "truncated BIT STRING detected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 3

    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 4

    if-eqz p0, :cond_63

    .line 33
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v0, :cond_7

    goto :goto_63

    .line 38
    :cond_7
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_19

    .line 40
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 41
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_44

    .line 43
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    return-object v0

    .line 46
    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_44

    .line 50
    :try_start_1d
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct BIT STRING from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
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

    .line 35
    :cond_63
    :goto_63
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    return-object p0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 8

    .line 346
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 351
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    .line 352
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 354
    array-length v0, p0

    .line 355
    array-length v2, p1

    if-eq v2, v0, :cond_11

    return v1

    :cond_11
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    return v2

    :cond_15
    sub-int/2addr v0, v2

    move v3, v1

    :goto_17
    if-ge v3, v0, :cond_23

    .line 367
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    if-eq v4, v5, :cond_20

    return v1

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 373
    :cond_23
    aget-byte v3, p0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    .line 374
    aget-byte p0, p0, v0

    shl-int v3, v4, v3

    and-int/2addr p0, v3

    int-to-byte p0, p0

    .line 375
    aget-byte p1, p1, v0

    and-int/2addr p1, v3

    int-to-byte p1, p1

    if-ne p0, p1, :cond_35

    return v2

    :cond_35
    return v1
.end method

.method public blacklist getBitStream()Ljava/io/InputStream;
    .registers 4

    .line 216
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v0, p0, v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public blacklist getBytes()[B
    .registers 5

    .line 304
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 306
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->EMPTY_OCTETS:[B

    return-object p0

    :cond_9
    const/4 v0, 0x0

    .line 309
    aget-byte v0, p0, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    .line 310
    array-length v3, p0

    invoke-static {p0, v1, v3}, Lcom/android/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 312
    array-length v3, p0

    sub-int/2addr v3, v1

    aget-byte v1, p0, v3

    shl-int v0, v2, v0

    int-to-byte v0, v0

    and-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, v3

    return-object p0
.end method

.method public blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 382
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOctets()[B
    .registers 3

    .line 294
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 299
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    .line 296
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "attempt to get non-octet aligned data from BIT STRING"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getPadBits()I
    .registers 2

    .line 318
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public blacklist getString()Ljava/lang/String;
    .registers 6

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_33

    .line 252
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x23

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 255
    :goto_14
    array-length v2, p0

    if-eq v1, v2, :cond_2e

    .line 257
    aget-byte v2, p0, v1

    .line 258
    sget-object v3, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->table:[C

    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v2, v2, 0xf

    .line 259
    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 262
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_33
    move-exception p0

    .line 249
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error encoding BitString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 328
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const/4 v0, 0x0

    .line 333
    aget-byte v1, p0, v0

    const/16 v3, 0xff

    and-int/2addr v1, v3

    .line 334
    array-length v4, p0

    sub-int/2addr v4, v2

    .line 336
    aget-byte v2, p0, v4

    shl-int v1, v3, v1

    and-int/2addr v1, v2

    int-to-byte v1, v1

    .line 338
    invoke-static {p0, v0, v4}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([BII)I

    move-result p0

    mul-int/lit16 p0, p0, 0x101

    xor-int/2addr p0, v1

    return p0
.end method

.method public blacklist intValue()I
    .registers 9

    .line 271
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    move v4, v1

    move v5, v3

    :goto_d
    const/16 v6, 0xff

    if-ge v4, v0, :cond_1f

    .line 274
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v7, v7, v4

    and-int/2addr v6, v7

    add-int/lit8 v7, v4, -0x1

    mul-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1f
    if-gt v1, v0, :cond_35

    if-ge v0, v2, :cond_35

    .line 278
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v2, p0, v3

    and-int/2addr v2, v6

    .line 279
    aget-byte p0, p0, v0

    shl-int v2, v6, v2

    and-int/2addr p0, v2

    int-to-byte p0, p0

    and-int/2addr p0, v6

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    shl-int/2addr p0, v0

    or-int/2addr p0, v5

    return p0

    :cond_35
    return v5
.end method

.method public blacklist parser()Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;
    .registers 1

    .line 0
    return-object p0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 387
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BZ)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 392
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 323
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
