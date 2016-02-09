.class public Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "NameConstraints.java"


# instance fields
.field private excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

.field private permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 34
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    .line 35
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 37
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@15
    move-result-object v1

    #@16
    .line 38
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@19
    move-result v2

    #@1a
    packed-switch v2, :pswitch_data_0

    #@1d
    goto :goto_0

    #@1e
    .line 41
    :pswitch_0
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@21
    move-result-object v2

    #@22
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->createArray(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@28
    goto :goto_0

    #@29
    .line 44
    :pswitch_1
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->createArray(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@30
    move-result-object v2

    #@31
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@33
    goto :goto_0

    #@34
    .line 32
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    return-void

    #@35
    .line 38
    nop

    #@36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 0
    .param p1, "permitted"    # [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .param p2, "excluded"    # [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 65
    if-eqz p1, :cond_0

    #@5
    .line 67
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@7
    .line 70
    :cond_0
    if-eqz p2, :cond_1

    #@9
    .line 72
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@b
    .line 63
    :cond_1
    return-void
.end method

.method private createArray(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 3
    .param p1, "subtree"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@3
    move-result v2

    #@4
    new-array v0, v2, [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@6
    .line 80
    .local v0, "ar":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 82
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@d
    move-result-object v2

    #@e
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@11
    move-result-object v2

    #@12
    aput-object v2, v0, v1

    #@14
    .line 80
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 85
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 20
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 22
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 24
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 29
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getExcludedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@2
    return-object v0
.end method

.method public getPermittedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 104
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@3
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@6
    .line 106
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 108
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@c
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@e
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@10
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@13
    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@16
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@19
    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 113
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@1f
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@21
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@23
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@26
    const/4 v3, 0x1

    #@27
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2d
    .line 116
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@2f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@32
    return-object v1
.end method
