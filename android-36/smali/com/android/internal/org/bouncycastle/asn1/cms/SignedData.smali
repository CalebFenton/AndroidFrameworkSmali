.class public Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SignedData.java"


# static fields
.field private static final blacklist VERSION_1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private static final blacklist VERSION_3:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private static final blacklist VERSION_4:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private static final blacklist VERSION_5:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# instance fields
.field private blacklist certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist certsBer:Z

.field private blacklist contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

.field private blacklist crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist crlsBer:Z

.field private blacklist digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 64
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 65
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_4:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 66
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_5:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 222
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 223
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 225
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 226
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 227
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 229
    :goto_23
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 231
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 238
    .local v1, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_73

    .line 240
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 242
    .local v2, "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_7a

    .line 253
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown tag value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    :pswitch_5c
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    .line 250
    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 251
    goto :goto_72

    .line 245
    :pswitch_67
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    .line 246
    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 247
    nop

    .line 255
    .end local v2    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_72
    goto :goto_78

    .line 258
    :cond_73
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 260
    .end local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :goto_78
    goto :goto_23

    .line 261
    :cond_79
    return-void

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_67
        :pswitch_5c
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    .registers 7
    .param p1, "digestAlgorithms"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .param p2, "contentInfo"    # Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .param p3, "certificates"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .param p4, "crls"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .param p5, "signerInfos"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 112
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 113
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->calculateVersion(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 114
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 115
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 116
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 117
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 118
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 119
    instance-of v0, p4, Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    .line 120
    instance-of v0, p3, Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    .line 121
    return-void
.end method

.method private blacklist calculateVersion(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 14
    .param p1, "contentOid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "certs"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .param p3, "crls"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .param p4, "signerInfs"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "otherCert":Z
    const/4 v1, 0x0

    .line 132
    .local v1, "otherCrl":Z
    const/4 v2, 0x0

    .line 133
    .local v2, "attrCertV1Found":Z
    const/4 v3, 0x0

    .line 135
    .local v3, "attrCertV2Found":Z
    if-eqz p2, :cond_37

    .line 137
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "en":Ljava/util/Enumeration;
    :goto_a
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 139
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .line 140
    .local v5, "obj":Ljava/lang/Object;
    instance-of v6, v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_36

    .line 142
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v6

    .line 144
    .local v6, "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_25

    .line 146
    const/4 v2, 0x1

    goto :goto_36

    .line 148
    :cond_25
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2e

    .line 150
    const/4 v3, 0x1

    goto :goto_36

    .line 152
    :cond_2e
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_36

    .line 154
    const/4 v0, 0x1

    .line 157
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_36
    :goto_36
    goto :goto_a

    .line 160
    .end local v4    # "en":Ljava/util/Enumeration;
    :cond_37
    if-eqz v0, :cond_41

    .line 162
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v5, 0x5

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v4

    .line 165
    :cond_41
    if-eqz p3, :cond_57

    .line 167
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .restart local v4    # "en":Ljava/util/Enumeration;
    :goto_47
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 169
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .line 170
    .restart local v5    # "obj":Ljava/lang/Object;
    instance-of v6, v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_56

    .line 172
    const/4 v1, 0x1

    .line 174
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_56
    goto :goto_47

    .line 177
    .end local v4    # "en":Ljava/util/Enumeration;
    :cond_57
    if-eqz v1, :cond_5c

    .line 179
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_5:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v4

    .line 182
    :cond_5c
    if-eqz v3, :cond_61

    .line 184
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_4:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v4

    .line 187
    :cond_61
    if-eqz v2, :cond_66

    .line 189
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v4

    .line 192
    :cond_66
    invoke-direct {p0, p4}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->checkForVersion3(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 194
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v4

    .line 197
    :cond_6f
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 199
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v4

    .line 202
    :cond_7a
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->VERSION_1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v4
.end method

.method private blacklist checkForVersion3(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Z
    .registers 6
    .param p1, "signerInfs"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 207
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 209
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v1

    .line 211
    .local v1, "s":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1f

    .line 213
    const/4 v2, 0x1

    return v2

    .line 215
    .end local v1    # "s":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    :cond_1f
    goto :goto_4

    .line 217
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 94
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    if-eqz v0, :cond_8

    .line 96
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    return-object v0

    .line 98
    :cond_8
    if-eqz p0, :cond_14

    .line 100
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 103
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCRLs()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getCertificates()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getDigestAlgorithms()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public blacklist getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 298
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 300
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 301
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 302
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 304
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    .line 306
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    if-eqz v1, :cond_29

    .line 308
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_33

    .line 312
    :cond_29
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 316
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_51

    .line 318
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_47

    .line 320
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_51

    .line 324
    :cond_47
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 328
    :cond_51
    :goto_51
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 330
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
