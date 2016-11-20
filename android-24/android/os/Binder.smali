.class public Landroid/os/Binder;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# static fields
.field private static final CHECK_PARCEL_SIZE:Z = false

.field private static final FIND_POTENTIAL_LEAKS:Z = false

.field public static LOG_RUNTIME_EXCEPTION:Z = false

.field static final TAG:Ljava/lang/String; = "Binder"

.field private static sDumpDisabled:Ljava/lang/String;

.field private static sTracingEnabled:Z

.field private static sTransactionTracker:Landroid/os/TransactionTracker;


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private mObject:J

.field private mOwner:Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 74
    sput-boolean v0, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z

    #@4
    .line 79
    sput-object v1, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    #@6
    .line 84
    sput-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    #@8
    .line 92
    sput-boolean v0, Landroid/os/Binder;->sTracingEnabled:Z

    #@a
    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 255
    invoke-direct {p0}, Landroid/os/Binder;->init()V

    #@6
    .line 254
    return-void
.end method

.method public static final native blockUntilThreadAvailable()V
.end method

.method static checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V
    .locals 0
    .param p0, "obj"    # Landroid/os/IBinder;
    .param p1, "code"    # I
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 527
    return-void
.end method

.method public static final native clearCallingIdentity()J
.end method

.method private final native destroy()V
.end method

.method public static disableTracing()V
    .locals 1

    #@0
    .prologue
    .line 109
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/os/Binder;->sTracingEnabled:Z

    #@3
    .line 108
    return-void
.end method

.method public static enableTracing()V
    .locals 1

    #@0
    .prologue
    .line 100
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Landroid/os/Binder;->sTracingEnabled:Z

    #@3
    .line 99
    return-void
.end method

