.class public Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ContentInfo.java"


# instance fields
.field private content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field private contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "contentType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "content"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 102
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    .line 103
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 76
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@5
    .line 79
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@8
    move-result v1

    #@9
    if-lt v1, v3, :cond_0

    #@b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x2

    #@10
    if-le v1, v2, :cond_1

    #@12
    .line 81
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Bad sequence size: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@23
    move-result v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 84
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@36
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38
    .line 86
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@3b
    move-result v1

    #@3c
    if-le v1, v3, :cond_4

    #@3e
    .line 88
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@44
    .line 89
    .local v0, "tagged":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_2

    #@4a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_3

    #@50
    .line 91
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@52
    const-string/jumbo v2, "Bad tag for \'content\'"

    #@55
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1

    #@59
    .line 94
    :cond_3
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5c
    move-result-object v1

    #@5d
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5f
    .line 77
    .end local v0    # "tagged":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_4
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 54
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 56
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 58
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 60
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 63
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    return-object v0
.end method

.method public getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 121
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 123
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 125
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 127
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    #@10
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@12
    const/4 v3, 0x0

    #@13
    invoke-direct {v1, v3, v2}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@16
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@19
    .line 130
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@1b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@1e
    return-object v1
.end method
