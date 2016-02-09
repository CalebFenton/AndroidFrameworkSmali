.class public Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PolicyConstraints.java"


# instance fields
.field private inhibitPolicyMapping:Ljava/math/BigInteger;

.field private requireExplicitPolicyMapping:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 38
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 40
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@8
    move-result v2

    #@9
    if-eq v0, v2, :cond_2

    #@b
    .line 42
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@e
    move-result-object v2

    #@f
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@12
    move-result-object v1

    #@13
    .line 44
    .local v1, "to":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_0

    #@19
    .line 46
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@20
    move-result-object v2

    #@21
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->requireExplicitPolicyMapping:Ljava/math/BigInteger;

    #@23
    .line 40
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 48
    :cond_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@29
    move-result v2

    #@2a
    const/4 v3, 0x1

    #@2b
    if-ne v2, v3, :cond_1

    #@2d
    .line 50
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@34
    move-result-object v2

    #@35
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    #@37
    goto :goto_1

    #@38
    .line 54
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3a
    const-string/jumbo v3, "Unknown tag encountered."

    #@3d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v2

    #@41
    .line 38
    .end local v1    # "to":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "requireExplicitPolicyMapping"    # Ljava/math/BigInteger;
    .param p2, "inhibitPolicyMapping"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->requireExplicitPolicyMapping:Ljava/math/BigInteger;

    #@5
    .line 35
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    #@7
    .line 32
    return-void
.end method

.method public static fromExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;
    .locals 1
    .param p0, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@0
    .prologue
    .line 77
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 64
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 67
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 72
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getInhibitPolicyMapping()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getRequireExplicitPolicyMapping()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->requireExplicitPolicyMapping:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 94
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->requireExplicitPolicyMapping:Ljava/math/BigInteger;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 96
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@b
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@d
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->requireExplicitPolicyMapping:Ljava/math/BigInteger;

    #@f
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@12
    const/4 v3, 0x0

    #@13
    invoke-direct {v1, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@16
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@19
    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 101
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@1f
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@21
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    #@23
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@26
    const/4 v3, 0x1

    #@27
    invoke-direct {v1, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2d
    .line 104
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@2f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@32
    return-object v1
.end method
