.class public final Lcom/android/internal/telephony/LocalLog;
.super Ljava/lang/Object;
.source "LocalLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LocalLog$ReadOnlyLocalLog;
    }
.end annotation


# instance fields
.field private final blacklist mLog:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaxLines:I

.field private final blacklist mUseLocalTimestamps:Z


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3

    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(IZ)V

    return-void
.end method

.method public constructor blacklist <init>(IZ)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/LocalLog;->mMaxLines:I

    .line 56
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/LocalLog;->mLog:Ljava/util/Deque;

    .line 57
    iput-boolean p2, p0, Lcom/android/internal/telephony/LocalLog;->mUseLocalTimestamps:Z

    return-void
.end method

.method private declared-synchronized blacklist append(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 76
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/LocalLog;->mMaxLines:I

    if-lt v0, v1, :cond_13

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    goto :goto_1

    :catchall_11
    move-exception p1

    goto :goto_1a

    .line 79
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_11

    .line 80
    monitor-exit p0

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_11

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist clear()V
    .registers 2

    monitor-enter p0

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 118
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 84
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 85
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public declared-synchronized blacklist dump(Ljava/io/PrintWriter;)V
    .registers 3

    monitor-enter p0

    .line 88
    :try_start_1
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 89
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 100
    const-string v1, "%s%s\n"

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_7

    :catchall_1b
    move-exception p1

    goto :goto_1f

    .line 102
    :cond_1d
    monitor-exit p0

    return-void

    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1b

    throw p1
.end method

.method public blacklist log(Ljava/lang/String;)V
    .registers 6

    .line 62
    iget v0, p0, Lcom/android/internal/telephony/LocalLog;->mMaxLines:I

    if-gtz v0, :cond_5

    return-void

    .line 66
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/LocalLog;->mUseLocalTimestamps:Z

    const-string v1, " - "

    if-eqz v0, :cond_22

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_48

    .line 69
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    :goto_48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocalLog;->append(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist readOnlyLocalLog()Lcom/android/internal/telephony/LocalLog$ReadOnlyLocalLog;
    .registers 2

    .line 142
    new-instance v0, Lcom/android/internal/telephony/LocalLog$ReadOnlyLocalLog;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LocalLog$ReadOnlyLocalLog;-><init>(Lcom/android/internal/telephony/LocalLog;)V

    return-object v0
.end method

.method public declared-synchronized blacklist reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 105
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->reverseDump(Ljava/io/PrintWriter;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 106
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public declared-synchronized blacklist reverseDump(Ljava/io/PrintWriter;)V
    .registers 4

    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/LocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 110
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    :catchall_17
    move-exception p1

    goto :goto_1b

    .line 113
    :cond_19
    monitor-exit p0

    return-void

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_17

    throw p1
.end method
