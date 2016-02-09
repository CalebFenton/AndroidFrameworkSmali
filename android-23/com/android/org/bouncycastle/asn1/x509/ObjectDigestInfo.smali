.class public Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ObjectDigestInfo.java"


# static fields
.field public static final otherObjectDigest:I = 0x2

.field public static final publicKey:I = 0x0

.field public static final publicKeyCert:I = 0x1


# instance fields
.field digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field digestedObjectType:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

.field objectDigest:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field otherObjectTypeID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .param p1, "digestedObjectType"    # I
    .param p2, "otherObjectTypeID"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "digestAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p4, "objectDigest"    # [B

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 101
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@5
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@a
    .line 102
    const/4 v0, 0x2

    #@b
    if-ne p1, v0, :cond_0

    #@d
    .line 104
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    .line 107
    :cond_0
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@11
    .line 108
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@13
    invoke-direct {v0, p4}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    #@16
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@18
    .line 99
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v3, 0x1

    #@2
    .line 111
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@5
    .line 114
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@8
    move-result v1

    #@9
    if-gt v1, v4, :cond_0

    #@b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x3

    #@10
    if-ge v1, v2, :cond_1

    #@12
    .line 116
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Bad sequence size: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 117
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@23
    move-result v3

    #@24
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 120
    :cond_1
    const/4 v1, 0x0

    #@31
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@34
    move-result-object v1

    #@35
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@38
    move-result-object v1

    #@39
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@3b
    .line 122
    const/4 v0, 0x0

    #@3c
    .line 124
    .local v0, "offset":I
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@3f
    move-result v1

    #@40
    if-ne v1, v4, :cond_2

    #@42
    .line 126
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@45
    move-result-object v1

    #@46
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@49
    move-result-object v1

    #@4a
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4c
    .line 127
    const/4 v0, 0x1

    #@4d
    .line 130
    :cond_2
    add-int/lit8 v1, v0, 0x1

    #@4f
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@52
    move-result-object v1

    #@53
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@56
    move-result-object v1

    #@57
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@59
    .line 132
    add-int/lit8 v1, v0, 0x2

    #@5b
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5e
    move-result-object v1

    #@5f
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@62
    move-result-object v1

    #@63
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@65
    .line 112
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 64
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 67
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 72
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getDigestAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getDigestedObjectType()Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@2
    return-object v0
.end method

.method public getObjectDigest()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    return-object v0
.end method

.method public getOtherObjectTypeID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 176
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 178
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 180
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 182
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@13
    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@15
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18
    .line 186
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1d
    .line 188
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@1f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@22
    return-object v1
.end method
