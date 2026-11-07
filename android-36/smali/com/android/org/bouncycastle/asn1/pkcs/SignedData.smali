.class public Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SignedData.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private blacklist certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private blacklist contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private blacklist crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private blacklist digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private blacklist signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private blacklist version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 7

    .line 53
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 55
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 56
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 57
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 58
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 59
    iput-object p6, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    .line 64
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 68
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 69
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 71
    :goto_21
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 73
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 79
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_66

    .line 81
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 83
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_44

    .line 89
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_21

    .line 92
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag value "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_5f
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_21

    .line 97
    :cond_66
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_21

    :cond_6b
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;
    .registers 2

    .line 34
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    if-eqz v0, :cond_7

    .line 36
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getCRLs()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object p0
.end method

.method public blacklist getCertificates()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 149
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 151
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 153
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 155
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 157
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 160
    :cond_22
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_2f

    .line 162
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 165
    :cond_2f
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 167
    new-instance p0, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
