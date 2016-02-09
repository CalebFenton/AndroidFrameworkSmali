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
.field private final mMovingView:Landroid/view/View;

.field private mPausedX:F

.field private mPausedY:F

.field private final mStartX:I

.field private final mStartY:I

.field private final mTerminalX:F

.field private final mTerminalY:F

.field private mTransitionPosition:[I

.field private final mViewInHierarchy:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 3
    .param p1, "movingView"    # Landroid/view/View;
    .param p2, "viewInHierarchy"    # Landroid/view/View;
    .param p3, "startX"    # I
    .param p4, "startY"    # I
    .param p5, "terminalX"    # F
    .param p6, "terminalY"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const v1, 0x1020051

    #@4
    .line 98
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@7
    .line 100
    iput-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@9
    .line 101
    iput-object p2, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    #@b
    .line 102
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@d
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    #@10
    move-result v0

    #@11
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@14
    move-result v0

    #@15
    sub-int v0, p3, v0

    #@17
    iput v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    #@19
    .line 103
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@1b
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    #@1e
    move-result v0

    #@1f
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@22
    move-result v0

    #@23
    sub-int v0, p4, v0

    #@25
    iput v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    #@27
    .line 104
    iput p5, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    #@29
    .line 105
    iput p6, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    #@2b
    .line 106
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    #@2d
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, [I

    #@33
    iput-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    #@35
    .line 107
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    #@37
    if-eqz v0, :cond_0

    #@39
    .line 108
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    #@3b
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@3e
    .line 99
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/transition/TranslationAnimationCreator$TransitionPositionListener;)V
    .locals 0
    .param p1, "movingView"    # Landroid/view/View;
    .param p2, "viewInHierarchy"    # Landroid/view/View;
    .param p3, "startX"    # I
    .param p4, "startY"    # I
    .param p5, "terminalX"    # F
    .param p6, "terminalY"    # F

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    #@3
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 115
    const/4 v0, 0x2

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    #@9
    .line 117
    :cond_0
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    #@b
    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    #@d
    int-to-float v1, v1

    #@e
    iget-object v2, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@10
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    #@13
    move-result v2

    #@14
    add-float/2addr v1, v2

    #@15
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@18
    move-result v1

    #@19
    const/4 v2, 0x0

    #@1a
    aput v1, v0, v2

    #@1c
    .line 118
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    #@1e
    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    #@20
    int-to-float v1, v1

    #@21
    iget-object v2, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@23
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    #@26
    move-result v2

    #@27
    add-float/2addr v1, v2

    #@28
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@2b
    move-result v1

    #@2c
    const/4 v2, 0x1

    #@2d
    aput v1, v0, v2

    #@2f
    .line 119
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    #@31
    iget-object v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    #@33
    const v2, 0x1020051

    #@36
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@39
    .line 113
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 123
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    #@8
    .line 129
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@a
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    #@10
    .line 130
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@12
    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    #@14
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    #@17
    .line 131
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@19
    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    #@1b
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    #@1e
    .line 127
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@2
    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    #@7
    .line 137
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@9
    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    #@b
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    #@e
    .line 135
    return-void
.end method

.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 151
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@2
    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    #@7
    .line 147
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    #@9
    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    #@b
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    #@e
    .line 145
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 155
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 159
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 141
    return-void
.end method
