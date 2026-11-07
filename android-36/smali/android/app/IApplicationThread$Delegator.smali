.class public Landroid/app/IApplicationThread$Delegator;
.super Landroid/app/IApplicationThread$Stub;
.source "IApplicationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegator"
.end annotation


# instance fields
.field blacklist mImpl:Landroid/app/IApplicationThread;


# direct methods
.method public constructor blacklist <init>(Landroid/app/IApplicationThread;)V
    .registers 2
    .param p1, "impl"    # Landroid/app/IApplicationThread;

    .line 222
    invoke-direct {p0}, Landroid/app/IApplicationThread$Stub;-><init>()V

    .line 223
    iput-object p1, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    .line 224
    return-void
.end method


# virtual methods
.method public blacklist attachAgent(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->attachAgent(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public blacklist attachStartupAgents(Ljava/lang/String;)V
    .registers 3
    .param p1, "dataDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->attachStartupAgents(Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public blacklist bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[J[JLandroid/os/SharedMemory;Ljava/io/FileDescriptor;JJ)V
    .registers 65
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "sdkSandboxClientAppVolumeUuid"    # Ljava/lang/String;
    .param p4, "sdkSandboxClientAppPackage"    # Ljava/lang/String;
    .param p5, "isSdkInSandbox"    # Z
    .param p6, "providerList"    # Landroid/content/pm/ProviderInfoList;
    .param p7, "testName"    # Landroid/content/ComponentName;
    .param p8, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p9, "testArguments"    # Landroid/os/Bundle;
    .param p10, "testWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p11, "uiAutomationConnection"    # Landroid/app/IUiAutomationConnection;
    .param p12, "debugMode"    # I
    .param p13, "enableBinderTracking"    # Z
    .param p14, "trackAllocation"    # Z
    .param p15, "restrictedBackupMode"    # Z
    .param p16, "persistent"    # Z
    .param p17, "config"    # Landroid/content/res/Configuration;
    .param p18, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p19, "services"    # Ljava/util/Map;
    .param p20, "coreSettings"    # Landroid/os/Bundle;
    .param p21, "buildSerial"    # Ljava/lang/String;
    .param p22, "autofillOptions"    # Landroid/content/AutofillOptions;
    .param p23, "contentCaptureOptions"    # Landroid/content/ContentCaptureOptions;
    .param p24, "disabledCompatChanges"    # [J
    .param p25, "loggableCompatChanges"    # [J
    .param p26, "serializedSystemFontMap"    # Landroid/os/SharedMemory;
    .param p27, "applicationSharedMemoryFd"    # Ljava/io/FileDescriptor;
    .param p28, "startRequestedElapsedTime"    # J
    .param p30, "startRequestedUptime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-wide/from16 v29, p28

    move-wide/from16 v31, p30

    invoke-interface/range {v1 .. v32}, Landroid/app/IApplicationThread;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[J[JLandroid/os/SharedMemory;Ljava/io/FileDescriptor;JJ)V

    .line 244
    return-void
.end method

.method public blacklist clearDnsCache()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->clearDnsCache()V

    .line 332
    return-void
.end method

.method public blacklist dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .registers 4
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public blacklist dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public blacklist dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public blacklist dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public blacklist dumpHeap(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 16
    .param p1, "managed"    # Z
    .param p2, "mallocInfo"    # Z
    .param p3, "runGc"    # Z
    .param p4, "dumpBitmaps"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p7, "finishCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "managed":Z
    .end local p2    # "mallocInfo":Z
    .end local p3    # "runGc":Z
    .end local p4    # "dumpBitmaps":Ljava/lang/String;
    .end local p5    # "path":Ljava/lang/String;
    .end local p6    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p7    # "finishCallback":Landroid/os/RemoteCallback;
    .local v1, "managed":Z
    .local v2, "mallocInfo":Z
    .local v3, "runGc":Z
    .local v4, "dumpBitmaps":Ljava/lang/String;
    .local v5, "path":Ljava/lang/String;
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    .local v7, "finishCallback":Landroid/os/RemoteCallback;
    invoke-interface/range {v0 .. v7}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 320
    return-void
.end method

.method public blacklist dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZZ[Ljava/lang/String;)V
    .registers 20
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z
    .param p8, "dumpAllocatorLogs"    # Z
    .param p9, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZZ[Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public blacklist dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z
    .param p7, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "mem":Landroid/os/Debug$MemoryInfo;
    .end local p3    # "dumpInfo":Z
    .end local p4    # "dumpDalvik":Z
    .end local p5    # "dumpSummaryOnly":Z
    .end local p6    # "dumpUnreachable":Z
    .end local p7    # "args":[Ljava/lang/String;
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    .local v2, "mem":Landroid/os/Debug$MemoryInfo;
    .local v3, "dumpInfo":Z
    .local v4, "dumpDalvik":Z
    .local v5, "dumpSummaryOnly":Z
    .local v6, "dumpUnreachable":Z
    .local v7, "args":[Ljava/lang/String;
    invoke-interface/range {v0 .. v7}, Landroid/app/IApplicationThread;->dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public blacklist dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IApplicationThread;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public blacklist dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "finishCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 328
    return-void
.end method

.method public blacklist dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public blacklist getExecutableMethodFileOffsets(Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V
    .registers 4
    .param p1, "methodDescriptor"    # Landroid/os/instrumentation/MethodDescriptor;
    .param p2, "resultCallback"    # Landroid/os/instrumentation/IOffsetCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->getExecutableMethodFileOffsets(Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V

    .line 480
    return-void
.end method

.method public blacklist handleTrustStorageUpdate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V

    .line 420
    return-void
.end method

.method public blacklist instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V
    .registers 12
    .param p1, "instrumentationName"    # Landroid/content/ComponentName;
    .param p2, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p3, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p4, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p5, "targetInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "instrumentationName":Landroid/content/ComponentName;
    .end local p2    # "instrumentationArgs":Landroid/os/Bundle;
    .end local p3    # "instrumentationWatcher":Landroid/app/IInstrumentationWatcher;
    .end local p4    # "instrumentationUiConnection":Landroid/app/IUiAutomationConnection;
    .end local p5    # "targetInfo":Landroid/content/pm/ApplicationInfo;
    .local v1, "instrumentationName":Landroid/content/ComponentName;
    .local v2, "instrumentationArgs":Landroid/os/Bundle;
    .local v3, "instrumentationWatcher":Landroid/app/IInstrumentationWatcher;
    .local v4, "instrumentationUiConnection":Landroid/app/IUiAutomationConnection;
    .local v5, "targetInfo":Landroid/content/pm/ApplicationInfo;
    invoke-interface/range {v0 .. v5}, Landroid/app/IApplicationThread;->instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V

    .line 460
    return-void
.end method

.method public blacklist notifyCleartextNetwork([B)V
    .registers 3
    .param p1, "firstPacket"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V

    .line 404
    return-void
.end method

.method public blacklist notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "holder"    # Landroid/app/ContentProviderHolder;
    .param p2, "authorities"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "published"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IApplicationThread;->notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V

    .line 456
    return-void
.end method

.method public blacklist performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 12
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "actionId"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;
    .param p4, "cancellationCallback"    # Landroid/os/RemoteCallback;
    .param p5, "resultCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "actionId":Ljava/lang/String;
    .end local p3    # "arguments":Landroid/os/Bundle;
    .end local p4    # "cancellationCallback":Landroid/os/RemoteCallback;
    .end local p5    # "resultCallback":Landroid/os/RemoteCallback;
    .local v1, "activityToken":Landroid/os/IBinder;
    .local v2, "actionId":Ljava/lang/String;
    .local v3, "arguments":Landroid/os/Bundle;
    .local v4, "cancellationCallback":Landroid/os/RemoteCallback;
    .local v5, "resultCallback":Landroid/os/RemoteCallback;
    invoke-interface/range {v0 .. v5}, Landroid/app/IApplicationThread;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 452
    return-void
.end method

.method public blacklist processInBackground()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->processInBackground()V

    .line 264
    return-void
.end method

.method public blacklist profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .registers 5
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 288
    return-void
.end method

.method public blacklist requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V
    .registers 12
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I
    .param p4, "sessionId"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "requestToken":Landroid/os/IBinder;
    .end local p3    # "requestType":I
    .end local p4    # "sessionId":I
    .end local p5    # "flags":I
    .local v1, "activityToken":Landroid/os/IBinder;
    .local v2, "requestToken":Landroid/os/IBinder;
    .local v3, "requestType":I
    .local v4, "sessionId":I
    .local v5, "flags":I
    invoke-interface/range {v0 .. v5}, Landroid/app/IApplicationThread;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 380
    return-void
.end method

.method public blacklist requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "intractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "cancellationCallback"    # Landroid/os/RemoteCallback;
    .param p4, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IApplicationThread;->requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 448
    return-void
.end method

.method public blacklist runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public blacklist scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 3
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 432
    return-void
.end method

.method public blacklist scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZIJ)V
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I
    .param p5, "bindSeq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "rebind":Z
    .end local p4    # "processState":I
    .end local p5    # "bindSeq":J
    .local v1, "token":Landroid/os/IBinder;
    .local v2, "intent":Landroid/content/Intent;
    .local v3, "rebind":Z
    .local v4, "processState":I
    .local v5, "bindSeq":J
    invoke-interface/range {v0 .. v6}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZIJ)V

    .line 268
    return-void
.end method

.method public blacklist scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "typeId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 316
    return-void
.end method

.method public blacklist scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;III)V
    .registers 6
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backupMode"    # I
    .param p3, "userId"    # I
    .param p4, "operationType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IApplicationThread;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;III)V

    .line 296
    return-void
.end method

.method public blacklist scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 236
    return-void
.end method

.method public blacklist scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;I)V
    .registers 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;I)V

    .line 300
    return-void
.end method

.method public blacklist scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 400
    return-void
.end method

.method public blacklist scheduleExit()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->scheduleExit()V

    .line 252
    return-void
.end method

.method public blacklist scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .registers 3
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 392
    return-void
.end method

.method public blacklist scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 416
    return-void
.end method

.method public blacklist scheduleLowMemory()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->scheduleLowMemory()V

    .line 284
    return-void
.end method

.method public blacklist scheduleOnNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/app/ActivityOptions$SceneTransitionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleOnNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 304
    return-void
.end method

.method public blacklist schedulePing(Landroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "pong"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->schedulePing(Landroid/os/RemoteCallback;)V

    .line 476
    return-void
.end method

.method public blacklist scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    .registers 26
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "ordered"    # Z
    .param p8, "assumeDelivered"    # Z
    .param p9, "sendingUser"    # I
    .param p10, "processState"    # I
    .param p11, "sentFromUid"    # I
    .param p12, "sentFromPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-interface/range {v0 .. v12}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V

    .line 228
    return-void
.end method

.method public blacklist scheduleReceiverList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ReceiverInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    .local p1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ReceiverInfo;>;"
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleReceiverList(Ljava/util/List;)V

    .line 232
    return-void
.end method

.method public blacklist scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    .registers 26
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "assumeDelivered"    # Z
    .param p9, "sendingUser"    # I
    .param p10, "processState"    # I
    .param p11, "sentFromUid"    # I
    .param p12, "sentFromPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-interface/range {v0 .. v12}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    .line 280
    return-void
.end method

.method public blacklist scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V

    .line 256
    return-void
.end method

.method public blacklist scheduleStopService(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V

    .line 240
    return-void
.end method

.method public blacklist scheduleSuicide()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->scheduleSuicide()V

    .line 308
    return-void
.end method

.method public blacklist scheduleTaskFragmentTransaction(Landroid/window/ITaskFragmentOrganizer;Landroid/window/TaskFragmentTransaction;)V
    .registers 4
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "transaction"    # Landroid/window/TaskFragmentTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleTaskFragmentTransaction(Landroid/window/ITaskFragmentOrganizer;Landroid/window/TaskFragmentTransaction;)V

    .line 444
    return-void
.end method

.method public blacklist scheduleTimeoutService(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleTimeoutService(Landroid/os/IBinder;I)V

    .line 468
    return-void
.end method

.method public blacklist scheduleTimeoutServiceForType(Landroid/os/IBinder;II)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startId"    # I
    .param p3, "fgsType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IApplicationThread;->scheduleTimeoutServiceForType(Landroid/os/IBinder;II)V

    .line 472
    return-void
.end method

.method public blacklist scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .registers 3
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 440
    return-void
.end method

.method public blacklist scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 384
    return-void
.end method

.method public blacklist scheduleTrimMemory(I)V
    .registers 3
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 348
    return-void
.end method

.method public blacklist scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 272
    return-void
.end method

.method public blacklist setCoreSettings(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "coreSettings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 340
    return-void
.end method

.method public blacklist setNetworkBlockSeq(J)V
    .registers 4
    .param p1, "procStateSeq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V

    .line 436
    return-void
.end method

.method public blacklist setProcessState(I)V
    .registers 3
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->setProcessState(I)V

    .line 388
    return-void
.end method

.method public blacklist setSchedulingGroup(I)V
    .registers 3
    .param p1, "group"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->setSchedulingGroup(I)V

    .line 292
    return-void
.end method

.method public blacklist startBinderTracking()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->startBinderTracking()V

    .line 408
    return-void
.end method

.method public blacklist stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    .line 412
    return-void
.end method

.method public blacklist unstableProviderDied(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "provider"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 376
    return-void
.end method

.method public blacklist updateHttpProxy()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->updateHttpProxy()V

    .line 336
    return-void
.end method

.method public blacklist updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 344
    return-void
.end method

.method public blacklist updateTimePrefs(I)V
    .registers 3
    .param p1, "timeFormatPreference"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V

    .line 396
    return-void
.end method

.method public blacklist updateTimeZone()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->updateTimeZone()V

    .line 260
    return-void
.end method

.method public blacklist updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 14
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "state"    # I
    .param p3, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p6, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    .local p5, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "state":I
    .end local p3    # "sourceSpec":Landroid/view/translation/TranslationSpec;
    .end local p4    # "targetSpec":Landroid/view/translation/TranslationSpec;
    .end local p5    # "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local p6    # "uiTranslationSpec":Landroid/view/translation/UiTranslationSpec;
    .local v1, "activityToken":Landroid/os/IBinder;
    .local v2, "state":I
    .local v3, "sourceSpec":Landroid/view/translation/TranslationSpec;
    .local v4, "targetSpec":Landroid/view/translation/TranslationSpec;
    .local v5, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local v6, "uiTranslationSpec":Landroid/view/translation/UiTranslationSpec;
    invoke-interface/range {v0 .. v6}, Landroid/app/IApplicationThread;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 464
    return-void
.end method
