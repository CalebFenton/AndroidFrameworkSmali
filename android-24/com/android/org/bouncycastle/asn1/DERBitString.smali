.class public Lcom/android/org/bouncycastle/asn1/DERBitString;
.super Lcom/android/org/bouncycastle/asn1/ASN1BitString;
.source "DERBitString.java"


# direct methods
.method protected constructor <init>(BI)V
    .locals 1
    .param p1, "data"    # B
    .param p2, "padBits"    # I

    #@0
    .prologue
    .line 63
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->toByteArray(B)[B

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    #@7
    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 95
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes(I)[B

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits(I)I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    #@b
    .line 93
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
    .line 102
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "DER"

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    #@f
    .line 100
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 89
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    #@4
    .line 87
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    #@0
    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    #@3
    .line 81
    return-void
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
    .line 130
    array-length v2, p0

    #@3
    if-ge v2, v4, :cond_0

    #@5
    .line 132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v3, "truncated BIT STRING detected"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 135
    :cond_0
    aget-byte v1, p0, v3

    #@10
    .line 136
    .local v1, "padBits":I
    array-length v2, p0

    #@11
    add-int/lit8 v2, v2, -0x1

    #@13
    new-array v0, v2, [B

    #@15
    .line 138
    .local v0, "data":[B
    array-length v2, v0

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 140
    array-length v2, p0

    #@19
    add-int/lit8 v2, v2, -0x1

    #@1b
    invoke-static {p0, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1e
    .line 143
    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@20
    invoke-direct {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    #@23
    return-object v2
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 2
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    .line 49
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    #@6
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 51
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 55
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
    .line 21
    if-eqz p0, :cond_0

    #@2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 23
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 25
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 27
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@f
    move-object v0, p0

    #@10
    nop

    #@11
    nop

    #@12
    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    #@14
    nop

    #@15
    nop

    #@16
    .end local p0    # "obj":Ljava/lang/Object;
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    #@18
    invoke-direct {v1, v0, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    #@1b
    return-object v1

    #@1c
    .line 30
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "illegal object in getInstance: "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0
.end method

.method private static toByteArray(B)[B
    .locals 2
    .param p0, "data"    # B

    #@0
    .prologue
    .line 68
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [B

    #@3
    .line 70
    .local v0, "rv":[B
    const/4 v1, 0x0

    #@4
    aput-byte p0, v0, v1

    #@6
    .line 72
    return-object v0
.end method


# virtual methods
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
    .line 119
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    #@3
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    #@5
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->derForm([BI)[B

    #@8
    move-result-object v1

    #@9
    .line 120
    .local v1, "string":[B
    array-length v2, v1

    #@a
    add-int/lit8 v2, v2, 0x1

    #@c
    new-array v0, v2, [B

    #@e
    .line 122
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    #@11
    move-result v2

    #@12
    int-to-byte v2, v2

    #@13
    aput-byte v2, v0, v4

    #@15
    .line 123
    array-length v2, v0

    #@16
    add-int/lit8 v2, v2, -0x1

    #@18
    const/4 v3, 0x1

    #@19
    invoke-static {v1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 125
    const/4 v2, 0x3

    #@1d
    invoke-virtual {p1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    #@20
    .line 117
    return-void
.end method

.method encodedLength()I
    .locals 2

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

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
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    #@d
    array-length v1, v1

    #@e
    add-int/2addr v0, v1

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    return v0
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 107
    const/4 v0, 0x0

    #@1
    return v0
.end method
