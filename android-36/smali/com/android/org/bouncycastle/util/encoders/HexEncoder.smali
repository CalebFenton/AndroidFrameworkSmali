.class public Lcom/android/org/bouncycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;
.source "HexEncoder.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final blacklist decodingTable:[B

.field protected final blacklist encodingTable:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 14
    new-array v0, v0, [B

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    const/16 v0, 0x80

    .line 23
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    .line 47
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->initialiseDecodingTable()V

    return-void

    :array_16
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private static blacklist ignore(C)Z
    .registers 2

    .line 0
    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0x20

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 13

    const/16 v0, 0x24

    .line 192
    new-array v1, v0, [B

    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_8
    if-lez v2, :cond_1a

    add-int/lit8 v3, v2, -0x1

    .line 199
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_1a
    :goto_1a
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_1e
    if-ge v4, v2, :cond_72

    :goto_20
    if-ge v4, v2, :cond_2f

    .line 210
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v7

    if-eqz v7, :cond_2f

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 215
    :cond_2f
    iget-object v7, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v7, v4

    :goto_39
    if-ge v8, v2, :cond_48

    .line 217
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v7

    if-eqz v7, :cond_48

    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    .line 222
    :cond_48
    iget-object v7, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v7, v7, v8

    or-int v8, v4, v7

    if-ltz v8, :cond_6a

    add-int/lit8 v8, v5, 0x1

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v7

    int-to-byte v4, v4

    .line 229
    aput-byte v4, v1, v5

    if-ne v8, v0, :cond_65

    .line 233
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    move v5, v3

    goto :goto_66

    :cond_65
    move v5, v8

    :goto_66
    add-int/lit8 v6, v6, 0x1

    move v4, v9

    goto :goto_1e

    .line 226
    :cond_6a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid characters encountered in Hex string"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_72
    if-lez v5, :cond_77

    .line 242
    invoke-virtual {p2, v1, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    :cond_77
    return v6
.end method

.method public blacklist decode([BIILjava/io/OutputStream;)I
    .registers 13

    const/16 v0, 0x24

    .line 124
    new-array v1, v0, [B

    add-int/2addr p3, p2

    :goto_5
    if-le p3, p2, :cond_16

    add-int/lit8 v2, p3, -0x1

    .line 131
    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_16
    :goto_16
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_19
    if-ge p2, p3, :cond_67

    :goto_1b
    if-ge p2, p3, :cond_29

    .line 142
    aget-byte v5, p1, p2

    int-to-char v5, v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v5

    if-eqz v5, :cond_29

    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    .line 147
    :cond_29
    iget-object v5, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v6, p2, 0x1

    aget-byte p2, p1, p2

    aget-byte p2, v5, p2

    :goto_31
    if-ge v6, p3, :cond_3f

    .line 149
    aget-byte v5, p1, v6

    int-to-char v5, v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v5

    if-eqz v5, :cond_3f

    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 154
    :cond_3f
    iget-object v5, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p1, v6

    aget-byte v5, v5, v6

    or-int v6, p2, v5

    if-ltz v6, :cond_5f

    add-int/lit8 v6, v3, 0x1

    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p2, v5

    int-to-byte p2, p2

    .line 161
    aput-byte p2, v1, v3

    if-ne v6, v0, :cond_5a

    .line 165
    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write([B)V

    move v3, v2

    goto :goto_5b

    :cond_5a
    move v3, v6

    :goto_5b
    add-int/lit8 v4, v4, 0x1

    move p2, v7

    goto :goto_19

    .line 158
    :cond_5f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid characters encountered in Hex data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    if-lez v3, :cond_6c

    .line 173
    invoke-virtual {p4, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    :cond_6c
    return v4
.end method

.method blacklist decodeStrict(Ljava/lang/String;II)[B
    .registers 9

    if-eqz p1, :cond_50

    if-ltz p2, :cond_48

    if-ltz p3, :cond_48

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_48

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_40

    ushr-int/lit8 p3, p3, 0x1

    .line 264
    new-array v0, p3, [B

    const/4 v1, 0x0

    :goto_16
    if-ge v1, p3, :cond_3f

    .line 269
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v2, v2, v4

    .line 270
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v4, v3

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v2, v3

    if-ltz v2, :cond_37

    int-to-byte v2, v2

    .line 278
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 275
    :cond_37
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid characters encountered in Hex string"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    return-object v0

    .line 260
    :cond_40
    new-instance p0, Ljava/io/IOException;

    const-string p1, "a hexadecimal encoding must have an even number of characters"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 256
    :cond_48
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "invalid offset and/or length specified"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 252
    :cond_50
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'str\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist encode([BIILjava/io/OutputStream;)I
    .registers 13

    const/4 v0, 0x0

    if-gez p3, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x48

    .line 90
    new-array v6, v1, [B

    move v4, p2

    move p2, p3

    :goto_a
    if-lez p2, :cond_20

    const/16 v1, 0x24

    .line 94
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 95
    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encode([BII[BI)I

    move-result p0

    .line 96
    invoke-virtual {p4, v6, v0, p0}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v4, v5

    sub-int/2addr p2, v5

    move-object p0, v2

    goto :goto_a

    :cond_20
    mul-int/lit8 p3, p3, 0x2

    return p3
.end method

.method public blacklist encode([BII[BI)I
    .registers 11

    add-int/2addr p3, p2

    move v0, p5

    :goto_2
    if-ge p2, p3, :cond_1e

    add-int/lit8 v1, p2, 0x1

    .line 58
    aget-byte p2, p1, p2

    and-int/lit16 v2, p2, 0xff

    add-int/lit8 v3, v0, 0x1

    .line 60
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    ushr-int/lit8 v2, v2, 0x4

    aget-byte v2, v4, v2

    aput-byte v2, p4, v0

    add-int/lit8 v0, v0, 0x2

    and-int/lit8 p2, p2, 0xf

    .line 61
    aget-byte p2, v4, p2

    aput-byte p2, p4, v3

    move p2, v1

    goto :goto_2

    :cond_1e
    sub-int/2addr v0, p5

    return v0
.end method

.method public blacklist getEncodedLength(I)I
    .registers 2

    .line 0
    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method protected blacklist initialiseDecodingTable()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 27
    :goto_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    array-length v3, v2

    if-ge v1, v3, :cond_d

    const/4 v3, -0x1

    .line 29
    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 32
    :cond_d
    :goto_d
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 34
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 37
    :cond_1c
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v0, 0x61

    aget-byte v0, p0, v0

    const/16 v1, 0x41

    aput-byte v0, p0, v1

    const/16 v0, 0x62

    .line 38
    aget-byte v0, p0, v0

    const/16 v1, 0x42

    aput-byte v0, p0, v1

    const/16 v0, 0x63

    .line 39
    aget-byte v0, p0, v0

    const/16 v1, 0x43

    aput-byte v0, p0, v1

    const/16 v0, 0x64

    .line 40
    aget-byte v0, p0, v0

    const/16 v1, 0x44

    aput-byte v0, p0, v1

    const/16 v0, 0x65

    .line 41
    aget-byte v0, p0, v0

    const/16 v1, 0x45

    aput-byte v0, p0, v1

    const/16 v0, 0x66

    .line 42
    aget-byte v0, p0, v0

    const/16 v1, 0x46

    aput-byte v0, p0, v1

    return-void
.end method
