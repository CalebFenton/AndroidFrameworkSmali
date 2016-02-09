.class public abstract Landroid/support/v4/animation/AnimatorCompatHelper;
.super Ljava/lang/Object;
.source "AnimatorCompatHelper.java"


# static fields
.field static IMPL:Landroid/support/v4/animation/AnimatorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xc

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 28
    new-instance v0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;

    #@8
    invoke-direct {v0}, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;-><init>()V

    #@b
    sput-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    #@d
    .line 22
    :goto_0
    return-void

    #@e
    .line 30
    :cond_0
    new-instance v0, Landroid/support/v4/animation/DonutAnimatorCompatProvider;

    #@10
    invoke-direct {v0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider;-><init>()V

    #@13
    sput-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    #@15
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static clearInterpolator(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 43
    sget-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/animation/AnimatorProvider;->clearInterpolator(Landroid/view/View;)V

    #@5
    .line 42
    return-void
.end method

.method public static emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;
    .locals 1

    #@0
    .prologue
    .line 35
    sget-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    #@2
    invoke-interface {v0}, Landroid/support/v4/animation/AnimatorProvider;->emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
