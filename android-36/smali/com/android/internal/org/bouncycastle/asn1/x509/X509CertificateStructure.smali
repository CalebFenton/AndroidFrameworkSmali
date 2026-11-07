.class public Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "X509CertificateStructure.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field blacklist seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field blacklist sig:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

.field blacklist sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 58
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 64
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 69
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->sig:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 75
    return-void

    .line 73
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sequence wrong size for a certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 38
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 44
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;

    if-eqz v0, :cond_8

    .line 46
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;

    return-object v0

    .line 48
    :cond_8
    if-eqz p0, :cond_14

    .line 50
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 53
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->sig:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    return-object v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getVersion()I

    move-result v0

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
