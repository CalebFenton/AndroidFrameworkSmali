.class Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslationAnimationCreator.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TranslationAnimationCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionPositionListener"
.end annotation


# instance fields
.field private final blacklist mMovingView:Landroid/view/View;

.field private blacklist mPausedX:F

.field private blacklist mPausedY:F

.field private final blacklist mStartX:I

.field private final blacklist mStartY:I

.field private final blacklist mTerminalX:F

.field private final blacklist mTerminalY:F

.field private blacklist mTransitionPosition:[I

.field private final blacklist mViewInHierarchy:Landroid/view/View;


# direct methods
.method private constructor blacklist <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .registers 10
    .param p1, "movingView"    # Landroid/view/View;
    .param p2, "viewInHierarchy"    # Landroid/view/View;
    .param p3, "startX"    # I
    .param p4, "startY"    # I
    .param p5, "terminalX"    # F
    .param p6, "terminalY"    # F

    .line 99
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 100
    iput-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 101
    iput-object p2, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    .line 102
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p3, v0

    iput v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    .line 103
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p4, v0

    iput v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    .line 104
    iput p5, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    .line 105
    iput p6, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    .line 106
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    const v1, 0x10205b1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 107
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-eqz v0, :cond_3e

    .line 108
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 110
    :cond_3e
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/transition/TranslationAnimationCreator-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 114
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-nez v0, :cond_9

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 117
    :cond_9
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 118
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 119
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    const v1, 0x10205b1

    iget-object v2, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 120
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 124
    return-void
.end method

.method public whitelist onAnimationPause(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 128
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    .line 129
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    .line 130
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 131
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 132
    return-void
.end method

.method public whitelist onAnimationResume(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 136
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 137
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 138
    return-void
.end method

.method public whitelist onTransitionCancel(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 153
    return-void
.end method

.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 146
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 147
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 148
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 149
    return-void
.end method

.method public whitelist onTransitionPause(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 157
    return-void
.end method

.method public whitelist onTransitionResume(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 161
    return-void
.end method

.method public whitelist onTransitionStart(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 142
    return-void
.end method
