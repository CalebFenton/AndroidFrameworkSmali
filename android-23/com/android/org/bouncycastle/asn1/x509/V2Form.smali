.class public Lcom/android/org/bouncycastle/asn1/x509/V2Form;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "V2Form.java"


# instance fields
.field baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

.field issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

.field objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 73
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 76
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@7
    move-result v3

    #@8
    const/4 v4, 0x3

    #@9
    if-le v3, v4, :cond_0

    #@b
    .line 78
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "Bad sequence size: "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@1c
    move-result v5

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v3

    #@29
    .line 81
    :cond_0
    const/4 v1, 0x0

    #@2a
    .line 83
    .local v1, "index":I
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2d
    move-result-object v3

    #@2e
    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@30
    if-nez v3, :cond_1

    #@32
    .line 85
    const/4 v1, 0x1

    #@33
    .line 86
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@36
    move-result-object v3

    #@37
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@3a
    move-result-object v3

    #@3b
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@3d
    .line 89
    :cond_1
    move v0, v1

    #@3e
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@41
    move-result v3

    #@42
    if-eq v0, v3, :cond_4

    #@44
    .line 91
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@47
    move-result-object v3

    #@48
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@4b
    move-result-object v2

    #@4c
    .line 92
    .local v2, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@4f
    move-result v3

    #@50
    if-nez v3, :cond_2

    #@52
    .line 94
    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@55
    move-result-object v3

    #@56
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@58
    .line 89
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 96
    :cond_2
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@5e
    move-result v3

    #@5f
    const/4 v4, 0x1

    #@60
    if-ne v3, v4, :cond_3

    #@62
    .line 98
    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@65
    move-result-object v3

    #@66
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@68
    goto :goto_1

    #@69
    .line 102
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@6b
    new-instance v4, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v5, "Bad tag number: "

    #@73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    .line 103
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@7a
    move-result v5

    #@7b
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@86
    throw v3

    #@87
    .line 74
    .end local v2    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1
    .param p1, "issuerName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 43
    invoke-direct {p0, p1, v0, v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    #@4
    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;)V
    .locals 1
    .param p1, "issuerName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "baseCertificateID"    # Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@0
    .prologue
    .line 50
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    #@4
    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .locals 0
    .param p1, "issuerName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "baseCertificateID"    # Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;
    .param p3, "objectDigestInfo"    # Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 65
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@5
    .line 66
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@7
    .line 67
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@9
    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .locals 1
    .param p1, "issuerName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "objectDigestInfo"    # Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@0
    .prologue
    .line 57
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    #@4
    .line 55
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/V2Form;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/V2Form;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 30
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 32
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 37
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@2
    return-object v0
.end method

.method public getIssuerName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@2
    return-object v0
.end method

.method public getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 138
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@3
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@6
    .line 140
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 142
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 147
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@15
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@17
    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1d
    .line 150
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 152
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@23
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@25
    const/4 v3, 0x1

    #@26
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@29
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2c
    .line 155
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@2e
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@31
    return-object v1
.end method
