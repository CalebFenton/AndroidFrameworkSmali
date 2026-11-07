.class public Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
.super Ljava/lang/Object;
.source "GLVTypeBParameters.java"


# instance fields
.field protected final blacklist beta:Ljava/math/BigInteger;

.field protected final blacklist lambda:Ljava/math/BigInteger;

.field protected final blacklist splitParams:Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    .line 17
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    .line 18
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->splitParams:Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    return-void
.end method


# virtual methods
.method public blacklist getBeta()Ljava/math/BigInteger;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getSplitParams()Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->splitParams:Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    return-object p0
.end method
