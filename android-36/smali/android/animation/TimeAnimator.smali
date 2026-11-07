.class public Landroid/animation/TimeAnimator;
.super Landroid/animation/ValueAnimator;
.source "TimeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/TimeAnimator$TimeListener;
    }
.end annotation


# instance fields
.field private greylist-max-o mListener:Landroid/animation/TimeAnimator$TimeListener;

.field private greylist-max-o mPreviousTime:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    return-void
.end method


# virtual methods
.method greylist-max-o animateBasedOnTime(J)Z
    .registers 11
    .param p1, "currentTime"    # J

    .line 41
    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    if-eqz v0, :cond_1e

    .line 42
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    sub-long v4, p1, v0

    .line 43
    .local v4, "totalTime":J
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    goto :goto_15

    :cond_11
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    sub-long v2, p1, v0

    :goto_15
    move-wide v6, v2

    .line 44
    .local v6, "deltaTime":J
    iput-wide p1, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 45
    iget-object v2, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    move-object v3, p0

    invoke-interface/range {v2 .. v7}, Landroid/animation/TimeAnimator$TimeListener;->onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V

    .line 47
    .end local v4    # "totalTime":J
    .end local v6    # "deltaTime":J
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o animateValue(F)V
    .registers 2
    .param p1, "fraction"    # F

    .line 71
    return-void
.end method

.method greylist-max-o initAnimation()V
    .registers 1

    .line 76
    return-void
.end method

.method public whitelist setCurrentPlayTime(J)V
    .registers 9
    .param p1, "playTime"    # J

    .line 52
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 53
    .local v0, "currentTime":J
    iget-wide v2, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    sub-long v4, v0, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    .line 54
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/TimeAnimator;->mStartTimeCommitted:Z

    .line 55
    invoke-virtual {p0, v0, v1}, Landroid/animation/TimeAnimator;->animateBasedOnTime(J)Z

    .line 56
    return-void
.end method

.method public whitelist setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/animation/TimeAnimator$TimeListener;

    .line 65
    iput-object p1, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    .line 66
    return-void
.end method

.method public whitelist start()V
    .registers 3

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 36
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 37
    return-void
.end method
