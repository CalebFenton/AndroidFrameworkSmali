.class public final Landroid/view/ViewAnimationUtils;
.super Ljava/lang/Object;
.source "ViewAnimationUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    #@0
    .prologue
    .line 55
    new-instance v0, Landroid/animation/RevealAnimator;

    #@2
    move-object v1, p0

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/animation/RevealAnimator;-><init>(Landroid/view/View;IIFF)V

    #@a
    return-object v0
.end method
