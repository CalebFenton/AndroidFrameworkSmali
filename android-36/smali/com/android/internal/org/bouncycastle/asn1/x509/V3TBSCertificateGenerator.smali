.class public Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;
.super Ljava/lang/Object;
.source "V3TBSCertificateGenerator.java"


# instance fields
.field private blacklist altNamePresentAndCritical:Z

.field blacklist endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field blacklist issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field private blacklist issuerUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field blacklist serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field blacklist signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field blacklist subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field blacklist subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private blacklist subjectUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field blacklist version:Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->version:Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    .line 51
    return-void
.end method

.method private blacklist generateTBSStructure()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 7

    .line 180
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 182
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->version:Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 183
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 185
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_1a

    .line 187
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 190
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 196
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 197
    .local v1, "validity":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 198
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 200
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 203
    .end local v1    # "validity":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_41

    .line 205
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_49

    .line 209
    :cond_41
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 212
    :goto_49
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 214
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5e

    .line 216
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, v4, v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 219
    :cond_5e
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_6c

    .line 221
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, v4, v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 224
    :cond_6c
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_7b

    .line 226
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 229
    :cond_7b
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method


# virtual methods
.method public blacklist generatePreTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-nez v0, :cond_2d

    .line 168
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    if-eqz v0, :cond_25

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_25

    .line 175
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSStructure()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0

    .line 172
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "signature field should not be set in PreTBSCertificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist generateTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    if-eqz v0, :cond_29

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_29

    .line 241
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSStructure()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    return-object v0

    .line 238
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setEndDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;)V
    .registers 3
    .param p1, "endDate"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    .line 95
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 96
    return-void
.end method

.method public blacklist setEndDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .param p1, "endDate"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 101
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 102
    return-void
.end method

.method public blacklist setExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V
    .registers 4
    .param p1, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 150
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 151
    if-eqz p1, :cond_15

    .line 153
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    .line 155
    .local v0, "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    .line 160
    .end local v0    # "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_15
    return-void
.end method

.method public blacklist setExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 3
    .param p1, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    .line 144
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    .line 145
    return-void
.end method

.method public blacklist setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 77
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 78
    return-void
.end method

.method public blacklist setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    .line 71
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 72
    return-void
.end method

.method public blacklist setIssuerUniqueID(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V
    .registers 2
    .param p1, "uniqueID"    # Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 122
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 123
    return-void
.end method

.method public blacklist setSerialNumber(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 2
    .param p1, "serialNumber"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 56
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 57
    return-void
.end method

.method public blacklist setSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2
    .param p1, "signature"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 62
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 63
    return-void
.end method

.method public blacklist setStartDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;)V
    .registers 3
    .param p1, "startDate"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    .line 83
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 84
    return-void
.end method

.method public blacklist setStartDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .param p1, "startDate"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 89
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 90
    return-void
.end method

.method public blacklist setSubject(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2
    .param p1, "subject"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 116
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 117
    return-void
.end method

.method public blacklist setSubject(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .param p1, "subject"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    .line 110
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 111
    return-void
.end method

.method public blacklist setSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 2
    .param p1, "pubKeyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 134
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 135
    return-void
.end method

.method public blacklist setSubjectUniqueID(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V
    .registers 2
    .param p1, "uniqueID"    # Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 128
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 129
    return-void
.end method
