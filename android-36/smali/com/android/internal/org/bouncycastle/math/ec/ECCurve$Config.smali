.class public Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation


# instance fields
.field protected blacklist coord:I

.field protected blacklist endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected blacklist multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;ILcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "coord"    # I
    .param p3, "endomorphism"    # Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;
    .param p4, "multiplier"    # Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    .line 56
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 57
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist create()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->supportsCoordinateSystem(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 85
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->cloneCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 86
    .local v0, "c":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    if-eq v0, v1, :cond_26

    .line 92
    monitor-enter v0

    .line 94
    :try_start_15
    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    iput v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->coord:I

    .line 95
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 96
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    .line 97
    monitor-exit v0

    .line 99
    return-object v0

    .line 97
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_23

    throw v1

    .line 88
    :cond_26
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "implementation returned current curve"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    .end local v0    # "c":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCoordinateSystem(I)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 2
    .param p1, "coord"    # I

    .line 62
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    .line 63
    return-object p0
.end method

.method public blacklist setEndomorphism(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 2
    .param p1, "endomorphism"    # Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 68
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 69
    return-object p0
.end method

.method public blacklist setMultiplier(Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 2
    .param p1, "multiplier"    # Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    .line 74
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    .line 75
    return-object p0
.end method
