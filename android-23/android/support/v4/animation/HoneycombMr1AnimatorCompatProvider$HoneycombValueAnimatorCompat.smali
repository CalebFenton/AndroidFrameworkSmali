.class Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;
.super Ljava/lang/Object;
.source "HoneycombMr1AnimatorCompatProvider.java"

# interfaces
.implements Landroid/support/v4/animation/ValueAnimatorCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombValueAnimatorCompat"
.end annotation


# instance fields
.field final mWrapped:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "wrapped"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    #@5
    .line 46
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/v4/animation/AnimatorListenerCompat;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v4/animation/AnimatorListenerCompat;

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    #@2
    new-instance v1, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;

    #@4
    invoke-direct {v1, p1, p0}, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;-><init>(Landroid/support/v4/animation/AnimatorListenerCompat;Landroid/support/v4/animation/ValueAnimatorCompat;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@a
    .line 56
    return-void
.end method

.method public addUpdateListener(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V
    .locals 2
    .param p1, "animatorUpdateListener"    # Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    #@2
    instance-of v0, v0, Landroid/animation/ValueAnimator;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 78
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    #@8
    check-cast v0, Landroid/animation/ValueAnimator;

    #@a
    .line 79
    new-instance v1, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;

    #@c
    invoke-direct {v1, p0, p1}, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;-><init>(Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V

    #@f
    .line 78
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@12
    .line 76
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    #@2
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@5
    .line 71
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    #@2
    check-cast v0, Landroid/animation/ValueAnimator;

    #@4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@5
    .line 61
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    #@2
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@5
    .line 51
    return-void
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    #@2
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@5
    .line 66
    return-void
.end method
