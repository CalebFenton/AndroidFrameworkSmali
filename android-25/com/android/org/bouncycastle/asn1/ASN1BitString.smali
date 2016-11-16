.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1BitString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1BitString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# static fields
.field private static final table:[C


# instance fields
.field protected final data:[B

.field protected final padBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 18
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->table:[C

    #@9
    .line 14
    return-void

    #@a
    .line 18
    :array_0
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

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 112
    if-nez p1, :cond_0

    #@5
    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "data cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 116
    :cond_0
    array-length v0, p1

    #@f
    if-nez v0, :cond_1

    #@11
    if-eqz p2, :cond_1

    #@13
    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "zero length data with non-zero pad bits"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 120
    :cond_1
    const/4 v0, 0x7

    #@1d
    if-gt p2, v0, :cond_2

    #@1f
    if-gez p2, :cond_3

    #@21
    .line 122
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@23
    const-string/jumbo v1, "pad bits cannot be greater than 7 or less than 0"

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 125
    :cond_3
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    #@30
    .line 126
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    #@32
    .line 110
    return-void
.end method

.method protected static derForm([BI)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "padBits"    # I

    #@0
    .prologue
    .line 234
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@3
    move-result-object v0

    #@4
    .line 236
    .local v0, "rv":[B
    if-lez p1, :cond_0

    #@6
    .line 238
    array-length v1, p0

    #@7
    add-int/lit8 v1, v1, -0x1

    #@9
    aget-byte v2, v0, v1

    #@b
    const/16 v3, 0xff

    #@d
    shl-int/2addr v3, p1

    #@e
    and-int/2addr v2, v3

    #@f
    int-to-byte v2, v2

    #@10
    aput-byte v2, v0, v1

    #@12
    .line 241
    :cond_0
    return-object v0
.end method

.method static fromInputStream(ILjava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .locals 5
    .param p0, "length"    # I
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    const/4 v2, 0x1

    #@1
    if-ge p0, v2, :cond_0

    #@3
    .line 249
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "truncated BIT STRING detected"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 252
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@f
    move-result v1

    #@10
    .line 253
    .local v1, "padBits":I
    add-int/lit8 v2, p0, -0x1

    #@12
    new-array v0, v2, [B

    #@14
    .line 255
    .local v0, "data":[B
    array-length v2, v0

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 257
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    #@1a
    move-result v2

    #@1b
    array-length v3, v0

    #@1c
    if-eq v2, v3, :cond_1

    #@1e
    .line 259
    new-instance v2, Ljava/io/EOFException;

    #@20
    const-string/jumbo v3, "EOF encountered in middle of BIT STRING"

    #@23
    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 262
    :cond_1
    if-lez v1, :cond_2

    #@29
    const/16 v2, 0x8

    #@2b
    if-ge v1, v2, :cond_2

    #@2d
    .line 264
    array-length v2, v0

    #@2e
    add-int/lit8 v2, v2, -0x1

    #@30
    aget-byte v2, v0, v2

    #@32
    array-length v3, v0

    #@33
    add-int/lit8 v3, v3, -0x1

    #@35
    aget-byte v3, v0, v3

    #@37
    const/16 v4, 0xff

    #@39
    shl-int/2addr v4, v1

    #@3a
    and-int/2addr v3, v4

    #@3b
    int-to-byte v3, v3

    #@3c
    if-eq v2, v3, :cond_2

    #@3e
    .line 266
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DLBitString;

    #@40
    invoke-direct {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    #@43
    return-object v2

    #@44
    .line 271
    :cond_2
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@46
    invoke-direct {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    #@49
    return-object v2
.end method

.method protected static getBytes(I)[B
    .locals 5
    .param p0, "bitString"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 78
    if-nez p0, :cond_0

    #@3
    .line 80
    new-array v3, v3, [B

    #@5
    return-object v3

    #@6
    .line 83
    :cond_0
    const/4 v0, 0x4

    #@7
    .line 84
    .local v0, "bytes":I
    const/4 v1, 0x3

    #@8
    .local v1, "i":I
    :goto_0
    const/4 v3, 0x1

    #@9
    if-lt v1, v3, :cond_1

    #@b
    .line 86
    mul-int/lit8 v3, v1, 0x8

    #@d
    const/16 v4, 0xff

    #@f
    shl-int v3, v4, v3

    #@11
    and-int/2addr v3, p0

    #@12
    if-eqz v3, :cond_2

    #@14
    .line 93
    :cond_1
    new-array v2, v0, [B

    #@16
    .line 94
    .local v2, "result":[B
    const/4 v1, 0x0

    #@17
    :goto_1
    if-ge v1, v0, :cond_3

    #@19
    .line 96
    mul-int/lit8 v3, v1, 0x8

    #@1b
    shr-int v3, p0, v3

    #@1d
    and-int/lit16 v3, v3, 0xff

    #@1f
    int-to-byte v3, v3

    #@20
    aput-byte v3, v2, v1

    #@22
    .line 94
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_1

    #@25
    .line 90
    .end local v2    # "result":[B
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@27
    .line 84
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 99
    .restart local v2    # "result":[B
    :cond_3
    return-object v2
.end method

.method protected static getPadBits(I)I
    .locals 5
    .param p0, "bitString"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 31
    const/4 v2, 0x0

    #@2
    .line 32
    .local v2, "val":I
    const/4 v1, 0x3

    #@3
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@5
    .line 38
    if-eqz v1, :cond_1

    #@7
    .line 40
    mul-int/lit8 v3, v1, 0x8

    #@9
    shr-int v3, p0, v3

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 42
    mul-int/lit8 v3, v1, 0x8

    #@f
    shr-int v3, p0, v3

    #@11
    and-int/lit16 v2, v3, 0xff

    #@13
    .line 56
    :cond_0
    :goto_1
    if-nez v2, :cond_3

    #@15
    .line 58
    return v4

    #@16
    .line 48
    :cond_1
    if-eqz p0, :cond_2

    #@18
    .line 50
    and-int/lit16 v2, p0, 0xff

    #@1a
    .line 51
    goto :goto_1

    #@1b
    .line 32
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 61
    :cond_3
    const/4 v0, 0x1

    #@1f
    .line 63
    .local v0, "bits":I
    :goto_2
    shl-int/lit8 v2, v2, 0x1

    #@21
    and-int/lit16 v3, v2, 0xff

    #@23
    if-eqz v3, :cond_4

    #@25
    .line 65
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_2

    #@28
    .line 68
    :cond_4
    rsub-int/lit8 v3, v0, 0x8

    #@2a
    return v3
.end method


# virtual methods
.method protected asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 4
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 221
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 223
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 226
    nop

    #@8
    nop

    #@9
    .line 228
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    #@b
    iget v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 229
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    #@16
    move-result-object v2

    #@17
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@1a
    move-result v1

    #@1b
    .line 228
    :cond_1
    return v1
.end method

.method abstract encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getBytes()[B
    .locals 2

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    #@4
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->derForm([BI)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getOctets()[B
    .locals 2

    #@0
    .prologue
    .line 190
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "attempt to get non-octet aligned data from BIT STRING"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    #@f
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getPadBits()I
    .locals 1

    #@0
    .prologue
    .line 205
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    #@2
    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 136
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v6, "#"

    #@5
    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    .line 137
    .local v2, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@a
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@d
    .line 138
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    #@12
    .line 142
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 149
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@18
    move-result-object v5

    #@19
    .line 151
    .local v5, "string":[B
    const/4 v4, 0x0

    #@1a
    .local v4, "i":I
    :goto_0
    array-length v6, v5

    #@1b
    if-eq v4, v6, :cond_0

    #@1d
    .line 153
    sget-object v6, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->table:[C

    #@1f
    aget-byte v7, v5, v4

    #@21
    ushr-int/lit8 v7, v7, 0x4

    #@23
    and-int/lit8 v7, v7, 0xf

    #@25
    aget-char v6, v6, v7

    #@27
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2a
    .line 154
    sget-object v6, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->table:[C

    #@2c
    aget-byte v7, v5, v4

    #@2e
    and-int/lit8 v7, v7, 0xf

    #@30
    aget-char v6, v6, v7

    #@32
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@35
    .line 151
    add-int/lit8 v4, v4, 0x1

    #@37
    goto :goto_0

    #@38
    .line 145
    .end local v4    # "i":I
    .end local v5    # "string":[B
    :catch_0
    move-exception v3

    #@39
    .line 146
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    #@3b
    new-instance v7, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v8, "Internal error encoding BitString: "

    #@43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    invoke-direct {v6, v7, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@56
    throw v6

    #@57
    .line 157
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "i":I
    .restart local v5    # "string":[B
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    return-object v6
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 215
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    #@2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    #@9
    move-result v1

    #@a
    xor-int/2addr v0, v1

    #@b
    return v0
.end method

.method public intValue()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    .line 165
    const/4 v2, 0x0

    #@2
    .line 166
    .local v2, "value":I
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    #@4
    .line 168
    .local v1, "string":[B
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    #@6
    if-lez v3, :cond_0

    #@8
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    #@a
    array-length v3, v3

    #@b
    if-gt v3, v5, :cond_0

    #@d
    .line 170
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    #@f
    iget v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    #@11
    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->derForm([BI)[B

    #@14
    move-result-object v1

    #@15
    .line 173
    :cond_0
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@17
    if-eq v0, v3, :cond_1

    #@19
    if-eq v0, v5, :cond_1

    #@1b
    .line 175
    aget-byte v3, v1, v0

    #@1d
    and-int/lit16 v3, v3, 0xff

    #@1f
    mul-int/lit8 v4, v0, 0x8

    #@21
    shl-int/2addr v3, v4

    #@22
    or-int/2addr v2, v3

    #@23
    .line 173
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 178
    :cond_1
    return v2
.end method

.method toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    #@0
    .prologue
    .line 281
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    #@4
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    #@9
    return-object v0
.end method

.method toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    #@0
    .prologue
    .line 286
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    #@4
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    #@9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
