.class public Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "TBSCertificate.java"


# instance fields
.field blacklist endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field blacklist extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

.field blacklist issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field blacklist issuerUniqueId:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

.field blacklist seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field blacklist serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field blacklist signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field blacklist subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field blacklist subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field blacklist subjectUniqueId:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

.field blacklist version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 11

    .line 77
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    .line 87
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move v1, v0

    goto :goto_27

    .line 92
    :cond_1d
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const/4 v1, -0x1

    .line 98
    :goto_27
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_33

    move v5, v0

    move v3, v2

    goto :goto_48

    .line 102
    :cond_33
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    move v3, v0

    move v5, v2

    goto :goto_48

    .line 106
    :cond_3e
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_109

    move v3, v0

    move v5, v3

    :goto_48
    add-int/lit8 v6, v1, 0x1

    .line 111
    invoke-virtual {p1, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    add-int/lit8 v6, v1, 0x2

    .line 113
    invoke-virtual {p1, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    add-int/lit8 v6, v1, 0x3

    .line 114
    invoke-virtual {p1, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    add-int/lit8 v6, v1, 0x4

    .line 119
    invoke-virtual {p1, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 121
    invoke-virtual {v6, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v7

    iput-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 122
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    add-int/lit8 v6, v1, 0x5

    .line 124
    invoke-virtual {p1, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    add-int/lit8 v1, v1, 0x6

    .line 129
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 131
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    if-eqz v6, :cond_b3

    if-nez v3, :cond_ab

    goto :goto_b3

    .line 134
    :cond_ab
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "version 1 certificate contains extra data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b3
    :goto_b3
    if-lez v6, :cond_108

    add-int v3, v1, v6

    .line 139
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 141
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-eq v7, v2, :cond_ff

    if-eq v7, v4, :cond_f8

    const/4 v8, 0x3

    if-ne v7, v8, :cond_dd

    if-nez v5, :cond_d5

    .line 154
    invoke-static {v3, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    goto :goto_105

    .line 152
    :cond_d5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "version 2 certificate cannot contain extensions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_dd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown tag encountered in structure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_f8
    invoke-static {v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    goto :goto_105

    .line 144
    :cond_ff
    invoke-static {v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    :goto_105
    add-int/lit8 v6, v6, -0x1

    goto :goto_b3

    :cond_108
    return-void

    .line 108
    :cond_109
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "version number not recognised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 2

    .line 63
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    if-eqz v0, :cond_7

    .line 65
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object p0
.end method

.method public blacklist getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    return-object p0
.end method

.method public blacklist getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object p0
.end method

.method public blacklist getIssuerUniqueId()Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    return-object p0
.end method

.method public blacklist getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 1

    .line 175
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public blacklist getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object p0
.end method

.method public blacklist getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object p0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object p0
.end method

.method public blacklist getSubjectUniqueId()Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    return-object p0
.end method

.method public blacklist getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public blacklist getVersionNumber()I
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 7

    .line 225
    const-string v0, "com.android.org.bouncycastle.x509.allow_non-der_tbscert"

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 227
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 229
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object p0

    .line 237
    :cond_11
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 240
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2a

    .line 242
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v3, v2, v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 245
    :cond_2a
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 246
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 247
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 253
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 254
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 255
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 257
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 260
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_59

    .line 262
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_61

    .line 266
    :cond_59
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 269
    :goto_61
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 272
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_72

    .line 274
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v5, v2, v3, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 278
    :cond_72
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_7e

    .line 280
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v5, v2, v4, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 283
    :cond_7e
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    if-eqz p0, :cond_8b

    .line 285
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2, p0}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 288
    :cond_8b
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0

    .line 234
    :cond_91
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object p0
.end method
