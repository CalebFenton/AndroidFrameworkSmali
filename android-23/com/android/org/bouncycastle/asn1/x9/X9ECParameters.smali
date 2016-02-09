.class public Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X9ECParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

.field private g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 25
    const-wide/16 v0, 0x1

    #@2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    #@8
    .line 21
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 34
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 37
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    move-result-object v2

    #@8
    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 38
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@12
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@15
    move-result-object v2

    #@16
    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    #@18
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 43
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;

    #@20
    .line 44
    const/4 v2, 0x1

    #@21
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@24
    move-result-object v2

    #@25
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    #@28
    move-result-object v2

    #@29
    .line 45
    const/4 v3, 0x2

    #@2a
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2d
    move-result-object v3

    #@2e
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@31
    move-result-object v3

    #@32
    .line 43
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;-><init>(Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@35
    .line 47
    .local v1, "x9c":Lcom/android/org/bouncycastle/asn1/x9/X9Curve;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@38
    move-result-object v2

    #@39
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3b
    .line 48
    const/4 v2, 0x3

    #@3c
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3f
    move-result-object v0

    #@40
    .line 50
    .local v0, "p":Ljava/lang/Object;
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    #@42
    if-eqz v2, :cond_2

    #@44
    .line 52
    check-cast v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    #@46
    .end local v0    # "p":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@49
    move-result-object v2

    #@4a
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4c
    .line 59
    :goto_0
    const/4 v2, 0x4

    #@4d
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@50
    move-result-object v2

    #@51
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@53
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@56
    move-result-object v2

    #@57
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    #@59
    .line 60
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->getSeed()[B

    #@5c
    move-result-object v2

    #@5d
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    #@5f
    .line 62
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@62
    move-result v2

    #@63
    const/4 v3, 0x6

    #@64
    if-ne v2, v3, :cond_0

    #@66
    .line 64
    const/4 v2, 0x5

    #@67
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6a
    move-result-object v2

    #@6b
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@6d
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@70
    move-result-object v2

    #@71
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    #@73
    .line 35
    :cond_0
    return-void

    #@74
    .line 40
    .end local v1    # "x9c":Lcom/android/org/bouncycastle/asn1/x9/X9Curve;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@76
    const-string/jumbo v3, "bad version in X9ECParameters"

    #@79
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v2

    #@7d
    .line 56
    .restart local v0    # "p":Ljava/lang/Object;
    .restart local v1    # "x9c":Lcom/android/org/bouncycastle/asn1/x9/X9Curve;
    :cond_2
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    #@7f
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@81
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@83
    .end local v0    # "p":Ljava/lang/Object;
    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@86
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@89
    move-result-object v2

    #@8a
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@8c
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "g"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 88
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    #@2
    const/4 v5, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@a
    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "g"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 97
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@9
    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 7
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "g"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;
    .param p5, "seed"    # [B

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    .line 100
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@6
    .line 107
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@8
    .line 108
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@b
    move-result-object v2

    #@c
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e
    .line 109
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    #@10
    .line 110
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    #@12
    .line 111
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    #@14
    .line 113
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 115
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    #@1c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@1f
    move-result-object v3

    #@20
    invoke-interface {v3}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(Ljava/math/BigInteger;)V

    #@27
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    #@29
    .line 105
    :goto_0
    return-void

    #@2a
    .line 117
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isF2mCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_3

    #@30
    .line 119
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    #@36
    .line 120
    .local v1, "field":Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;
    invoke-interface {v1}, Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lcom/android/org/bouncycastle/math/field/Polynomial;

    #@39
    move-result-object v2

    #@3a
    invoke-interface {v2}, Lcom/android/org/bouncycastle/math/field/Polynomial;->getExponentsPresent()[I

    #@3d
    move-result-object v0

    #@3e
    .line 121
    .local v0, "exponents":[I
    array-length v2, v0

    #@3f
    if-ne v2, v6, :cond_1

    #@41
    .line 123
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    #@43
    aget v3, v0, v5

    #@45
    aget v4, v0, v4

    #@47
    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(II)V

    #@4a
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    #@4c
    goto :goto_0

    #@4d
    .line 125
    :cond_1
    array-length v2, v0

    #@4e
    const/4 v3, 0x5

    #@4f
    if-ne v2, v3, :cond_2

    #@51
    .line 127
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    #@53
    const/4 v3, 0x4

    #@54
    aget v3, v0, v3

    #@56
    aget v4, v0, v4

    #@58
    aget v5, v0, v5

    #@5a
    aget v6, v0, v6

    #@5c
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(IIII)V

    #@5f
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    #@61
    goto :goto_0

    #@62
    .line 131
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@64
    const-string/jumbo v3, "Only trinomial and pentomial curves are supported"

    #@67
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v2

    #@6b
    .line 136
    .end local v0    # "exponents":[I
    .end local v1    # "field":Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6d
    const-string/jumbo v3, "\'curve\' is of an unsupported type"

    #@70
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@73
    throw v2
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 70
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 72
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 75
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 77
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 80
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2
    return-object v0
.end method

.method public getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2
    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 159
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    #@6
    return-object v0

    #@7
    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    #@9
    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 185
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 187
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    const-wide/16 v2, 0x1

    #@9
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 188
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    .line 189
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;

    #@16
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@18
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    #@1a
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    #@1d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@20
    .line 190
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    #@22
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@24
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@27
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2a
    .line 191
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2c
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    #@2e
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@31
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@34
    .line 193
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    #@36
    if-eqz v1, :cond_0

    #@38
    .line 195
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3a
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    #@3c
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@3f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@42
    .line 198
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@44
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@47
    return-object v1
.end method
