.class Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;
.super Ljava/lang/Object;
.source "HoneycombMr1AnimatorCompatProvider.java"

# interfaces
.implements Landroid/support/v4/animation/AnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;,
        Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;
    }
.end annotation


# instance fields
.field private mDefaultInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public clearInterpolator(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 131
    new-instance v0, Landroid/animation/ValueAnimator;

    #@6
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    #@f
    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    #@15
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@18
    .line 129
    return-void
.end method

.method public emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;
    .locals 2

    #@0
    .prologue
    .line 39
    new-instance v0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [F

    #@5
    fill-array-data v1, :array_0

    #@8
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;-><init>(Landroid/animation/Animator;)V

    #@f
    return-object v0

    #@10
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
