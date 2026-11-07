.class public Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "NameConstraints.java"


# instance fields
.field private blacklist excluded:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

.field private blacklist permitted:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 37
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 39
    .local v0, "e":Ljava/util/Enumeration;
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 41
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 42
    .local v1, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_52

    .line 51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag encountered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :pswitch_3a
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->createArray(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 49
    goto :goto_50

    .line 45
    :pswitch_45
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->createArray(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 46
    nop

    .line 53
    .end local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_50
    goto :goto_7

    .line 54
    :cond_51
    return-void

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_45
        :pswitch_3a
    .end packed-switch
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 4
    .param p1, "permitted"    # [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .param p2, "excluded"    # [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 70
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 72
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 73
    return-void
.end method

.method private static blacklist cloneSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 4
    .param p0, "subtrees"    # [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 120
    if-eqz p0, :cond_b

    .line 122
    array-length v0, p0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 124
    .local v0, "rv":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    return-object v0

    .line 129
    .end local v0    # "rv":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist createArray(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 5
    .param p1, "subtree"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 77
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 79
    .local v0, "ar":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_17

    .line 81
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    aput-object v2, v0, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 84
    .end local v1    # "i":I
    :cond_17
    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 24
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;

    if-eqz v0, :cond_8

    .line 26
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;

    return-object v0

    .line 28
    :cond_8
    if-eqz p0, :cond_14

    .line 30
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 33
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getExcludedSubtrees()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPermittedSubtrees()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 103
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 105
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 107
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    if-eqz v1, :cond_2e

    .line 112
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 115
    :cond_2e
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
