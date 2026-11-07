.class public Lcom/android/internal/telephony/metrics/InProgressCallSession;
.super Ljava/lang/Object;
.source "InProgressCallSession.java"


# instance fields
.field public final blacklist events:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEventsDropped:Z

.field private blacklist mLastElapsedTimeMs:J

.field private blacklist mLastKnownPhoneState:I

.field public final blacklist phoneId:I

.field public final blacklist startElapsedTimeMs:J

.field public final blacklist startSystemTimeMin:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mEventsDropped:Z

    .line 62
    iput p1, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    .line 63
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->roundSessionStart(J)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startSystemTimeMin:I

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    .line 67
    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastElapsedTimeMs:J

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .registers 6

    monitor-enter p0

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_16

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mEventsDropped:Z

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_2c

    .line 91
    :cond_16
    :goto_16
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastElapsedTimeMs:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPrivacyFuzzedTimeInterval(JJ)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setDelay(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-virtual {p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 95
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastElapsedTimeMs:J
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_14

    .line 96
    monitor-exit p0

    return-void

    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_14

    throw p1
.end method

.method public blacklist addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .registers 4

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public declared-synchronized blacklist containsCsCalls()Z
    .registers 4

    monitor-enter p0

    .line 103
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    .line 104
    iget v1, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1c

    const/16 v2, 0xa

    if-ne v1, v2, :cond_7

    .line 105
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_1c
    move-exception v0

    goto :goto_21

    .line 108
    :cond_1e
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1c

    throw v0
.end method

.method public blacklist isEventsDropped()Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mEventsDropped:Z

    return p0
.end method

.method public blacklist isPhoneIdle()Z
    .registers 2

    .line 125
    iget p0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastKnownPhoneState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setLastKnownPhoneState(I)V
    .registers 2

    .line 116
    iput p1, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastKnownPhoneState:I

    return-void
.end method
