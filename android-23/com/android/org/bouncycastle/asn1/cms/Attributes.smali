.class public Lcom/android/org/bouncycastle/asn1/cms/Attributes;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Attributes.java"


# instance fields
.field private attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSet;

    #@5
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@a
    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "set"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@5
    .line 29
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attributes;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 54
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 56
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;

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
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/Attributes;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    #@13
    return-object v0

    #@14
    .line 63
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAttributes()[Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    .locals 3

    #@0
    .prologue
    .line 68
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@5
    move-result v2

    #@6
    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@8
    .line 70
    .local v1, "rv":[Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@a
    if-eq v0, v2, :cond_0

    #@c
    .line 72
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@e
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    move-result-object v2

    #@12
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@15
    move-result-object v2

    #@16
    aput-object v2, v1, v0

    #@18
    .line 70
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 75
    :cond_0
    return-object v1
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method
