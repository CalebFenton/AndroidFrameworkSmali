.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "ContentInfo.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private blacklist content:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

.field private blacklist contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist isBer:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "contentType"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "content"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 62
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    .line 63
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 65
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 46
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    .line 47
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 49
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 51
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 53
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 56
    :cond_24
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    .line 57
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 31
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    if-eqz v0, :cond_8

    .line 33
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-object v0

    .line 36
    :cond_8
    if-eqz p0, :cond_14

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 41
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 88
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 90
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_1b

    .line 94
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 97
    :cond_1b
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    if-eqz v1, :cond_25

    .line 99
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 103
    :cond_25
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
