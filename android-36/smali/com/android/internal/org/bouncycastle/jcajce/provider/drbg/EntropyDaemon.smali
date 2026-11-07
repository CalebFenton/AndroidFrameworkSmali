.class Lcom/android/internal/org/bouncycastle/jcajce/provider/drbg/EntropyDaemon;
.super Ljava/lang/Object;
.source "EntropyDaemon.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final blacklist LOG:Ljava/util/logging/Logger;


# instance fields
.field private final blacklist tasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 11
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/drbg/EntropyDaemon;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->tasks:Ljava/util/LinkedList;

    .line 17
    return-void
.end method


# virtual methods
.method blacklist addTask(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 21
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->tasks:Ljava/util/LinkedList;

    monitor-enter v0

    .line 23
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 24
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist test-api run()V
    .registers 5

    .line 29
    nop

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_31

    .line 32
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->tasks:Ljava/util/LinkedList;

    monitor-enter v0

    .line 34
    :try_start_e
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 35
    .local v1, "task":Ljava/lang/Runnable;
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_2e

    .line 37
    if-eqz v1, :cond_1f

    .line 41
    :try_start_19
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    .line 46
    :goto_1c
    goto :goto_2d

    .line 43
    :catchall_1d
    move-exception v0

    goto :goto_1c

    .line 52
    :cond_1f
    const-wide/16 v2, 0x1388

    :try_start_21
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_25

    .line 57
    goto :goto_2d

    .line 54
    :catch_25
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 59
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "task":Ljava/lang/Runnable;
    :goto_2d
    goto :goto_1

    .line 35
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1

    .line 61
    :cond_31
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 63
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/drbg/EntropyDaemon;->LOG:Ljava/util/logging/Logger;

    const-string v1, "entropy thread interrupted - exiting"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 65
    :cond_42
    return-void
.end method
