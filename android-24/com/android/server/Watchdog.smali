.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$HandlerChecker;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;
    }
.end annotation


# static fields
.field static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 66
    const/16 v0, 0xa

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 67
    const-string/jumbo v1, "/system/bin/audioserver"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 68
    const-string/jumbo v1, "/system/bin/cameraserver"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 69
    const-string/jumbo v1, "/system/bin/drmserver"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 70
    const-string/jumbo v1, "/system/bin/mediadrmserver"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 71
    const-string/jumbo v1, "/system/bin/mediaserver"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 72
    const-string/jumbo v1, "/system/bin/sdcard"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 73
    const-string/jumbo v1, "/system/bin/surfaceflinger"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 74
    const-string/jumbo v1, "media.codec"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 75
    const-string/jumbo v1, "media.extractor"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 76
    const-string/jumbo v1, "com.android.bluetooth"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 66
    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    #@44
    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 7

    #@0
    .prologue
    const-wide/32 v4, 0xea60

    #@3
    .line 224
    const-string/jumbo v0, "watchdog"

    #@6
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@9
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    #@10
    .line 89
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    #@13
    .line 232
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    #@15
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    #@18
    move-result-object v2

    #@19
    .line 233
    const-string/jumbo v3, "foreground thread"

    #@1c
    move-object v1, p0

    #@1d
    .line 232
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    #@20
    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    #@22
    .line 234
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    #@24
    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    #@26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    .line 237
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    #@2b
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    #@2d
    new-instance v2, Landroid/os/Handler;

    #@2f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@36
    .line 238
    const-string/jumbo v3, "main thread"

    #@39
    move-object v1, p0

    #@3a
    .line 237
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    #@3d
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@40
    .line 240
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    #@42
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    #@44
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    #@47
    move-result-object v2

    #@48
    .line 241
    const-string/jumbo v3, "ui thread"

    #@4b
    move-object v1, p0

    #@4c
    .line 240
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    #@4f
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@52
    .line 243
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    #@54
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    #@56
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    #@59
    move-result-object v2

    #@5a
    .line 244
    const-string/jumbo v3, "i/o thread"

    #@5d
    move-object v1, p0

    #@5e
    .line 243
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    #@61
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@64
    .line 246
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    #@66
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    #@68
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    #@6b
    move-result-object v2

    #@6c
    .line 247
    const-string/jumbo v3, "display thread"

    #@6f
    move-object v1, p0

    #@70
    .line 246
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    #@73
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@76
    .line 250
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    #@78
    const/4 v1, 0x0

    #@79
    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$BinderThreadMonitor;)V

    #@7c
    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    #@7f
    .line 223
    return-void
.end method

.method private describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 338
    .local p1, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v2, 0x80

    #@4
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 339
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v2

    #@c
    if-ge v1, v2, :cond_1

    #@e
    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@11
    move-result v2

    #@12
    if-lez v2, :cond_0

    #@14
    .line 341
    const-string/jumbo v2, ", "

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 343
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    #@20
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 339
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 345
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    return-object v2
.end method

.method private doSysRq(C)V
    .locals 4
    .param p1, "c"    # C

    #@0
    .prologue
    .line 507
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    #@2
    const-string/jumbo v2, "/proc/sysrq-trigger"

    #@5
    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    #@8
    .line 508
    .local v1, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(I)V

    #@b
    .line 509
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 505
    .end local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    :goto_0
    return-void

    #@f
    .line 510
    :catch_0
    move-exception v0

    #@10
    .line 511
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Watchdog"

    #@13
    const-string/jumbo v3, "Failed to write to /proc/sysrq-trigger"

    #@16
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    goto :goto_0
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 516
    const-string/jumbo v1, "dalvik.vm.stack-trace-file"

    #@4
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 517
    .local v0, "tracesPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 518
    :cond_0
    return-object v2

    #@11
    .line 521
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    #@14
    .line 522
    new-instance v1, Ljava/io/File;

    #@16
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@19
    return-object v1
.end method

