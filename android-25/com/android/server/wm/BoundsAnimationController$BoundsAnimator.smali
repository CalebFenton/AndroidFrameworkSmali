.class final Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
.super Landroid/animation/ValueAnimator;
.source "BoundsAnimationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BoundsAnimator"
.end annotation


# instance fields
.field private final mFrom:Landroid/graphics/Rect;

.field private final mFrozenTaskHeight:I

.field private final mFrozenTaskWidth:I

.field private final mMoveToFullScreen:Z

.field private final mReplacement:Z

.field private final mTarget:Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpTaskBounds:Landroid/graphics/Rect;

.field private final mTo:Landroid/graphics/Rect;

.field private mWillReplace:Z

.field final synthetic this$0:Lcom/android/server/wm/BoundsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wm/BoundsAnimationController;
    .param p2, "target"    # Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;
    .param p3, "from"    # Landroid/graphics/Rect;
    .param p4, "to"    # Landroid/graphics/Rect;
    .param p5, "moveToFullScreen"    # Z
    .param p6, "replacement"    # Z

    #@0
    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    #@2
    .line 118
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    #@5
    .line 101
    new-instance v0, Landroid/graphics/Rect;

    #@7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    #@c
    .line 102
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    #@13
    .line 119
    iput-object p2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;

    #@15
    .line 120
    iput-object p3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    #@17
    .line 121
    iput-object p4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    #@19
    .line 122
    iput-boolean p5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullScreen:Z

    #@1b
    .line 123
    iput-boolean p6, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mReplacement:Z

    #@1d
    .line 124
    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@20
    .line 125
    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@23
    .line 131
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->animatingToLargerSize()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 132
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    #@2b
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    #@31
    .line 133
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    #@33
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@36
    move-result v0

    #@37
    iput v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    #@39
    .line 117
    :goto_0
    return-void

    #@3a
    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    #@3c
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@3f
    move-result v0

    #@40
    iput v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    #@42
    .line 136
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    #@44
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@47
    move-result v0

    #@48
    iput v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    #@4a
    goto :goto_0
.end method

