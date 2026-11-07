.class public Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ContentInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private blacklist content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field private blacklist contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist isBer:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    .line 63
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    .line 47
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 51
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 53
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 56
    :cond_24
    instance-of p1, p1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .registers 2

    .line 31
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    if-eqz v0, :cond_7

    .line 33
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public blacklist getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 88
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 90
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_19

    .line 94
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 97
    :cond_19
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    if-eqz p0, :cond_23

    .line 99
    new-instance p0, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0

    .line 103
    :cond_23
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DLSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
