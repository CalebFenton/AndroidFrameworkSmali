.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;
.super Ljava/lang/Object;
.source "EC5Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomCurves"
.end annotation


# static fields
.field private static blacklist CURVE_MAP:Ljava/util/Map;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    invoke-static {}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;->createCurveMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;->CURVE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createCurveMap()Ljava/util/Map;
    .registers 10

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v0, "map":Ljava/util/Map;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 52
    .local v1, "e":Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 54
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByNameLazy(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v3

    .line 57
    .local v3, "curveParams":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-eqz v3, :cond_30

    .line 59
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 60
    .local v4, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 62
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByNameLazy(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "curveParams":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    .end local v4    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    :cond_30
    goto :goto_9

    .line 67
    :cond_31
    const-string v2, "Curve25519"

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByNameLazy(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 69
    .local v2, "c_25519":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;

    .line 70
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v4

    .line 71
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 72
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    .line 73
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v7

    .line 74
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    .line 69
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-object v0
.end method

.method static blacklist substitute(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 3
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 96
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;->CURVE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 97
    .local v0, "custom":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_d

    :cond_c
    move-object v1, p0

    :goto_d
    return-object v1
.end method
