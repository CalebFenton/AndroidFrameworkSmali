.class public Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AttributeCertificate.java"


# instance fields
.field acinfo:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

.field signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field signatureValue:Lcom/android/org/bouncycastle/asn1/DERBitString;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 51
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x3

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Bad sequence size: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 54
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@1b
    move-result v2

    #@1c
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 57
    :cond_0
    const/4 v0, 0x0

    #@29
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@33
    .line 58
    const/4 v0, 0x1

    #@34
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@37
    move-result-object v0

    #@38
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3e
    .line 59
    const/4 v0, 0x2

    #@3f
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@42
    move-result-object v0

    #@43
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureValue:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@49
    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .locals 0
    .param p1, "acinfo"    # Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .param p2, "signatureAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "signatureValue"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@5
    .line 41
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@7
    .line 42
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureValue:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@9
    .line 38
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 23
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 25
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 27
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 32
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@2
    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getSignatureValue()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureValue:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 89
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 91
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 92
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 93
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureValue:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    .line 95
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@16
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@19
    return-object v1
.end method
