.class public Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AttributeTypeAndValue.java"


# instance fields
.field private type:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private value:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "type"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->type:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    .line 42
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->value:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    .line 39
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 19
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->type:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    .line 20
    const/4 v0, 0x1

    #@d
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->value:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@13
    .line 17
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 25
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 27
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@6
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@7
    .line 29
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@9
    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@b
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@12
    return-object v0

    #@13
    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "null value in getInstance()"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0
.end method


# virtual methods
.method public getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->type:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->value:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 65
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 67
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->type:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 68
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->value:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 70
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@14
    return-object v1
.end method
