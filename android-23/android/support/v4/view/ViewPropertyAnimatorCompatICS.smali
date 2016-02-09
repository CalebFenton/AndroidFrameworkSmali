.class Landroid/support/v4/view/ViewPropertyAnimatorCompatICS;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatICS.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static alpha(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 29
    return-void
.end method

.method public static alphaBy(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 57
    return-void
.end method

.method public static cancel(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    #@7
    .line 101
    return-void
.end method

.method public static getDuration(Landroid/view/View;)J
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public static getStartDelay(Landroid/view/View;)J
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getStartDelay()J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public static rotation(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 61
    return-void
.end method

.method public static rotationBy(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 65
    return-void
.end method

.method public static rotationX(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 69
    return-void
.end method

.method public static rotationXBy(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationXBy(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 73
    return-void
.end method

.method public static rotationY(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 77
    return-void
.end method

.method public static rotationYBy(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationYBy(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 81
    return-void
.end method

.method public static scaleX(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 85
    return-void
.end method

.method public static scaleXBy(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleXBy(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 89
    return-void
.end method

.method public static scaleY(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 93
    return-void
.end method

.method public static scaleYBy(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleYBy(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 97
    return-void
.end method

.method public static setDuration(Landroid/view/View;J)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # J

    #@0
    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 25
    return-void
.end method

.method public static setInterpolator(Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 45
    return-void
.end method

.method public static setListener(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/support/v4/view/ViewPropertyAnimatorListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 135
    if-eqz p1, :cond_0

    #@3
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@6
    move-result-object v0

    #@7
    new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS$1;

    #@9
    invoke-direct {v1, p1, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS$1;-><init>(Landroid/support/v4/view/ViewPropertyAnimatorListener;Landroid/view/View;)V

    #@c
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@f
    .line 134
    :goto_0
    return-void

    #@10
    .line 153
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@17
    goto :goto_0
.end method

.method public static setStartDelay(Landroid/view/View;J)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # J

    #@0
    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 49
    return-void
.end method

.method public static start(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    #@7
    .line 129
    return-void
.end method

.method public static translationX(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 33
    return-void
.end method

.method public static translationXBy(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 121
    return-void
.end method

.method public static translationY(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 37
    return-void
.end method

.method public static translationYBy(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 125
    return-void
.end method

.method public static x(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 105
    return-void
.end method

.method public static xBy(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 109
    return-void
.end method

.method public static y(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 113
    return-void
.end method

.method public static yBy(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    #@0
    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    #@7
    .line 117
    return-void
.end method
