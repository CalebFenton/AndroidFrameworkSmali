.class public Landroid/os/TransactionTracker;
.super Ljava/lang/Object;
.source "TransactionTracker.java"


# instance fields
.field private greylist-max-o mTraces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0}, Landroid/os/TransactionTracker;->resetTraces()V

    .line 44
    return-void
.end method

.method private greylist-max-o resetTraces()V
    .registers 2

    .line 37
    monitor-enter p0

    .line 38
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 39
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method


# virtual methods
.method public greylist-max-o addTrace(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 47
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "trace":Ljava/lang/String;
    monitor-enter p0

    .line 49
    :try_start_5
    iget-object v1, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_26

    .line 50
    iget-object v1, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    iget-object v4, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 52
    :cond_26
    iget-object v1, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :goto_2f
    monitor-exit p0

    .line 55
    return-void

    .line 54
    :catchall_31
    move-exception v1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public greylist-max-o clearTraces()V
    .registers 1

    .line 74
    invoke-direct {p0}, Landroid/os/TransactionTracker;->resetTraces()V

    .line 75
    return-void
.end method

.method public greylist-max-o writeTracesToFile(Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 58
    iget-object v0, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 59
    return-void

    .line 62
    :cond_9
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 63
    .local v0, "pw":Ljava/io/PrintWriter;
    monitor-enter p0

    .line 64
    :try_start_18
    iget-object v1, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    .local v2, "trace":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 68
    .end local v2    # "trace":Ljava/lang/String;
    goto :goto_22

    .line 69
    :cond_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_18 .. :try_end_65} :catchall_69

    .line 70
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 71
    return-void

    .line 69
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v1
.end method
