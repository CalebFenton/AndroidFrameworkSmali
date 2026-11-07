.class public abstract Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# instance fields
.field private blacklist si:[Ljava/math/BigInteger;


# direct methods
.method protected constructor blacklist <init>(IIII)V
    .registers 5

    .line 869
    invoke-static {p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->buildField(IIII)Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;-><init>(Lcom/android/org/bouncycastle/math/field/FiniteField;)V

    const/4 p1, 0x0

    .line 856
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;

    return-void
.end method

.method private static blacklist buildField(IIII)Lcom/android/org/bouncycastle/math/field/FiniteField;
    .registers 9

    or-int v0, p2, p3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-nez v0, :cond_11

    .line 861
    new-array p2, v3, [I

    aput v4, p2, v4

    aput p1, p2, v2

    aput p0, p2, v1

    goto :goto_20

    :cond_11
    const/4 v0, 0x5

    .line 862
    new-array v0, v0, [I

    aput v4, v0, v4

    aput p1, v0, v2

    aput p2, v0, v1

    aput p3, v0, v3

    const/4 p1, 0x4

    aput p0, v0, p1

    move-object p2, v0

    .line 864
    :goto_20
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/field/FiniteFields;->getBinaryExtensionField([I)Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist implRandomFieldElementMult(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;
    .registers 4

    .line 1082
    :cond_0
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1084
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public blacklist createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 874
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 876
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_13

    const/4 v1, 0x6

    if-eq v0, v1, :cond_13

    goto :goto_36

    .line 883
    :cond_13
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 885
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_36

    .line 887
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 904
    :cond_2e
    invoke-virtual {p2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 914
    :goto_36
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .line 951
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 952
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 954
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    goto :goto_59

    .line 958
    :cond_13
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 959
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->solveQuadraticEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 962
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    if-eq v1, v2, :cond_44

    .line 964
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 967
    :cond_44
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_53

    const/4 v1, 0x6

    if-eq p1, v1, :cond_53

    .line 977
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    goto :goto_59

    .line 972
    :cond_53
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    goto :goto_59

    :cond_58
    const/4 p1, 0x0

    :goto_59
    if-eqz p1, :cond_60

    .line 989
    invoke-virtual {p0, p2, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 986
    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point compression"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method declared-synchronized blacklist getSi()[Ljava/math/BigInteger;
    .registers 2

    monitor-enter p0

    .line 1061
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;

    if-nez v0, :cond_e

    .line 1063
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getSi(Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_12

    .line 1065
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_c

    monitor-exit p0

    return-object v0

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_c

    throw v0
.end method

.method public blacklist isKoblitz()Z
    .registers 2

    .line 1074
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isValidFieldElement(Ljava/math/BigInteger;)Z
    .registers 3

    if-eqz p1, :cond_14

    .line 919
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_14

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result p0

    if-gt p1, p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist randomFieldElement(Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 924
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    .line 925
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public blacklist randomFieldElementMult(Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 934
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    .line 935
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->implRandomFieldElementMult(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 936
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->implRandomFieldElementMult(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    .line 937
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist solveQuadraticEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 11

    .line 1003
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;

    .line 1005
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->hasFastTrace()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 1006
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->trace()I

    move-result v3

    if-eqz v3, :cond_11

    return-object v2

    .line 1011
    :cond_11
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_34

    .line 1016
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->halfTrace()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    if-nez v1, :cond_33

    .line 1017
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    return-object v2

    :cond_33
    :goto_33
    return-object p0

    .line 1024
    :cond_34
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3b

    return-object p1

    .line 1029
    :cond_3b
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1031
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 1034
    :cond_46
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, p1

    move-object v7, v0

    :goto_52
    if-ge v5, v3, :cond_6b

    .line 1039
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1040
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1041
    invoke-virtual {v6, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 1043
    :cond_6b
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-nez v4, :cond_72

    return-object v2

    .line 1047
    :cond_72
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1049
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-nez v4, :cond_46

    return-object v7
.end method
