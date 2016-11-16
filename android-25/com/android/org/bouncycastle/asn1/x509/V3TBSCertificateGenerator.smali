.class public Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;
.super Ljava/lang/Object;
.source "V3TBSCertificateGenerator.java"


# instance fields
.field private altNamePresentAndCritical:Z

.field endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

.field issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field private issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private subjectUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@5
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    const-wide/16 v2, 0x2

    #@9
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@c
    const/4 v2, 0x1

    #@d
    const/4 v3, 0x0

    #@e
    invoke-direct {v0, v2, v3, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@13
    .line 45
    return-void
.end method


# virtual methods
.method public generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 160
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 164
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v3, "not all mandatory fields set in V3 TBScertificate generator"

    #@f
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 161
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@15
    if-eqz v2, :cond_0

    #@17
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@19
    if-eqz v2, :cond_0

    #@1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 162
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@21
    if-nez v2, :cond_2

    #@23
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    #@25
    if-eqz v2, :cond_0

    #@27
    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@29
    if-eqz v2, :cond_0

    #@2b
    .line 167
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2d
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@30
    .line 169
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@32
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@35
    .line 170
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@37
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3a
    .line 171
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3c
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3f
    .line 172
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@41
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@44
    .line 177
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@46
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@49
    .line 179
    .local v1, "validity":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@4b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4e
    .line 180
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@50
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@53
    .line 182
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@55
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@58
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@5b
    .line 184
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@5d
    if-eqz v2, :cond_6

    #@5f
    .line 186
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@61
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@64
    .line 193
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@66
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@69
    .line 195
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@6b
    if-eqz v2, :cond_3

    #@6d
    .line 197
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@6f
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@71
    invoke-direct {v2, v5, v6, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@74
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@77
    .line 200
    :cond_3
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@79
    if-eqz v2, :cond_4

    #@7b
    .line 202
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@7d
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@7f
    const/4 v4, 0x2

    #@80
    invoke-direct {v2, v5, v4, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@83
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@86
    .line 205
    :cond_4
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@88
    if-eqz v2, :cond_5

    #@8a
    .line 207
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@8c
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@8e
    const/4 v4, 0x3

    #@8f
    invoke-direct {v2, v6, v4, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@92
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@95
    .line 210
    :cond_5
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@97
    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@9a
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@9d
    move-result-object v2

    #@9e
    return-object v2

    #@9f
    .line 190
    :cond_6
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@a1
    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    #@a4
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a7
    goto :goto_0
.end method

.method public setEndDate(Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;)V
    .locals 1
    .param p1, "endDate"    # Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@0
    .prologue
    .line 91
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@2
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@7
    .line 89
    return-void
.end method

.method public setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "endDate"    # Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@0
    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@2
    .line 95
    return-void
.end method

.method public setExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)V
    .locals 2
    .param p1, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@0
    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@2
    .line 147
    if-eqz p1, :cond_0

    #@4
    .line 149
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@9
    move-result-object v0

    #@a
    .line 151
    .local v0, "altName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v0, :cond_0

    #@c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 153
    const/4 v1, 0x1

    #@13
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    #@15
    .line 144
    .end local v0    # "altName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    return-void
.end method

.method public setExtensions(Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 1
    .param p1, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    #@0
    .prologue
    .line 140
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)V

    #@7
    .line 138
    return-void
.end method

.method public setIssuer(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 0
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@0
    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@2
    .line 71
    return-void
.end method

.method public setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@0
    .prologue
    .line 67
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@6
    .line 65
    return-void
.end method

.method public setIssuerUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .locals 0
    .param p1, "uniqueID"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@0
    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    .line 116
    return-void
.end method

.method public setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "serialNumber"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@0
    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    .line 50
    return-void
.end method

.method public setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "signature"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@0
    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    .line 56
    return-void
.end method

.method public setStartDate(Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;)V
    .locals 1
    .param p1, "startDate"    # Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@0
    .prologue
    .line 79
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@2
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@7
    .line 77
    return-void
.end method

.method public setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "startDate"    # Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@0
    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@2
    .line 83
    return-void
.end method

.method public setSubject(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 0
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@2
    .line 110
    return-void
.end method

.method public setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@0
    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@a
    .line 104
    return-void
.end method

.method public setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .param p1, "pubKeyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@0
    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@2
    .line 128
    return-void
.end method

.method public setSubjectUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .locals 0
    .param p1, "uniqueID"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@0
    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    .line 122
    return-void
.end method
