.class public Lcom/android/internal/telephony/metrics/InProgressSmsSession;
.super Ljava/lang/Object;
.source "InProgressSmsSession.java"


# instance fields
.field public final blacklist events:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEventsDropped:Z

.field private blacklist mLastElapsedTimeMs:J

.field private blacklist mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final blacklist phoneId:I

.field public final blacklist startElapsedTimeMs:J

.field public final blacklist startSystemTimeMin:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mEventsDropped:Z

    .line 52
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    iput p1, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    .line 79
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->roundSessionStart(J)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startSystemTimeMin:I

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    .line 83
    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mLastElapsedTimeMs:J

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    .registers 6

    monitor-enter p0

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_16

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mEventsDropped:Z

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_2c

    .line 107
    :cond_16
    :goto_16
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mLastElapsedTimeMs:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPrivacyFuzzedTimeInterval(JJ)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setDelay(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    invoke-virtual {p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 111
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mLastElapsedTimeMs:J
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_14

    .line 112
    monitor-exit p0

    return-void

    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_14

    throw p1
.end method

.method public blacklist addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    .registers 4

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    return-void
.end method

.method public blacklist decreaseExpectedResponse()V
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public blacklist getNumExpectedResponses()I
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public blacklist increaseExpectedResponse()V
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public blacklist isEventsDropped()Z
    .registers 1

    .line 70
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mEventsDropped:Z

    return p0
.end method
