.class Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;
.super Ljava/lang/Object;
.source "ValidityPrecompInfo.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;


# static fields
.field static final blacklist PRECOMP_NAME:Ljava/lang/String; = "bc_validity"


# instance fields
.field private blacklist curveEquationPassed:Z

.field private blacklist failed:Z

.field private blacklist orderPassed:Z


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    return-void
.end method


# virtual methods
.method blacklist hasCurveEquationPassed()Z
    .registers 2

    .line 24
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    return v0
.end method

.method blacklist hasFailed()Z
    .registers 2

    .line 14
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    return v0
.end method

.method blacklist hasOrderPassed()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    return v0
.end method

.method blacklist reportCurveEquationPassed()V
    .registers 2

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    .line 30
    return-void
.end method

.method blacklist reportFailed()V
    .registers 2

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    .line 20
    return-void
.end method

.method blacklist reportOrderPassed()V
    .registers 2

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    .line 40
    return-void
.end method
