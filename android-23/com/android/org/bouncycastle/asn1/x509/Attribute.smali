.class public Lcom/android/org/bouncycastle/asn1/x509/Attribute;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Attribute.java"


# instance fields
.field private attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "attrType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attrValues"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    .line 57
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@7
    .line 54
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 43
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Bad sequence size: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@1b
    move-result v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 48
    :cond_0
    const/4 v0, 0x0

    #@29
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@33
    .line 49
    const/4 v0, 0x1

    #@34
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@37
    move-result-object v0

    #@38
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@3e
    .line 41
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 29
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    #@7
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@8
    .line 32
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 37
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    #@0
    .prologue
    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public getAttrValues()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getAttributeValues()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 86
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 88
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 89
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 91
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@14
    return-object v1
.end method