.method private finishAnimation()V
    .locals 2

    #@0
    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mWillReplace:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 235
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;

    #@6
    invoke-interface {v0}, Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;->onAnimationEnd()V

    #@9
    .line 237
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    #@c
    .line 238
    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@f
    .line 239
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    #@11
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->-get3(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;

    #@17
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 231
    return-void
.end method


# virtual methods
.method animatingToLargerSize()Z
    .locals 3

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    #@8
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@b
    move-result v1

    #@c
    mul-int/2addr v0, v1

    #@d
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    #@f
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@12
    move-result v1

    #@13
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    #@15
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@18
    move-result v2

    #@19
    mul-int/2addr v1, v2

    #@1a
    if-le v0, v1, :cond_0

    #@1c
    .line 142
    const/4 v0, 0x0

    #@1d
    return v0

    #@1e
    .line 144
    :cond_0
    const/4 v0, 0x1

    #@1f
    return v0
.end method

.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 221
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mWillReplace:Z

    #@3
    .line 223
    invoke-super {p0}, Landroid/animation/ValueAnimator;->cancel()V

    #@6
    .line 220
    return-void
.end method

.method public isAnimatingTo(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->finishAnimation()V

    #@3
    .line 215
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    #@2
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->-get0(Lcom/android/server/wm/BoundsAnimationController;)Lcom/android/server/wm/AppTransition;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    #@e
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->-get1(Lcom/android/server/wm/BoundsAnimationController;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->finishAnimation()V

    #@17
    .line 208
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;

    #@19
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    #@1b
    const/4 v2, 0x0

    #@1c
    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@1f
    .line 209
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullScreen:Z

    #@21
    if-eqz v0, :cond_1

    #@23
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mWillReplace:Z

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 192
    :cond_1
    :goto_0
    return-void

    #@28
    .line 202
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    #@2a
    const/4 v1, 0x1

    #@2b
    invoke-static {v0, v1}, Lcom/android/server/wm/BoundsAnimationController;->-set0(Lcom/android/server/wm/BoundsAnimationController;Z)Z

    #@2e
    .line 203
    return-void

    #@2f
    .line 210
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;

    #@31
    invoke-interface {v0}, Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;->moveToFullscreen()V

    #@34
    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 243
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/android/server/wm/BoundsAnimationController;->-set0(Lcom/android/server/wm/BoundsAnimationController;Z)Z

    #@6
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mReplacement:Z

    #@8
    if-nez v0, :cond_0

    #@a
    .line 179
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;

    #@c
    invoke-interface {v0}, Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;->onAnimationStart()V

    #@f
    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->animatingToLargerSize()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 185
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    #@17
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    #@19
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@1b
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    #@1d
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@1f
    .line 186
    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    #@21
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@23
    iget v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    #@25
    add-int/2addr v3, v4

    #@26
    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    #@28
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@2a
    iget v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    #@2c
    add-int/2addr v4, v5

    #@2d
    .line 185
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@30
    .line 187
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;

    #@32
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    #@34
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    #@36
    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@39
    .line 171
    :cond_1
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    #@0
    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    #@2
    .line 149
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/lang/Float;

    #@8
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@b
    move-result v1

    #@c
    .line 150
    .local v1, "value":F
    const/high16 v2, 0x3f800000    # 1.0f

    #@e
    sub-float v0, v2, v1

    #@10
    .line 151
    .local v0, "remains":F
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    #@12
    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    #@14
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@16
    int-to-float v3, v3

    #@17
    mul-float/2addr v3, v0

    #@18
    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    #@1a
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@1c
    int-to-float v4, v4

    #@1d
    mul-float/2addr v4, v1

    #@1e
    add-float/2addr v3, v4

    #@1f
    add-float/2addr v3, v5

    #@20
    float-to-int v3, v3

    #@21
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@23
    .line 152
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    #@25
    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    #@27
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@29
    int-to-float v3, v3

    #@2a
    mul-float/2addr v3, v0

    #@2b
    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    #@2d
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@2f
    int-to-float v4, v4

    #@30
    mul-float/2addr v4, v1

    #@31
    add-float/2addr v3, v4

    #@32
    add-float/2addr v3, v5

    #@33
    float-to-int v3, v3

    #@34
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@36
    .line 153
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    #@38
    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    #@3a
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@3c
    int-to-float v3, v3

    #@3d
    mul-float/2addr v3, v0

    #@3e
    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    #@40
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@42
    int-to-float v4, v4

    #@43
    mul-float/2addr v4, v1

    #@44
    add-float/2addr v3, v4

    #@45
    add-float/2addr v3, v5

    #@46
    float-to-int v3, v3

    #@47
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@49
    .line 154
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    #@4b
    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    #@4d
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@4f
    int-to-float v3, v3

    #@50
    mul-float/2addr v3, v0

    #@51
    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    #@53
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@55
    int-to-float v4, v4

    #@56
    mul-float/2addr v4, v1

    #@57
    add-float/2addr v3, v4

    #@58
    add-float/2addr v3, v5

    #@59
    float-to-int v3, v3

    #@5a
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@5c
    .line 159
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    #@5e
    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    #@60
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@62
    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    #@64
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@66
    .line 160
    iget-object v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    #@68
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@6a
    iget v6, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    #@6c
    add-int/2addr v5, v6

    #@6d
    iget-object v6, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    #@6f
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@71
    iget v7, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    #@73
    add-int/2addr v6, v7

    #@74
    .line 159
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    #@77
    .line 162
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;

    #@79
    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    #@7b
    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    #@7d
    invoke-interface {v2, v3, v4}, Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@80
    move-result v2

    #@81
    if-nez v2, :cond_0

    #@83
    .line 165
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    #@86
    .line 148
    :cond_0
    return-void
.end method
