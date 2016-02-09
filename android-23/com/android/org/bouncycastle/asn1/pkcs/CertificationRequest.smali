.class public Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CertificationRequest.java"


# instance fields
.field protected reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

.field protected sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 43
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 24
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@6
    .line 25
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@8
    .line 26
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@a
    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 57
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 24
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@6
    .line 25
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@8
    .line 26
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@a
    .line 60
    const/4 v0, 0x0

    #@b
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@15
    .line 61
    const/4 v0, 0x1

    #@16
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@20
    .line 62
    const/4 v0, 0x2

    #@21
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@27
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@29
    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .locals 1
    .param p1, "requestInfo"    # Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    .param p2, "algorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "signature"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 47
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 24
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@6
    .line 25
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@8
    .line 26
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@a
    .line 52
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@c
    .line 53
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@e
    .line 54
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@10
    .line 50
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 32
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;

    #@7
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@8
    .line 35
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 40
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getCertificationRequestInfo()Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@2
    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 83
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 85
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 86
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 87
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    .line 89
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@16
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@19
    return-object v1
.end method
