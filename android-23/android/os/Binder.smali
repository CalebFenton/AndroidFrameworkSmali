.class public Landroid/os/Binder;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# static fields
.field private static final CHECK_PARCEL_SIZE:Z = false

.field private static final FIND_POTENTIAL_LEAKS:Z = false

.field static final TAG:Ljava/lang/String; = "Binder"

.field private static sDumpDisabled:Ljava/lang/String;


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private mObject:J

.field private mOwner:Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 75
    const/4 v0, 0x0

    #@1
    sput-object v0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    #@3
    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 200
    invoke-direct {p0}, Landroid/os/Binder;->init()V

    #@6
    .line 199
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
    .line 415
    return-void
.end method

.method public static final native clearCallingIdentity()J
.end method

.method private final native destroy()V
.end method

.method private execTransact(IJJI)Z
    .locals 12
    .param p1, "code"    # I
    .param p2, "dataObj"    # J
    .param p4, "replyObj"    # J
    .param p6, "flags"    # I

    #@0
    .prologue
    .line 444
    invoke-static {p2, p3}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 445
    .local v1, "data":Landroid/os/Parcel;
    invoke-static/range {p4 .. p5}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    #@7
    move-result-object v6

    #@8
    .line 453
    .local v6, "reply":Landroid/os/Parcel;
    :try_start_0
    move/from16 v0, p6

    #@a
    invoke-virtual {p0, p1, v1, v6, v0}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v7

    #@e
    .line 478
    :goto_0
    const-string/jumbo v8, "Unreasonably large binder reply buffer"

    #@11
    invoke-static {p0, p1, v6, v8}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    #@14
    .line 479
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    #@17
    .line 480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 487
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    #@1d
    .line 489
    return v7

    #@1e
    .line 470
    :catch_0
    move-exception v3

    #@1f
    .line 472
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v8, "Binder"

    #@22
    const-string/jumbo v9, "Caught an OutOfMemoryError from the binder stub implementation."

    #@25
    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    .line 473
    new-instance v5, Ljava/lang/RuntimeException;

    #@2a
    const-string/jumbo v8, "Out of memory"

    #@2d
    invoke-direct {v5, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@30
    .line 474
    .local v5, "re":Ljava/lang/RuntimeException;
    const/4 v8, 0x0

    #@31
    invoke-virtual {v6, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    #@34
    .line 475
    invoke-virtual {v6, v5}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    #@37
    .line 476
    const/4 v7, 0x1

    #@38
    .local v7, "res":Z
    goto :goto_0

    #@39
    .line 462
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    .end local v5    # "re":Ljava/lang/RuntimeException;
    .end local v7    # "res":Z
    :catch_1
    move-exception v4

    #@3a
    .line 463
    .local v4, "e":Ljava/lang/RuntimeException;
    and-int/lit8 v8, p6, 0x1

    #@3c
    if-eqz v8, :cond_0

    #@3e
    .line 464
    const-string/jumbo v8, "Binder"

    #@41
    const-string/jumbo v9, "Caught a RuntimeException from the binder stub implementation."

    #@44
    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    .line 469
    :goto_1
    const/4 v7, 0x1

    #@48
    .restart local v7    # "res":Z
    goto :goto_0

    #@49
    .line 466
    .end local v7    # "res":Z
    :cond_0
    const/4 v8, 0x0

    #@4a
    invoke-virtual {v6, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    #@4d
    .line 467
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    #@50
    goto :goto_1

    #@51
    .line 454
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    #@52
    .line 455
    .local v2, "e":Landroid/os/RemoteException;
    and-int/lit8 v8, p6, 0x1

    #@54
    if-eqz v8, :cond_1

    #@56
    .line 456
    const-string/jumbo v8, "Binder"

    #@59
    const-string/jumbo v9, "Binder call failed."

    #@5c
    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5f
    .line 461
    :goto_2
    const/4 v7, 0x1

    #@60
    .restart local v7    # "res":Z
    goto :goto_0

    #@61
    .line 458
    .end local v7    # "res":Z
    :cond_1
    const/4 v8, 0x0

    #@62
    invoke-virtual {v6, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    #@65
    .line 459
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    #@68
    goto :goto_2
.end method

.method public static final native flushPendingCommands()V
.end method

.method public static final native getCallingPid()I
.end method

.method public static final native getCallingUid()I
.end method

.method public static final getCallingUserHandle()Landroid/os/UserHandle;
    .locals 2

    #@0
    .prologue
    .line 109
    new-instance v0, Landroid/os/UserHandle;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@9
    move-result v1

    #@a
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@d
    return-object v0
.end method

.method public static final native getThreadStrictModePolicy()I
.end method

.method private final native init()V
.end method

.method public static final isProxy(Landroid/os/IInterface;)Z
    .locals 1
    .param p0, "iface"    # Landroid/os/IInterface;

    #@0
    .prologue
    .line 186
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

.method public static final native joinThreadPool()V
.end method

.method public static final native restoreCallingIdentity(J)V
.end method

.method public static setDumpDisabled(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 271
    const-class v0, Landroid/os/Binder;

    #@2
    monitor-enter v0

    #@3
    .line 272
    :try_start_0
    sput-object p0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 270
    return-void

    #@7
    .line 271
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
    .line 219
    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    #@2
    .line 220
    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    #@4
    .line 218
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 374
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 317
    new-instance v3, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@5
    .line 318
    .local v3, "fout":Ljava/io/FileOutputStream;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    #@7
    invoke-direct {v4, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 321
    .local v4, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-class v5, Landroid/os/Binder;

    #@c
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    .line 322
    :try_start_1
    sget-object v0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    .local v0, "disabled":Ljava/lang/String;
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@10
    .line 324
    if-nez v0, :cond_0

    #@12
    .line 326
    :try_start_3
    invoke-virtual {p0, p1, v4, p2}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@15
    .line 343
    :goto_0
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    #@18
    .line 316
    return-void

    #@19
    .line 321
    .end local v0    # "disabled":Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@1a
    :try_start_4
    monitor-exit v5

    #@1b
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1c
    .line 342
    :catchall_1
    move-exception v5

    #@1d
    .line 343
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    #@20
    .line 342
    throw v5

    #@21
    .line 330
    .restart local v0    # "disabled":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@22
    .line 335
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    #@25
    .line 336
    const-string/jumbo v5, "Exception occurred while dumping:"

    #@28
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b
    .line 337
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@2e
    goto :goto_0

    #@2f
    .line 327
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    #@30
    .line 328
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v6, "Security exception: "

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 329
    throw v1

    #@4c
    .line 340
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    sget-object v5, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    #@4e
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@51
    goto :goto_0
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 352
    new-instance v6, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@5
    .line 353
    .local v6, "fout":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    #@7
    invoke-direct {v3, v6}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 354
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
    .line 363
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@18
    .line 351
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
    .line 409
    :try_start_0
    invoke-direct {p0}, Landroid/os/Binder;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 411
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 407
    return-void

    #@7
    .line 410
    :catchall_0
    move-exception v0

    #@8
    .line 411
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 410
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

    #@0
    .prologue
    .line 245
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
    .line 397
    return-void
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v4, 0x1

    #@1
    .line 284
    const v3, 0x5f4e5446

    #@4
    if-ne p1, v3, :cond_0

    #@6
    .line 285
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 286
    return v4

    #@e
    .line 287
    :cond_0
    const v3, 0x5f444d50

    #@11
    if-ne p1, v3, :cond_3

    #@13
    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@16
    move-result-object v2

    #@17
    .line 289
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 290
    .local v0, "args":[Ljava/lang/String;
    if-eqz v2, :cond_1

    #@1d
    .line 292
    :try_start_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {p0, v3, v0}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 295
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@27
    .line 302
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    #@29
    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 307
    :goto_1
    return v4

    #@2d
    .line 296
    :catch_0
    move-exception v1

    #@2e
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@2f
    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@30
    .line 295
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@33
    .line 293
    :goto_2
    throw v3

    #@34
    .line 296
    :catch_1
    move-exception v1

    #@35
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    #@36
    .line 305
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    #@39
    goto :goto_1

    #@3a
    .line 309
    .end local v0    # "args":[Ljava/lang/String;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v3, 0x0

    #@3b
    return v3
.end method

.method public pingBinder()Z
    .locals 1

    #@0
    .prologue
    .line 235
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 255
    iget-object v0, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    #@a
    return-object v0

    #@b
    .line 257
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
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
    .line 384
    if-eqz p2, :cond_0

    #@3
    .line 385
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@6
    .line 387
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v0

    #@a
    .line 388
    .local v0, "r":Z
    if-eqz p3, :cond_1

    #@c
    .line 389
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@f
    .line 391
    :cond_1
    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 404
    const/4 v0, 0x1

    #@1
    return v0
.end method
