.class public Lcom/android/org/bouncycastle/asn1/cms/SignedData;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SignedData.java"


# static fields
.field private static final VERSION_1:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private static final VERSION_3:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private static final VERSION_4:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private static final VERSION_5:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# instance fields
.field private certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private certsBer:Z

.field private contentInfo:Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;

.field private crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private crlsBer:Z

.field private digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    const-wide/16 v2, 0x1

    #@4
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->VERSION_1:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@9
    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b
    const-wide/16 v2, 0x3

    #@d
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@10
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@12
    .line 64
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@14
    const-wide/16 v2, 0x4

    #@16
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@19
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->VERSION_4:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1b
    .line 65
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1d
    const-wide/16 v2, 0x5

    #@1f
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@22
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->VERSION_5:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@24
    .line 59
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 218
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 221
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    .line 223
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@f
    move-result-object v3

    #@10
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@12
    .line 224
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@18
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@1a
    .line 225
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;

    #@21
    move-result-object v3

    #@22
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;

    #@24
    .line 227
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    .line 229
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@30
    .line 236
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v3, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@32
    if-eqz v3, :cond_0

    #@34
    move-object v2, v1

    #@35
    .line 238
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@37
    .line 240
    .local v2, "tagged":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@3a
    move-result v3

    #@3b
    packed-switch v3, :pswitch_data_0

    #@3e
    .line 251
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@40
    new-instance v4, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v5, "unknown tag value "

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@4f
    move-result v5

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v3

    #@5c
    .line 243
    :pswitch_0
    instance-of v3, v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    #@5e
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    #@60
    .line 244
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@63
    move-result-object v3

    #@64
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@66
    goto :goto_0

    #@67
    .line 247
    :pswitch_1
    instance-of v3, v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    #@69
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    #@6b
    .line 248
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@6e
    move-result-object v3

    #@6f
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@71
    goto :goto_0

    #@72
    .line 256
    .end local v2    # "tagged":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@74
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@76
    goto :goto_0

    #@77
    .line 219
    :cond_1
    return-void

    #@78
    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 1
    .param p1, "digestAlgorithms"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p2, "contentInfo"    # Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;
    .param p3, "certificates"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p4, "crls"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p5, "signerInfos"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 111
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->calculateVersion(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@d
    .line 112
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@f
    .line 113
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;

    #@11
    .line 114
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@13
    .line 115
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@15
    .line 116
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@17
    .line 117
    instance-of v0, p4, Lcom/android/org/bouncycastle/asn1/BERSet;

    #@19
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    #@1b
    .line 118
    instance-of v0, p3, Lcom/android/org/bouncycastle/asn1/BERSet;

    #@1d
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    #@1f
    .line 109
    return-void
.end method

.method private calculateVersion(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 10
    .param p1, "contentOid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "certs"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p3, "crls"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p4, "signerInfs"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@0
    .prologue
    .line 128
    const/4 v4, 0x0

    #@1
    .line 129
    .local v4, "otherCert":Z
    const/4 v5, 0x0

    #@2
    .line 130
    .local v5, "otherCrl":Z
    const/4 v0, 0x0

    #@3
    .line 131
    .local v0, "attrCertV1Found":Z
    const/4 v1, 0x0

    #@4
    .line 133
    .local v1, "attrCertV2Found":Z
    if-eqz p2, :cond_3

    #@6
    .line 135
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    #@9
    move-result-object v2

    #@a
    .local v2, "en":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@d
    move-result v7

    #@e
    if-eqz v7, :cond_3

    #@10
    .line 137
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    .line 138
    .local v3, "obj":Ljava/lang/Object;
    instance-of v7, v3, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@16
    if-eqz v7, :cond_0

    #@18
    .line 140
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@1b
    move-result-object v6

    #@1c
    .line 142
    .local v6, "tagged":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@1f
    move-result v7

    #@20
    const/4 v8, 0x1

    #@21
    if-ne v7, v8, :cond_1

    #@23
    .line 144
    const/4 v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 146
    :cond_1
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@28
    move-result v7

    #@29
    const/4 v8, 0x2

    #@2a
    if-ne v7, v8, :cond_2

    #@2c
    .line 148
    const/4 v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 150
    :cond_2
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@31
    move-result v7

    #@32
    const/4 v8, 0x3

    #@33
    if-ne v7, v8, :cond_0

    #@35
    .line 152
    const/4 v4, 0x1

    #@36
    goto :goto_0

    #@37
    .line 158
    .end local v2    # "en":Ljava/util/Enumeration;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v6    # "tagged":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_3
    if-eqz v4, :cond_4

    #@39
    .line 160
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3b
    const-wide/16 v8, 0x5

    #@3d
    invoke-direct {v7, v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@40
    return-object v7

    #@41
    .line 163
    :cond_4
    if-eqz p3, :cond_6

    #@43
    .line 165
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    #@46
    move-result-object v2

    #@47
    .restart local v2    # "en":Ljava/util/Enumeration;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@4a
    move-result v7

    #@4b
    if-eqz v7, :cond_6

    #@4d
    .line 167
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@50
    move-result-object v3

    #@51
    .line 168
    .restart local v3    # "obj":Ljava/lang/Object;
    instance-of v7, v3, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@53
    if-eqz v7, :cond_5

    #@55
    .line 170
    const/4 v5, 0x1

    #@56
    goto :goto_1

    #@57
    .line 175
    .end local v2    # "en":Ljava/util/Enumeration;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_6
    if-eqz v5, :cond_7

    #@59
    .line 177
    sget-object v7, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->VERSION_5:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5b
    return-object v7

    #@5c
    .line 180
    :cond_7
    if-eqz v1, :cond_8

    #@5e
    .line 182
    sget-object v7, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->VERSION_4:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@60
    return-object v7

    #@61
    .line 185
    :cond_8
    if-eqz v0, :cond_9

    #@63
    .line 187
    sget-object v7, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@65
    return-object v7

    #@66
    .line 190
    :cond_9
    invoke-direct {p0, p4}, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->checkForVersion3(Lcom/android/org/bouncycastle/asn1/ASN1Set;)Z

    #@69
    move-result v7

    #@6a
    if-eqz v7, :cond_a

    #@6c
    .line 192
    sget-object v7, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@6e
    return-object v7

    #@6f
    .line 195
    :cond_a
    sget-object v7, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@71
    invoke-virtual {v7, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@74
    move-result v7

    #@75
    if-nez v7, :cond_b

    #@77
    .line 197
    sget-object v7, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@79
    return-object v7

    #@7a
    .line 200
    :cond_b
    sget-object v7, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->VERSION_1:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7c
    return-object v7
.end method

.method private checkForVersion3(Lcom/android/org/bouncycastle/asn1/ASN1Set;)Z
    .locals 4
    .param p1, "signerInfs"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@0
    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 207
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;

    #@11
    move-result-object v1

    #@12
    .line 209
    .local v1, "s":Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    #@1d
    move-result v2

    #@1e
    const/4 v3, 0x3

    #@1f
    if-ne v2, v3, :cond_0

    #@21
    .line 211
    const/4 v2, 0x1

    #@22
    return v2

    #@23
    .line 215
    .end local v1    # "s":Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;
    :cond_1
    const/4 v2, 0x0

    #@24
    return v2
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/SignedData;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 92
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 94
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;

    #@7
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@8
    .line 96
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 98
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/SignedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 101
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getCRLs()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getCertificates()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getDigestAlgorithms()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getEncapContentInfo()Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;

    #@2
    return-object v0
.end method

.method public getSignerInfos()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 296
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@4
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@7
    .line 298
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@c
    .line 299
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@11
    .line 300
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;

    #@13
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@16
    .line 302
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 304
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 306
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    #@20
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@22
    invoke-direct {v1, v3, v3, v2}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@25
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@28
    .line 314
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2a
    if-eqz v1, :cond_1

    #@2c
    .line 316
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 318
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    #@32
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@34
    invoke-direct {v1, v3, v4, v2}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@37
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3a
    .line 326
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@3c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3f
    .line 328
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@41
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@44
    return-object v1

    #@45
    .line 310
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@47
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@49
    invoke-direct {v1, v3, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4f
    goto :goto_0

    #@50
    .line 322
    :cond_3
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@52
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@54
    invoke-direct {v1, v3, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@57
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@5a
    goto :goto_1
.end method
