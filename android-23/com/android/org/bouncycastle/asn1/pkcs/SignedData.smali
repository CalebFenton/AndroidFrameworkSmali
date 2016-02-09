.class public Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SignedData.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "_version"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .param p2, "_digestAlgorithms"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p3, "_contentInfo"    # Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .param p4, "_certificates"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p5, "_crls"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p6, "_signerInfos"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5
    .line 53
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@7
    .line 54
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@9
    .line 55
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@b
    .line 56
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@d
    .line 57
    iput-object p6, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@f
    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 60
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 63
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    .line 65
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@e
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@10
    .line 66
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@16
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@18
    .line 67
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@1f
    move-result-object v3

    #@20
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@22
    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 71
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2e
    .line 77
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v3, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@30
    if-eqz v3, :cond_0

    #@32
    move-object v2, v1

    #@33
    .line 79
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@35
    .line 81
    .local v2, "tagged":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@38
    move-result v3

    #@39
    packed-switch v3, :pswitch_data_0

    #@3c
    .line 90
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@3e
    new-instance v4, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v5, "unknown tag value "

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@4d
    move-result v5

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v3

    #@5a
    .line 84
    :pswitch_0
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@5d
    move-result-object v3

    #@5e
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@60
    goto :goto_0

    #@61
    .line 87
    :pswitch_1
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@64
    move-result-object v3

    #@65
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@67
    goto :goto_0

    #@68
    .line 95
    .end local v2    # "tagged":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@6a
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@6c
    goto :goto_0

    #@6d
    .line 61
    :cond_1
    return-void

    #@6e
    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 32
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 34
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    #@7
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@8
    .line 36
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 41
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getCRLs()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getCertificates()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getContentInfo()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@2
    return-object v0
.end method

.method public getDigestAlgorithms()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getSignerInfos()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 147
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@3
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@6
    .line 149
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@b
    .line 150
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@10
    .line 151
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@12
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@15
    .line 153
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 155
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@1d
    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@20
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@23
    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 160
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@29
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2b
    const/4 v3, 0x1

    #@2c
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@32
    .line 163
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@34
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@37
    .line 165
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@39
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@3c
    return-object v1
.end method
