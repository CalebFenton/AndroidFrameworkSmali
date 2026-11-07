.class public Lcom/android/internal/os/TimeoutRecord;
.super Ljava/lang/Object;
.source "TimeoutRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TimeoutRecord$TimeoutKind;
    }
.end annotation


# instance fields
.field public final blacklist mEndTakenBeforeLocks:Z

.field public final blacklist mEndUptimeMillis:J

.field private blacklist mExpiredTimer:Ljava/lang/AutoCloseable;

.field public final blacklist mKind:I

.field public final blacklist mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

.field public final blacklist mReason:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(ILjava/lang/String;JZ)V
    .registers 7
    .param p1, "kind"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "endUptimeMillis"    # J
    .param p5, "endTakenBeforeLocks"    # Z

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/android/internal/os/TimeoutRecord;->mKind:I

    .line 89
    iput-object p2, p0, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    .line 90
    iput-wide p3, p0, Lcom/android/internal/os/TimeoutRecord;->mEndUptimeMillis:J

    .line 91
    iput-boolean p5, p0, Lcom/android/internal/os/TimeoutRecord;->mEndTakenBeforeLocks:Z

    .line 92
    new-instance v0, Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/internal/os/anr/AnrLatencyTracker;-><init>(IJ)V

    iput-object v0, p0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/TimeoutRecord;->mExpiredTimer:Ljava/lang/AutoCloseable;

    .line 94
    return-void
.end method

.method private static blacklist endingApproximatelyNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 8
    .param p0, "kind"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 103
    .local v3, "endUptimeMillis":J
    new-instance v0, Lcom/android/internal/os/TimeoutRecord;

    const/4 v5, 0x0

    move v1, p0

    move-object v2, p1

    .end local p0    # "kind":I
    .end local p1    # "reason":Ljava/lang/String;
    .local v1, "kind":I
    .local v2, "reason":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/TimeoutRecord;-><init>(ILjava/lang/String;JZ)V

    return-object v0
.end method

.method private static blacklist endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 8
    .param p0, "kind"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 98
    .local v3, "endUptimeMillis":J
    new-instance v0, Lcom/android/internal/os/TimeoutRecord;

    const/4 v5, 0x1

    move v1, p0

    move-object v2, p1

    .end local p0    # "kind":I
    .end local p1    # "reason":Ljava/lang/String;
    .local v1, "kind":I
    .local v2, "reason":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/TimeoutRecord;-><init>(ILjava/lang/String;JZ)V

    return-object v0
.end method

.method public static blacklist forApp(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2
    .param p0, "reason"    # Ljava/lang/String;

    .line 184
    const/4 v0, 0x7

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingApproximatelyNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forAppStart(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2
    .param p0, "reason"    # Ljava/lang/String;

    .line 202
    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forBroadcastReceiver(Landroid/content/Intent;)Lcom/android/internal/os/TimeoutRecord;
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Broadcast of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "reason":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/content/Intent;->toString(Ljava/lang/StringBuilder;)V

    .line 130
    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist forBroadcastReceiver(Landroid/content/Intent;J)Lcom/android/internal/os/TimeoutRecord;
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "timeoutDurationMs"    # J

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Broadcast of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "reason":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/content/Intent;->toString(Ljava/lang/StringBuilder;)V

    .line 139
    const-string v1, ", waited "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist forBroadcastReceiver(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 111
    if-eqz p1, :cond_1b

    .line 112
    if-eqz p2, :cond_12

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 114
    .local v0, "logIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1c

    .line 116
    .end local v0    # "logIntent":Landroid/content/Intent;
    :cond_12
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 117
    .restart local v0    # "logIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1c

    .line 120
    .end local v0    # "logIntent":Landroid/content/Intent;
    :cond_1b
    move-object v0, p0

    .line 122
    .restart local v0    # "logIntent":Landroid/content/Intent;
    :goto_1c
    invoke-static {v0}, Lcom/android/internal/os/TimeoutRecord;->forBroadcastReceiver(Landroid/content/Intent;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist forContentProvider(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2
    .param p0, "reason"    # Ljava/lang/String;

    .line 178
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingApproximatelyNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forInputDispatchNoFocusedWindow(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2
    .param p0, "reason"    # Ljava/lang/String;

    .line 148
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forInputDispatchWindowUnresponsive(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2
    .param p0, "reason"    # Ljava/lang/String;

    .line 154
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forJobService(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2
    .param p0, "reason"    # Ljava/lang/String;

    .line 196
    const/16 v0, 0x9

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forServiceExec(Ljava/lang/String;J)Lcom/android/internal/os/TimeoutRecord;
    .registers 5
    .param p0, "shortInstanceName"    # Ljava/lang/String;
    .param p1, "timeoutDurationMs"    # J

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executing service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waited "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "reason":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist forServiceStartWithEndTime(Ljava/lang/String;J)Lcom/android/internal/os/TimeoutRecord;
    .registers 9
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "endUptimeMillis"    # J

    .line 171
    new-instance v0, Lcom/android/internal/os/TimeoutRecord;

    const/4 v1, 0x4

    const/4 v5, 0x1

    move-object v2, p0

    move-wide v3, p1

    .end local p0    # "reason":Ljava/lang/String;
    .end local p1    # "endUptimeMillis":J
    .local v2, "reason":Ljava/lang/String;
    .local v3, "endUptimeMillis":J
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/TimeoutRecord;-><init>(ILjava/lang/String;JZ)V

    return-object v0
.end method

.method public static blacklist forShortFgsTimeout(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2
    .param p0, "reason"    # Ljava/lang/String;

    .line 190
    const/16 v0, 0x8

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist closeExpiredTimer()V
    .registers 3

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/TimeoutRecord;->mExpiredTimer:Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/os/TimeoutRecord;->mExpiredTimer:Ljava/lang/AutoCloseable;

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 220
    :cond_9
    nop

    .line 221
    return-void

    .line 216
    :catch_b
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setExpiredTimer(Ljava/lang/AutoCloseable;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2
    .param p1, "handle"    # Ljava/lang/AutoCloseable;

    .line 208
    iput-object p1, p0, Lcom/android/internal/os/TimeoutRecord;->mExpiredTimer:Ljava/lang/AutoCloseable;

    .line 209
    return-object p0
.end method
