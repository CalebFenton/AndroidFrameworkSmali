.class abstract Landroid/graphics/drawable/RippleComponent;
.super Ljava/lang/Object;
.source "RippleComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    }
.end annotation


# instance fields
.field protected final mBounds:Landroid/graphics/Rect;

.field protected mDensityScale:F

.field private final mForceSoftware:Z

.field private mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

.field private mHasDisplayListCanvas:Z

.field private mHasMaxRadius:Z

.field private mHasPendingHardwareAnimator:Z

.field private final mOwner:Landroid/graphics/drawable/RippleDrawable;

.field private mSoftwareAnimator:Landroid/animation/Animator;

.field protected mTargetRadius:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "forceSoftware"    # Z

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput-object p1, p0, Landroid/graphics/drawable/RippleComponent;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    #@5
    .line 64
    iput-object p2, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    #@7
    .line 65
    iput-boolean p3, p0, Landroid/graphics/drawable/RippleComponent;->mForceSoftware:Z

    #@9
    .line 62
    return-void
.end method

.method private cancelSoftwareAnimations()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 213
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 214
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    #@7
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@a
    .line 215
    iput-object v1, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    #@c
    .line 212
    :cond_0
    return-void
.end method

.method private endHardwareAnimations()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 237
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 238
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->end()V

    #@a
    .line 239
    iput-object v1, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    #@c
    .line 242
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 243
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    #@13
    .line 247
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->jumpValuesToExit()V

    #@16
    .line 236
    :cond_1
    return-void
.end method

.method private endSoftwareAnimations()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 224
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 225
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    #@7
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    #@a
    .line 226
    iput-object v1, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    #@c
    .line 223
    :cond_0
    return-void
.end method

.method private static getTargetRadius(Landroid/graphics/Rect;)F
    .locals 4
    .param p0, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    #@2
    .line 89
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    #@5
    move-result v2

    #@6
    int-to-float v2, v2

    #@7
    div-float v1, v2, v3

    #@9
    .line 90
    .local v1, "halfWidth":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    #@c
    move-result v2

    #@d
    int-to-float v2, v2

    #@e
    div-float v0, v2, v3

    #@10
    .line 91
    .local v0, "halfHeight":F
    mul-float v2, v1, v1

    #@12
    mul-float v3, v0, v0

    #@14
    add-float/2addr v2, v3

    #@15
    float-to-double v2, v2

    #@16
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@19
    move-result-wide v2

    #@1a
    double-to-float v2, v2

    #@1b
    return v2
.end method

