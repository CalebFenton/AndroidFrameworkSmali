.class Landroid/animation/AnimatorSet$SeekState;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekState"
.end annotation


# instance fields
.field private greylist-max-o mPlayTime:J

.field private greylist-max-o mSeekingInReverse:Z

.field final synthetic blacklist this$0:Landroid/animation/AnimatorSet;


# direct methods
.method private constructor blacklist <init>(Landroid/animation/AnimatorSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2097
    iput-object p1, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2098
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    .line 2099
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;)V

    return-void
.end method


# virtual methods
.method greylist-max-o getPlayTime()J
    .registers 3

    .line 2131
    iget-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    return-wide v0
.end method

.method greylist-max-o getPlayTimeNormalized()J
    .registers 5

    .line 2138
    iget-object v0, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Landroid/animation/AnimatorSet;->-$$Nest$fgetmReversing(Landroid/animation/AnimatorSet;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2139
    iget-object v0, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-object v2, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-$$Nest$fgetmStartDelay(Landroid/animation/AnimatorSet;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 2141
    :cond_19
    iget-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    return-wide v0
.end method

.method greylist-max-o isActive()Z
    .registers 5

    .line 2145
    iget-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method greylist-max-o reset()V
    .registers 3

    .line 2101
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    .line 2102
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    .line 2103
    return-void
.end method

.method greylist-max-o setPlayTime(JZ)V
    .registers 8
    .param p1, "playTime"    # J
    .param p3, "inReverse"    # Z

    .line 2107
    iget-object v0, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    .line 2108
    iget-object v0, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-object v2, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-$$Nest$fgetmStartDelay(Landroid/animation/AnimatorSet;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    goto :goto_22

    .line 2110
    :cond_20
    iput-wide p1, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    .line 2112
    :goto_22
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    .line 2113
    iput-boolean p3, p0, Landroid/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    .line 2114
    return-void
.end method

.method greylist-max-o updateSeekDirection(Z)V
    .registers 6
    .param p1, "inReverse"    # Z

    .line 2118
    if-eqz p1, :cond_17

    iget-object v0, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    goto :goto_17

    .line 2119
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Cannot reverse infinite animator set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2122
    :cond_17
    :goto_17
    iget-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_37

    .line 2123
    iget-boolean v0, p0, Landroid/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    if-eq p1, v0, :cond_37

    .line 2124
    iget-object v0, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-object v2, p0, Landroid/animation/AnimatorSet$SeekState;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-$$Nest$fgetmStartDelay(Landroid/animation/AnimatorSet;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/animation/AnimatorSet$SeekState;->mPlayTime:J

    .line 2125
    iput-boolean p1, p0, Landroid/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    .line 2128
    :cond_37
    return-void
.end method
