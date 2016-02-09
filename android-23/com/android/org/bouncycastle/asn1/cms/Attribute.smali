.class public Lcom/android/org/bouncycastle/asn1/cms/Attribute;
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
    .line 75
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 79
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    .line 80
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@7
    .line 77
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 71
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    .line 72
    const/4 v0, 0x1

    #@d
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@15
    .line 69
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 55
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 57
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@7
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@8
    .line 60
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 65
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getAttrValues()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getAttributeValues()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

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
    .line 103
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 105
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 106
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 108
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@14
    return-object v1
.end method
