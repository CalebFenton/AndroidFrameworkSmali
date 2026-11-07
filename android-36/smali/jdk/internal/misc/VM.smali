.class public Ljdk/internal/misc/VM;
.super Ljava/lang/Object;
.source "VM.java"


# static fields
.field private static final blacklist JVMTI_THREAD_STATE_ALIVE:I = 0x1

.field private static final blacklist JVMTI_THREAD_STATE_BLOCKED_ON_MONITOR_ENTER:I = 0x400

.field private static final blacklist JVMTI_THREAD_STATE_RUNNABLE:I = 0x4

.field private static final blacklist JVMTI_THREAD_STATE_TERMINATED:I = 0x2

.field private static final blacklist JVMTI_THREAD_STATE_WAITING_INDEFINITELY:I = 0x10

.field private static final blacklist JVMTI_THREAD_STATE_WAITING_WITH_TIMEOUT:I = 0x20

.field public static final blacklist STATE_GREEN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist STATE_RED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist STATE_YELLOW:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static blacklist allowArraySyntax:Z

.field private static volatile blacklist booted:Z

.field private static blacklist defaultAllowArraySyntax:Z

.field private static blacklist directMemory:J

.field private static volatile blacklist finalRefCount:I

.field private static final blacklist lock:Ljava/lang/Object;

.field private static blacklist pageAlignDirectMemory:Z

.field private static volatile blacklist peakFinalRefCount:I

.field private static final blacklist savedProps:Ljava/util/Properties;

.field private static blacklist suspended:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Ljdk/internal/misc/VM;->suspended:Z

    .line 153
    sput-boolean v0, Ljdk/internal/misc/VM;->booted:Z

    .line 154
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Ljdk/internal/misc/VM;->lock:Ljava/lang/Object;

    .line 191
    const-wide/32 v1, 0x4000000

    sput-wide v1, Ljdk/internal/misc/VM;->directMemory:J

    .line 221
    sput-boolean v0, Ljdk/internal/misc/VM;->defaultAllowArraySyntax:Z

    .line 222
    sget-boolean v1, Ljdk/internal/misc/VM;->defaultAllowArraySyntax:Z

    sput-boolean v1, Ljdk/internal/misc/VM;->allowArraySyntax:Z

    .line 271
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Ljdk/internal/misc/VM;->savedProps:Ljava/util/Properties;

    .line 338
    sput v0, Ljdk/internal/misc/VM;->finalRefCount:I

    .line 341
    sput v0, Ljdk/internal/misc/VM;->peakFinalRefCount:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addFinalRefCount(I)V
    .registers 3
    .param p0, "n"    # I

    .line 370
    sget v0, Ljdk/internal/misc/VM;->finalRefCount:I

    add-int/2addr v0, p0

    sput v0, Ljdk/internal/misc/VM;->finalRefCount:I

    .line 371
    sget v0, Ljdk/internal/misc/VM;->finalRefCount:I

    sget v1, Ljdk/internal/misc/VM;->peakFinalRefCount:I

    if-le v0, v1, :cond_f

    .line 372
    sget v0, Ljdk/internal/misc/VM;->finalRefCount:I

    sput v0, Ljdk/internal/misc/VM;->peakFinalRefCount:I

    .line 374
    :cond_f
    return-void
.end method

.method public static blacklist allowArraySyntax()Z
    .registers 1

    .line 235
    sget-boolean v0, Ljdk/internal/misc/VM;->allowArraySyntax:Z

    return v0
.end method