.method private execTransact(IJJI)Z
    .locals 12
    .param p1, "code"    # I
    .param p2, "dataObj"    # J
    .param p4, "replyObj"    # J
    .param p6, "flags"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 556
    invoke-static {p2, p3}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    #@4
    move-result-object v1

    #@5
    .line 557
    .local v1, "data":Landroid/os/Parcel;
    invoke-static/range {p4 .. p5}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    #@8
    move-result-object v5

    #@9
    .line 565
    .local v5, "reply":Landroid/os/Parcel;
    :try_start_0
    move/from16 v0, p6

    #@b
    invoke-virtual {p0, p1, v1, v5, v0}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v6

    #@f
    .line 589
    :goto_0
    const-string/jumbo v7, "Unreasonably large binder reply buffer"

    #@12
    invoke-static {p0, p1, v5, v7}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    #@15
    .line 590
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 598
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    #@1e
    .line 600
    return v6

    #@1f
    .line 581
    :catch_0
    move-exception v3

    #@20
    .line 583
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v7, "Binder"

    #@23
    const-string/jumbo v8, "Caught an OutOfMemoryError from the binder stub implementation."

    #@26
    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    .line 584
    new-instance v4, Ljava/lang/RuntimeException;

    #@2b
    const-string/jumbo v7, "Out of memory"

    #@2e
    invoke-direct {v4, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    .line 585
    .local v4, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v5, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    #@34
    .line 586
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    #@37
    .line 587
    const/4 v6, 0x1

    #@38
    .local v6, "res":Z
    goto :goto_0

    #@39
    .line 566
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    .end local v4    # "re":Ljava/lang/RuntimeException;
    .end local v6    # "res":Z
    :catch_1
    move-exception v2

    #@3a
    .line 567
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v7, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z

    #@3c
    if-eqz v7, :cond_0

    #@3e
    .line 568
    const-string/jumbo v7, "Binder"

    #@41
    const-string/jumbo v8, "Caught a RuntimeException from the binder stub implementation."

    #@44
    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    .line 570
    :cond_0
    and-int/lit8 v7, p6, 0x1

    #@49
    if-eqz v7, :cond_2

    #@4b
    .line 571
    instance-of v7, v2, Landroid/os/RemoteException;

    #@4d
    if-eqz v7, :cond_1

    #@4f
    .line 572
    const-string/jumbo v7, "Binder"

    #@52
    const-string/jumbo v8, "Binder call failed."

    #@55
    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@58
    .line 580
    :goto_1
    const/4 v6, 0x1

    #@59
    .restart local v6    # "res":Z
    goto :goto_0

    #@5a
    .line 574
    .end local v6    # "res":Z
    :cond_1
    const-string/jumbo v7, "Binder"

    #@5d
    const-string/jumbo v8, "Caught a RuntimeException from the binder stub implementation."

    #@60
    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@63
    goto :goto_1

    #@64
    .line 577
    :cond_2
    invoke-virtual {v5, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    #@67
    .line 578
    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    #@6a
    goto :goto_1
.end method

.method public static final native flushPendingCommands()V
.end method

.method public static final native getCallingPid()I
.end method

.method public static final native getCallingUid()I
.end method

.method public static final getCallingUserHandle()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v0

    #@8
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static final native getThreadStrictModePolicy()I
.end method

.method public static declared-synchronized getTransactionTracker()Landroid/os/TransactionTracker;
    .locals 2

    #@0
    .prologue
    const-class v1, Landroid/os/Binder;

    #@2
    monitor-enter v1

    #@3
    .line 127
    :try_start_0
    sget-object v0, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 128
    new-instance v0, Landroid/os/TransactionTracker;

    #@9
    invoke-direct {v0}, Landroid/os/TransactionTracker;-><init>()V

    #@c
    sput-object v0, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    #@e
    .line 129
    :cond_0
    sget-object v0, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private final native init()V
.end method

.method public static final isProxy(Landroid/os/IInterface;)Z
    .locals 1
    .param p0, "iface"    # Landroid/os/IInterface;

    #@0
    .prologue
    .line 241
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public static isTracingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 118
    sget-boolean v0, Landroid/os/Binder;->sTracingEnabled:Z

    #@2
    return v0
.end method

.method public static final native joinThreadPool()V
.end method

.method public static final native restoreCallingIdentity(J)V
.end method

.method public static setDumpDisabled(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 326
    const-class v0, Landroid/os/Binder;

    #@2
    monitor-enter v0

    #@3
    .line 327
    :try_start_0
    sput-object p0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 325
    return-void

    #@7
    .line 326
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public static final native setThreadStrictModePolicy(I)V
.end method


# virtual methods
.method public attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Landroid/os/IInterface;
    .param p2, "descriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 274
    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    #@2
    .line 275
    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    #@4
    .line 273
    return-void
.end method

.method doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 404
    const-class v3, Landroid/os/Binder;

    #@2
    monitor-enter v3

    #@3
    .line 405
    :try_start_0
    sget-object v0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .local v0, "disabled":Ljava/lang/String;
    monitor-exit v3

    #@6
    .line 407
    if-nez v0, :cond_0

    #@8
    .line 409
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@b
    .line 402
    :goto_0
    return-void

    #@c
    .line 404
    .end local v0    # "disabled":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@d
    monitor-exit v3

    #@e
    throw v4

    #@f
    .line 413
    .restart local v0    # "disabled":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@10
    .line 418
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@13
    .line 419
    const-string/jumbo v3, "Exception occurred while dumping:"

    #@16
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 420
    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@1c
    goto :goto_0

    #@1d
    .line 410
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    #@1e
    .line 411
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "Security exception: "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 412
    throw v1

    #@3a
    .line 423
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    sget-object v3, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    #@3c
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f
    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 454
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 393
    new-instance v0, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@5
    .line 394
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@7
    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 396
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Landroid/os/Binder;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 398
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@10
    .line 392
    return-void

    #@11
    .line 397
    :catchall_0
    move-exception v2

    #@12
    .line 398
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@15
    .line 397
    throw v2
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 432
    new-instance v6, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@5
    .line 433
    .local v6, "fout":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    #@7
    invoke-direct {v3, v6}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 434
    .local v3, "pw":Ljava/io/PrintWriter;
    new-instance v0, Landroid/os/Binder$1;

    #@c
    const-string/jumbo v2, "Binder.dumpAsync"

    #@f
    move-object v1, p0

    #@10
    move-object v4, p1

    #@11
    move-object v5, p2

    #@12
    invoke-direct/range {v0 .. v5}, Landroid/os/Binder$1;-><init>(Landroid/os/Binder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@15
    .line 443
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@18
    .line 431
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    :try_start_0
    invoke-direct {p0}, Landroid/os/Binder;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 523
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 519
    return-void

    #@7
    .line 522
    :catchall_0
    move-exception v0

    #@8
    .line 523
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 522
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

    #@0
    .prologue
    .line 300
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 509
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 481
    new-instance v0, Ljava/io/FileOutputStream;

    #@3
    if-eqz p3, :cond_0

    #@5
    .end local p3    # "err":Ljava/io/FileDescriptor;
    :goto_0
    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@8
    .line 482
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@a
    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@d
    .line 483
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "No shell command implementation."

    #@10
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 484
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@16
    .line 485
    const/4 v2, 0x0

    #@17
    invoke-virtual {p5, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@1a
    .line 480
    return-void

    #@1b
    .end local v0    # "fout":Ljava/io/FileOutputStream;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "err":Ljava/io/FileDescriptor;
    :cond_0
    move-object p3, p2

    #@1c
    .line 481
    goto :goto_0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 339
    const v0, 0x5f4e5446

    #@5
    if-ne p1, v0, :cond_0

    #@7
    .line 340
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 341
    return v10

    #@f
    .line 342
    :cond_0
    const v0, 0x5f444d50

    #@12
    if-ne p1, v0, :cond_3

    #@14
    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@17
    move-result-object v7

    #@18
    .line 344
    .local v7, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    .line 345
    .local v4, "args":[Ljava/lang/String;
    if-eqz v7, :cond_1

    #@1e
    .line 347
    :try_start_0
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p0, v0, v4}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 349
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@28
    .line 353
    :cond_1
    if-eqz p3, :cond_2

    #@2a
    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d
    .line 358
    :goto_0
    return v10

    #@2e
    .line 348
    :catchall_0
    move-exception v0

    #@2f
    .line 349
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@32
    .line 348
    throw v0

    #@33
    .line 356
    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    #@36
    goto :goto_0

    #@37
    .line 359
    .end local v4    # "args":[Ljava/lang/String;
    .end local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const v0, 0x5f434d44

    #@3a
    if-ne p1, v0, :cond_9

    #@3c
    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@3f
    move-result-object v8

    #@40
    .line 361
    .local v8, "in":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@43
    move-result-object v9

    #@44
    .line 362
    .local v9, "out":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@47
    move-result-object v6

    #@48
    .line 363
    .local v6, "err":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    .line 364
    .restart local v4    # "args":[Ljava/lang/String;
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@51
    move-result-object v5

    #@52
    check-cast v5, Landroid/os/ResultReceiver;

    #@54
    .line 366
    .local v5, "resultReceiver":Landroid/os/ResultReceiver;
    if-eqz v9, :cond_5

    #@56
    .line 367
    if-eqz v8, :cond_4

    #@58
    :try_start_1
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5b
    move-result-object v1

    #@5c
    .line 368
    :cond_4
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5f
    move-result-object v2

    #@60
    .line 369
    if-eqz v6, :cond_6

    #@62
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@65
    move-result-object v3

    #@66
    :goto_1
    move-object v0, p0

    #@67
    .line 367
    invoke-virtual/range {v0 .. v5}, Landroid/os/Binder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@6a
    .line 373
    :cond_5
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6d
    .line 374
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@70
    .line 375
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@73
    .line 377
    if-eqz p3, :cond_7

    #@75
    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@78
    .line 383
    :goto_2
    return v10

    #@79
    .line 369
    :cond_6
    :try_start_2
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@7c
    move-result-object v3

    #@7d
    goto :goto_1

    #@7e
    .line 380
    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    #@81
    goto :goto_2

    #@82
    .line 372
    :catchall_1
    move-exception v0

    #@83
    .line 373
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@86
    .line 374
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@89
    .line 375
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@8c
    .line 377
    if-eqz p3, :cond_8

    #@8e
    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@91
    .line 372
    :goto_3
    throw v0

    #@92
    .line 380
    :cond_8
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    #@95
    goto :goto_3

    #@96
    .line 385
    .end local v4    # "args":[Ljava/lang/String;
    .end local v5    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local v6    # "err":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "in":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "out":Landroid/os/ParcelFileDescriptor;
    :cond_9
    const/4 v0, 0x0

    #@97
    return v0
.end method

.method public pingBinder()Z
    .locals 1

    #@0
    .prologue
    .line 290
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 310
    iget-object v0, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    #@a
    return-object v0

    #@b
    .line 312
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
.end method

.method public shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 468
    invoke-virtual/range {p0 .. p5}, Landroid/os/Binder;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V

    #@3
    .line 467
    return-void
.end method

.method public final transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 496
    if-eqz p2, :cond_0

    #@3
    .line 497
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@6
    .line 499
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v0

    #@a
    .line 500
    .local v0, "r":Z
    if-eqz p3, :cond_1

    #@c
    .line 501
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@f
    .line 503
    :cond_1
    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 516
    const/4 v0, 0x1

    #@1
    return v0
.end method
