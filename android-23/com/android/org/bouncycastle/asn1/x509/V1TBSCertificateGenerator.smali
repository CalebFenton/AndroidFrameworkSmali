.class public Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;
.super Ljava/lang/Object;
.source "V1TBSCertificateGenerator.java"


# instance fields
.field endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@5
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    const-wide/16 v2, 0x0

    #@9
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@c
    const/4 v2, 0x1

    #@d
    const/4 v3, 0x0

    #@e
    invoke-direct {v0, v2, v3, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@13
    .line 36
    return-void
.end method


# virtual methods
.method public generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .locals 4

    #@0
    .prologue
    .line 114
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@6
    if-nez v2, :cond_1

    #@8
    .line 118
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v3, "not all mandatory fields set in V1 TBScertificate generator"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 115
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@13
    if-eqz v2, :cond_0

    #@15
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@17
    if-eqz v2, :cond_0

    #@19
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 116
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@1f
    if-eqz v2, :cond_0

    #@21
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@23
    if-eqz v2, :cond_0

    #@25
    .line 121
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@27
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@2a
    .line 124
    .local v0, "seq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2c
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2f
    .line 125
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@31
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@34
    .line 126
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@36
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@39
    .line 131
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@3b
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@3e
    .line 133
    .local v1, "validity":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@40
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@43
    .line 134
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@45
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@48
    .line 136
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@4a
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@4d
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@50
    .line 138
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@52
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@55
    .line 140
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@57
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@5a
    .line 142
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@5c
    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@5f
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@62
    move-result-object v2

    #@63
    return-object v2
.end method

.method public setEndDate(Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;)V
    .locals 1
    .param p1, "endDate"    # Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@0
    .prologue
    .line 88
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@2
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@7
    .line 86
    return-void
.end method

.method public setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "endDate"    # Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@0
    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@2
    .line 80
    return-void
.end method

.method public setIssuer(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 0
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@0
    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@2
    .line 62
    return-void
.end method

.method public setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@0
    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@a
    .line 56
    return-void
.end method

.method public setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "serialNumber"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@0
    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    .line 41
    return-void
.end method

.method public setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "signature"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@0
    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    .line 47
    return-void
.end method

.method public setStartDate(Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;)V
    .locals 1
    .param p1, "startDate"    # Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@0
    .prologue
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@2
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@7
    .line 74
    return-void
.end method

.method public setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "startDate"    # Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@0
    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@2
    .line 68
    return-void
.end method

.method public setSubject(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 0
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@0
    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@2
    .line 101
    return-void
.end method

.method public setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@0
    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@a
    .line 95
    return-void
.end method

.method public setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .param p1, "pubKeyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@0
    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@2
    .line 107
    return-void
.end method
