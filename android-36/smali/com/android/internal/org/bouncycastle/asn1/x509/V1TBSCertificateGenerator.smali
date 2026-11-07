.class public Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;
.super Ljava/lang/Object;
.source "V1TBSCertificateGenerator.java"


# instance fields
.field blacklist endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field blacklist issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field blacklist serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field blacklist signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field blacklist subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field blacklist subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field blacklist version:Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->version:Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist generateTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_5d

    .line 123
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 126
    .local v0, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 127
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 128
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 134
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 135
    .local v1, "validity":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 136
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 138
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 141
    .end local v1    # "validity":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 143
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 145
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    return-object v1

    .line 120
    .end local v0    # "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V1 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setEndDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;)V
    .registers 3
    .param p1, "endDate"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    .line 90
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 91
    return-void
.end method

.method public blacklist setEndDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .param p1, "endDate"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 84
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 85
    return-void
.end method

.method public blacklist setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 66
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 67
    return-void
.end method

.method public blacklist setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    .line 60
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 61
    return-void
.end method

.method public blacklist setSerialNumber(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 2
    .param p1, "serialNumber"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 45
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 46
    return-void
.end method

.method public blacklist setSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2
    .param p1, "signature"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 51
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 52
    return-void
.end method

.method public blacklist setStartDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;)V
    .registers 3
    .param p1, "startDate"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    .line 78
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 79
    return-void
.end method

.method public blacklist setStartDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .param p1, "startDate"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 72
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 73
    return-void
.end method

.method public blacklist setSubject(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2
    .param p1, "subject"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 105
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 106
    return-void
.end method

.method public blacklist setSubject(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .param p1, "subject"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 100
    return-void
.end method

.method public blacklist setSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 2
    .param p1, "pubKeyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 111
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 112
    return-void
.end method
