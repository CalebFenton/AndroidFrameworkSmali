.class Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedScroller"
.end annotation


# instance fields
.field private greylist-max-o mDeltaTime:J

.field private greylist-max-o mDeltaX:I

.field private greylist-max-o mDeltaY:I

.field private greylist-max-o mEffectiveRampDown:I

.field private greylist-max-o mRampDownDuration:I

.field private greylist-max-o mRampUpDuration:I

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mStopTime:J

.field private greylist-max-o mStopValue:F

.field private greylist-max-o mTargetVelocityX:F

.field private greylist-max-o mTargetVelocityY:F


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 744
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 745
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 746
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 747
    iput v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 748
    return-void
.end method

.method private greylist-max-o getValueAt(J)F
    .registers 11
    .param p1, "currentTime"    # J

    .line 786
    iget-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 787
    return v1

    .line 788
    :cond_8
    iget-wide v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v0, :cond_2f

    iget-wide v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    cmp-long v0, p1, v3

    if-gez v0, :cond_19

    goto :goto_2f

    .line 792
    :cond_19
    iget-wide v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    sub-long v3, p1, v3

    .line 793
    .local v3, "elapsedSinceEnd":J
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    sub-float v0, v2, v0

    iget v5, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    long-to-float v6, v3

    iget v7, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 794
    invoke-static {v6, v1, v2}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$smconstrain(FFF)F

    move-result v1

    mul-float/2addr v5, v1

    add-float/2addr v0, v5

    .line 793
    return v0

    .line 789
    .end local v3    # "elapsedSinceEnd":J
    :cond_2f
    :goto_2f
    iget-wide v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v3, p1, v3

    .line 790
    .local v3, "elapsedSinceStart":J
    long-to-float v0, v3

    iget v5, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$smconstrain(FFF)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method private greylist-max-o interpolateValue(F)F
    .registers 4
    .param p1, "value"    # F

    .line 806
    const/high16 v0, -0x3f800000    # -4.0f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public greylist-max-o computeScrollDelta()V
    .registers 9

    .line 817
    iget-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2b

    .line 821
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 822
    .local v0, "currentTime":J
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v2

    .line 823
    .local v2, "value":F
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->interpolateValue(F)F

    move-result v3

    .line 824
    .local v3, "scale":F
    iget-wide v4, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long v4, v0, v4

    .line 826
    .local v4, "elapsedSinceDelta":J
    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 827
    long-to-float v6, v4

    mul-float/2addr v6, v3

    iget v7, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 828
    long-to-float v6, v4

    mul-float/2addr v6, v3

    iget v7, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 829
    return-void

    .line 818
    .end local v0    # "currentTime":J
    .end local v2    # "value":F
    .end local v3    # "scale":F
    .end local v4    # "elapsedSinceDelta":J
    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getDeltaX()I
    .registers 2

    .line 855
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    return v0
.end method

.method public greylist-max-o getDeltaY()I
    .registers 2

    .line 863
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    return v0
.end method

.method public greylist-max-o getHorizontalDirection()I
    .registers 3

    .line 843
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public greylist-max-o getVerticalDirection()I
    .registers 3

    .line 847
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public greylist-max-o isFinished()Z
    .registers 7

    .line 781
    iget-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 782
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget v4, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 781
    :goto_19
    return v0
.end method

.method public greylist-max-o requestStop()V
    .registers 6

    .line 774
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 775
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    invoke-static {v2, v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$smconstrain(III)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    .line 776
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 777
    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 778
    return-void
.end method

.method public greylist-max-o setRampDownDuration(I)V
    .registers 2
    .param p1, "durationMillis"    # I

    .line 755
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    .line 756
    return-void
.end method

.method public greylist-max-o setRampUpDuration(I)V
    .registers 2
    .param p1, "durationMillis"    # I

    .line 751
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    .line 752
    return-void
.end method

.method public greylist-max-o setTargetVelocity(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 838
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    .line 839
    iput p2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    .line 840
    return-void
.end method

.method public greylist-max-o start()V
    .registers 3

    .line 762
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 763
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 764
    iget-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 765
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 766
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 767
    iput v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 768
    return-void
.end method
