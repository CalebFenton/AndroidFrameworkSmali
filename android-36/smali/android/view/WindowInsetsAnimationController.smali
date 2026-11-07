.class public interface abstract Landroid/view/WindowInsetsAnimationController;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationController.java"


# virtual methods
.method public abstract whitelist finish(Z)V
.end method

.method public abstract whitelist getCurrentAlpha()F
.end method

.method public abstract whitelist getCurrentFraction()F
.end method

.method public abstract whitelist getCurrentInsets()Landroid/graphics/Insets;
.end method

.method public abstract blacklist getDurationMs()J
.end method

.method public abstract whitelist getHiddenStateInsets()Landroid/graphics/Insets;
.end method

.method public abstract blacklist getInsetsInterpolator()Landroid/view/animation/Interpolator;
.end method

.method public abstract whitelist getShownStateInsets()Landroid/graphics/Insets;
.end method

.method public abstract whitelist getTypes()I
.end method

.method public abstract blacklist hasZeroInsetsIme()Z
.end method

.method public abstract whitelist isCancelled()Z
.end method

.method public abstract whitelist isFinished()Z
.end method

.method public whitelist isReady()Z
    .registers 2

    .line 165
    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public abstract whitelist setInsetsAndAlpha(Landroid/graphics/Insets;FF)V
.end method
