.class public Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayEventReceiver$VsyncEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameTimeline"
.end annotation


# instance fields
.field public blacklist deadline:J

.field public blacklist expectedPresentationTime:J

.field public blacklist vsyncId:J


# direct methods
.method constructor blacklist <init>()V
    .registers 5

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    .line 165
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x989680

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    .line 166
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    .line 167
    return-void
.end method

.method constructor blacklist <init>(JJJ)V
    .registers 9
    .param p1, "vsyncId"    # J
    .param p3, "expectedPresentationTime"    # J
    .param p5, "deadline"    # J

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    .line 172
    iput-wide p1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    .line 173
    iput-wide p3, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    .line 174
    iput-wide p5, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    .line 175
    return-void
.end method


# virtual methods
.method blacklist copyFrom(Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;)V
    .registers 4
    .param p1, "other"    # Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    .line 178
    iget-wide v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    .line 179
    iget-wide v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    .line 180
    iget-wide v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    .line 181
    return-void
.end method
