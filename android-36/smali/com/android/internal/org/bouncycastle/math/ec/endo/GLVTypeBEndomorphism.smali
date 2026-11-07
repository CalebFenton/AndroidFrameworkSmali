.class public Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;
.super Ljava/lang/Object;
.source "GLVTypeBEndomorphism.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;


# instance fields
.field protected final blacklist parameters:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

.field protected final blacklist pointMap:Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "parameters"    # Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ScaleXPointMap;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getBeta()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ScaleXPointMap;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->pointMap:Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;

    .line 28
    return-void
.end method


# virtual methods
.method public blacklist decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 3
    .param p1, "k"    # Ljava/math/BigInteger;

    .line 32
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil;->decomposeScalar(Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPointMap()Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->pointMap:Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;

    return-object v0
.end method

.method public blacklist hasEfficientPointMap()Z
    .registers 2

    .line 42
    const/4 v0, 0x1

    return v0
.end method
