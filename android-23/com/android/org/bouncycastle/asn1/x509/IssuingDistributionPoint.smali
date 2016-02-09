.class public Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "IssuingDistributionPoint.java"


# instance fields
.field private distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

.field private indirectCRL:Z

.field private onlyContainsAttributeCerts:Z

.field private onlyContainsCACerts:Z

.field private onlyContainsUserCerts:Z

.field private onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

.field private seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 142
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 145
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    .line 147
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@a
    move-result v2

    #@b
    if-eq v0, v2, :cond_0

    #@d
    .line 149
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v2

    #@11
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@14
    move-result-object v1

    #@15
    .line 151
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@18
    move-result v2

    #@19
    packed-switch v2, :pswitch_data_0

    #@1c
    .line 173
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1e
    .line 174
    const-string/jumbo v3, "unknown tag in IssuingDistributionPoint"

    #@21
    .line 173
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2

    #@25
    .line 155
    :pswitch_0
    const/4 v2, 0x1

    #@26
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@29
    move-result-object v2

    #@2a
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@2c
    .line 147
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 158
    :pswitch_1
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    #@36
    move-result v2

    #@37
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    #@39
    goto :goto_1

    #@3a
    .line 161
    :pswitch_2
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    #@41
    move-result v2

    #@42
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    #@44
    goto :goto_1

    #@45
    .line 164
    :pswitch_3
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@47
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@4a
    move-result-object v3

    #@4b
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;-><init>(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    #@4e
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@50
    goto :goto_1

    #@51
    .line 167
    :pswitch_4
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    #@58
    move-result v2

    #@59
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    #@5b
    goto :goto_1

    #@5c
    .line 170
    :pswitch_5
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    #@63
    move-result v2

    #@64
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    #@66
    goto :goto_1

    #@67
    .line 143
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    return-void

    #@68
    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;ZZ)V
    .locals 7
    .param p1, "distributionPoint"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .param p2, "indirectCRL"    # Z
    .param p3, "onlyContainsAttributeCerts"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 136
    const/4 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v3, v2

    #@5
    move v5, p2

    #@6
    move v6, p3

    #@7
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;ZZLcom/android/org/bouncycastle/asn1/x509/ReasonFlags;ZZ)V

    #@a
    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;ZZLcom/android/org/bouncycastle/asn1/x509/ReasonFlags;ZZ)V
    .locals 6
    .param p1, "distributionPoint"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .param p2, "onlyContainsUserCerts"    # Z
    .param p3, "onlyContainsCACerts"    # Z
    .param p4, "onlySomeReasons"    # Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;
    .param p5, "indirectCRL"    # Z
    .param p6, "onlyContainsAttributeCerts"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 77
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@5
    .line 85
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@7
    .line 86
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    #@9
    .line 87
    iput-boolean p6, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    #@b
    .line 88
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    #@d
    .line 89
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    #@f
    .line 90
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@11
    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@13
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@16
    .line 93
    .local v0, "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    if-eqz p1, :cond_0

    #@18
    .line 95
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@1a
    invoke-direct {v1, v5, v4, p1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@20
    .line 97
    :cond_0
    if-eqz p2, :cond_1

    #@22
    .line 99
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@24
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v4, v5, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2e
    .line 101
    :cond_1
    if-eqz p3, :cond_2

    #@30
    .line 103
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@32
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@35
    move-result-object v2

    #@36
    const/4 v3, 0x2

    #@37
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3d
    .line 105
    :cond_2
    if-eqz p4, :cond_3

    #@3f
    .line 107
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@41
    const/4 v2, 0x3

    #@42
    invoke-direct {v1, v4, v2, p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@45
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@48
    .line 109
    :cond_3
    if-eqz p5, :cond_4

    #@4a
    .line 111
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@4c
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@4f
    move-result-object v2

    #@50
    const/4 v3, 0x4

    #@51
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@54
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@57
    .line 113
    :cond_4
    if-eqz p6, :cond_5

    #@59
    .line 115
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@5b
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@5e
    move-result-object v2

    #@5f
    const/4 v3, 0x5

    #@60
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@63
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@66
    .line 118
    :cond_5
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@68
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@6b
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6d
    .line 83
    return-void
.end method

.method private appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 258
    const-string/jumbo v0, "    "

    #@3
    .line 260
    .local v0, "indent":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6
    .line 261
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9
    .line 262
    const-string/jumbo v1, ":"

    #@c
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    .line 263
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 266
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b
    .line 267
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    .line 256
    return-void
.end method

.method private booleanToString(Z)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 272
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "true"

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    const-string/jumbo v0, "false"

    #@9
    goto :goto_0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 50
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 52
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 54
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 59
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@2
    return-object v0
.end method

.method public getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@2
    return-object v0
.end method

.method public isIndirectCRL()Z
    .locals 1

    #@0
    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    #@2
    return v0
.end method

.method public onlyContainsAttributeCerts()Z
    .locals 1

    #@0
    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    #@2
    return v0
.end method

.method public onlyContainsCACerts()Z
    .locals 1

    #@0
    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    #@2
    return v0
.end method

.method public onlyContainsUserCerts()Z
    .locals 1

    #@0
    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    #@2
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 222
    const-string/jumbo v2, "line.separator"

    #@3
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 223
    .local v1, "sep":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@c
    .line 225
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "IssuingDistributionPoint: ["

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 227
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 229
    const-string/jumbo v2, "distributionPoint"

    #@1c
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@1e
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 231
    :cond_0
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 233
    const-string/jumbo v2, "onlyContainsUserCerts"

    #@2c
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    #@2e
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@35
    .line 235
    :cond_1
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    #@37
    if-eqz v2, :cond_2

    #@39
    .line 237
    const-string/jumbo v2, "onlyContainsCACerts"

    #@3c
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    #@3e
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@45
    .line 239
    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@47
    if-eqz v2, :cond_3

    #@49
    .line 241
    const-string/jumbo v2, "onlySomeReasons"

    #@4c
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@4e
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@55
    .line 243
    :cond_3
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    #@57
    if-eqz v2, :cond_4

    #@59
    .line 245
    const-string/jumbo v2, "onlyContainsAttributeCerts"

    #@5c
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    #@5e
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@65
    .line 247
    :cond_4
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    #@67
    if-eqz v2, :cond_5

    #@69
    .line 249
    const-string/jumbo v2, "indirectCRL"

    #@6c
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    #@6e
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    #@71
    move-result-object v3

    #@72
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@75
    .line 251
    :cond_5
    const-string/jumbo v2, "]"

    #@78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7b
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7e
    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@81
    move-result-object v2

    #@82
    return-object v2
.end method
