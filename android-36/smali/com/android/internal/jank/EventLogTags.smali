.class public Lcom/android/internal/jank/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final blacklist JANK_CUJ_EVENTS_BEGIN_REQUEST:I = 0x9089

.field public static final blacklist JANK_CUJ_EVENTS_CANCEL_REQUEST:I = 0x908b

.field public static final blacklist JANK_CUJ_EVENTS_END_REQUEST:I = 0x908a


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeJankCujEventsBeginRequest(IJJJLjava/lang/String;)V
    .registers 12
    .param p0, "cujType"    # I
    .param p1, "unixTimeNs"    # J
    .param p3, "elapsedTimeNs"    # J
    .param p5, "uptimeNs"    # J
    .param p7, "tag"    # Ljava/lang/String;

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3, p7}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x9089

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 24
    return-void
.end method

.method public static blacklist writeJankCujEventsCancelRequest(IJJJ)V
    .registers 11
    .param p0, "cujType"    # I
    .param p1, "unixTimeNs"    # J
    .param p3, "elapsedTimeNs"    # J
    .param p5, "uptimeTimeNs"    # J

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x908b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 32
    return-void
.end method

.method public static blacklist writeJankCujEventsEndRequest(IJJJ)V
    .registers 11
    .param p0, "cujType"    # I
    .param p1, "unixTimeNs"    # J
    .param p3, "elapsedTimeNs"    # J
    .param p5, "uptimeTimeNs"    # J

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x908a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 28
    return-void
.end method
