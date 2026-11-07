.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "BasicOCSPResponse.java"


# instance fields
.field private blacklist certs:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field private blacklist signature:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field private blacklist signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist tbsResponseData:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 47
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->tbsResponseData:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 50
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signature:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 52
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_35

    .line 54
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 56
    :cond_35
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "tbsResponseData"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;
    .param p2, "signatureAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "signature"    # Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .param p4, "certs"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 38
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->tbsResponseData:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    .line 40
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 41
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signature:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 42
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 43
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 62
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 68
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    if-eqz v0, :cond_8

    .line 70
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    return-object v0

    .line 72
    :cond_8
    if-eqz p0, :cond_14

    .line 74
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 77
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCerts()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signature:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getTbsResponseData()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->tbsResponseData:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 112
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 114
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->tbsResponseData:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 115
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 116
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signature:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 117
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_25

    .line 119
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 122
    :cond_25
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
