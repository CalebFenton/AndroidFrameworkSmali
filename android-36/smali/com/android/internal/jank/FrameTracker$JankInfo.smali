.class Lcom/android/internal/jank/FrameTracker$JankInfo;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JankInfo"
.end annotation


# instance fields
.field final blacklist frameVsyncId:J

.field blacklist hwuiCallbackFired:Z

.field blacklist isFirstFrame:Z

.field blacklist jankType:I

.field blacklist refreshRate:I

.field blacklist surfaceControlCallbackFired:Z

.field blacklist totalDurationNanos:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdate(Lcom/android/internal/jank/FrameTracker$JankInfo;JZ)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/jank/FrameTracker$JankInfo;->update(JZ)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdate(Lcom/android/internal/jank/FrameTracker$JankInfo;Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/jank/FrameTracker$JankInfo;->update(Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(J)V
    .registers 6
    .param p1, "frameVsyncId"    # J

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-wide p1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    .line 149
    iput v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    .line 150
    iput v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    .line 151
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    .line 152
    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    .line 153
    return-void
.end method

.method static blacklist createFromHwuiCallback(JJZ)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .registers 6
    .param p0, "frameVsyncId"    # J
    .param p2, "totalDurationNanos"    # J
    .param p4, "isFirstFrame"    # Z

    .line 138
    new-instance v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/jank/FrameTracker$JankInfo;-><init>(J)V

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/jank/FrameTracker$JankInfo;->update(JZ)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v0

    return-object v0
.end method

.method static blacklist createFromSurfaceControlCallback(Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .registers 4
    .param p0, "jankStat"    # Landroid/view/SurfaceControl$JankData;

    .line 142
    new-instance v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/jank/FrameTracker$JankInfo;-><init>(J)V

    invoke-direct {v0, p0}, Lcom/android/internal/jank/FrameTracker$JankInfo;->update(Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v0

    return-object v0
.end method

.method private blacklist update(JZ)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .registers 5
    .param p1, "totalDurationNanos"    # J
    .param p3, "isFirstFrame"    # Z

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    .line 167
    invoke-static {}, Lcom/android/internal/jank/Flags;->useSfFrameDuration()Z

    move-result v0

    if-nez v0, :cond_b

    .line 168
    iput-wide p1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    .line 170
    :cond_b
    iput-boolean p3, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    .line 171
    return-object p0
.end method

.method private blacklist update(Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .registers 4
    .param p1, "jankStat"    # Landroid/view/SurfaceControl$JankData;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    .line 157
    invoke-virtual {p1}, Landroid/view/SurfaceControl$JankData;->getJankType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    .line 158
    invoke-virtual {p1}, Landroid/view/SurfaceControl$JankData;->getFrameIntervalNanos()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/jank/DisplayRefreshRate;->getRefreshRate(J)I

    move-result v0

    iput v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    .line 159
    invoke-static {}, Lcom/android/internal/jank/Flags;->useSfFrameDuration()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 160
    invoke-virtual {p1}, Landroid/view/SurfaceControl$JankData;->getActualAppFrameTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    .line 162
    :cond_1f
    return-object p0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v0, "str":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    packed-switch v1, :pswitch_data_42

    .line 188
    const-string v1, "UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 182
    :pswitch_16
    const-string v1, "JANK_APPLICATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    goto :goto_28

    .line 185
    :pswitch_1c
    const-string v1, "JANK_COMPOSER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    goto :goto_28

    .line 179
    :pswitch_22
    const-string v1, "JANK_NONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    nop

    .line 191
    :goto_28
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1c
        :pswitch_16
    .end packed-switch
.end method
