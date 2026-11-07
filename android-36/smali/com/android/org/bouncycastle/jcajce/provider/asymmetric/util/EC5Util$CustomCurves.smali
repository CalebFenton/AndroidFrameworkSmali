.class abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;
.super Ljava/lang/Object;
.source "EC5Util.java"


# static fields
.field private static blacklist CURVE_MAP:Ljava/util/Map;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;->createCurveMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;->CURVE_MAP:Ljava/util/Map;

    return-void
.end method

.method private static blacklist createCurveMap()Ljava/util/Map;
    .registers 9

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 52
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 54
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByNameLazy(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 59
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 60
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 62
    invoke-static {v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByNameLazy(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 67
    :cond_31
    const-string v1, "Curve25519"

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByNameLazy(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 69
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    .line 70
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v3

    .line 71
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 72
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 73
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    .line 74
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    .line 69
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static blacklist substitute(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    .line 96
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;->CURVE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    return-object p0
.end method
