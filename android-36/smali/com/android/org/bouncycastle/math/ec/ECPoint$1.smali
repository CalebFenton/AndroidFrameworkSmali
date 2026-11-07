.class Lcom/android/org/bouncycastle/math/ec/ECPoint$1;
.super Ljava/lang/Object;
.source "ECPoint.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompCallback;


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field final synthetic blacklist val$checkOrder:Z

.field final synthetic blacklist val$decompressed:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;ZZ)V
    .registers 4

    .line 310
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    iput-boolean p2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;->val$decompressed:Z

    iput-boolean p3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;->val$checkOrder:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 3

    .line 313
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-nez p1, :cond_f

    .line 316
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;

    invoke-direct {p1}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;-><init>()V

    .line 319
    :cond_f
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasFailed()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_48

    .line 323
    :cond_16
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasCurveEquationPassed()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 325
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;->val$decompressed:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->satisfiesCurveEquation()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 327
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportFailed()V

    return-object p1

    .line 330
    :cond_2c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportCurveEquationPassed()V

    .line 332
    :cond_2f
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;->val$checkOrder:Z

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasOrderPassed()Z

    move-result v0

    if-nez v0, :cond_48

    .line 334
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->satisfiesOrder()Z

    move-result p0

    if-nez p0, :cond_45

    .line 336
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportFailed()V

    return-object p1

    .line 339
    :cond_45
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportOrderPassed()V

    :cond_48
    :goto_48
    return-object p1
.end method
