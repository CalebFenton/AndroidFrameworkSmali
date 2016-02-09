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
.field private mListener:Landroid/animation/TimeAnimator$TimeListener;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    #@3
    .line 31
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    #@7
    .line 28
    return-void
.end method


# virtual methods
.method animateValue(F)V
    .locals 0
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 69
    return-void
.end method

.method animationFrame(J)Z
    .locals 9
    .param p1, "currentTime"    # J

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 42
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    #@6
    sub-long v2, p1, v0

    #@8
    .line 43
    .local v2, "totalTime":J
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    #@a
    const-wide/16 v6, 0x0

    #@c
    cmp-long v0, v0, v6

    #@e
    if-gez v0, :cond_1

    #@10
    const-wide/16 v4, 0x0

    #@12
    .line 44
    .local v4, "deltaTime":J
    :goto_0
    iput-wide p1, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    #@14
    .line 45
    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    #@16
    move-object v1, p0

    #@17
    invoke-interface/range {v0 .. v5}, Landroid/animation/TimeAnimator$TimeListener;->onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V

    #@1a
    .line 47
    .end local v2    # "totalTime":J
    .end local v4    # "deltaTime":J
    :cond_0
    const/4 v0, 0x0

    #@1b
    return v0

    #@1c
    .line 43
    .restart local v2    # "totalTime":J
    :cond_1
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    #@1e
    sub-long v4, p1, v0

    #@20
    .restart local v4    # "deltaTime":J
    goto :goto_0
.end method

.method initAnimation()V
    .locals 0

    #@0
    .prologue
    .line 74
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 7
    .param p1, "playTime"    # J

    #@0
    .prologue
    .line 52
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 53
    .local v0, "currentTime":J
    iget-wide v2, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    #@6
    sub-long v4, v0, p1

    #@8
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@b
    move-result-wide v2

    #@c
    iput-wide v2, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    #@e
    .line 54
    const/4 v2, 0x1

    #@f
    iput-boolean v2, p0, Landroid/animation/TimeAnimator;->mStartTimeCommitted:Z

    #@11
    .line 55
    invoke-virtual {p0, v0, v1}, Landroid/animation/TimeAnimator;->animationFrame(J)Z

    #@14
    .line 51
    return-void
.end method

.method public setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/TimeAnimator$TimeListener;

    #@0
    .prologue
    .line 65
    iput-object p1, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    #@2
    .line 64
    return-void
.end method

.method public start()V
    .locals 2

    #@0
    .prologue
    .line 35
    const-wide/16 v0, -0x1

    #@2
    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    #@4
    .line 36
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    #@7
    .line 34
    return-void
.end method
