.class public Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ECPrivateKeyStructure.java"


# instance fields
.field private seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@5
    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "key"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 38
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    #@6
    move-result-object v0

    #@7
    .line 40
    .local v0, "bytes":[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@9
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@c
    .line 42
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@e
    const-wide/16 v4, 0x1

    #@10
    invoke-direct {v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@13
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@16
    .line 43
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@18
    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@1b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1e
    .line 45
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@20
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@23
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@25
    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "key"    # Ljava/math/BigInteger;
    .param p2, "parameters"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 52
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 7
    .param p1, "key"    # Ljava/math/BigInteger;
    .param p2, "publicKey"    # Lcom/android/org/bouncycastle/asn1/DERBitString;
    .param p3, "parameters"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 55
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 60
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    #@7
    move-result-object v0

    #@8
    .line 62
    .local v0, "bytes":[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@a
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@d
    .line 64
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@f
    const-wide/16 v4, 0x1

    #@11
    invoke-direct {v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@14
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@17
    .line 65
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@19
    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@1c
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1f
    .line 67
    if-eqz p3, :cond_0

    #@21
    .line 69
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@23
    const/4 v3, 0x0

    #@24
    invoke-direct {v2, v6, v3, p3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@27
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2a
    .line 72
    :cond_0
    if-eqz p2, :cond_1

    #@2c
    .line 74
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@2e
    invoke-direct {v2, v6, v6, p2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@31
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@34
    .line 77
    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@36
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@39
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3b
    .line 58
    return-void
.end method

.method private getObjectInTag(I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p1, "tagNo"    # I

    #@0
    .prologue
    .line 99
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    .line 101
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 103
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@12
    .line 105
    .local v1, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@14
    if-eqz v3, :cond_0

    #@16
    move-object v2, v1

    #@17
    .line 107
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@19
    .line 108
    .local v2, "tag":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@1c
    move-result v3

    #@1d
    if-ne v3, p1, :cond_0

    #@1f
    .line 110
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@22
    move-result-object v3

    #@23
    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@26
    move-result-object v3

    #@27
    return-object v3

    #@28
    .line 114
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
    .line 82
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@9
    .line 84
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
    .line 94
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getObjectInTag(I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getPublicKey()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    #@0
    .prologue
    .line 89
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getObjectInTag(I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

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
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    return-object v0
.end method
