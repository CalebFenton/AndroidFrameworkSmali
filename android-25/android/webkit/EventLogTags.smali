.class public Landroid/webkit/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final BROWSER_DOUBLE_TAP_DURATION:I = 0x111d6

.field public static final BROWSER_SNAP_CENTER:I = 0x11206

.field public static final BROWSER_ZOOM_LEVEL_CHANGE:I = 0x111d5

.field public static final EXP_DET_ATTEMPT_TO_CALL_OBJECT_GETCLASS:I = 0x11207


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static writeBrowserDoubleTapDuration(IJ)V
    .locals 3
    .param p0, "duration"    # I
    .param p1, "time"    # J

    #@0
    .prologue
    .line 30
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const v1, 0x111d6

    #@14
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@17
    .line 29
    return-void
.end method

.method public static writeBrowserSnapCenter()V
    .locals 2

    #@0
    .prologue
    .line 34
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const v1, 0x11206

    #@6
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@9
    .line 33
    return-void
.end method

.method public static writeBrowserZoomLevelChange(IIJ)V
    .locals 4
    .param p0, "startLevel"    # I
    .param p1, "endLevel"    # I
    .param p2, "time"    # J

    #@0
    .prologue
    .line 26
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const v1, 0x111d5

    #@1b
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@1e
    .line 25
    return-void
.end method

.method public static writeExpDetAttemptToCallObjectGetclass(Ljava/lang/String;)V
    .locals 1
    .param p0, "appSignature"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    const v0, 0x11207

    #@3
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@6
    .line 37
    return-void
.end method
