.class public Landroid/animation/RevealAnimator;
.super Landroid/view/RenderNodeAnimator;
.source "RevealAnimator.java"


# instance fields
.field private greylist-max-o mClipView:Landroid/view/View;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;IIFF)V
    .registers 7
    .param p1, "clipView"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "startRadius"    # F
    .param p5, "endRadius"    # F

    .line 35
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/RenderNodeAnimator;-><init>(IIFF)V

    .line 36
    iput-object p1, p0, Landroid/animation/RevealAnimator;->mClipView:Landroid/view/View;

    .line 37
    iget-object v0, p0, Landroid/animation/RevealAnimator;->mClipView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/animation/RevealAnimator;->setTarget(Landroid/view/View;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected greylist-max-o onFinished()V
    .registers 4

    .line 42
    iget-object v0, p0, Landroid/animation/RevealAnimator;->mClipView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/View;->setRevealClip(ZFFF)V

    .line 43
    invoke-super {p0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    .line 44
    return-void
.end method