.method private startPendingAnimation(Landroid/view/DisplayListCanvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "hw"    # Landroid/view/DisplayListCanvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 196
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 197
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    #@7
    .line 199
    new-instance v0, Landroid/graphics/Paint;

    #@9
    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    #@c
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    #@12
    .line 200
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    #@14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->start(Landroid/view/DisplayListCanvas;)V

    #@17
    .line 204
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->jumpValuesToExit()V

    #@1a
    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->cancelSoftwareAnimations()V

    #@3
    .line 134
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endHardwareAnimations()V

    #@6
    .line 132
    return-void
.end method

.method protected abstract createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
.end method

.method protected abstract createSoftwareEnter(Z)Landroid/animation/Animator;
.end method

.method protected abstract createSoftwareExit()Landroid/animation/Animator;
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 154
    iget-boolean v2, p0, Landroid/graphics/drawable/RippleComponent;->mForceSoftware:Z

    #@2
    if-nez v2, :cond_1

    #@4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 155
    instance-of v0, p1, Landroid/view/DisplayListCanvas;

    #@c
    .line 156
    :goto_0
    iget-boolean v2, p0, Landroid/graphics/drawable/RippleComponent;->mHasDisplayListCanvas:Z

    #@e
    if-eq v2, v0, :cond_0

    #@10
    .line 157
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasDisplayListCanvas:Z

    #@12
    .line 159
    if-nez v0, :cond_0

    #@14
    .line 161
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endHardwareAnimations()V

    #@17
    .line 165
    :cond_0
    if-eqz v0, :cond_2

    #@19
    move-object v1, p1

    #@1a
    .line 166
    check-cast v1, Landroid/view/DisplayListCanvas;

    #@1c
    .line 167
    .local v1, "hw":Landroid/view/DisplayListCanvas;
    invoke-direct {p0, v1, p2}, Landroid/graphics/drawable/RippleComponent;->startPendingAnimation(Landroid/view/DisplayListCanvas;Landroid/graphics/Paint;)V

    #@1f
    .line 169
    iget-object v2, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 170
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleComponent;->drawHardware(Landroid/view/DisplayListCanvas;)Z

    #@26
    move-result v2

    #@27
    return v2

    #@28
    .line 154
    .end local v1    # "hw":Landroid/view/DisplayListCanvas;
    :cond_1
    const/4 v0, 0x0

    #@29
    .local v0, "hasDisplayListCanvas":Z
    goto :goto_0

    #@2a
    .line 174
    .end local v0    # "hasDisplayListCanvas":Z
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleComponent;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    #@2d
    move-result v2

    #@2e
    return v2
.end method

.method protected abstract drawHardware(Landroid/view/DisplayListCanvas;)Z
.end method

.method protected abstract drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
.end method

.method public end()V
    .locals 0

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endSoftwareAnimations()V

    #@3
    .line 142
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endHardwareAnimations()V

    #@6
    .line 140
    return-void
.end method

.method public final enter(Z)V
    .locals 1
    .param p1, "fast"    # Z

    #@0
    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->cancel()V

    #@3
    .line 102
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleComponent;->createSoftwareEnter(Z)Landroid/animation/Animator;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    #@9
    .line 104
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 105
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    #@f
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@12
    .line 99
    :cond_0
    return-void
.end method

.method public final exit()V
    .locals 1

    #@0
    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->cancel()V

    #@3
    .line 115
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasDisplayListCanvas:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 118
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    #@a
    .line 121
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->invalidateSelf()V

    #@d
    .line 112
    :goto_0
    return-void

    #@e
    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->createSoftwareExit()Landroid/animation/Animator;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    #@14
    .line 124
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    #@16
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@19
    goto :goto_0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 185
    iget v1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    #@2
    float-to-double v2, v1

    #@3
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@6
    move-result-wide v2

    #@7
    double-to-int v0, v2

    #@8
    .line 186
    .local v0, "r":I
    neg-int v1, v0

    #@9
    neg-int v2, v0

    #@a
    invoke-virtual {p1, v1, v2, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@d
    .line 184
    return-void
.end method

.method protected final invalidateSelf()V
    .locals 2

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    #@6
    .line 251
    return-void
.end method

.method protected final isHardwareAnimating()Z
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->isRunning()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 257
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    #@e
    .line 256
    :goto_0
    return v0

    #@f
    :cond_1
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method protected abstract jumpValuesToExit()V
.end method

.method public onBoundsChange()V
    .locals 1

    #@0
    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 70
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    #@6
    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    #@c
    .line 71
    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    #@e
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    #@11
    .line 68
    :cond_0
    return-void
.end method

.method protected final onHotspotBoundsChanged()V
    .locals 6

    #@0
    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    #@2
    .line 261
    iget-boolean v3, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    #@4
    if-nez v3, :cond_0

    #@6
    .line 262
    iget-object v3, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    #@8
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@b
    move-result v3

    #@c
    int-to-float v3, v3

    #@d
    div-float v1, v3, v4

    #@f
    .line 263
    .local v1, "halfWidth":F
    iget-object v3, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    #@11
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@14
    move-result v3

    #@15
    int-to-float v3, v3

    #@16
    div-float v0, v3, v4

    #@18
    .line 264
    .local v0, "halfHeight":F
    mul-float v3, v1, v1

    #@1a
    .line 265
    mul-float v4, v0, v0

    #@1c
    .line 264
    add-float/2addr v3, v4

    #@1d
    float-to-double v4, v3

    #@1e
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    #@21
    move-result-wide v4

    #@22
    double-to-float v2, v4

    #@23
    .line 267
    .local v2, "targetRadius":F
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    #@26
    .line 260
    .end local v0    # "halfHeight":F
    .end local v1    # "halfWidth":F
    .end local v2    # "targetRadius":F
    :cond_0
    return-void
.end method

.method protected onTargetRadiusChanged(F)V
    .locals 0
    .param p1, "targetRadius"    # F

    #@0
    .prologue
    .line 276
    return-void
.end method

.method public final setup(FI)V
    .locals 2
    .param p1, "maxRadius"    # F
    .param p2, "densityDpi"    # I

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p1, v0

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 77
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    #@8
    .line 78
    iput p1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    #@a
    .line 83
    :goto_0
    int-to-float v0, p2

    #@b
    const v1, 0x3bcccccd    # 0.00625f

    #@e
    mul-float/2addr v0, v1

    #@f
    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mDensityScale:F

    #@11
    .line 85
    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    #@13
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    #@16
    .line 75
    return-void

    #@17
    .line 80
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    #@19
    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    #@1f
    goto :goto_0
.end method
