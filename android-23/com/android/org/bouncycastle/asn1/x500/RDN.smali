.class public Lcom/android/org/bouncycastle/asn1/x500/RDN;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "RDN.java"


# instance fields
.field private values:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@8
    .line 46
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@b
    .line 47
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@e
    .line 49
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@10
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@12
    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@15
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@1a
    .line 42
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "values"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 19
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@5
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .locals 1
    .param p1, "attrTAndV"    # Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@5
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@a
    .line 52
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .locals 1
    .param p1, "aAndVs"    # [Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 64
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@5
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@a
    .line 62
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 26
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 28
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    #@13
    return-object v0

    #@14
    .line 33
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@3
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 86
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .locals 3

    #@0
    .prologue
    .line 94
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@5
    move-result v2

    #@6
    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@8
    .line 96
    .local v1, "tmp":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@a
    if-eq v0, v2, :cond_0

    #@c
    .line 98
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@e
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    move-result-object v2

    #@12
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@15
    move-result-object v2

    #@16
    aput-object v2, v1, v0

    #@18
    .line 96
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 101
    :cond_0
    return-object v1
.end method

.method public isMultiValued()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 69
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@3
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@6
    move-result v1

    #@7
    if-le v1, v0, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method
