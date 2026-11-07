.class public Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "TBSCertificate.java"


# instance fields
.field blacklist endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field blacklist issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field blacklist issuerUniqueId:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

.field blacklist seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field blacklist serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field blacklist signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field blacklist subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field blacklist subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field blacklist subjectUniqueId:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

.field blacklist version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 11
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 77
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "seqStart":I
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    .line 87
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_27

    .line 91
    :cond_1d
    const/4 v0, -0x1

    .line 92
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 95
    :goto_27
    const/4 v2, 0x0

    .line 96
    .local v2, "isV1":Z
    const/4 v4, 0x0

    .line 98
    .local v4, "isV2":Z
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 100
    const/4 v2, 0x1

    goto :goto_46

    .line 102
    :cond_33
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 104
    const/4 v4, 0x1

    goto :goto_46

    .line 106
    :cond_3d
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_10c

    .line 111
    :goto_46
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 113
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 114
    add-int/lit8 v5, v0, 0x3

    invoke-virtual {p1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 119
    add-int/lit8 v5, v0, 0x4

    invoke-virtual {p1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 121
    .local v5, "dates":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 122
    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 124
    add-int/lit8 v6, v0, 0x5

    invoke-virtual {p1, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 129
    add-int/lit8 v6, v0, 0x6

    invoke-virtual {p1, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 131
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    add-int/lit8 v7, v0, 0x6

    sub-int/2addr v6, v7

    sub-int/2addr v6, v3

    .line 132
    .local v6, "extras":I
    if-eqz v6, :cond_b4

    if-nez v2, :cond_ab

    goto :goto_b4

    .line 134
    :cond_ab
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "version 1 certificate contains extra data"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_b4
    :goto_b4
    if-lez v6, :cond_10b

    .line 139
    add-int/lit8 v7, v0, 0x6

    add-int/2addr v7, v6

    invoke-virtual {p1, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 141
    .local v7, "extra":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    packed-switch v8, :pswitch_data_116

    .line 157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown tag encountered in structure: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :pswitch_e3
    if-nez v4, :cond_f0

    .line 154
    invoke-static {v7, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 155
    goto :goto_107

    .line 152
    :cond_f0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "version 2 certificate cannot contain extensions"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :pswitch_f9
    invoke-static {v7, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 148
    goto :goto_107

    .line 144
    :pswitch_100
    invoke-static {v7, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 145
    nop

    .line 159
    :goto_107
    nop

    .end local v7    # "extra":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    add-int/lit8 v6, v6, -0x1

    .line 160
    goto :goto_b4

    .line 161
    :cond_10b
    return-void

    .line 108
    .end local v5    # "dates":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v6    # "extras":I
    :cond_10c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "version number not recognised"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_100
        :pswitch_f9
        :pswitch_e3
    .end packed-switch
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 57
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 63
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    if-eqz v0, :cond_8

    .line 65
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    return-object v0

    .line 67
    :cond_8
    if-eqz p0, :cond_14

    .line 69
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 72
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public blacklist getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getIssuerUniqueId()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public blacklist getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public blacklist getSubjectUniqueId()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getVersionNumber()I
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 7

    .line 225
    const-string v0, "com.android.internal.org.bouncycastle.x509.allow_non-der_tbscert"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_99

    .line 227
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 229
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0

    .line 237
    :cond_11
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 240
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2a

    .line 242
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 245
    :cond_2a
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 246
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 247
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 253
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 254
    .local v1, "validity":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 255
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 257
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 260
    .end local v1    # "validity":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_5b

    .line 262
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_63

    .line 266
    :cond_5b
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 269
    :goto_63
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 272
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_76

    .line 274
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 278
    :cond_76
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_84

    .line 280
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-direct {v1, v2, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 283
    :cond_84
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_93

    .line 285
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 288
    :cond_93
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 234
    .end local v0    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_99
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
