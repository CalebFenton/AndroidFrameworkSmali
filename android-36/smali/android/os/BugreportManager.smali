.class public final Landroid/os/BugreportManager;
.super Ljava/lang/Object;
.source "BugreportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BugreportManager$DumpstateListener;,
        Landroid/os/BugreportManager$BugreportCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BugreportManager"


# instance fields
.field private final blacklist mBinder:Landroid/os/IDumpstate;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/os/BugreportManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/os/BugreportManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/IDumpstate;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binder"    # Landroid/os/IDumpstate;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/os/BugreportManager;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Landroid/os/BugreportManager;->mBinder:Landroid/os/IDumpstate;

    .line 68
    return-void
.end method


# virtual methods
.method public whitelist cancelBugreport()V
    .registers 4

    .line 385
    :try_start_0
    iget-object v0, p0, Landroid/os/BugreportManager;->mBinder:Landroid/os/IDumpstate;

    iget-object v1, p0, Landroid/os/BugreportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v2, v1}, Landroid/os/IDumpstate;->cancelBugreport(ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    .line 388
    nop

    .line 389
    return-void

    .line 386
    :catch_e
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist preDumpUiData()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 192
    :try_start_0
    iget-object v0, p0, Landroid/os/BugreportManager;->mBinder:Landroid/os/IDumpstate;

    iget-object v1, p0, Landroid/os/BugreportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IDumpstate;->preDumpUiData(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 195
    nop

    .line 196
    return-void

    .line 193
    :catch_d
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestBugreport(Landroid/os/BugreportParams;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "params"    # Landroid/os/BugreportParams;
    .param p2, "shareTitle"    # Ljava/lang/CharSequence;
    .param p3, "shareDescription"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 411
    const/4 v0, 0x0

    if-nez p2, :cond_5

    move-object v1, v0

    goto :goto_9

    :cond_5
    :try_start_5
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "title":Ljava/lang/String;
    :goto_9
    if-nez p3, :cond_c

    goto :goto_10

    :cond_c
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "description":Ljava/lang/String;
    :goto_10
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 414
    invoke-virtual {p1}, Landroid/os/BugreportParams;->getMode()I

    move-result v3

    invoke-interface {v2, v1, v0, v3}, Landroid/app/IActivityManager;->requestBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1b} :catch_1d

    .line 417
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    nop

    .line 418
    return-void

    .line 415
    :catch_1d
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist retrieveBugreport(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;)V
    .registers 16
    .param p1, "bugreportFile"    # Ljava/lang/String;
    .param p2, "bugreportFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/os/BugreportManager$BugreportCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 307
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v0, Landroid/os/BugreportManager$DumpstateListener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/BugreportManager$DumpstateListener;-><init>(Landroid/os/BugreportManager;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;ZZ)V

    move-object v10, v0

    .line 312
    .local v10, "dsListener":Landroid/os/BugreportManager$DumpstateListener;
    iget-object v2, p0, Landroid/os/BugreportManager;->mBinder:Landroid/os/IDumpstate;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v0, p0, Landroid/os/BugreportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/os/BugreportManager;->mContext:Landroid/content/Context;

    .line 313
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 314
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 312
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-interface/range {v2 .. v10}, Landroid/os/IDumpstate;->retrieveBugreport(ILjava/lang/String;ILjava/io/FileDescriptor;Ljava/lang/String;ZZLandroid/os/IDumpstateListener;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_3a
    .catchall {:try_start_0 .. :try_end_33} :catchall_38

    .line 322
    .end local v10    # "dsListener":Landroid/os/BugreportManager$DumpstateListener;
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 323
    nop

    .line 324
    return-void

    .line 322
    :catchall_38
    move-exception v0

    goto :goto_40

    .line 319
    :catch_3a
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/BugreportManager;
    .end local p1    # "bugreportFile":Ljava/lang/String;
    .end local p2    # "bugreportFd":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/os/BugreportManager$BugreportCallback;
    throw v2
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_38

    .line 322
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/BugreportManager;
    .restart local p1    # "bugreportFile":Ljava/lang/String;
    .restart local p2    # "bugreportFd":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/os/BugreportManager$BugreportCallback;
    :goto_40
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 323
    throw v0
.end method

.method public whitelist startBugreport(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/BugreportParams;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;)V
    .registers 23
    .param p1, "bugreportFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "screenshotFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "params"    # Landroid/os/BugreportParams;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/os/BugreportManager$BugreportCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 230
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    nop

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/BugreportParams;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    move v5, v1

    goto :goto_1a

    :cond_19
    move v5, v2

    .line 237
    .local v5, "deferConsent":Z
    :goto_1a
    if-nez p2, :cond_21

    if-eqz v5, :cond_1f

    goto :goto_21

    :cond_1f
    move v4, v2

    goto :goto_22

    :cond_21
    :goto_21
    move v4, v1

    :goto_22
    move v14, v4

    .line 238
    .local v14, "isScreenshotRequested":Z
    if-nez p2, :cond_35

    .line 240
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/null"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_32} :catch_94
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_32} :catch_80
    .catchall {:try_start_0 .. :try_end_32} :catchall_7a

    move-object/from16 v16, v0

    .end local p2    # "screenshotFd":Landroid/os/ParcelFileDescriptor;
    .local v0, "screenshotFd":Landroid/os/ParcelFileDescriptor;
    goto :goto_37

    .line 238
    .end local v0    # "screenshotFd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "screenshotFd":Landroid/os/ParcelFileDescriptor;
    :cond_35
    move-object/from16 v16, p2

    .line 244
    .end local p2    # "screenshotFd":Landroid/os/ParcelFileDescriptor;
    .local v16, "screenshotFd":Landroid/os/ParcelFileDescriptor;
    :goto_37
    :try_start_37
    new-instance v13, Landroid/os/BugreportManager$DumpstateListener;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_39} :catch_76
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_39} :catch_72
    .catchall {:try_start_37 .. :try_end_39} :catchall_6e

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v0, v13

    move v4, v14

    .end local v14    # "isScreenshotRequested":Z
    .local v4, "isScreenshotRequested":Z
    :try_start_41
    invoke-direct/range {v0 .. v5}, Landroid/os/BugreportManager$DumpstateListener;-><init>(Landroid/os/BugreportManager;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;ZZ)V

    .line 247
    .end local v4    # "isScreenshotRequested":Z
    .local v13, "dsListener":Landroid/os/BugreportManager$DumpstateListener;
    .restart local v14    # "isScreenshotRequested":Z
    iget-object v6, v1, Landroid/os/BugreportManager;->mBinder:Landroid/os/IDumpstate;

    iget-object v0, v1, Landroid/os/BugreportManager;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    .line 251
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    .line 252
    invoke-virtual/range {p3 .. p3}, Landroid/os/BugreportParams;->getMode()I

    move-result v11

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/BugreportParams;->getFlags()I

    move-result v12

    .line 247
    const/4 v7, -0x1

    const/4 v15, 0x0

    invoke-interface/range {v6 .. v15}, Landroid/os/IDumpstate;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;ZZ)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_61} :catch_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_61} :catch_6a
    .catchall {:try_start_41 .. :try_end_61} :catchall_9e

    .line 263
    .end local v5    # "deferConsent":Z
    .end local v13    # "dsListener":Landroid/os/BugreportManager$DumpstateListener;
    .end local v14    # "isScreenshotRequested":Z
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 264
    if-eqz v16, :cond_93

    .line 265
    :goto_66
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_93

    .line 259
    :catch_6a
    move-exception v0

    goto :goto_85

    .line 257
    :catch_6c
    move-exception v0

    goto :goto_99

    .line 263
    :catchall_6e
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_9f

    .line 259
    :catch_72
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_85

    .line 257
    :catch_76
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_99

    .line 263
    .end local v16    # "screenshotFd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "screenshotFd":Landroid/os/ParcelFileDescriptor;
    :catchall_7a
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v16, p2

    goto :goto_9f

    .line 259
    :catch_80
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v16, p2

    .line 260
    .end local p2    # "screenshotFd":Landroid/os/ParcelFileDescriptor;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "screenshotFd":Landroid/os/ParcelFileDescriptor;
    :goto_85
    :try_start_85
    const-string v2, "BugreportManager"

    const-string v3, "Not able to find /dev/null file: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_9e

    .line 263
    nop

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 264
    if-eqz v16, :cond_93

    .line 265
    goto :goto_66

    .line 268
    :cond_93
    :goto_93
    return-void

    .line 257
    .end local v16    # "screenshotFd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "screenshotFd":Landroid/os/ParcelFileDescriptor;
    :catch_94
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v16, p2

    .line 258
    .end local p2    # "screenshotFd":Landroid/os/ParcelFileDescriptor;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "screenshotFd":Landroid/os/ParcelFileDescriptor;
    :goto_99
    :try_start_99
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v16    # "screenshotFd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Landroid/os/BugreportManager;
    .end local p1    # "bugreportFd":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "params":Landroid/os/BugreportParams;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/os/BugreportManager$BugreportCallback;
    throw v2
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_9e

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v16    # "screenshotFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/os/BugreportManager;
    .restart local p1    # "bugreportFd":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "params":Landroid/os/BugreportParams;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "callback":Landroid/os/BugreportManager$BugreportCallback;
    :catchall_9e
    move-exception v0

    :goto_9f
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 264
    if-eqz v16, :cond_a7

    .line 265
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 267
    :cond_a7
    throw v0
.end method

.method public whitelist startConnectivityBugreport(Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;)V
    .registers 10
    .param p1, "bugreportFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/os/BugreportManager$BugreportCallback;

    .line 361
    new-instance v3, Landroid/os/BugreportParams;

    const/4 v0, 0x4

    invoke-direct {v3, v0}, Landroid/os/BugreportParams;-><init>(I)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "bugreportFd":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/os/BugreportManager$BugreportCallback;
    .local v1, "bugreportFd":Landroid/os/ParcelFileDescriptor;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "callback":Landroid/os/BugreportManager$BugreportCallback;
    invoke-virtual/range {v0 .. v5}, Landroid/os/BugreportManager;->startBugreport(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/BugreportParams;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;)V

    .line 367
    return-void
.end method
