.class public Landroid/view/RenderNodeAnimatorSetHelper;
.super Ljava/lang/Object;
.source "RenderNodeAnimatorSetHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J
    .locals 3
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 37
    if-nez p0, :cond_0

    #@2
    .line 39
    invoke-static {}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createLinearInterpolator()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0

    #@7
    .line 40
    :cond_0
    invoke-static {p0}, Landroid/view/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 41
    check-cast p0, Lcom/android/internal/view/animation/NativeInterpolatorFactory;

    #@f
    .end local p0    # "interpolator":Landroid/animation/TimeInterpolator;
    invoke-interface {p0}, Lcom/android/internal/view/animation/NativeInterpolatorFactory;->createNativeInterpolator()J

    #@12
    move-result-wide v0

    #@13
    return-wide v0

    #@14
    .line 43
    .restart local p0    # "interpolator":Landroid/animation/TimeInterpolator;
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    #@17
    move-result-wide v0

    #@18
    return-wide v0
.end method

.method public static getTarget(Landroid/view/DisplayListCanvas;)Landroid/view/RenderNode;
    .locals 1
    .param p0, "recordingCanvas"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    .line 32
    iget-object v0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    #@2
    return-object v0
.end method
