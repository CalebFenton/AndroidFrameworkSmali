.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SignedData.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private blacklist certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private blacklist crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    .registers 7
    .param p1, "_version"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .param p2, "_digestAlgorithms"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .param p3, "_contentInfo"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .param p4, "_certificates"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .param p5, "_crls"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .param p6, "_signerInfos"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 53
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 55
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 56
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 57
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 58
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 59
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 64
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 67
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 68
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 69
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 71
    :goto_21
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 73
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 79
    .local v1, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_69

    .line 81
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 83
    .local v2, "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_70

    .line 92
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

    .line 89
    :pswitch_5a
    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 90
    goto :goto_68

    .line 86
    :pswitch_61
    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 87
    nop

    .line 94
    .end local v2    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_68
    goto :goto_6e

    .line 97
    :cond_69
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 99
    .end local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :goto_6e
    goto :goto_21

    .line 100
    :cond_6f
    return-void

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_61
        :pswitch_5a
    .end packed-switch
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 34
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;

    if-eqz v0, :cond_8

    .line 36
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;

    return-object v0

    .line 38
    :cond_8
    if-eqz p0, :cond_14

    .line 40
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 43
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCRLs()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getCertificates()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getContentInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-object v0
.end method

.method public blacklist getDigestAlgorithms()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 149
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 151
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 153
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 155
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 157
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 160
    :cond_24
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_33

    .line 162
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 165
    :cond_33
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 167
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
