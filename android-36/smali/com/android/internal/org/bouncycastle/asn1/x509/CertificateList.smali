.class public Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "CertificateList.java"


# instance fields
.field blacklist hashCodeValue:I

.field blacklist isHashCodeSet:Z

.field blacklist sig:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

.field blacklist sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 64
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 69
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 75
    return-void

    .line 73
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sequence wrong size for CertificateList"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 44
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 50
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    if-eqz v0, :cond_8

    .line 52
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    return-object v0

    .line 54
    :cond_8
    if-eqz p0, :cond_14

    .line 56
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 59
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNextUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getNextUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRevokedCertificates()[Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificates()[Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getTBSCertList()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    return-object v0
.end method

.method public blacklist getThisUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getThisUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVersionNumber()I
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 135
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    if-nez v0, :cond_d

    .line 137
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->hashCodeValue:I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    .line 141
    :cond_d
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->hashCodeValue:I

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 124
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 126
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 127
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 128
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 130
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
