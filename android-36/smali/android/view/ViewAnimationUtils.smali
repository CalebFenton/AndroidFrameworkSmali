.class public final Landroid/view/ViewAnimationUtils;
.super Ljava/lang/Object;
.source "ViewAnimationUtils.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;
    .registers 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .line 71
    new-instance v0, Landroid/animation/RevealAnimator;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "centerX":I
    .end local p2    # "centerY":I
    .end local p3    # "startRadius":F
    .end local p4    # "endRadius":F
    .local v1, "view":Landroid/view/View;
    .local v2, "centerX":I
    .local v3, "centerY":I
    .local v4, "startRadius":F
    .local v5, "endRadius":F
    invoke-direct/range {v0 .. v5}, Landroid/animation/RevealAnimator;-><init>(Landroid/view/View;IIFF)V

    return-object v0
.end method
