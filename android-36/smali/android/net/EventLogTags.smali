.class public Landroid/net/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final greylist-max-o NTP_FAILURE:I = 0xc3a1

.field public static final greylist-max-o NTP_SUCCESS:I = 0xc3a0


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 24
    const v0, 0xc3a1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 25
    return-void
.end method

.method public static greylist-max-o writeNtpSuccess(Ljava/lang/String;JJ)V
    .registers 7
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "rtt"    # J
    .param p3, "offset"    # J

    .line 20
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0xc3a0

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 21
    return-void
.end method
