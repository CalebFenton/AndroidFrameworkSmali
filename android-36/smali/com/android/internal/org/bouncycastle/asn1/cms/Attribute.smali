.class public Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Attribute.java"


# instance fields
.field private blacklist attrType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist attrValues:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    .registers 3
    .param p1, "attrType"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attrValues"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 80
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->attrType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 82
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 83
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 72
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->attrType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 75
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 57
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    if-eqz v0, :cond_8

    .line 59
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    return-object v0

    .line 62
    :cond_8
    if-eqz p0, :cond_14

    .line 64
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 67
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->attrType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getAttributeValues()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 107
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->attrType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
