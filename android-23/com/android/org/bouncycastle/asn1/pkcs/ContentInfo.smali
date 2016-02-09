.class public Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ContentInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field private contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private isBer:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "contentType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "content"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 22
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    #@6
    .line 59
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8
    .line 60
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@a
    .line 57
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 22
    const/4 v1, 0x1

    #@4
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    #@6
    .line 43
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@9
    move-result-object v0

    #@a
    .line 45
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12
    .line 47
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 49
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@1e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@24
    .line 52
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@26
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    #@28
    .line 41
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 29
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

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
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 37
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    return-object v0
.end method

.method public getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    .line 84
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 86
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 88
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 90
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    #@10
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@12
    const/4 v3, 0x1

    #@13
    const/4 v4, 0x0

    #@14
    invoke-direct {v1, v3, v4, v2}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@17
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1a
    .line 93
    :cond_0
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->isBer:Z

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 95
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@20
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@23
    return-object v1

    #@24
    .line 99
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLSequence;

    #@26
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@29
    return-object v1
.end method
