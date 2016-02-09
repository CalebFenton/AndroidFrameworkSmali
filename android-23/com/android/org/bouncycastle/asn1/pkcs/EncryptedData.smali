.class public Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "EncryptedData.java"


# instance fields
.field bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

.field data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "contentType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "encryptionAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "content"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 70
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@6
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@9
    .line 77
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@c
    .line 78
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@13
    .line 79
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    #@15
    invoke-direct {v1, v2, v2, p3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1b
    .line 81
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@1d
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@20
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@22
    .line 73
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 57
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 60
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@11
    move-result v0

    #@12
    .line 62
    .local v0, "version":I
    if-eqz v0, :cond_0

    #@14
    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v2, "sequence not version 0"

    #@19
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 67
    :cond_0
    const/4 v1, 0x1

    #@1e
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@21
    move-result-object v1

    #@22
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@28
    .line 58
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 44
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 46
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 49
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 54
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getContent()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .locals 3

    #@0
    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x3

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 98
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@b
    const/4 v2, 0x2

    #@c
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@f
    move-result-object v1

    #@10
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@13
    move-result-object v0

    #@14
    .line 100
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    const/4 v1, 0x0

    #@15
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@18
    move-result-object v1

    #@19
    return-object v1

    #@1a
    .line 103
    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    const/4 v1, 0x0

    #@1b
    return-object v1
.end method

.method public getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 108
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 110
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    const-wide/16 v2, 0x0

    #@9
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 111
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    .line 113
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@16
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@19
    return-object v1
.end method
