.class public Landroid/view/animation/BackGestureInterpolator;
.super Landroid/view/animation/PathInterpolator;
.source "BackGestureInterpolator.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 24
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 25
    return-void
.end method
