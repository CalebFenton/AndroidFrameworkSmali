.class public Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AttributeCertificateInfo.java"


# instance fields
.field private attrCertValidityPeriod:Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

.field private attributes:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field private extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

.field private holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

.field private issuer:Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

.field private issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field private serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 48
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 51
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@7
    move-result v3

    #@8
    const/4 v4, 0x6

    #@9
    if-lt v3, v4, :cond_0

    #@b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@e
    move-result v3

    #@f
    const/16 v4, 0x9

    #@11
    if-le v3, v4, :cond_1

    #@13
    .line 53
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "Bad sequence size: "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@24
    move-result v5

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3

    #@31
    .line 57
    :cond_1
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@34
    move-result-object v3

    #@35
    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@37
    if-eqz v3, :cond_3

    #@39
    .line 59
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@40
    move-result-object v3

    #@41
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@43
    .line 60
    const/4 v2, 0x1

    #@44
    .line 68
    .local v2, "start":I
    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@47
    move-result-object v3

    #@48
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@4b
    move-result-object v3

    #@4c
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@4e
    .line 69
    add-int/lit8 v3, v2, 0x1

    #@50
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@53
    move-result-object v3

    #@54
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    #@57
    move-result-object v3

    #@58
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    #@5a
    .line 70
    add-int/lit8 v3, v2, 0x2

    #@5c
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5f
    move-result-object v3

    #@60
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@63
    move-result-object v3

    #@64
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@66
    .line 71
    add-int/lit8 v3, v2, 0x3

    #@68
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6b
    move-result-object v3

    #@6c
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@6f
    move-result-object v3

    #@70
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@72
    .line 72
    add-int/lit8 v3, v2, 0x4

    #@74
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@77
    move-result-object v3

    #@78
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    #@7b
    move-result-object v3

    #@7c
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    #@7e
    .line 73
    add-int/lit8 v3, v2, 0x5

    #@80
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@83
    move-result-object v3

    #@84
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@87
    move-result-object v3

    #@88
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@8a
    .line 75
    add-int/lit8 v0, v2, 0x6

    #@8c
    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@8f
    move-result v3

    #@90
    if-ge v0, v3, :cond_6

    #@92
    .line 77
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@95
    move-result-object v1

    #@96
    .line 79
    .local v1, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@98
    if-eqz v3, :cond_4

    #@9a
    .line 81
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@9d
    move-result-object v3

    #@9e
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@a1
    move-result-object v3

    #@a2
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@a4
    .line 75
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@a6
    goto :goto_1

    #@a7
    .line 64
    .end local v0    # "i":I
    .end local v1    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v2    # "start":I
    :cond_3
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@a9
    const-wide/16 v4, 0x0

    #@ab
    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@ae
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b0
    .line 65
    const/4 v2, 0x0

    #@b1
    .restart local v2    # "start":I
    goto :goto_0

    #@b2
    .line 83
    .restart local v0    # "i":I
    .restart local v1    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_4
    instance-of v3, v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@b4
    if-nez v3, :cond_5

    #@b6
    instance-of v3, v1, Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@b8
    if-eqz v3, :cond_2

    #@ba
    .line 85
    :cond_5
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@bd
    move-result-object v3

    #@be
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@c1
    move-result-object v3

    #@c2
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@c4
    goto :goto_2

    #@c5
    .line 49
    .end local v1    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_6
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 36
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 38
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 40
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 45
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAttrCertValidityPeriod()Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    #@2
    return-object v0
.end method

.method public getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    return-object v0
.end method

.method public getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@2
    return-object v0
.end method

.method public getHolder()Lcom/android/org/bouncycastle/asn1/x509/Holder;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@2
    return-object v0
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    #@2
    return-object v0
.end method

.method public getIssuerUniqueID()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    return-object v0
.end method

.method public getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 155
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 157
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 159
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@13
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@16
    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@18
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1b
    .line 162
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    #@1d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@20
    .line 163
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@22
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@25
    .line 164
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@27
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2a
    .line 165
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    #@2c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2f
    .line 166
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@31
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@34
    .line 168
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@36
    if-eqz v1, :cond_1

    #@38
    .line 170
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@3a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3d
    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@3f
    if-eqz v1, :cond_2

    #@41
    .line 175
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@43
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@46
    .line 178
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@48
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@4b
    return-object v1
.end method
