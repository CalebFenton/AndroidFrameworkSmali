.class public Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X9FieldID.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private parameters:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "m"    # I
    .param p2, "k1"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 46
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(IIII)V

    #@4
    .line 44
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 66
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    .line 67
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@9
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@c
    .line 68
    .local v0, "fieldIdParams":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@e
    int-to-long v4, p1

    #@f
    invoke-direct {v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@12
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@15
    .line 70
    if-nez p3, :cond_1

    #@17
    .line 72
    if-eqz p4, :cond_0

    #@19
    .line 74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v3, "inconsistent k values"

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 77
    :cond_0
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->tpBasis:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@24
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@27
    .line 78
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@29
    int-to-long v4, p2

    #@2a
    invoke-direct {v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@2d
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@30
    .line 95
    :goto_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@32
    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@35
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@37
    .line 64
    return-void

    #@38
    .line 82
    :cond_1
    if-le p3, p2, :cond_2

    #@3a
    if-gt p4, p3, :cond_3

    #@3c
    .line 84
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3e
    const-string/jumbo v3, "inconsistent k values"

    #@41
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v2

    #@45
    .line 87
    :cond_3
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->ppBasis:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@47
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4a
    .line 88
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@4c
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@4f
    .line 89
    .local v1, "pentanomialParams":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@51
    int-to-long v4, p2

    #@52
    invoke-direct {v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@55
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@58
    .line 90
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5a
    int-to-long v4, p3

    #@5b
    invoke-direct {v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@5e
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@61
    .line 91
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@63
    int-to-long v4, p4

    #@64
    invoke-direct {v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@67
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@6a
    .line 92
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@6c
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@6f
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@72
    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 101
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e
    .line 102
    const/4 v0, 0x1

    #@f
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@19
    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "primeP"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 31
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->prime_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@9
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@e
    .line 29
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 107
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 109
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 112
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 114
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 117
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 141
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 143
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 144
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 146
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@14
    return-object v1
.end method
