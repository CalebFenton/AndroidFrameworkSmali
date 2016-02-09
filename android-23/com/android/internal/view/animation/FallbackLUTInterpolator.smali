.class public Lcom/android/internal/view/animation/FallbackLUTInterpolator;
.super Ljava/lang/Object;
.source "FallbackLUTInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private final mLut:[F

.field private mSourceInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(Landroid/animation/TimeInterpolator;J)V
    .locals 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p2, "duration"    # J

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mSourceInterpolator:Landroid/animation/TimeInterpolator;

    #@5
    .line 42
    invoke-static {p1, p2, p3}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createLUT(Landroid/animation/TimeInterpolator;J)[F

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mLut:[F

    #@b
    .line 40
    return-void
.end method

.method private static createLUT(Landroid/animation/TimeInterpolator;J)[F
    .locals 13
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 46
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@3
    move-result-object v8

    #@4
    invoke-virtual {v8}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    #@7
    move-result-wide v2

    #@8
    .line 47
    .local v2, "frameIntervalNanos":J
    const-wide/32 v8, 0xf4240

    #@b
    div-long v8, v2, v8

    #@d
    long-to-int v0, v8

    #@e
    .line 48
    .local v0, "animIntervalMs":I
    long-to-double v8, p1

    #@f
    int-to-double v10, v0

    #@10
    div-double/2addr v8, v10

    #@11
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    #@14
    move-result-wide v8

    #@15
    double-to-int v6, v8

    #@16
    .line 49
    .local v6, "numAnimFrames":I
    new-array v7, v6, [F

    #@18
    .line 50
    .local v7, "values":[F
    add-int/lit8 v8, v6, -0x1

    #@1a
    int-to-float v5, v8

    #@1b
    .line 51
    .local v5, "lastFrame":F
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    #@1e
    .line 52
    int-to-float v8, v1

    #@1f
    div-float v4, v8, v5

    #@21
    .line 53
    .local v4, "inValue":F
    invoke-interface {p0, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@24
    move-result v8

    #@25
    aput v8, v7, v1

    #@27
    .line 51
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 55
    .end local v4    # "inValue":F
    :cond_0
    return-object v7
.end method

.method public static createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J
    .locals 5
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createLUT(Landroid/animation/TimeInterpolator;J)[F

    #@3
    move-result-object v0

    #@4
    .line 68
    .local v0, "lut":[F
    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createLutInterpolator([F)J

    #@7
    move-result-wide v2

    #@8
    return-wide v2
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mLut:[F

    #@2
    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createLutInterpolator([F)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 1
    .param p1, "input"    # F

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mSourceInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@5
    move-result v0

    #@6
    return v0
.end method
