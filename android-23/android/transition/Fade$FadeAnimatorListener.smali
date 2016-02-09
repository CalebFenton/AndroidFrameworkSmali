.class Landroid/transition/Fade$FadeAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Fade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimatorListener"
.end annotation


# instance fields
.field private mLayerTypeChanged:Z

.field private mPausedAlpha:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 155
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@3
    .line 152
    const/high16 v0, -0x40800000    # -1.0f

    #@5
    iput v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mPausedAlpha:F

    #@7
    .line 153
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    #@a
    .line 156
    iput-object p1, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    #@c
    .line 155
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    #@7
    .line 170
    iget-boolean v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 171
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    #@d
    const/4 v1, 0x0

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    #@12
    .line 168
    :cond_0
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getTransitionAlpha()F

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mPausedAlpha:F

    #@8
    .line 178
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    #@a
    const/high16 v1, 0x3f800000    # 1.0f

    #@c
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    #@f
    .line 176
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    #@2
    iget v1, p0, Landroid/transition/Fade$FadeAnimatorListener;->mPausedAlpha:F

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    #@7
    .line 182
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->hasOverlappingRendering()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    #@a
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 162
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    #@13
    .line 163
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    #@15
    const/4 v1, 0x2

    #@16
    const/4 v2, 0x0

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    #@1a
    .line 160
    :cond_0
    return-void
.end method
