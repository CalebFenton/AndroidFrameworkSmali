.class public Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CertificateList.java"


# instance fields
.field blacklist hashCodeValue:I

.field blacklist isHashCodeSet:Z

.field blacklist sig:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

.field blacklist sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    .line 64
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    .line 65
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v0, 0x2

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    return-void

    .line 73
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sequence wrong size for CertificateList"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
    .registers 2

    .line 50
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    if-eqz v0, :cond_7

    .line 52
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSignature()Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    return-object p0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    return-object p0
.end method

.method public blacklist getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getVersionNumber()I
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getVersionNumber()I

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 135
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    if-nez v0, :cond_d

    .line 137
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->hashCodeValue:I

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    .line 141
    :cond_d
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->hashCodeValue:I

    return p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 124
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 126
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 127
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 128
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 130
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
