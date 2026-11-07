.class public Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatsLogWrapper"
.end annotation


# instance fields
.field private final blacklist mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/jank/DisplayResolutionTracker;)V
    .registers 2
    .param p1, "displayResolutionTracker"    # Lcom/android/internal/jank/DisplayResolutionTracker;

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;->mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;

    .line 848
    return-void
.end method


# virtual methods
.method public blacklist write(IIIIJJJJJJ)V
    .registers 36
    .param p1, "code"    # I
    .param p2, "displayId"    # I
    .param p3, "refreshRate"    # I
    .param p4, "arg1"    # I
    .param p5, "arg2"    # J
    .param p7, "arg3"    # J
    .param p9, "arg4"    # J
    .param p11, "arg5"    # J
    .param p13, "arg6"    # J
    .param p15, "arg7"    # J

    .line 853
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;->mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;

    .line 854
    move/from16 v2, p2

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/DisplayResolutionTracker;->getResolution(I)I

    move-result v17

    .line 853
    move/from16 v3, p1

    move/from16 v18, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    invoke-static/range {v3 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJJJJJII)V

    .line 855
    return-void
.end method
