.class public Landroid/os/TransactionTracker;
.super Ljava/lang/Object;
.source "TransactionTracker.java"


# instance fields
.field private mTraces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    invoke-direct {p0}, Landroid/os/TransactionTracker;->resetTraces()V

    #@6
    .line 42
    return-void
.end method

.method private resetTraces()V
    .locals 1

    #@0
    .prologue
    .line 37
    monitor-enter p0

    #@1
    .line 38
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    #@3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@6
    iput-object v0, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 36
    return-void

    #@a
    .line 37
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method


# virtual methods
.method public addTrace()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x1

    #@2
    .line 47
    new-instance v1, Ljava/lang/Throwable;

    #@4
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    #@7
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 48
    .local v0, "trace":Ljava/lang/String;
    monitor-enter p0

    #@c
    .line 49
    :try_start_0
    iget-object v1, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    #@e
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 50
    iget-object v2, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    #@16
    iget-object v1, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    #@18
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/lang/Long;

    #@1e
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@21
    move-result-wide v4

    #@22
    add-long/2addr v4, v6

    #@23
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@26
    move-result-object v1

    #@27
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    :goto_0
    monitor-exit p0

    #@2b
    .line 46
    return-void

    #@2c
    .line 52
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    #@2e
    const-wide/16 v2, 0x1

    #@30
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@33
    move-result-object v2

    #@34
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 48
    :catchall_0
    move-exception v1

    #@39
    monitor-exit p0

    #@3a
    throw v1
.end method

.method public clearTraces()V
    .locals 0

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Landroid/os/TransactionTracker;->resetTraces()V

    #@3
    .line 73
    return-void
.end method

.method public writeTracesToFile(Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 58
    iget-object v3, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    #@2
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 59
    return-void

    #@9
    .line 62
    :cond_0
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    #@b
    new-instance v3, Ljava/io/FileOutputStream;

    #@d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@10
    move-result-object v4

    #@11
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@14
    invoke-direct {v0, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@17
    .line 63
    .local v0, "pw":Ljava/io/PrintWriter;
    monitor-enter p0

    #@18
    .line 64
    :try_start_0
    iget-object v3, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    #@1a
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v2

    #@22
    .local v2, "trace$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Ljava/lang/String;

    #@2e
    .line 65
    .local v1, "trace":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "Count: "

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    iget-object v4, p0, Landroid/os/TransactionTracker;->mTraces:Ljava/util/Map;

    #@3c
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v4, "Trace: "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62
    .line 67
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    goto :goto_0

    #@66
    .line 63
    .end local v1    # "trace":Ljava/lang/String;
    .end local v2    # "trace$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@67
    monitor-exit p0

    #@68
    throw v3

    #@69
    .restart local v2    # "trace$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    #@6a
    .line 70
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    #@6d
    .line 57
    return-void
.end method
