.class public Landroid/graphics/animation/FallbackLUTInterpolator;
.super Ljava/lang/Object;
.source "FallbackLUTInterpolator.java"

# interfaces
.implements Landroid/graphics/animation/NativeInterpolator;
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation runtime Landroid/graphics/animation/HasNativeInterpolator;
.end annotation


# static fields
.field private static final blacklist MAX_SAMPLE_POINTS:I = 0x12c


# instance fields
.field private final blacklist mLut:[F

.field private blacklist mSourceInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor blacklist <init>(Landroid/animation/TimeInterpolator;J)V
    .registers 5
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p2, "duration"    # J

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/graphics/animation/FallbackLUTInterpolator;->mSourceInterpolator:Landroid/animation/TimeInterpolator;

    .line 45
    invoke-static {p1, p2, p3}, Landroid/graphics/animation/FallbackLUTInterpolator;->createLUT(Landroid/animation/TimeInterpolator;J)[F

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/animation/FallbackLUTInterpolator;->mLut:[F

    .line 46
    return-void
.end method

.method private static blacklist createLUT(Landroid/animation/TimeInterpolator;J)[F
    .registers 12
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p1, "duration"    # J

    .line 49
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    .line 50
    .local v0, "frameIntervalNanos":J
    const-wide/32 v2, 0xf4240

    div-long v2, v0, v2

    long-to-int v2, v2

    .line 52
    .local v2, "animIntervalMs":I
    long-to-double v3, p1

    int-to-double v5, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 53
    .local v3, "numAnimFrames":I
    const/16 v4, 0x12c

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 54
    new-array v4, v3, [F

    .line 55
    .local v4, "values":[F
    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    .line 56
    .local v5, "lastFrame":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_27
    if-ge v6, v3, :cond_34

    .line 57
    int-to-float v7, v6

    div-float/2addr v7, v5

    .line 58
    .local v7, "inValue":F
    invoke-interface {p0, v7}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v8

    aput v8, v4, v6

    .line 56
    .end local v7    # "inValue":F
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 60
    .end local v6    # "i":I
    :cond_34
    return-object v4
.end method

.method public static blacklist createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J
    .registers 6
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p1, "duration"    # J

    .line 72
    invoke-static {p0, p1, p2}, Landroid/graphics/animation/FallbackLUTInterpolator;->createLUT(Landroid/animation/TimeInterpolator;J)[F

    move-result-object v0

    .line 73
    .local v0, "lut":[F
    invoke-static {v0}, Landroid/graphics/animation/NativeInterpolatorFactory;->createLutInterpolator([F)J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method public blacklist createNativeInterpolator()J
    .registers 3

    .line 65
    iget-object v0, p0, Landroid/graphics/animation/FallbackLUTInterpolator;->mLut:[F

    invoke-static {v0}, Landroid/graphics/animation/NativeInterpolatorFactory;->createLutInterpolator([F)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolation(F)F
    .registers 3
    .param p1, "input"    # F

    .line 78
    iget-object v0, p0, Landroid/graphics/animation/FallbackLUTInterpolator;->mSourceInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
