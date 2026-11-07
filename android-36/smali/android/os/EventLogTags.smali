.class public Landroid/os/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final greylist-max-o SERVICE_MANAGER_SLOW:I = 0x38271

.field public static final greylist-max-o SERVICE_MANAGER_STATS:I = 0x38270


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o writeServiceManagerSlow(ILjava/lang/String;)V
    .registers 4
    .param p0, "time"    # I
    .param p1, "service"    # Ljava/lang/String;

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x38271

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 25
    return-void
.end method

.method public static greylist-max-o writeServiceManagerStats(III)V
    .registers 6
    .param p0, "callCount"    # I
    .param p1, "totalTime"    # I
    .param p2, "duration"    # I

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x38270

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 21
    return-void
.end method
