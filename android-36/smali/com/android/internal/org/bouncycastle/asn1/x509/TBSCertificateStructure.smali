.class public Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "TBSCertificateStructure.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field blacklist endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

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
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 76
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "seqStart":I
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 84
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    .line 86
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_27

    .line 90
    :cond_1d
    const/4 v0, -0x1

    .line 91
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 94
    :goto_27
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 96
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 97
    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 102
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 104
    .local v2, "dates":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 105
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 107
    add-int/lit8 v4, v0, 0x5

    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 112
    add-int/lit8 v4, v0, 0x6

    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 114
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    add-int/lit8 v5, v0, 0x6

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    .local v4, "extras":I
    :goto_87
    if-lez v4, :cond_b4

    .line 116
    add-int/lit8 v3, v0, 0x6

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    .line 118
    .local v3, "extra":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    packed-switch v5, :pswitch_data_b6

    goto :goto_b1

    .line 127
    :pswitch_9c
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    goto :goto_b1

    .line 124
    :pswitch_a3
    invoke-static {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 125
    goto :goto_b1

    .line 121
    :pswitch_aa
    invoke-static {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 122
    nop

    .line 114
    .end local v3    # "extra":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_b1
    add-int/lit8 v4, v4, -0x1

    goto :goto_87

    .line 130
    .end local v4    # "extras":I
    :cond_b4
    return-void

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_a3
        :pswitch_9c
    .end packed-switch
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 56
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 62
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    if-eqz v0, :cond_8

    .line 64
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    return-object v0

    .line 66
    :cond_8
    if-eqz p0, :cond_14

    .line 68
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 71
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public blacklist getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getIssuerUniqueId()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public blacklist getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public blacklist getSubjectUniqueId()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist getVersionNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificateStructure;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
