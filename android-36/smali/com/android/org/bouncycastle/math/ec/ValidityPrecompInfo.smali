.class Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;
.super Ljava/lang/Object;
.source "ValidityPrecompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field private blacklist curveEquationPassed:Z

.field private blacklist failed:Z

.field private blacklist orderPassed:Z


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    return-void
.end method


# virtual methods
.method blacklist hasCurveEquationPassed()Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    return p0
.end method

.method blacklist hasFailed()Z
    .registers 1

    .line 14
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    return p0
.end method

.method blacklist hasOrderPassed()Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    return p0
.end method

.method blacklist reportCurveEquationPassed()V
    .registers 2

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    return-void
.end method

.method blacklist reportFailed()V
    .registers 2

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    return-void
.end method

.method blacklist reportOrderPassed()V
    .registers 2

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    return-void
.end method
