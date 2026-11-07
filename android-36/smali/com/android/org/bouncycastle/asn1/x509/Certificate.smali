.class public Lcom/android/org/bouncycastle/asn1/x509/Certificate;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Certificate.java"


# instance fields
.field blacklist seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field blacklist sig:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

.field blacklist sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 62
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v0, 0x2

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sig:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    return-void

    .line 71
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sequence wrong size for a certificate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/Certificate;
    .registers 2

    .line 35
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;
    .registers 2

    .line 42
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    if-eqz v0, :cond_7

    .line 44
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSignature()Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sig:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    return-object p0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    return-object p0
.end method

.method public blacklist getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getVersionNumber()I
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getVersionNumber()I

    move-result p0

    return p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object p0
.end method
