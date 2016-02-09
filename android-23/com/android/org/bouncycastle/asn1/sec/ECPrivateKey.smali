.class public Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ECPrivateKey.java"


# instance fields
.field private seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 6
    .param p1, "orderBitLength"    # I
    .param p2, "key"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 69
    add-int/lit8 v2, p1, 0x7

    #@5
    div-int/lit8 v2, v2, 0x8

    #@7
    invoke-static {v2, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    #@a
    move-result-object v0

    #@b
    .line 71
    .local v0, "bytes":[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@d
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@10
    .line 73
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@12
    const-wide/16 v4, 0x1

    #@14
    invoke-direct {v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@17
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1a
    .line 74
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@1c
    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@22
    .line 76
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@24
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@27
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@29
    .line 67
    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "orderBitLength"    # I
    .param p2, "key"    # Ljava/math/BigInteger;
    .param p3, "parameters"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 105
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4
    .line 103
    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 7
    .param p1, "orderBitLength"    # I
    .param p2, "key"    # Ljava/math/BigInteger;
    .param p3, "publicKey"    # Lcom/android/org/bouncycastle/asn1/DERBitString;
    .param p4, "parameters"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 108
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 114
    add-int/lit8 v2, p1, 0x7

    #@6
    div-int/lit8 v2, v2, 0x8

    #@8
    invoke-static {v2, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    #@b
    move-result-object v0

    #@c
    .line 116
    .local v0, "bytes":[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@e
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@11
    .line 118
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@13
    const-wide/16 v4, 0x1

    #@15
    invoke-direct {v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@18
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1b
    .line 119
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@1d
    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@20
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@23
    .line 121
    if-eqz p4, :cond_0

    #@25
    .line 123
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@27
    const/4 v3, 0x0

    #@28
    invoke-direct {v2, v6, v3, p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2e
    .line 126
    :cond_0
    if-eqz p3, :cond_1

    #@30
    .line 128
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@32
    invoke-direct {v2, v6, v6, p3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@35
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@38
    .line 131
    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@3a
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@3d
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3f
    .line 112
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@5
    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "key"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;)V

    #@7
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "key"    # Ljava/math/BigInteger;
    .param p2, "parameters"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 86
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4
    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "key"    # Ljava/math/BigInteger;
    .param p2, "publicKey"    # Lcom/android/org/bouncycastle/asn1/DERBitString;
    .param p3, "parameters"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@7
    .line 95
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 37
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 39
    check-cast p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 42
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 47
    :cond_1
    return-object v1
.end method

.method private getObjectInTag(I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p1, "tagNo"    # I

    #@0
    .prologue
    .line 153
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    .line 155
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 157
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@12
    .line 159
    .local v1, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@14
    if-eqz v3, :cond_0

    #@16
    move-object v2, v1

    #@17
    .line 161
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@19
    .line 162
    .local v2, "tag":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@1c
    move-result v3

    #@1d
    if-ne v3, p1, :cond_0

    #@1f
    .line 164
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@26
    move-result-object v3

    #@27
    return-object v3

    #@28
    .line 168
    .end local v1    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v2    # "tag":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1
    const/4 v3, 0x0

    #@29
    return-object v3
.end method


# virtual methods
.method public getKey()Ljava/math/BigInteger;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 136
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@9
    .line 138
    .local v0, "octs":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v1, Ljava/math/BigInteger;

    #@b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@e
    move-result-object v2

    #@f
    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    #@12
    return-object v1
.end method

.method public getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 148
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->getObjectInTag(I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getPublicKey()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    #@0
    .prologue
    .line 143
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->getObjectInTag(I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@7
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    return-object v0
.end method
