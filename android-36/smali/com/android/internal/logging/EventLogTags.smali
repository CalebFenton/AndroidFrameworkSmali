.class public Lcom/android/internal/logging/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final greylist-max-o COMMIT_SYS_CONFIG_FILE:I = 0x802c8

.field public static final greylist-max-o SYSUI_ACTION:I = 0x80000

.field public static final greylist-max-o SYSUI_COUNT:I = 0x80002

.field public static final greylist-max-o SYSUI_HISTOGRAM:I = 0x80003

.field public static final greylist-max-o SYSUI_LATENCY:I = 0x8ce6

.field public static final greylist-max-o SYSUI_MULTI_ACTION:I = 0x80004

.field public static final greylist-max-o SYSUI_VIEW_VISIBILITY:I = 0x7ffff


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o writeCommitSysConfigFile(Ljava/lang/String;J)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "time"    # J

    .line 59
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x802c8

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 60
    return-void
.end method

.method public static greylist-max-o writeSysuiAction(ILjava/lang/String;)V
    .registers 4
    .param p0, "category"    # I
    .param p1, "pkg"    # Ljava/lang/String;

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 40
    return-void
.end method

.method public static greylist-max-o writeSysuiCount(Ljava/lang/String;I)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "increment"    # I

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x80002

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 48
    return-void
.end method

.method public static greylist-max-o writeSysuiHistogram(Ljava/lang/String;I)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bucket"    # I

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x80003

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 52
    return-void
.end method

.method public static greylist-max-o writeSysuiLatency(II)V
    .registers 4
    .param p0, "action"    # I
    .param p1, "latency"    # I

    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x8ce6

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 56
    return-void
.end method

.method public static greylist-max-o writeSysuiMultiAction([Ljava/lang/Object;)V
    .registers 2
    .param p0, "content"    # [Ljava/lang/Object;

    .line 43
    const v0, 0x80004

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 44
    return-void
.end method

.method public static greylist-max-o writeSysuiViewVisibility(II)V
    .registers 4
    .param p0, "category"    # I
    .param p1, "visible"    # I

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7ffff

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 36
    return-void
.end method
