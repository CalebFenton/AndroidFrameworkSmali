.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "CertID.java"


# instance fields
.field blacklist hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist issuerKeyHash:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

.field blacklist issuerNameHash:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

.field blacklist serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 39
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 43
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 5
    .param p1, "hashAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "issuerNameHash"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .param p3, "issuerKeyHash"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .param p4, "serialNumber"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 30
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 32
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 33
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 34
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 35
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 50
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 56
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    if-eqz v0, :cond_8

    .line 58
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    return-object v0

    .line 60
    :cond_8
    if-eqz p0, :cond_14

    .line 62
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 65
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getHashAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getIssuerKeyHash()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public blacklist getIssuerNameHash()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public blacklist getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 100
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 102
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 103
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 104
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 105
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 107
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
