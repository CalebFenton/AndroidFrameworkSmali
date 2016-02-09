.class public Lcom/android/org/bouncycastle/asn1/DERBitString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DERBitString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# static fields
.field private static final table:[C


# instance fields
.field protected data:[B

.field protected padBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 15
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERBitString;->table:[C

    #@9
    .line 11
    return-void

    #@a
    .line 15
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

.method protected constructor <init>(BI)V
    .locals 2
    .param p1, "data"    # B
    .param p2, "padBits"    # I

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 143
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    #@8
    .line 144
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    #@a
    const/4 v1, 0x0

    #@b
    aput-byte p1, v0, v1

    #@d
    .line 145
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    #@f
    .line 141
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 169
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes(I)[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    #@9
    .line 170
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits(I)I

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    #@f
    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 177
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6
    move-result-object v0

    #@7
    const-string/jumbo v1, "DER"

    #@a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    #@10
    .line 178
    const/4 v0, 0x0

    #@11
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    #@13
    .line 175
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 163
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    #@4
    .line 161
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    #@0
    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 156
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    #@5
    .line 157
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    #@7
    .line 154
    return-void
.end method

.method static fromInputStream(ILjava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 4
    .param p0, "length"    # I
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    const/4 v2, 0x1

    #@1
    if-ge p0, v2, :cond_0

    #@3
    .line 302
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "truncated BIT STRING detected"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 305
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@f
    move-result v1

    #@10
    .line 306
    .local v1, "padBits":I
    add-int/lit8 v2, p0, -0x1

    #@12
    new-array v0, v2, [B

    #@14
    .line 308
    .local v0, "data":[B
    array-length v2, v0

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 310
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    #@1a
    move-result v2

    #@1b
    array-length v3, v0

    #@1c
    if-eq v2, v3, :cond_1

    #@1e
    .line 312
    new-instance v2, Ljava/io/EOFException;

    #@20
    const-string/jumbo v3, "EOF encountered in middle of BIT STRING"

    #@23
    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 316
    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@29
    invoke-direct {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    #@2c
    return-object v2
.end method

.method static fromOctetString([B)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 5
    .param p0, "bytes"    # [B

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 281
    array-length v2, p0

    #@3
    if-ge v2, v4, :cond_0

    #@5
    .line 283
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v3, "truncated BIT STRING detected"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 286
    :cond_0
    aget-byte v1, p0, v3

    #@10
    .line 287
    .local v1, "padBits":I
    array-length v2, p0

    #@11
    add-int/lit8 v2, v2, -0x1

    #@13
    new-array v0, v2, [B

    #@15
    .line 289
    .local v0, "data":[B
    array-length v2, v0

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 291
    array-length v2, p0

    #@19
    add-int/lit8 v2, v2, -0x1

    #@1b
    invoke-static {p0, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1e
    .line 294
    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@20
    invoke-direct {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    #@23
    return-object v2
.end method

.method protected static getBytes(I)[B
    .locals 5
    .param p0, "bitString"    # I

    #@0
    .prologue
    .line 76
    const/4 v0, 0x4

    #@1
    .line 77
    .local v0, "bytes":I
    const/4 v1, 0x3

    #@2
    .local v1, "i":I
    :goto_0
    const/4 v3, 0x1

    #@3
    if-lt v1, v3, :cond_0

    #@5
    .line 79
    mul-int/lit8 v3, v1, 0x8

    #@7
    const/16 v4, 0xff

    #@9
    shl-int v3, v4, v3

    #@b
    and-int/2addr v3, p0

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 86
    :cond_0
    new-array v2, v0, [B

    #@10
    .line 87
    .local v2, "result":[B
    const/4 v1, 0x0

    #@11
    :goto_1
    if-ge v1, v0, :cond_2

    #@13
    .line 89
    mul-int/lit8 v3, v1, 0x8

    #@15
    shr-int v3, p0, v3

    #@17
    and-int/lit16 v3, v3, 0xff

    #@19
    int-to-byte v3, v3

    #@1a
    aput-byte v3, v2, v1

    #@1c
    .line 87
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_1

    #@1f
    .line 83
    .end local v2    # "result":[B
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@21
    .line 77
    add-int/lit8 v1, v1, -0x1

    #@23
    goto :goto_0

    #@24
    .line 92
    .restart local v2    # "result":[B
    :cond_2
    return-object v2
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 2
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    .line 129
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    #@6
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 131
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 135
    :cond_1
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@11
    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 105
    if-eqz p0, :cond_0

    #@2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 107
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 110
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "illegal object in getInstance: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method

.method protected static getPadBits(I)I
    .locals 4
    .param p0, "bitString"    # I

    #@0
    .prologue
    .line 28
    const/4 v2, 0x0

    #@1
    .line 29
    .local v2, "val":I
    const/4 v1, 0x3

    #@2
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@4
    .line 35
    if-eqz v1, :cond_1

    #@6
    .line 37
    mul-int/lit8 v3, v1, 0x8

    #@8
    shr-int v3, p0, v3

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 39
    mul-int/lit8 v3, v1, 0x8

    #@e
    shr-int v3, p0, v3

    #@10
    and-int/lit16 v2, v3, 0xff

    #@12
    .line 53
    :cond_0
    :goto_1
    if-nez v2, :cond_3

    #@14
    .line 55
    const/4 v3, 0x7

    #@15
    return v3

    #@16
    .line 45
    :cond_1
    if-eqz p0, :cond_2

    #@18
    .line 47
    and-int/lit16 v2, p0, 0xff

    #@1a
    .line 48
    goto :goto_1

    #@1b
    .line 29
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 59
    :cond_3
    const/4 v0, 0x1

    #@1f
    .line 61
    .local v0, "bits":I
    :goto_2
    shl-int/lit8 v2, v2, 0x1

    #@21
    and-int/lit16 v3, v2, 0xff

    #@23
    if-eqz v3, :cond_4

    #@25
    .line 63
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_2

    #@28
    .line 66
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
    .line 237
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 239
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 242
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@9
    .line 244
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/DERBitString;
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    #@b
    iget v3, v0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 245
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    #@11
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    #@13
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@16
    move-result v1

    #@17
    .line 244
    :cond_1
    return v1
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 5
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 221
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@4
    move-result-object v1

    #@5
    array-length v1, v1

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    new-array v0, v1, [B

    #@a
    .line 223
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    #@d
    move-result v1

    #@e
    int-to-byte v1, v1

    #@f
    aput-byte v1, v0, v4

    #@11
    .line 224
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@14
    move-result-object v1

    #@15
    array-length v2, v0

    #@16
    add-int/lit8 v2, v2, -0x1

    #@18
    const/4 v3, 0x1

    #@19
    invoke-static {v1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 226
    const/4 v1, 0x3

    #@1d
    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    #@20
    .line 219
    return-void
.end method

.method encodedLength()I
    .locals 2

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    #@2
    array-length v0, v0

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@8
    move-result v0

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    #@d
    array-length v1, v1

    #@e
    add-int/2addr v0, v1

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    return v0
.end method

.method public getBytes()[B
    .locals 1

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    #@2
    return-object v0
.end method

.method public getPadBits()I
    .locals 1

    #@0
    .prologue
    .line 188
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    #@2
    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 250
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v6, "#"

    #@5
    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    .line 251
    .local v2, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@a
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@d
    .line 252
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    #@12
    .line 256
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 263
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@18
    move-result-object v5

    #@19
    .line 265
    .local v5, "string":[B
    const/4 v4, 0x0

    #@1a
    .local v4, "i":I
    :goto_0
    array-length v6, v5

    #@1b
    if-eq v4, v6, :cond_0

    #@1d
    .line 267
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERBitString;->table:[C

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
    .line 268
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERBitString;->table:[C

    #@2c
    aget-byte v7, v5, v4

    #@2e
    and-int/lit8 v7, v7, 0xf

    #@30
    aget-char v6, v6, v7

    #@32
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@35
    .line 265
    add-int/lit8 v4, v4, 0x1

    #@37
    goto :goto_0

    #@38
    .line 259
    .end local v4    # "i":I
    .end local v5    # "string":[B
    :catch_0
    move-exception v3

    #@39
    .line 260
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@3b
    const-string/jumbo v7, "internal error encoding BitString"

    #@3e
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@41
    throw v6

    #@42
    .line 271
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "i":I
    .restart local v5    # "string":[B
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    return-object v6
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 231
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    #@4
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    #@7
    move-result v1

    #@8
    xor-int/2addr v0, v1

    #@9
    return v0
.end method

.method public intValue()I
    .locals 4

    #@0
    .prologue
    .line 197
    const/4 v1, 0x0

    #@1
    .line 199
    .local v1, "value":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    #@4
    array-length v2, v2

    #@5
    if-eq v0, v2, :cond_0

    #@7
    const/4 v2, 0x4

    #@8
    if-eq v0, v2, :cond_0

    #@a
    .line 201
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    #@c
    aget-byte v2, v2, v0

    #@e
    and-int/lit16 v2, v2, 0xff

    #@10
    mul-int/lit8 v3, v0, 0x8

    #@12
    shl-int/2addr v2, v3

    #@13
    or-int/2addr v1, v2

    #@14
    .line 199
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 204
    :cond_0
    return v1
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 209
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
