.class public Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
.super Ljava/lang/Object;
.source "ECCurve.java"


# instance fields
.field protected blacklist coord:I

.field protected blacklist endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected blacklist multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;ILcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECMultiplier;)V
    .registers 5

    .line 54
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    .line 56
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 57
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    return-void
.end method


# virtual methods
.method public blacklist create()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->supportsCoordinateSystem(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 85
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    if-eq v0, v1, :cond_26

    .line 92
    monitor-enter v0

    .line 94
    :try_start_15
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    iput v1, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    .line 95
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 96
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    iput-object p0, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 97
    monitor-exit v0

    return-object v0

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_23

    throw p0

    .line 88
    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "implementation returned current curve"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setCoordinateSystem(I)Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 2

    .line 62
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    return-object p0
.end method

.method public blacklist setEndomorphism(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object p0
.end method

.method public blacklist setMultiplier(Lcom/android/org/bouncycastle/math/ec/ECMultiplier;)Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    return-object p0
.end method
