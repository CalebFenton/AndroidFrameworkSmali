.class public Lcom/android/internal/telephony/metrics/InProgressCallSession;
.super Ljava/lang/Object;
.source "InProgressCallSession.java"


# static fields
.field private static final MAX_EVENTS:I = 0x12c


# instance fields
.field public final events:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsDropped:Z

.field private mLastElapsedTimeMs:J

.field public final phoneId:I

.field public final startElapsedTimeMs:J

.field public final startSystemTimeMin:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mEventsDropped:Z

    #@6
    .line 59
    iput p1, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    #@8
    .line 60
    new-instance v0, Ljava/util/ArrayDeque;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    #@f
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v0

    #@13
    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->roundSessionStart(J)I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startSystemTimeMin:I

    #@19
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1c
    move-result-wide v0

    #@1d
    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    #@1f
    .line 64
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    #@21
    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastElapsedTimeMs:J

    #@23
    .line 58
    return-void
.end method


# virtual methods
.method public declared-synchronized addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "builder"    # Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    #@3
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    #@6
    move-result v0

    #@7
    const/16 v1, 0x12c

    #@9
    if-lt v0, v1, :cond_0

    #@b
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    #@d
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    #@10
    .line 85
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mEventsDropped:Z

    #@13
    .line 89
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastElapsedTimeMs:J

    #@15
    .line 88
    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPrivacyFuzzedTimeInterval(JJ)I

    #@18
    move-result v0

    #@19
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setDelay(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@1c
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    #@1e
    invoke-virtual {p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    #@25
    .line 92
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastElapsedTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit p0

    #@28
    .line 82
    return-void

    #@29
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit p0

    #@2b
    throw v0
.end method

.method public addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@0
    .prologue
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@7
    .line 72
    return-void
.end method

.method public isEventsDropped()Z
    .locals 1

    #@0
    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mEventsDropped:Z

    #@2
    return v0
.end method
