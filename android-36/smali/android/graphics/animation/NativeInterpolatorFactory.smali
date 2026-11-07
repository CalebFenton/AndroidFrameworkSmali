.class public final Landroid/graphics/animation/NativeInterpolatorFactory;
.super Ljava/lang/Object;
.source "NativeInterpolatorFactory.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist createAccelerateDecelerateInterpolator()J
.end method

.method public static native blacklist createAccelerateInterpolator(F)J
.end method

.method public static native blacklist createAnticipateInterpolator(F)J
.end method

.method public static native blacklist createAnticipateOvershootInterpolator(F)J
.end method

.method public static native blacklist createBounceInterpolator()J
.end method

.method public static native blacklist createCycleInterpolator(F)J
.end method

.method public static native blacklist createDecelerateInterpolator(F)J
.end method

.method public static native blacklist createLinearInterpolator()J
.end method

.method public static native blacklist createLutInterpolator([F)J
.end method

.method public static blacklist createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J
    .registers 5
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p1, "duration"    # J

    .line 36
    if-nez p0, :cond_7

    .line 37
    invoke-static {}, Landroid/graphics/animation/NativeInterpolatorFactory;->createLinearInterpolator()J

    move-result-wide v0

    return-wide v0

    .line 38
    :cond_7
    invoke-static {p0}, Landroid/graphics/animation/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 39
    move-object v0, p0

    check-cast v0, Landroid/graphics/animation/NativeInterpolator;

    invoke-interface {v0}, Landroid/graphics/animation/NativeInterpolator;->createNativeInterpolator()J

    move-result-wide v0

    return-wide v0

    .line 41
    :cond_15
    invoke-static {p0, p1, p2}, Landroid/graphics/animation/FallbackLUTInterpolator;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native blacklist createOvershootInterpolator(F)J
.end method

.method public static native blacklist createPathInterpolator([F[F)J
.end method