.method public static blacklist allowThreadSuspension(Ljava/lang/ThreadGroup;Z)Z
    .registers 3
    .param p0, "g"    # Ljava/lang/ThreadGroup;
    .param p1, "b"    # Z

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/ThreadGroup;->allowThreadSuspension(Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist asChange(II)V
    .registers 2
    .param p0, "as_old"    # I
    .param p1, "as_new"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    return-void
.end method

.method public static blacklist asChange_otherthread(II)V
    .registers 2
    .param p0, "as_old"    # I
    .param p1, "as_new"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    return-void
.end method

.method public static blacklist awaitBooted()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 176
    sget-object v0, Ljdk/internal/misc/VM;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :goto_3
    :try_start_3
    sget-boolean v1, Ljdk/internal/misc/VM;->booted:Z

    if-nez v1, :cond_d

    .line 178
    sget-object v1, Ljdk/internal/misc/VM;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 180
    :cond_d
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public static blacklist booted()V
    .registers 2

    .line 162
    sget-object v0, Ljdk/internal/misc/VM;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Ljdk/internal/misc/VM;->booted:Z

    .line 164
    sget-object v1, Ljdk/internal/misc/VM;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static blacklist getFinalRefCount()I
    .registers 1

    .line 349
    sget v0, Ljdk/internal/misc/VM;->finalRefCount:I

    return v0
.end method

.method public static native blacklist getNanoTimeAdjustment(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static blacklist getPeakFinalRefCount()I
    .registers 1

    .line 358
    sget v0, Ljdk/internal/misc/VM;->peakFinalRefCount:I

    return v0
.end method

.method public static blacklist getSavedProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 265
    sget-object v0, Ljdk/internal/misc/VM;->savedProps:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist getState()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist initializeOSEnvironment()V
    .registers 0

    .line 335
    return-void
.end method

.method public static blacklist isBooted()Z
    .registers 1

    .line 169
    sget-boolean v0, Ljdk/internal/misc/VM;->booted:Z

    return v0
.end method

.method public static blacklist isDirectMemoryPageAligned()Z
    .registers 1

    .line 209
    sget-boolean v0, Ljdk/internal/misc/VM;->pageAlignDirectMemory:Z

    return v0
.end method

.method public static blacklist maxDirectMemory()J
    .registers 2

    .line 198
    sget-wide v0, Ljdk/internal/misc/VM;->directMemory:J

    return-wide v0
.end method

.method public static blacklist saveAndRemoveProperties(Ljava/util/Properties;)V
    .registers 6
    .param p0, "props"    # Ljava/util/Properties;

    .line 278
    sget-boolean v0, Ljdk/internal/misc/VM;->booted:Z

    if-nez v0, :cond_6c

    .line 281
    sget-object v0, Ljdk/internal/misc/VM;->savedProps:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 288
    const-string v0, "sun.nio.MaxDirectMemorySize"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 290
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 292
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    sput-wide v1, Ljdk/internal/misc/VM;->directMemory:J

    goto :goto_32

    .line 294
    :cond_26
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 295
    .local v1, "l":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_32

    .line 296
    sput-wide v1, Ljdk/internal/misc/VM;->directMemory:J

    .line 301
    .end local v1    # "l":J
    :cond_32
    :goto_32
    const-string v1, "sun.nio.PageAlignDirectMemory"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 302
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 303
    const/4 v1, 0x1

    sput-boolean v1, Ljdk/internal/misc/VM;->pageAlignDirectMemory:Z

    .line 308
    :cond_46
    const-string v1, "sun.lang.ClassLoader.allowArraySyntax"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    if-nez v0, :cond_51

    .line 310
    sget-boolean v1, Ljdk/internal/misc/VM;->defaultAllowArraySyntax:Z

    goto :goto_55

    .line 311
    :cond_51
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_55
    sput-boolean v1, Ljdk/internal/misc/VM;->allowArraySyntax:Z

    .line 315
    const-string v1, "java.lang.Integer.IntegerCache.high"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v1, "sun.zip.disableMemoryMapping"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v1, "sun.java.launcher.diag"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v1, "sun.cds.enableSharedLookupCache"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-void

    .line 279
    .end local v0    # "s":Ljava/lang/String;
    :cond_6c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System initialization has completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist suspendThreads()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Ljdk/internal/misc/VM;->suspended:Z

    .line 62
    return v0
.end method

.method public static blacklist threadsSuspended()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    sget-boolean v0, Ljdk/internal/misc/VM;->suspended:Z

    return v0
.end method

.method public static blacklist toThreadState(I)Ljava/lang/Thread$State;
    .registers 2
    .param p0, "threadStatus"    # I

    .line 380
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_7

    .line 381
    sget-object v0, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    return-object v0

    .line 382
    :cond_7
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_e

    .line 383
    sget-object v0, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    return-object v0

    .line 384
    :cond_e
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_15

    .line 385
    sget-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    return-object v0

    .line 386
    :cond_15
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_1c

    .line 387
    sget-object v0, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    return-object v0

    .line 388
    :cond_1c
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_23

    .line 389
    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    return-object v0

    .line 390
    :cond_23
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_2a

    .line 391
    sget-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    return-object v0

    .line 393
    :cond_2a
    sget-object v0, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    return-object v0
.end method

.method public static blacklist unsuspendSomeThreads()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    return-void
.end method

.method public static blacklist unsuspendThreads()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Ljdk/internal/misc/VM;->suspended:Z

    .line 70
    return-void
.end method