.method private evaluateCheckerCompletionLocked()I
    .locals 4

    #@0
    .prologue
    .line 318
    const/4 v2, 0x0

    #@1
    .line 319
    .local v2, "state":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    if-ge v1, v3, :cond_0

    #@a
    .line 320
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    #@12
    .line 321
    .local v0, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    #@15
    move-result v3

    #@16
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@19
    move-result v2

    #@1a
    .line 319
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 323
    .end local v0    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    return v2
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 327
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 328
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    if-ge v2, v3, :cond_1

    #@e
    .line 329
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    #@16
    .line 330
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 331
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f
    .line 328
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 334
    .end local v1    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    #@0
    .prologue
    .line 216
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 217
    new-instance v0, Lcom/android/server/Watchdog;

    #@6
    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    #@9
    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    #@b
    .line 220
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    #@d
    return-object v0
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 2
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    #@0
    .prologue
    .line 283
    monitor-enter p0

    #@1
    .line 284
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 285
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v1, "Monitors can\'t be added once the Watchdog is running"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 283
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0

    #@13
    .line 287
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    #@15
    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 282
    return-void
.end method

.method public addThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "thread"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 292
    const-wide/32 v0, 0xea60

    #@3
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    #@6
    .line 291
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .locals 8
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    #@0
    .prologue
    .line 296
    monitor-enter p0

    #@1
    .line 297
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 298
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v1, "Threads can\'t be added once the Watchdog is running"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 296
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0

    #@13
    .line 300
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 301
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    #@21
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    #@23
    move-object v1, p0

    #@24
    move-object v2, p1

    #@25
    move-wide v4, p2

    #@26
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    #@29
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit p0

    #@2d
    .line 295
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    #@6
    .line 255
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    #@8
    .line 257
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    #@a
    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    #@d
    .line 258
    new-instance v1, Landroid/content/IntentFilter;

    #@f
    const-string/jumbo v2, "android.intent.action.REBOOT"

    #@12
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@15
    .line 259
    const-string/jumbo v2, "android.permission.REBOOT"

    #@18
    const/4 v3, 0x0

    #@19
    .line 257
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1c
    .line 253
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    #@0
    .prologue
    .line 263
    monitor-enter p0

    #@1
    .line 264
    :try_start_0
    const-string/jumbo v0, "com.android.phone"

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 265
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit p0

    #@d
    .line 262
    return-void

    #@e
    .line 263
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 309
    const-string/jumbo v2, "Watchdog"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "Rebooting system because: "

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 310
    const-string/jumbo v2, "power"

    #@1d
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/os/IPowerManager;

    #@23
    .line 312
    .local v1, "pms":Landroid/os/IPowerManager;
    const/4 v2, 0x0

    #@24
    const/4 v3, 0x0

    #@25
    :try_start_0
    invoke-interface {v1, v2, p1, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 308
    :goto_0
    return-void

    #@29
    .line 313
    :catch_0
    move-exception v0

    #@2a
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public run()V
    .locals 31

    #@0
    .prologue
    .line 350
    const/16 v25, 0x0

    #@2
    .line 355
    .local v25, "waitedHalf":Z
    :goto_0
    const/4 v7, 0x0

    #@3
    .line 356
    .local v7, "debuggerWasConnected":I
    monitor-enter p0

    #@4
    .line 357
    const-wide/16 v22, 0x7530

    #@6
    .line 360
    .local v22, "timeout":J
    const/4 v13, 0x0

    #@7
    .local v13, "i":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    #@b
    move-object/from16 v26, v0

    #@d
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v26

    #@11
    move/from16 v0, v26

    #@13
    if-ge v13, v0, :cond_0

    #@15
    .line 361
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    #@19
    move-object/from16 v26, v0

    #@1b
    move-object/from16 v0, v26

    #@1d
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v12

    #@21
    check-cast v12, Lcom/android/server/Watchdog$HandlerChecker;

    #@23
    .line 362
    .local v12, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v12}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    #@26
    .line 360
    add-int/lit8 v13, v13, 0x1

    #@28
    goto :goto_1

    #@29
    .line 373
    .end local v12    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2c
    move-result-wide v20

    #@2d
    .line 374
    .local v20, "start":J
    :goto_2
    const-wide/16 v26, 0x0

    #@2f
    cmp-long v26, v22, v26

    #@31
    if-lez v26, :cond_3

    #@33
    .line 375
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result v26

    #@37
    if-eqz v26, :cond_1

    #@39
    .line 376
    const/4 v7, 0x2

    #@3a
    .line 379
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@3c
    move-wide/from16 v1, v22

    #@3e
    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    .line 383
    :goto_3
    :try_start_2
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    #@44
    move-result v26

    #@45
    if-eqz v26, :cond_2

    #@47
    .line 384
    const/4 v7, 0x2

    #@48
    .line 386
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4b
    move-result-wide v26

    #@4c
    sub-long v26, v26, v20

    #@4e
    const-wide/16 v28, 0x7530

    #@50
    sub-long v22, v28, v26

    #@52
    goto :goto_2

    #@53
    .line 380
    :catch_0
    move-exception v10

    #@54
    .line 381
    .local v10, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v26, "Watchdog"

    #@57
    move-object/from16 v0, v26

    #@59
    invoke-static {v0, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    goto :goto_3

    #@5d
    .line 356
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v20    # "start":J
    :catchall_0
    move-exception v26

    #@5e
    monitor-exit p0

    #@5f
    throw v26

    #@60
    .line 389
    .restart local v20    # "start":J
    :cond_3
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@63
    move-result v24

    #@64
    .line 390
    .local v24, "waitState":I
    if-nez v24, :cond_5

    #@66
    .line 392
    const/16 v25, 0x0

    #@68
    :cond_4
    :goto_4
    monitor-exit p0

    #@69
    goto :goto_0

    #@6a
    .line 394
    :cond_5
    const/16 v26, 0x1

    #@6c
    move/from16 v0, v24

    #@6e
    move/from16 v1, v26

    #@70
    if-eq v0, v1, :cond_4

    #@72
    .line 397
    const/16 v26, 0x2

    #@74
    move/from16 v0, v24

    #@76
    move/from16 v1, v26

    #@78
    if-ne v0, v1, :cond_6

    #@7a
    .line 398
    if-nez v25, :cond_4

    #@7c
    .line 401
    :try_start_4
    new-instance v15, Ljava/util/ArrayList;

    #@7e
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@81
    .line 402
    .local v15, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@84
    move-result v26

    #@85
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@88
    move-result-object v26

    #@89
    move-object/from16 v0, v26

    #@8b
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8e
    .line 404
    sget-object v26, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    #@90
    .line 403
    const/16 v27, 0x1

    #@92
    const/16 v28, 0x0

    #@94
    const/16 v29, 0x0

    #@96
    move/from16 v0, v27

    #@98
    move-object/from16 v1, v28

    #@9a
    move-object/from16 v2, v29

    #@9c
    move-object/from16 v3, v26

    #@9e
    invoke-static {v0, v15, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    #@a1
    .line 405
    const/16 v25, 0x1

    #@a3
    goto :goto_4

    #@a4
    .line 411
    .end local v15    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    #@a7
    move-result-object v5

    #@a8
    .line 412
    .local v5, "blockedCheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    move-object/from16 v0, p0

    #@aa
    invoke-direct {v0, v5}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;

    #@ad
    move-result-object v19

    #@ae
    .line 413
    .local v19, "subject":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b0
    iget-boolean v4, v0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b2
    .local v4, "allowRestart":Z
    monitor-exit p0

    #@b3
    .line 419
    const/16 v26, 0xaf2

    #@b5
    move/from16 v0, v26

    #@b7
    move-object/from16 v1, v19

    #@b9
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@bc
    .line 421
    new-instance v15, Ljava/util/ArrayList;

    #@be
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@c1
    .line 422
    .restart local v15    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@c4
    move-result v26

    #@c5
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c8
    move-result-object v26

    #@c9
    move-object/from16 v0, v26

    #@cb
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ce
    .line 423
    move-object/from16 v0, p0

    #@d0
    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    #@d2
    move/from16 v26, v0

    #@d4
    if-lez v26, :cond_7

    #@d6
    move-object/from16 v0, p0

    #@d8
    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    #@da
    move/from16 v26, v0

    #@dc
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@df
    move-result-object v26

    #@e0
    move-object/from16 v0, v26

    #@e2
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e5
    .line 427
    :cond_7
    if-eqz v25, :cond_8

    #@e7
    const/16 v26, 0x0

    #@e9
    :goto_5
    sget-object v27, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    #@eb
    const/16 v28, 0x0

    #@ed
    const/16 v29, 0x0

    #@ef
    .line 426
    move/from16 v0, v26

    #@f1
    move-object/from16 v1, v28

    #@f3
    move-object/from16 v2, v29

    #@f5
    move-object/from16 v3, v27

    #@f7
    invoke-static {v0, v15, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    #@fa
    move-result-object v17

    #@fb
    .line 431
    .local v17, "stack":Ljava/io/File;
    const-wide/16 v26, 0x7d0

    #@fd
    invoke-static/range {v26 .. v27}, Landroid/os/SystemClock;->sleep(J)V

    #@100
    .line 435
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    #@103
    .line 439
    const/16 v26, 0x77

    #@105
    move-object/from16 v0, p0

    #@107
    move/from16 v1, v26

    #@109
    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    #@10c
    .line 440
    const/16 v26, 0x6c

    #@10e
    move-object/from16 v0, p0

    #@110
    move/from16 v1, v26

    #@112
    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    #@115
    .line 445
    new-instance v8, Lcom/android/server/Watchdog$1;

    #@117
    const-string/jumbo v26, "watchdogWriteToDropbox"

    #@11a
    move-object/from16 v0, p0

    #@11c
    move-object/from16 v1, v26

    #@11e
    move-object/from16 v2, v19

    #@120
    move-object/from16 v3, v17

    #@122
    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    #@125
    .line 452
    .local v8, "dropboxThread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    #@128
    .line 454
    const-wide/16 v26, 0x7d0

    #@12a
    :try_start_5
    move-wide/from16 v0, v26

    #@12c
    invoke-virtual {v8, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    #@12f
    .line 458
    :goto_6
    monitor-enter p0

    #@130
    .line 459
    :try_start_6
    move-object/from16 v0, p0

    #@132
    iget-object v6, v0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@134
    .local v6, "controller":Landroid/app/IActivityController;
    monitor-exit p0

    #@135
    .line 461
    if-eqz v6, :cond_9

    #@137
    .line 462
    const-string/jumbo v26, "Watchdog"

    #@13a
    const-string/jumbo v27, "Reporting stuck state to activity controller"

    #@13d
    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@140
    .line 464
    :try_start_7
    const-string/jumbo v26, "Service dumps disabled due to hung system process."

    #@143
    invoke-static/range {v26 .. v26}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    #@146
    .line 466
    move-object/from16 v0, v19

    #@148
    invoke-interface {v6, v0}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    #@14b
    move-result v16

    #@14c
    .line 467
    .local v16, "res":I
    if-ltz v16, :cond_9

    #@14e
    .line 468
    const-string/jumbo v26, "Watchdog"

    #@151
    const-string/jumbo v27, "Activity controller requested to coninue to wait"

    #@154
    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    #@157
    .line 469
    const/16 v25, 0x0

    #@159
    goto/16 :goto_0

    #@15b
    .line 427
    .end local v6    # "controller":Landroid/app/IActivityController;
    .end local v8    # "dropboxThread":Ljava/lang/Thread;
    .end local v16    # "res":I
    .end local v17    # "stack":Ljava/io/File;
    :cond_8
    const/16 v26, 0x1

    #@15d
    goto :goto_5

    #@15e
    .line 455
    .restart local v8    # "dropboxThread":Ljava/lang/Thread;
    .restart local v17    # "stack":Ljava/io/File;
    :catch_1
    move-exception v14

    #@15f
    .local v14, "ignored":Ljava/lang/InterruptedException;
    goto :goto_6

    #@160
    .line 458
    .end local v14    # "ignored":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v26

    #@161
    monitor-exit p0

    #@162
    throw v26

    #@163
    .line 472
    .restart local v6    # "controller":Landroid/app/IActivityController;
    :catch_2
    move-exception v9

    #@164
    .line 477
    :cond_9
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    #@167
    move-result v26

    #@168
    if-eqz v26, :cond_a

    #@16a
    .line 478
    const/4 v7, 0x2

    #@16b
    .line 480
    :cond_a
    const/16 v26, 0x2

    #@16d
    move/from16 v0, v26

    #@16f
    if-lt v7, v0, :cond_b

    #@171
    .line 481
    const-string/jumbo v26, "Watchdog"

    #@174
    const-string/jumbo v27, "Debugger connected: Watchdog is *not* killing the system process"

    #@177
    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17a
    .line 501
    :goto_7
    const/16 v25, 0x0

    #@17c
    goto/16 :goto_0

    #@17e
    .line 482
    :cond_b
    if-lez v7, :cond_c

    #@180
    .line 483
    const-string/jumbo v26, "Watchdog"

    #@183
    const-string/jumbo v27, "Debugger was connected: Watchdog is *not* killing the system process"

    #@186
    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@189
    goto :goto_7

    #@18a
    .line 484
    :cond_c
    if-nez v4, :cond_d

    #@18c
    .line 485
    const-string/jumbo v26, "Watchdog"

    #@18f
    const-string/jumbo v27, "Restart not allowed: Watchdog is *not* killing the system process"

    #@192
    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@195
    goto :goto_7

    #@196
    .line 487
    :cond_d
    const-string/jumbo v26, "Watchdog"

    #@199
    new-instance v27, Ljava/lang/StringBuilder;

    #@19b
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@19e
    const-string/jumbo v28, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    #@1a1
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v27

    #@1a5
    move-object/from16 v0, v27

    #@1a7
    move-object/from16 v1, v19

    #@1a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v27

    #@1ad
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b0
    move-result-object v27

    #@1b1
    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1b4
    .line 488
    const/4 v13, 0x0

    #@1b5
    :goto_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1b8
    move-result v26

    #@1b9
    move/from16 v0, v26

    #@1bb
    if-ge v13, v0, :cond_f

    #@1bd
    .line 489
    const-string/jumbo v27, "Watchdog"

    #@1c0
    new-instance v28, Ljava/lang/StringBuilder;

    #@1c2
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@1c5
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c8
    move-result-object v26

    #@1c9
    check-cast v26, Lcom/android/server/Watchdog$HandlerChecker;

    #@1cb
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    #@1ce
    move-result-object v26

    #@1cf
    move-object/from16 v0, v28

    #@1d1
    move-object/from16 v1, v26

    #@1d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v26

    #@1d7
    const-string/jumbo v28, " stack trace:"

    #@1da
    move-object/from16 v0, v26

    #@1dc
    move-object/from16 v1, v28

    #@1de
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v26

    #@1e2
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e5
    move-result-object v26

    #@1e6
    move-object/from16 v0, v27

    #@1e8
    move-object/from16 v1, v26

    #@1ea
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1ed
    .line 491
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f0
    move-result-object v26

    #@1f1
    check-cast v26, Lcom/android/server/Watchdog$HandlerChecker;

    #@1f3
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    #@1f6
    move-result-object v26

    #@1f7
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@1fa
    move-result-object v18

    #@1fb
    .line 492
    .local v18, "stackTrace":[Ljava/lang/StackTraceElement;
    const/16 v26, 0x0

    #@1fd
    move-object/from16 v0, v18

    #@1ff
    array-length v0, v0

    #@200
    move/from16 v27, v0

    #@202
    :goto_9
    move/from16 v0, v26

    #@204
    move/from16 v1, v27

    #@206
    if-ge v0, v1, :cond_e

    #@208
    aget-object v11, v18, v26

    #@20a
    .line 493
    .local v11, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v28, "Watchdog"

    #@20d
    new-instance v29, Ljava/lang/StringBuilder;

    #@20f
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@212
    const-string/jumbo v30, "    at "

    #@215
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@218
    move-result-object v29

    #@219
    move-object/from16 v0, v29

    #@21b
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v29

    #@21f
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@222
    move-result-object v29

    #@223
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@226
    .line 492
    add-int/lit8 v26, v26, 0x1

    #@228
    goto :goto_9

    #@229
    .line 488
    .end local v11    # "element":Ljava/lang/StackTraceElement;
    :cond_e
    add-int/lit8 v13, v13, 0x1

    #@22b
    goto :goto_8

    #@22c
    .line 496
    .end local v18    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_f
    const-string/jumbo v26, "Watchdog"

    #@22f
    const-string/jumbo v27, "*** GOODBYE!"

    #@232
    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@235
    .line 497
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@238
    move-result v26

    #@239
    invoke-static/range {v26 .. v26}, Landroid/os/Process;->killProcess(I)V

    #@23c
    .line 498
    const/16 v26, 0xa

    #@23e
    invoke-static/range {v26 .. v26}, Ljava/lang/System;->exit(I)V

    #@241
    goto/16 :goto_7
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 1
    .param p1, "controller"    # Landroid/app/IActivityController;

    #@0
    .prologue
    .line 271
    monitor-enter p0

    #@1
    .line 272
    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 270
    return-void

    #@5
    .line 271
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public setAllowRestart(Z)V
    .locals 1
    .param p1, "allowRestart"    # Z

    #@0
    .prologue
    .line 277
    monitor-enter p0

    #@1
    .line 278
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 276
    return-void

    #@5
    .line 277
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method
