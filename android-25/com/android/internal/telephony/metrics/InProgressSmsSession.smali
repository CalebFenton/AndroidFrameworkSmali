.class public Lcom/android/internal/telephony/metrics/InProgressSmsSession;
.super Ljava/lang/Object;
.source "InProgressSmsSession.java"


# static fields
.field private static final MAX_EVENTS:I = 0x14


# instance fields
.field public final events:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsDropped:Z

.field private mLastElapsedTimeMs:J

.field private mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final phoneId:I

.field public final startElapsedTimeMs:J

.field public final startSystemTimeMin:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 49
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mEventsDropped:Z

    #@6
    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    .line 78
    iput p1, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    #@f
    .line 79
    new-instance v0, Ljava/util/ArrayDeque;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    #@16
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@19
    move-result-wide v0

    #@1a
    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->roundSessionStart(J)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startSystemTimeMin:I

    #@20
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@23
    move-result-wide v0

    #@24
    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    #@26
    .line 83
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    #@28
    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mLastElapsedTimeMs:J

    #@2a
    .line 77
    return-void
.end method


# virtual methods
.method public declared-synchronized addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "builder"    # Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    #@3
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    #@6
    move-result v0

    #@7
    const/16 v1, 0x14

    #@9
    if-lt v0, v1, :cond_0

    #@b
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    #@d
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    #@10
    .line 104
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mEventsDropped:Z

    #@13
    .line 108
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mLastElapsedTimeMs:J

    #@15
    .line 107
    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPrivacyFuzzedTimeInterval(JJ)I

    #@18
    move-result v0

    #@19
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setDelay(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@1c
    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    #@1e
    invoke-virtual {p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    #@25
    .line 111
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mLastElapsedTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit p0

    #@28
    .line 101
    return-void

    #@29
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit p0

    #@2b
    throw v0
.end method

.method public addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@0
    .prologue
    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    #@7
    .line 91
    return-void
.end method

.method public decreaseExpectedResponse()V
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@5
    .line 60
    return-void
.end method

.method public getNumExpectedResponses()I
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public increaseExpectedResponse()V
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mNumExpectedResponses:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@5
    .line 55
    return-void
.end method

.method public isEventsDropped()Z
    .locals 1

    #@0
    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->mEventsDropped:Z

    #@2
    return v0
.end method
