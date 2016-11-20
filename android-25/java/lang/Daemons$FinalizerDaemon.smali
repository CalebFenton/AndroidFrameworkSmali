.class Ljava/lang/Daemons$FinalizerDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinalizerDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;


# instance fields
.field private finalizingObject:Ljava/lang/Object;

.field private final progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Daemons$FinalizerDaemon;
    .locals 1

    #@0
    sget-object v0, Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 166
    new-instance v0, Ljava/lang/Daemons$FinalizerDaemon;

    #@2
    invoke-direct {v0}, Ljava/lang/Daemons$FinalizerDaemon;-><init>()V

    #@5
    sput-object v0, Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;

    #@7
    .line 165
    return-void
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 173
    const-string/jumbo v0, "FinalizerDaemon"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    #@6
    .line 167
    sget-object v0, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    #@8
    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    #@a
    .line 168
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@10
    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    #@12
    .line 170
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    #@15
    .line 172
    return-void
.end method

.method private doFinalize(Ljava/lang/ref/FinalizerReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/FinalizerReference",
            "<*>;)V"
        }
    .end annotation

    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "FI_EXPLICIT_INVOCATION"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "reference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    const/4 v3, 0x0

    #@1
    .line 218
    invoke-static {p1}, Ljava/lang/ref/FinalizerReference;->remove(Ljava/lang/ref/FinalizerReference;)V

    #@4
    .line 219
    invoke-virtual {p1}, Ljava/lang/ref/FinalizerReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    .line 220
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/ref/FinalizerReference;->clear()V

    #@b
    .line 222
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 228
    :goto_0
    iput-object v3, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    #@10
    .line 217
    return-void

    #@11
    .line 223
    :catch_0
    move-exception v0

    #@12
    .line 225
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v2, "Uncaught exception thrown by finalizer"

    #@15
    invoke-static {v2, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    goto :goto_0

    #@19
    .line 226
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    #@1a
    .line 228
    iput-object v3, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    #@1c
    .line 226
    throw v2
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 189
    iget-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v3

    #@6
    .line 191
    .local v3, "localProgressCounter":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerDaemon;->isRunning()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 195
    :try_start_0
    iget-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    #@e
    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/ref/FinalizerReference;

    #@14
    .line 196
    .local v0, "finalizingReference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    if-eqz v0, :cond_0

    #@16
    .line 197
    invoke-virtual {v0}, Ljava/lang/ref/FinalizerReference;->get()Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    iput-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    #@1c
    .line 198
    iget-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1e
    add-int/lit8 v3, v3, 0x1

    #@20
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    #@23
    .line 209
    :goto_1
    invoke-direct {p0, v0}, Ljava/lang/Daemons$FinalizerDaemon;->doFinalize(Ljava/lang/ref/FinalizerReference;)V

    #@26
    goto :goto_0

    #@27
    .line 210
    .end local v0    # "finalizingReference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    :catch_0
    move-exception v1

    #@28
    .local v1, "ignored":Ljava/lang/InterruptedException;
    goto :goto_0

    #@29
    .line 200
    .end local v1    # "ignored":Ljava/lang/InterruptedException;
    .restart local v0    # "finalizingReference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    :cond_0
    const/4 v4, 0x0

    #@2a
    iput-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    #@2c
    .line 201
    iget-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2e
    add-int/lit8 v3, v3, 0x1

    #@30
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    #@33
    .line 203
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-get0()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    #@36
    move-result-object v4

    #@37
    invoke-static {v4}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-wrap0(Ljava/lang/Daemons$FinalizerWatchdogDaemon;)V

    #@3a
    .line 204
    iget-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    #@3c
    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    #@3f
    move-result-object v0

    #@40
    .end local v0    # "finalizingReference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    check-cast v0, Ljava/lang/ref/FinalizerReference;

    #@42
    .line 205
    .restart local v0    # "finalizingReference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    invoke-virtual {v0}, Ljava/lang/ref/FinalizerReference;->get()Ljava/lang/Object;

    #@45
    move-result-object v4

    #@46
    iput-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    #@48
    .line 206
    iget-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4a
    add-int/lit8 v3, v3, 0x1

    #@4c
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@4f
    .line 207
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-get0()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    #@52
    move-result-object v4

    #@53
    invoke-static {v4}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-wrap1(Ljava/lang/Daemons$FinalizerWatchdogDaemon;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    #@56
    goto :goto_1

    #@57
    .line 211
    .end local v0    # "finalizingReference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    :catch_1
    move-exception v2

    #@58
    .local v2, "ignored":Ljava/lang/OutOfMemoryError;
    goto :goto_0

    #@59
    .line 176
    .end local v2    # "ignored":Ljava/lang/OutOfMemoryError;
    :cond_1
    return-void
.end method
