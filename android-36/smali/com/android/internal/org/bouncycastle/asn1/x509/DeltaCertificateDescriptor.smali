.class public Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "DeltaCertificateDescriptor.java"


# instance fields
.field private blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private blacklist issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field private final blacklist serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist signatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

.field private blacklist subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field private blacklist subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private blacklist validity:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 77
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 80
    const/4 v1, 0x1

    .line 81
    .local v1, "idx":I
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 82
    .local v2, "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :goto_13
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_48

    .line 84
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    .line 85
    .local v3, "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_78

    goto :goto_40

    .line 97
    :pswitch_24
    invoke-static {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    goto :goto_40

    .line 94
    :pswitch_2b
    invoke-static {v3, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 95
    goto :goto_40

    .line 91
    :pswitch_32
    invoke-static {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 92
    goto :goto_40

    .line 88
    :pswitch_39
    invoke-static {v3, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 89
    nop

    .line 100
    :goto_40
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .local v4, "idx":I
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 101
    .end local v3    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    move v1, v4

    goto :goto_13

    .line 103
    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    :cond_48
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 105
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 106
    :goto_52
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_70

    .line 108
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    .line 109
    .restart local v3    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_84

    goto :goto_68

    .line 112
    :pswitch_62
    invoke-static {v3, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 115
    :goto_68
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .restart local v4    # "idx":I
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 116
    .end local v3    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    move v1, v4

    goto :goto_52

    .line 118
    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    :cond_70
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 119
    return-void

    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_39
        :pswitch_32
        :pswitch_2b
        :pswitch_24
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x4
        :pswitch_62
    .end packed-switch
.end method

.method private blacklist addOptional(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;IZLcom/android/internal/org/bouncycastle/asn1/ASN1Object;)V
    .registers 6
    .param p1, "v"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "tag"    # I
    .param p3, "explicit"    # Z
    .param p4, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    .line 255
    if-eqz p4, :cond_a

    .line 257
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, p3, p2, p4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 259
    :cond_a
    return-void
.end method

.method public static blacklist fromExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .registers 2
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 73
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 53
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    if-eqz v0, :cond_8

    .line 55
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    return-object v0

    .line 57
    :cond_8
    if-eqz p0, :cond_14

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 62
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getSignatureValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public blacklist getValidity()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 263
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 265
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 266
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;IZLcom/android/internal/org/bouncycastle/asn1/ASN1Object;)V

    .line 267
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;IZLcom/android/internal/org/bouncycastle/asn1/ASN1Object;)V

    .line 268
    const/4 v1, 0x2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;IZLcom/android/internal/org/bouncycastle/asn1/ASN1Object;)V

    .line 269
    const/4 v1, 0x3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;IZLcom/android/internal/org/bouncycastle/asn1/ASN1Object;)V

    .line 270
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 271
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;IZLcom/android/internal/org/bouncycastle/asn1/ASN1Object;)V

    .line 272
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 274
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public blacklist trimTo(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .registers 20
    .param p1, "baseTbsCertificate"    # Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .param p2, "tbsExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 163
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 164
    .local v1, "signature":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 165
    .local v2, "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 169
    .local v3, "validity":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 170
    .local v4, "subject":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    .line 171
    .local v5, "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 173
    .local v8, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v9

    .line 174
    .local v9, "en":Ljava/util/Enumeration;
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v8, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 176
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 177
    .local v10, "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :goto_3a
    instance-of v11, v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v11, :cond_89

    .line 179
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v11

    .line 180
    .local v11, "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v12

    packed-switch v12, :pswitch_data_10c

    goto :goto_81

    .line 204
    :pswitch_4a
    invoke-static {v11, v7}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v12

    .line 205
    .local v12, "sub":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v12, v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_81

    .line 207
    invoke-virtual {v8, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_81

    .line 197
    .end local v12    # "sub":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :pswitch_58
    invoke-static {v11, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v12

    .line 198
    .local v12, "val":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v12, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v13

    if-nez v13, :cond_81

    .line 200
    invoke-virtual {v8, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_81

    .line 190
    .end local v12    # "val":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :pswitch_66
    invoke-static {v11, v7}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v12

    .line 191
    .local v12, "iss":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v12, v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_81

    .line 193
    invoke-virtual {v8, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_81

    .line 183
    .end local v12    # "iss":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :pswitch_74
    invoke-static {v11, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v12

    .line 184
    .local v12, "sig":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v12, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_81

    .line 186
    invoke-virtual {v8, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 211
    .end local v12    # "sig":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_81
    :goto_81
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    move-object v10, v12

    check-cast v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 212
    .end local v11    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    goto :goto_3a

    .line 214
    :cond_89
    invoke-virtual {v8, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 216
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 217
    .end local v10    # "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .local v7, "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :goto_92
    instance-of v10, v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v10, :cond_fc

    .line 219
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v10

    .line 220
    .local v10, "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v11

    packed-switch v11, :pswitch_data_118

    move v0, v6

    move-object/from16 v6, p2

    goto :goto_f1

    .line 223
    :pswitch_a5
    invoke-static {v10, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v11

    .line 224
    .local v11, "deltaExts":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    new-instance v12, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v12}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    .line 225
    .local v12, "deltaExtGen":Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v13

    .local v13, "extEn":Ljava/util/Enumeration;
    :goto_b2
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_d9

    .line 227
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11, v14}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v14

    .line 228
    .local v14, "deltaExt":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    move-object/from16 v6, p2

    invoke-virtual {v6, v15}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v15

    .line 230
    .local v15, "primaryExt":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v15, :cond_d7

    .line 232
    invoke-virtual {v14, v15}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d7

    .line 234
    invoke-virtual {v12, v14}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V

    .line 237
    .end local v14    # "deltaExt":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .end local v15    # "primaryExt":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_d7
    const/4 v6, 0x0

    goto :goto_b2

    .line 225
    :cond_d9
    move-object/from16 v6, p2

    .line 240
    .end local v13    # "extEn":Ljava/util/Enumeration;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_f0

    .line 242
    new-instance v13, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v14, 0x4

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v15

    const/4 v0, 0x0

    invoke-direct {v13, v0, v14, v15}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v8, v13}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_f1

    .line 240
    :cond_f0
    const/4 v0, 0x0

    .line 245
    .end local v11    # "deltaExts":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .end local v12    # "deltaExtGen":Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    :goto_f1
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    move-object v7, v11

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 246
    .end local v10    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    move v6, v0

    move-object/from16 v0, p1

    goto :goto_92

    .line 248
    :cond_fc
    move-object/from16 v6, p2

    invoke-virtual {v8, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 250
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v8}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_74
        :pswitch_66
        :pswitch_58
        :pswitch_4a
    .end packed-switch

    :pswitch_data_118
    .packed-switch 0x4
        :pswitch_a5
    .end packed-switch
.end method
