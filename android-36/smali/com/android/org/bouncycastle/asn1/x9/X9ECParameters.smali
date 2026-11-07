.class public Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X9ECParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field private blacklist curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private blacklist fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

.field private blacklist g:Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

.field private blacklist h:Ljava/math/BigInteger;

.field private blacklist n:Ljava/math/BigInteger;

.field private blacklist seed:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    .line 28
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7

    .line 39
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_7a

    .line 41
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v0, 0x4

    .line 46
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    .line 48
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3a

    const/4 v0, 0x5

    .line 50
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    .line 53
    :cond_3a
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;

    .line 54
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    const/4 v4, 0x2

    .line 55
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;-><init>(Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 57
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    const/4 v1, 0x3

    .line 58
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    .line 60
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    if-eqz v1, :cond_68

    .line 62
    check-cast p1, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    goto :goto_73

    .line 66
    :cond_68
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v2, p1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    .line 69
    :goto_73
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->getSeed()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    return-void

    .line 43
    :cond_7a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad version in X9ECParameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 92
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 101
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 7

    .line 110
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 112
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    .line 113
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    .line 114
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    .line 115
    invoke-static {p5}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    .line 117
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 119
    new-instance p2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(Ljava/math/BigInteger;)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    return-void

    .line 121
    :cond_27
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isF2mCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result p2

    if-eqz p2, :cond_6a

    .line 123
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    .line 124
    invoke-interface {p1}, Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lcom/android/org/bouncycastle/math/field/Polynomial;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/org/bouncycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object p1

    .line 125
    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x2

    const/4 p5, 0x3

    if-ne p2, p5, :cond_4d

    .line 127
    new-instance p2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    aget p4, p1, p4

    aget p1, p1, p3

    invoke-direct {p2, p4, p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(II)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    return-void

    .line 129
    :cond_4d
    array-length p2, p1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_62

    .line 131
    new-instance p2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    const/4 v0, 0x4

    aget v0, p1, v0

    aget p3, p1, p3

    aget p4, p1, p4

    aget p1, p1, p5

    invoke-direct {p2, v0, p3, p4, p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    return-void

    .line 135
    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only trinomial and pentomial curves are supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_6a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'curve\' is of an unsupported type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 2

    .line 74
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    if-eqz v0, :cond_7

    .line 76
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 81
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getBaseEntry()Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    return-object p0
.end method

.method public blacklist getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object p0
.end method

.method public blacklist getCurveEntry()Lcom/android/org/bouncycastle/asn1/x9/X9Curve;
    .registers 3

    .line 181
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    return-object v0
.end method

.method public blacklist getFieldIDEntry()Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;
    .registers 1

    .line 191
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    return-object p0
.end method

.method public blacklist getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getH()Ljava/math/BigInteger;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getN()Ljava/math/BigInteger;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getSeed()[B
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist hasSeed()Z
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 219
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 221
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 222
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 223
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 224
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 225
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 227
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    if-eqz v1, :cond_3e

    .line 229
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 232
    :cond_3e
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
