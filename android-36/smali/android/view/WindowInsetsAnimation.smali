.class public final Landroid/view/WindowInsetsAnimation;
.super Ljava/lang/Object;
.source "WindowInsetsAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsetsAnimation$Callback;,
        Landroid/view/WindowInsetsAnimation$Bounds;
    }
.end annotation


# instance fields
.field private blacklist mAlpha:F

.field private final blacklist mDurationMillis:J

.field private blacklist mFraction:F

.field private final blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mTypeMask:I


# direct methods
.method public constructor whitelist <init>(ILandroid/view/animation/Interpolator;J)V
    .registers 5
    .param p1, "typeMask"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "durationMillis"    # J

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mTypeMask:I

    .line 59
    iput-object p2, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 60
    iput-wide p3, p0, Landroid/view/WindowInsetsAnimation;->mDurationMillis:J

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist getAlpha()F
    .registers 2

    .line 166
    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mAlpha:F

    return v0
.end method

.method public whitelist getDurationMillis()J
    .registers 3

    .line 139
    iget-wide v0, p0, Landroid/view/WindowInsetsAnimation;->mDurationMillis:J

    return-wide v0
.end method

.method public whitelist getFraction()F
    .registers 2

    .line 89
    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    return v0
.end method

.method public whitelist getInterpolatedFraction()F
    .registers 3

    .line 116
    iget-object v0, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_d

    .line 117
    iget-object v0, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0

    .line 119
    :cond_d
    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    return v0
.end method

.method public whitelist getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public whitelist getTypeMask()I
    .registers 2

    .line 68
    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mTypeMask:I

    return v0
.end method

.method public whitelist setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .line 181
    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mAlpha:F

    .line 182
    return-void
.end method

.method public whitelist setFraction(F)V
    .registers 2
    .param p1, "fraction"    # F

    .line 156
    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    .line 157
    return-void
.end method
