.class public Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DERApplicationSpecific.java"


# instance fields
.field private final isConstructed:Z

.field private final octets:[B

.field private final tag:I


# direct methods
.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "object"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4
    .line 38
    return-void
.end method

.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 6
    .param p1, "tagNo"    # I
    .param p2, "vec"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 71
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    #@5
    .line 72
    const/4 v3, 0x1

    #@6
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    #@8
    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@a
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@d
    .line 75
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    #@11
    move-result v3

    #@12
    if-eq v2, v3, :cond_0

    #@14
    .line 79
    :try_start_0
    invoke-virtual {p2, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Object;

    #@1a
    const-string/jumbo v4, "DER"

    #@1d
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 75
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 82
    :catch_0
    move-exception v1

    #@28
    .line 83
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    #@2a
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v5, "malformed object: "

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@41
    throw v3

    #@42
    .line 86
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@45
    move-result-object v3

    #@46
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    #@48
    .line 69
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "octets"    # [B

    #@0
    .prologue
    .line 32
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    #@4
    .line 30
    return-void
.end method

.method public constructor <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 6
    .param p1, "explicit"    # Z
    .param p2, "tag"    # I
    .param p3, "object"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 43
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@4
    .line 49
    invoke-interface {p3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@7
    move-result-object v2

    #@8
    .line 51
    .local v2, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const-string/jumbo v5, "DER"

    #@b
    invoke-virtual {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    #@e
    move-result-object v0

    #@f
    .line 53
    .local v0, "data":[B
    if-nez p1, :cond_0

    #@11
    instance-of v5, v2, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@13
    if-nez v5, :cond_0

    #@15
    instance-of v4, v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@17
    :cond_0
    iput-boolean v4, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    #@19
    .line 54
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    #@1b
    .line 56
    if-eqz p1, :cond_1

    #@1d
    .line 58
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    #@1f
    .line 47
    :goto_0
    return-void

    #@20
    .line 62
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getLengthOfHeader([B)I

    #@23
    move-result v1

    #@24
    .line 63
    .local v1, "lenBytes":I
    array-length v4, v0

    #@25
    sub-int/2addr v4, v1

    #@26
    new-array v3, v4, [B

    #@28
    .line 64
    .local v3, "tmp":[B
    array-length v4, v3

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-static {v0, v1, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2d
    .line 65
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    #@2f
    goto :goto_0
.end method

.method constructor <init>(ZI[B)V
    .locals 0
    .param p1, "isConstructed"    # Z
    .param p2, "tag"    # I
    .param p3, "octets"    # [B

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 23
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    #@5
    .line 24
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    #@7
    .line 25
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    #@9
    .line 21
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 91
    if-eqz p0, :cond_0

    #@2
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 93
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 95
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, [B

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 99
    :try_start_0
    check-cast p0, [B

    #@f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 102
    :catch_0
    move-exception v0

    #@19
    .line 103
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "failed to construct object from byte[]: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

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
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "unknown object in getInstance: "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1
.end method

.method private getLengthOfHeader([B)I
    .locals 5
    .param p1, "data"    # [B

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 112
    const/4 v2, 0x1

    #@2
    aget-byte v2, p1, v2

    #@4
    and-int/lit16 v0, v2, 0xff

    #@6
    .line 114
    .local v0, "length":I
    const/16 v2, 0x80

    #@8
    if-ne v0, v2, :cond_0

    #@a
    .line 116
    return v3

    #@b
    .line 119
    :cond_0
    const/16 v2, 0x7f

    #@d
    if-le v0, v2, :cond_2

    #@f
    .line 121
    and-int/lit8 v1, v0, 0x7f

    #@11
    .line 124
    .local v1, "size":I
    const/4 v2, 0x4

    #@12
    if-le v1, v2, :cond_1

    #@14
    .line 126
    new-instance v2, Ljava/lang/IllegalStateException;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "DER length more than 4 bytes: "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 129
    :cond_1
    add-int/lit8 v2, v1, 0x2

    #@30
    return v2

    #@31
    .line 132
    .end local v1    # "size":I
    :cond_2
    return v3
.end method

.method private replaceTagNumber(I[B)[B
    .locals 8
    .param p1, "newTag"    # I
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 231
    aget-byte v5, p2, v6

    #@4
    and-int/lit8 v3, v5, 0x1f

    #@6
    .line 232
    .local v3, "tagNo":I
    const/4 v1, 0x1

    #@7
    .line 236
    .local v1, "index":I
    const/16 v5, 0x1f

    #@9
    if-ne v3, v5, :cond_1

    #@b
    .line 238
    const/4 v3, 0x0

    #@c
    .line 240
    const/4 v1, 0x2

    #@d
    aget-byte v5, p2, v7

    #@f
    and-int/lit16 v0, v5, 0xff

    #@11
    .line 244
    .local v0, "b":I
    and-int/lit8 v5, v0, 0x7f

    #@13
    if-nez v5, :cond_2

    #@15
    .line 246
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    #@17
    const-string/jumbo v6, "corrupted stream - invalid high tag number found"

    #@1a
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v5

    #@1e
    .line 249
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-ltz v0, :cond_0

    #@20
    and-int/lit16 v5, v0, 0x80

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 251
    and-int/lit8 v5, v0, 0x7f

    #@26
    or-int/2addr v3, v5

    #@27
    .line 252
    shl-int/lit8 v3, v3, 0x7

    #@29
    .line 253
    add-int/lit8 v1, v2, 0x1

    #@2b
    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    #@2d
    and-int/lit16 v0, v5, 0xff

    #@2f
    move v2, v1

    #@30
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    #@31
    .line 256
    :cond_0
    and-int/lit8 v5, v0, 0x7f

    #@33
    or-int/2addr v3, v5

    #@34
    move v1, v2

    #@35
    .line 259
    .end local v0    # "b":I
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_1
    array-length v5, p2

    #@36
    sub-int/2addr v5, v1

    #@37
    add-int/lit8 v5, v5, 0x1

    #@39
    new-array v4, v5, [B

    #@3b
    .line 261
    .local v4, "tmp":[B
    array-length v5, v4

    #@3c
    add-int/lit8 v5, v5, -0x1

    #@3e
    invoke-static {p2, v1, v4, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@41
    .line 263
    int-to-byte v5, p1

    #@42
    aput-byte v5, v4, v6

    #@44
    .line 265
    return-object v4

    #@45
    .end local v4    # "tmp":[B
    .restart local v0    # "b":I
    :cond_2
    move v2, v1

    #@46
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 4
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 211
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 213
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 216
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    #@9
    .line 218
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    #@b
    iget-boolean v3, v0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 219
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    #@11
    iget v3, v0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    .line 220
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    #@17
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    #@19
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@1c
    move-result v1

    #@1d
    .line 218
    :cond_1
    return v1
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
    .line 199
    const/16 v0, 0x40

    #@2
    .line 200
    .local v0, "classBits":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 202
    const/16 v0, 0x60

    #@8
    .line 205
    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    #@a
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    #@c
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    #@f
    .line 197
    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    #@8
    array-length v1, v1

    #@9
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@c
    move-result v1

    #@d
    add-int/2addr v0, v1

    #@e
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    #@10
    array-length v1, v1

    #@11
    add-int/2addr v0, v1

    #@12
    return v0
.end method

.method public getApplicationTag()I
    .locals 1

    #@0
    .prologue
    .line 147
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    #@2
    return v0
.end method

.method public getContents()[B
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    #@2
    return-object v0
.end method

.method public getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@9
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getObject(I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p1, "derTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 172
    const/16 v2, 0x1f

    #@3
    if-lt p1, v2, :cond_0

    #@5
    .line 174
    new-instance v2, Ljava/io/IOException;

    #@7
    const-string/jumbo v3, "unsupported tag number"

    #@a
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getEncoded()[B

    #@11
    move-result-object v0

    #@12
    .line 178
    .local v0, "orig":[B
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->replaceTagNumber(I[B)[B

    #@15
    move-result-object v1

    #@16
    .line 180
    .local v1, "tmp":[B
    aget-byte v2, v0, v3

    #@18
    and-int/lit8 v2, v2, 0x20

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 182
    aget-byte v2, v1, v3

    #@1e
    or-int/lit8 v2, v2, 0x20

    #@20
    int-to-byte v2, v2

    #@21
    aput-byte v2, v1, v3

    #@23
    .line 185
    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@25
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@28
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2b
    move-result-object v2

    #@2c
    return-object v2
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    #@7
    xor-int/2addr v0, v1

    #@8
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    #@a
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    #@d
    move-result v1

    #@e
    xor-int/2addr v0, v1

    #@f
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    #@2
    return v0
.end method
