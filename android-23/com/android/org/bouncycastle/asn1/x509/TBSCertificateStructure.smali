.class public Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "TBSCertificateStructure.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

.field issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 9
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 72
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@5
    .line 75
    const/4 v3, 0x0

    #@6
    .line 77
    .local v3, "seqStart":I
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@8
    .line 82
    invoke-virtual {p1, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@b
    move-result-object v4

    #@c
    instance-of v4, v4, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 84
    invoke-virtual {p1, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@16
    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@19
    move-result-object v4

    #@1a
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1c
    .line 92
    :goto_0
    add-int/lit8 v4, v3, 0x1

    #@1e
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@21
    move-result-object v4

    #@22
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@25
    move-result-object v4

    #@26
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@28
    .line 94
    add-int/lit8 v4, v3, 0x2

    #@2a
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@31
    move-result-object v4

    #@32
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@34
    .line 95
    add-int/lit8 v4, v3, 0x3

    #@36
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@39
    move-result-object v4

    #@3a
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@3d
    move-result-object v4

    #@3e
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@40
    .line 100
    add-int/lit8 v4, v3, 0x4

    #@42
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@48
    .line 102
    .local v0, "dates":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4b
    move-result-object v4

    #@4c
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@4f
    move-result-object v4

    #@50
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@52
    .line 103
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@55
    move-result-object v4

    #@56
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@59
    move-result-object v4

    #@5a
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@5c
    .line 105
    add-int/lit8 v4, v3, 0x5

    #@5e
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@61
    move-result-object v4

    #@62
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@65
    move-result-object v4

    #@66
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@68
    .line 110
    add-int/lit8 v4, v3, 0x6

    #@6a
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6d
    move-result-object v4

    #@6e
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@71
    move-result-object v4

    #@72
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@74
    .line 112
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@77
    move-result v4

    #@78
    add-int/lit8 v5, v3, 0x6

    #@7a
    sub-int/2addr v4, v5

    #@7b
    add-int/lit8 v2, v4, -0x1

    #@7d
    .local v2, "extras":I
    :goto_1
    if-lez v2, :cond_1

    #@7f
    .line 114
    add-int/lit8 v4, v3, 0x6

    #@81
    add-int/2addr v4, v2

    #@82
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@85
    move-result-object v1

    #@86
    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@88
    .line 116
    .local v1, "extra":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    #@8b
    move-result v4

    #@8c
    packed-switch v4, :pswitch_data_0

    #@8f
    .line 112
    :goto_2
    add-int/lit8 v2, v2, -0x1

    #@91
    goto :goto_1

    #@92
    .line 88
    .end local v0    # "dates":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v1    # "extra":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v2    # "extras":I
    :cond_0
    const/4 v3, -0x1

    #@93
    .line 89
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@95
    const-wide/16 v6, 0x0

    #@97
    invoke-direct {v4, v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@9a
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@9c
    goto :goto_0

    #@9d
    .line 119
    .restart local v0    # "dates":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v1    # "extra":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .restart local v2    # "extras":I
    :pswitch_0
    invoke-static {v1, v8}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@a0
    move-result-object v4

    #@a1
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@a3
    goto :goto_2

    #@a4
    .line 122
    :pswitch_1
    invoke-static {v1, v8}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@a7
    move-result-object v4

    #@a8
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@aa
    goto :goto_2

    #@ab
    .line 125
    :pswitch_2
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    #@ae
    move-result-object v4

    #@af
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    #@b1
    goto :goto_2

    #@b2
    .line 73
    .end local v1    # "extra":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    :cond_1
    return-void

    #@b3
    .line 116
    nop

    #@b4
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 60
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 62
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 64
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 69
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@2
    return-object v0
.end method

.method public getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    #@2
    return-object v0
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@2
    return-object v0
.end method

.method public getIssuerUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    return-object v0
.end method

.method public getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@2
    return-object v0
.end method

.method public getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@2
    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@2
    return-object v0
.end method

.method public getSubjectUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@9
    move-result v0

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    return v0
.end method

.method public getVersionNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    return-object v0
.end method
