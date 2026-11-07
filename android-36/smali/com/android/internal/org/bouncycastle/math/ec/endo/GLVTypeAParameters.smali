.class public Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeAParameters;
.super Ljava/lang/Object;
.source "GLVTypeAParameters.java"


# instance fields
.field protected final blacklist i:Ljava/math/BigInteger;

.field protected final blacklist lambda:Ljava/math/BigInteger;

.field protected final blacklist splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;)V
    .registers 4
    .param p1, "i"    # Ljava/math/BigInteger;
    .param p2, "lambda"    # Ljava/math/BigInteger;
    .param p3, "splitParams"    # Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeAParameters;->i:Ljava/math/BigInteger;

    .line 17
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeAParameters;->lambda:Ljava/math/BigInteger;

    .line 18
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeAParameters;->splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist getI()Ljava/math/BigInteger;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeAParameters;->i:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getLambda()Ljava/math/BigInteger;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeAParameters;->lambda:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeAParameters;->splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    return-object v0
.end method
