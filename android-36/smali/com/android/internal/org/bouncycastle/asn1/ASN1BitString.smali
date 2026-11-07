.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1BitString.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

.field private static final blacklist table:[C


# instance fields
.field final blacklist contents:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    .line 66
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->table:[C

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

.method constructor blacklist <init>(BI)V
    .registers 6
    .param p1, "data"    # B
    .param p2, "padBits"    # I

    .line 151
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 152
    const/4 v0, 0x7

    if-gt p2, v0, :cond_15

    if-ltz p2, :cond_15

    .line 157
    int-to-byte v0, p2

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p1, v1, v0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 158
    return-void

    .line 154
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([BI)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    .line 167
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 168
    if-eqz p1, :cond_29

    .line 172
    array-length v0, p1

    if-nez v0, :cond_14

    if-nez p2, :cond_b

    goto :goto_14

    .line 174
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "zero length data with non-zero pad bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_14
    :goto_14
    const/4 v0, 0x7

    if-gt p2, v0, :cond_21

    if-ltz p2, :cond_21

    .line 181
    int-to-byte v0, p2

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->prepend([BB)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 182
    return-void

    .line 178
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'data\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([BZ)V
    .registers 6
    .param p1, "contents"    # [B
    .param p2, "check"    # Z

    .line 185
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 186
    if-eqz p2, :cond_3b

    .line 188
    if-eqz p1, :cond_33

    .line 192
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2b

    .line 197
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 198
    .local v0, "padBits":I
    if-lez v0, :cond_3b

    .line 200
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_22

    .line 204
    const/4 v1, 0x7

    if-gt v0, v1, :cond_1a

    goto :goto_3b

    .line 206
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "zero length data with non-zero pad bits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    .end local v0    # "padBits":I
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'contents\' cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'contents\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_3b
    :goto_3b
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 212
    return-void
.end method

.method static blacklist createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 6
    .param p0, "contents"    # [B

    .line 397
    array-length v0, p0

    .line 398
    .local v0, "length":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2f

    .line 403
    const/4 v1, 0x0

    aget-byte v2, p0, v1

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 404
    .local v2, "padBits":I
    if-lez v2, :cond_29

    .line 406
    const/4 v4, 0x7

    if-gt v2, v4, :cond_21

    const/4 v4, 0x2

    if-lt v0, v4, :cond_21

    .line 411
    add-int/lit8 v4, v0, -0x1

    aget-byte v4, p0, v4

    .line 412
    .local v4, "finalOctet":B
    shl-int/2addr v3, v2

    and-int/2addr v3, v4

    int-to-byte v3, v3

    if-eq v4, v3, :cond_29

    .line 414
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    return-object v3

    .line 408
    .end local v4    # "finalOctet":B
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid pad bits detected"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_29
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BZ)V

    return-object v3

    .line 400
    .end local v2    # "padBits":I
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "truncated BIT STRING detected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static blacklist getBytes(I)[B
    .registers 6
    .param p0, "bitString"    # I

    .line 124
    if-nez p0, :cond_6

    .line 126
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 129
    :cond_6
    const/4 v0, 0x4

    .line 130
    .local v0, "bytes":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_8
    const/16 v2, 0xff

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1a

    .line 132
    mul-int/lit8 v3, v1, 0x8

    shl-int v3, v2, v3

    and-int/2addr v3, p0

    if-eqz v3, :cond_15

    .line 134
    goto :goto_1a

    .line 136
    :cond_15
    add-int/lit8 v0, v0, -0x1

    .line 130
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 139
    .end local v1    # "i":I
    :cond_1a
    :goto_1a
    new-array v1, v0, [B

    .line 140
    .local v1, "result":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v0, :cond_2a

    .line 142
    mul-int/lit8 v4, v3, 0x8

    shr-int v4, p0, v4

    and-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 145
    .end local v3    # "i":I
    :cond_2a
    return-object v1
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 63
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 33
    if-eqz p0, :cond_6a

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v0, :cond_7

    goto :goto_6a

    .line 38
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1b

    .line 40
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 41
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_1a

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v1

    .line 45
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1a
    goto :goto_49

    .line 46
    :cond_1b
    instance-of v0, p0, [B

    if-eqz v0, :cond_49

    .line 50
    :try_start_1f
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2a} :catch_2b

    return-object v0

    .line 52
    :catch_2b
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct BIT STRING from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    :cond_49
    :goto_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

    .line 35
    :cond_6a
    :goto_6a
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method protected static blacklist getPadBits(I)I
    .registers 4
    .param p0, "bitString"    # I

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "val":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_1b

    .line 83
    if-eqz v1, :cond_13

    .line 85
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    if-eqz v2, :cond_18

    .line 87
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    .line 88
    goto :goto_1b

    .line 93
    :cond_13
    if-eqz p0, :cond_18

    .line 95
    and-int/lit16 v0, p0, 0xff

    .line 96
    goto :goto_1b

    .line 77
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 101
    .end local v1    # "i":I
    :cond_1b
    :goto_1b
    if-nez v0, :cond_1f

    .line 103
    const/4 v1, 0x0

    return v1

    .line 107
    :cond_1f
    const/4 v1, 0x1

    .line 109
    .local v1, "bits":I
    :goto_20
    shl-int/lit8 v2, v0, 0x1

    move v0, v2

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_2a

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 114
    :cond_2a
    rsub-int/lit8 v2, v1, 0x8

    return v2
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 13
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 346
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 348
    return v1

    .line 351
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 352
    .local v0, "that":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .local v2, "thisContents":[B
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 354
    .local v3, "thatContents":[B
    array-length v4, v2

    .line 355
    .local v4, "length":I
    array-length v5, v3

    if-eq v5, v4, :cond_12

    .line 357
    return v1

    .line 359
    :cond_12
    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    .line 361
    return v5

    .line 364
    :cond_16
    add-int/lit8 v6, v4, -0x1

    .line 365
    .local v6, "last":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_19
    if-ge v7, v6, :cond_25

    .line 367
    aget-byte v8, v2, v7

    aget-byte v9, v3, v7

    if-eq v8, v9, :cond_22

    .line 369
    return v1

    .line 365
    :cond_22
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 373
    .end local v7    # "i":I
    :cond_25
    aget-byte v7, v2, v1

    const/16 v8, 0xff

    and-int/2addr v7, v8

    .line 374
    .local v7, "padBits":I
    aget-byte v9, v2, v6

    shl-int v10, v8, v7

    and-int/2addr v9, v10

    int-to-byte v9, v9

    .line 375
    .local v9, "thisLastOctetDER":B
    aget-byte v10, v3, v6

    shl-int/2addr v8, v7

    and-int/2addr v8, v10

    int-to-byte v8, v8

    .line 377
    .local v8, "thatLastOctetDER":B
    if-ne v9, v8, :cond_38

    move v1, v5

    :cond_38
    return v1
.end method

.method public blacklist getBitStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public blacklist getBytes()[B
    .registers 6

    .line 304
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 306
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->EMPTY_OCTETS:[B

    return-object v0

    .line 309
    :cond_9
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    const/16 v2, 0xff

    and-int/2addr v0, v2

    .line 310
    .local v0, "padBits":I
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v4, v4

    invoke-static {v3, v1, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 312
    .local v3, "rv":[B
    array-length v4, v3

    sub-int/2addr v4, v1

    aget-byte v1, v3, v4

    shl-int/2addr v2, v0

    int-to-byte v2, v2

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    .line 313
    return-object v3
.end method

.method public blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 382
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOctetStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 222
    .local v0, "padBits":I
    if-nez v0, :cond_e

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBitStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 224
    :cond_e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected octet-aligned bitstring, but found padBits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getOctets()[B
    .registers 4

    .line 294
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-nez v0, :cond_12

    .line 299
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 296
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to get non-octet aligned data from BIT STRING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPadBits()I
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public blacklist getString()Ljava/lang/String;
    .registers 7

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getEncoded()[B

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_36

    .line 250
    .local v0, "string":[B
    nop

    .line 252
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 253
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, v0

    if-eq v2, v3, :cond_31

    .line 257
    aget-byte v3, v0, v2

    .line 258
    .local v3, "b":B
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->table:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 259
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->table:[C

    and-int/lit8 v5, v3, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 262
    .end local v2    # "i":I
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 247
    .end local v0    # "string":[B
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    :catch_36
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error encoding BitString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 328
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_8

    .line 330
    return v2

    .line 333
    :cond_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v3, 0xff

    and-int/2addr v0, v3

    .line 334
    .local v0, "padBits":I
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v4, v4

    sub-int/2addr v4, v2

    .line 336
    .local v4, "last":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v2, v2, v4

    shl-int/2addr v3, v0

    and-int/2addr v2, v3

    int-to-byte v2, v2

    .line 338
    .local v2, "lastOctetDER":B
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    invoke-static {v3, v1, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([BII)I

    move-result v1

    .line 339
    .local v1, "hc":I
    mul-int/lit16 v1, v1, 0x101

    .line 340
    xor-int/2addr v1, v2

    .line 341
    return v1
.end method

.method public blacklist intValue()I
    .registers 8

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 272
    .local v1, "end":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_c
    const/16 v5, 0xff

    if-ge v4, v1, :cond_1e

    .line 274
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v6, v6, v4

    and-int/2addr v5, v6

    add-int/lit8 v6, v4, -0x1

    mul-int/lit8 v6, v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    .line 272
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 276
    .end local v4    # "i":I
    :cond_1e
    if-gt v2, v1, :cond_38

    if-ge v1, v3, :cond_38

    .line 278
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/2addr v2, v5

    .line 279
    .local v2, "padBits":I
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v3, v3, v1

    shl-int v4, v5, v2

    and-int/2addr v3, v4

    int-to-byte v3, v3

    .line 280
    .local v3, "der":B
    and-int/lit16 v4, v3, 0xff

    add-int/lit8 v5, v1, -0x1

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v0, v4

    .line 282
    .end local v2    # "padBits":I
    .end local v3    # "der":B
    :cond_38
    return v0
.end method

.method public blacklist parser()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;
    .registers 1

    .line 232
    return-object p0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 387
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BZ)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 392
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
