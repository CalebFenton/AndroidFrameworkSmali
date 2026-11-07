.class public Landroid/system/virtualmachine/VirtualMachine;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;,
        Landroid/system/virtualmachine/VirtualMachine$InputEvent;,
        Landroid/system/virtualmachine/VirtualMachine$InputEventType;,
        Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;,
        Landroid/system/virtualmachine/VirtualMachine$TeeWorker;,
        Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;,
        Landroid/system/virtualmachine/VirtualMachine$OpenPtyCallback;,
        Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;,
        Landroid/system/virtualmachine/VirtualMachine$NativeProviderWrapper;,
        Landroid/system/virtualmachine/VirtualMachine$Status;
    }
.end annotation


# static fields
.field private static final blacklist CONFIG_FILE:Ljava/lang/String; = "config.xml"

.field private static final blacklist ENCRYPTED_STORE_FILE:Ljava/lang/String; = "storage.img"

.field private static final blacklist EXTRA_IDSIG_FILE_PREFIX:Ljava/lang/String; = "extra_idsig_"

.field private static final blacklist IDSIG_FILE:Ljava/lang/String; = "idsig"

.field private static final blacklist INSTANCE_FILE_SIZE:J = 0xa00000L

.field private static final blacklist INSTANCE_ID_FILE:Ljava/lang/String; = "instance_id"

.field private static final blacklist INSTANCE_IMAGE_FILE:Ljava/lang/String; = "instance.img"

.field public static final whitelist MANAGE_VIRTUAL_MACHINE_PERMISSION:Ljava/lang/String; = "android.permission.MANAGE_VIRTUAL_MACHINE"

.field public static final whitelist MAX_VSOCK_PORT:J = 0xffffffffL

.field public static final whitelist MIN_VSOCK_PORT:J = 0x400L

.field public static final whitelist STATUS_DELETED:I = 0x2

.field public static final whitelist STATUS_RUNNING:I = 0x1

.field public static final whitelist STATUS_STOPPED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "VirtualMachine"

.field public static final whitelist USE_CUSTOM_VIRTUAL_MACHINE_PERMISSION:Ljava/lang/String; = "android.permission.USE_CUSTOM_VIRTUAL_MACHINE"

.field private static final blacklist VM_DIR:Ljava/lang/String; = "vm"


# instance fields
.field private blacklist mCallback:Landroid/system/virtualmachine/VirtualMachineCallback;

.field private blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mCallbackLock:Ljava/lang/Object;

.field private blacklist mConfig:Landroid/system/virtualmachine/VirtualMachineConfig;

.field private final blacklist mConfigFilePath:Ljava/io/File;

.field private final blacklist mConnectVmConsole:Z

.field private final blacklist mConsoleExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mConsoleInReader:Landroid/os/ParcelFileDescriptor;

.field private blacklist mConsoleInWriter:Landroid/os/ParcelFileDescriptor;

.field private blacklist mConsoleOutReader:Landroid/os/ParcelFileDescriptor;

.field private blacklist mConsoleOutWriter:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEncryptedStoreFilePath:Ljava/io/File;

.field private final blacklist mExtraApks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIdsigFilePath:Ljava/io/File;

.field private blacklist mInputEventExecutor:Ljava/util/concurrent/ExecutorService;

.field private blacklist mInputEventQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/util/Pair<",
            "Landroid/system/virtualmachine/VirtualMachine$InputEventType;",
            "Landroid/view/MotionEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mInstanceFilePath:Ljava/io/File;

.field private final blacklist mInstanceIdPath:Ljava/io/File;

.field private blacklist mKeySock:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mLogReader:Landroid/os/ParcelFileDescriptor;

.field private blacklist mLogWriter:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mMemoryManagementCallbacks:Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

.field private blacklist mMouseSock:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPtsFd:Landroid/os/ParcelFileDescriptor;

.field private blacklist mPtsName:Ljava/lang/String;

.field private blacklist mPtyFd:Landroid/os/ParcelFileDescriptor;

.field private blacklist mSwitchesSock:Landroid/os/ParcelFileDescriptor;

.field private blacklist mTeeConsoleOutReader:Landroid/os/ParcelFileDescriptor;

.field private blacklist mTeeConsoleOutWriter:Landroid/os/ParcelFileDescriptor;

.field private blacklist mTouchSock:Landroid/os/ParcelFileDescriptor;

.field private blacklist mTrackpadSock:Landroid/os/ParcelFileDescriptor;

.field private blacklist mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

.field private final blacklist mVirtualizationService:Landroid/system/virtualmachine/VirtualizationService;

.field private final blacklist mVmConsoleInputSupported:Z

.field private final blacklist mVmOutputCaptured:Z

.field private final blacklist mVmRootPath:Ljava/io/File;

.field private blacklist mWasDeleted:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$9kr7lQE2hCXZiM-X594_P0zF_-Y(Landroid/system/virtualmachine/VirtualMachine;)V
    .registers 1

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->lambda$run$1()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mexecuteCallback(Landroid/system/virtualmachine/VirtualMachine;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachine;->executeCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 401
    const-string v0, "virtualmachine_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;Landroid/system/virtualmachine/VirtualizationService;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/system/virtualmachine/VirtualMachineConfig;
    .param p4, "service"    # Landroid/system/virtualmachine/VirtualizationService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mInputEventQueue:Ljava/util/concurrent/BlockingQueue;

    .line 308
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    .line 311
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallbackLock:Ljava/lang/Object;

    .line 319
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleExecutor:Ljava/util/concurrent/Executor;

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mWasDeleted:Z

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mPackageName:Ljava/lang/String;

    .line 411
    const-string v0, "Name must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mName:Ljava/lang/String;

    .line 412
    const-string v0, "Config must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/virtualmachine/VirtualMachineConfig;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfig:Landroid/system/virtualmachine/VirtualMachineConfig;

    .line 413
    iput-object p4, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualizationService:Landroid/system/virtualmachine/VirtualizationService;

    .line 415
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/system/virtualmachine/VirtualMachine;->getVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 416
    .local v0, "thisVmDir":Ljava/io/File;
    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmRootPath:Ljava/io/File;

    .line 417
    new-instance v1, Ljava/io/File;

    const-string v2, "config.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfigFilePath:Ljava/io/File;

    .line 419
    nop

    .line 420
    :try_start_4f
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualizationService:Landroid/system/virtualmachine/VirtualizationService;

    .line 421
    invoke-virtual {v1}, Landroid/system/virtualmachine/VirtualizationService;->getBinder()Landroid/system/virtualizationservice/IVirtualizationService;

    move-result-object v1

    const-string v2, "com.android.kvm.LLPVM_CHANGES"

    .line 422
    invoke-interface {v1, v2}, Landroid/system/virtualizationservice/IVirtualizationService;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_66

    .line 423
    new-instance v1, Ljava/io/File;

    const-string v3, "instance_id"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_67

    .line 424
    :cond_66
    move-object v1, v2

    :goto_67
    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceIdPath:Ljava/io/File;
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_69} :catch_c0

    .line 427
    nop

    .line 428
    new-instance v1, Ljava/io/File;

    const-string v3, "instance.img"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    .line 429
    new-instance v1, Ljava/io/File;

    const-string v3, "idsig"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mIdsigFilePath:Ljava/io/File;

    .line 430
    invoke-static {p1, p3, v0}, Landroid/system/virtualmachine/VirtualMachine;->setupExtraApks(Landroid/content/Context;Landroid/system/virtualmachine/VirtualMachineConfig;Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mExtraApks:Ljava/util/List;

    .line 431
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine;->mContext:Landroid/content/Context;

    .line 432
    nop

    .line 433
    invoke-virtual {p3}, Landroid/system/virtualmachine/VirtualMachineConfig;->isEncryptedStorageEnabled()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 434
    new-instance v1, Ljava/io/File;

    const-string v3, "storage.img"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_94

    .line 435
    :cond_93
    move-object v1, v2

    :goto_94
    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    .line 437
    invoke-virtual {p3}, Landroid/system/virtualmachine/VirtualMachineConfig;->isVmOutputCaptured()Z

    move-result v1

    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmOutputCaptured:Z

    .line 438
    invoke-virtual {p3}, Landroid/system/virtualmachine/VirtualMachineConfig;->isVmConsoleInputSupported()Z

    move-result v1

    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmConsoleInputSupported:Z

    .line 439
    invoke-virtual {p3}, Landroid/system/virtualmachine/VirtualMachineConfig;->isConnectVmConsole()Z

    move-result v1

    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mConnectVmConsole:Z

    .line 442
    invoke-virtual {p3}, Landroid/system/virtualmachine/VirtualMachineConfig;->getCustomImageConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    move-result-object v1

    .line 443
    .local v1, "customImageConfig":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
    if-eqz v1, :cond_b8

    invoke-virtual {v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->useAutoMemoryBalloon()Z

    move-result v3

    if-eqz v3, :cond_b5

    goto :goto_b8

    .line 446
    :cond_b5
    iput-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mMemoryManagementCallbacks:Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

    goto :goto_bf

    .line 444
    :cond_b8
    :goto_b8
    new-instance v3, Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

    invoke-direct {v3, p0, v2}, Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;-><init>(Landroid/system/virtualmachine/VirtualMachine;Landroid/system/virtualmachine/VirtualMachine-IA;)V

    iput-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mMemoryManagementCallbacks:Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

    .line 448
    :goto_bf
    return-void

    .line 425
    .end local v1    # "customImageConfig":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
    :catch_c0
    move-exception v1

    .line 426
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist binderFromPreconnectedClient(Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;)Landroid/os/IBinder;
    .registers 4
    .param p0, "provider"    # Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 2073
    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$NativeProviderWrapper;

    invoke-direct {v0, p0}, Landroid/system/virtualmachine/VirtualMachine$NativeProviderWrapper;-><init>(Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;)V

    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachine;->nativeBinderFromPreconnectedClient(Landroid/system/virtualmachine/VirtualMachine$NativeProviderWrapper;)Landroid/os/IBinder;

    move-result-object v0

    .line 2074
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_c

    .line 2077
    return-object v0

    .line 2075
    :cond_c
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "Failed to connect to vsock server"

    invoke-direct {v1, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist checkStopped()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 792
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mWasDeleted:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmRootPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 795
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    if-nez v0, :cond_11

    .line 796
    return-void

    .line 799
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    invoke-interface {v0}, Landroid/system/virtualizationservice/IVirtualMachine;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/system/virtualmachine/VirtualMachine;->stateToStatus(I)I

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_2a

    if-nez v0, :cond_22

    .line 804
    nop

    .line 806
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->dropVm()V

    .line 807
    return-void

    .line 800
    :cond_22
    :try_start_22
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v1, "VM is not in stopped state"

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2a} :catch_2a

    .line 802
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :catch_2a
    move-exception v0

    .line 803
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 793
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v1, "VM has been deleted"

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist create(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/system/virtualmachine/VirtualMachineConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 517
    invoke-static {p0, p1}, Landroid/system/virtualmachine/VirtualMachine;->createVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 520
    .local v0, "vmDir":Ljava/io/File;
    :try_start_4
    new-instance v1, Landroid/system/virtualmachine/VirtualMachine;

    .line 521
    invoke-static {}, Landroid/system/virtualmachine/VirtualizationService;->getInstance()Landroid/system/virtualmachine/VirtualizationService;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/system/virtualmachine/VirtualMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;Landroid/system/virtualmachine/VirtualizationService;)V

    .line 522
    .local v1, "vm":Landroid/system/virtualmachine/VirtualMachine;
    iget-object v2, v1, Landroid/system/virtualmachine/VirtualMachine;->mConfigFilePath:Ljava/io/File;

    invoke-virtual {p2, v2}, Landroid/system/virtualmachine/VirtualMachineConfig;->serialize(Ljava/io/File;)V
    :try_end_12
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_4 .. :try_end_12} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_12} :catch_d3

    .line 524
    :try_start_12
    iget-object v2, v1, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_ca
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_12 .. :try_end_17} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_17} :catch_d3

    .line 527
    nop

    .line 528
    :try_start_18
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineConfig;->isEncryptedStorageEnabled()Z

    move-result v2
    :try_end_1c
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_18 .. :try_end_1c} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1c} :catch_d3

    if-eqz v2, :cond_2d

    .line 530
    :try_start_1e
    iget-object v2, v1, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_24
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_1e .. :try_end_23} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_23} :catch_d3

    .line 534
    goto :goto_2d

    .line 531
    :catch_24
    move-exception v2

    .line 532
    .local v2, "e":Ljava/io/IOException;
    :try_start_25
    new-instance v3, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v4, "failed to create encrypted storage image"

    invoke-direct {v3, v4, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    throw v3

    .line 537
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :cond_2d
    :goto_2d
    iget-object v2, v1, Landroid/system/virtualmachine/VirtualMachine;->mVirtualizationService:Landroid/system/virtualmachine/VirtualizationService;

    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualizationService;->getBinder()Landroid/system/virtualizationservice/IVirtualizationService;

    move-result-object v2

    .line 539
    .local v2, "service":Landroid/system/virtualizationservice/IVirtualizationService;
    iget-object v3, v1, Landroid/system/virtualmachine/VirtualMachine;->mInstanceIdPath:Ljava/io/File;
    :try_end_35
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_25 .. :try_end_35} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_35} :catch_d3

    if-eqz v3, :cond_74

    .line 540
    :try_start_37
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v1, Landroid/system/virtualmachine/VirtualMachine;->mInstanceIdPath:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3e} :catch_6b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3e} :catch_62
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_5c
    .catch Landroid/os/ServiceSpecificException; {:try_start_37 .. :try_end_3e} :catch_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3e} :catch_53
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_37 .. :try_end_3e} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3e} :catch_d3

    .line 541
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_3e
    invoke-interface {v2}, Landroid/system/virtualizationservice/IVirtualizationService;->allocateInstanceId()[B

    move-result-object v4

    .line 542
    .local v4, "id":[B
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_49

    .line 543
    .end local v4    # "id":[B
    :try_start_45
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_48} :catch_6b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_62
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_5c
    .catch Landroid/os/ServiceSpecificException; {:try_start_45 .. :try_end_48} :catch_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_48} :catch_53
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_45 .. :try_end_48} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_48} :catch_d3

    .line 551
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_74

    .line 540
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_49
    move-exception v4

    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v5

    :try_start_4f
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "vmDir":Ljava/io/File;
    .end local v1    # "vm":Landroid/system/virtualmachine/VirtualMachine;
    .end local v2    # "service":Landroid/system/virtualizationservice/IVirtualizationService;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :goto_52
    throw v4
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_53} :catch_6b
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_53} :catch_62
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_53} :catch_5c
    .catch Landroid/os/ServiceSpecificException; {:try_start_4f .. :try_end_53} :catch_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_53} :catch_53
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_4f .. :try_end_53} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_53} :catch_d3

    .line 549
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local v1    # "vm":Landroid/system/virtualmachine/VirtualMachine;
    .restart local v2    # "service":Landroid/system/virtualizationservice/IVirtualizationService;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :catch_53
    move-exception v3

    .line 550
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_54
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "failed to create instance_id"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    throw v4

    .line 547
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :catch_5c
    move-exception v3

    .line 548
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    throw v4

    .line 545
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :catch_62
    move-exception v3

    .line 546
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "failed to persist instance_id"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    throw v4

    .line 543
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :catch_6b
    move-exception v3

    .line 544
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "instance_id file missing"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    throw v4
    :try_end_74
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_54 .. :try_end_74} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_74} :catch_d3

    .line 555
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :cond_74
    :goto_74
    :try_start_74
    iget-object v3, v1, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    .line 556
    const/high16 v4, 0x30000000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 555
    const-wide/32 v5, 0xa00000

    const/4 v7, 0x1

    invoke-interface {v2, v3, v5, v6, v7}, Landroid/system/virtualizationservice/IVirtualizationService;->initializeWritablePartition(Landroid/os/ParcelFileDescriptor;JI)V
    :try_end_83
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_83} :catch_c1
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_83} :catch_bb
    .catch Landroid/os/ServiceSpecificException; {:try_start_74 .. :try_end_83} :catch_b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_74 .. :try_end_83} :catch_b2
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_74 .. :try_end_83} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_83} :catch_d3

    .line 565
    nop

    .line 567
    :try_start_84
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineConfig;->isEncryptedStorageEnabled()Z

    move-result v3
    :try_end_88
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_84 .. :try_end_88} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_84 .. :try_end_88} :catch_d3

    if-eqz v3, :cond_b1

    .line 569
    :try_start_8a
    iget-object v3, v1, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    .line 570
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 571
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineConfig;->getEncryptedStorageBytes()J

    move-result-wide v4

    .line 569
    const/4 v6, 0x2

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/system/virtualizationservice/IVirtualizationService;->initializeWritablePartition(Landroid/os/ParcelFileDescriptor;JI)V
    :try_end_98
    .catch Ljava/io/FileNotFoundException; {:try_start_8a .. :try_end_98} :catch_a8
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_98} :catch_a2
    .catch Landroid/os/ServiceSpecificException; {:try_start_8a .. :try_end_98} :catch_99
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8a .. :try_end_98} :catch_99
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_8a .. :try_end_98} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_8a .. :try_end_98} :catch_d3

    .line 580
    goto :goto_b1

    .line 577
    :catch_99
    move-exception v3

    .line 578
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_9a
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "failed to create encrypted storage partition"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    throw v4

    .line 575
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :catch_a2
    move-exception v3

    .line 576
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    throw v4

    .line 573
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :catch_a8
    move-exception v3

    .line 574
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "encrypted storage image missing"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    throw v4

    .line 582
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :cond_b1
    :goto_b1
    return-object v1

    .line 563
    :catch_b2
    move-exception v3

    .line 564
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "failed to create instance partition"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    throw v4

    .line 561
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :catch_bb
    move-exception v3

    .line 562
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    throw v4

    .line 559
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :catch_c1
    move-exception v3

    .line 560
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "instance image missing"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    throw v4

    .line 525
    .end local v2    # "service":Landroid/system/virtualizationservice/IVirtualizationService;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :catch_ca
    move-exception v2

    .line 526
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v4, "failed to create instance image"

    invoke-direct {v3, v4, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    throw v3
    :try_end_d3
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_9a .. :try_end_d3} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_d3} :catch_d3

    .line 583
    .end local v1    # "vm":Landroid/system/virtualmachine/VirtualMachine;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :catch_d3
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Exception;
    :try_start_d4
    invoke-static {p0, p1}, Landroid/system/virtualmachine/VirtualMachine;->vmInstanceCleanup(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d7} :catch_d8

    .line 589
    goto :goto_dc

    .line 587
    :catch_d8
    move-exception v2

    .line 588
    .local v2, "innerException":Ljava/lang/Exception;
    invoke-virtual {v1, v2}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 590
    .end local v2    # "innerException":Ljava/lang/Exception;
    :goto_dc
    throw v1
.end method

.method private blacklist createIdSigsAndUpdateConfig(Landroid/system/virtualizationservice/IVirtualizationService;Landroid/system/virtualizationservice/VirtualMachineAppConfig;)V
    .registers 8
    .param p1, "service"    # Landroid/system/virtualizationservice/IVirtualizationService;
    .param p2, "appConfig"    # Landroid/system/virtualizationservice/VirtualMachineAppConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1609
    iget-object v0, p2, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->apk:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mIdsigFilePath:Ljava/io/File;

    .line 1610
    const/high16 v2, 0x30000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1609
    invoke-interface {p1, v0, v1}, Landroid/system/virtualizationservice/IVirtualizationService;->createOrUpdateIdsigFile(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 1612
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mExtraApks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v3, 0x10000000

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;

    .line 1613
    .local v1, "extraApk":Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;
    iget-object v4, v1, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;->apk:Ljava/io/File;

    .line 1614
    invoke-static {v4, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iget-object v4, v1, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;->idsig:Ljava/io/File;

    .line 1615
    invoke-static {v4, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1613
    invoke-interface {p1, v3, v4}, Landroid/system/virtualizationservice/IVirtualizationService;->createOrUpdateIdsigFile(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 1616
    .end local v1    # "extraApk":Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;
    goto :goto_13

    .line 1619
    :cond_31
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mIdsigFilePath:Ljava/io/File;

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p2, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->idsig:Landroid/os/ParcelFileDescriptor;

    .line 1620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1621
    .local v0, "extraIdsigs":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mExtraApks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;

    .line 1622
    .local v2, "extraApk":Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;
    iget-object v4, v2, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;->idsig:Ljava/io/File;

    invoke-static {v4, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    .end local v2    # "extraApk":Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;
    goto :goto_44

    .line 1624
    :cond_5a
    iput-object v0, p2, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->extraIdsigs:Ljava/util/List;

    .line 1625
    return-void
.end method

.method private blacklist createPtyConsole()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 1678
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mPtyFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mPtsFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    .line 1679
    return-void

    .line 1681
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1682
    .local v0, "fd":Ljava/util/List;, "Ljava/util/List<Ljava/io/FileDescriptor;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1685
    .local v1, "nameBuilder":Ljava/lang/StringBuilder;
    :try_start_14
    new-instance v2, Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/lang/StringBuilder;)V

    invoke-static {v2}, Landroid/system/virtualmachine/VirtualMachine;->nativeOpenPtyRawNonblock(Landroid/system/virtualmachine/VirtualMachine$OpenPtyCallback;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_5d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_5b

    .line 1694
    nop

    .line 1698
    nop

    .line 1699
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mPtyFd:Landroid/os/ParcelFileDescriptor;

    .line 1700
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mPtsFd:Landroid/os/ParcelFileDescriptor;

    .line 1701
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mPtsName:Ljava/lang/String;

    .line 1702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Serial console device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mPtsName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VirtualMachine"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    return-void

    .line 1695
    :catch_5b
    move-exception v2

    goto :goto_68

    .line 1691
    :catch_5d
    move-exception v2

    .line 1692
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5e
    new-instance v3, Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1693
    nop

    .end local v0    # "fd":Ljava/util/List;, "Ljava/util/List<Ljava/io/FileDescriptor;>;"
    .end local v1    # "nameBuilder":Ljava/lang/StringBuilder;
    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v2
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_68} :catch_5b

    .line 1696
    .restart local v0    # "fd":Ljava/util/List;, "Ljava/util/List<Ljava/io/FileDescriptor;>;"
    .restart local v1    # "nameBuilder":Ljava/lang/StringBuilder;
    .local v2, "e":Ljava/io/IOException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :goto_68
    new-instance v3, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v4, "Failed to create host console to connect to the VM console"

    invoke-direct {v3, v4, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private blacklist createVirtualMachineConfigForAppFrom(Landroid/system/virtualmachine/VirtualMachineConfig;Landroid/system/virtualizationservice/IVirtualizationService;)Landroid/system/virtualizationservice/VirtualMachineConfig;
    .registers 9
    .param p1, "vmConfig"    # Landroid/system/virtualmachine/VirtualMachineConfig;
    .param p2, "service"    # Landroid/system/virtualizationservice/IVirtualizationService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 1431
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->toVsConfig(Landroid/content/pm/PackageManager;)Landroid/system/virtualizationservice/VirtualMachineAppConfig;

    move-result-object v0

    .line 1432
    .local v0, "appConfig":Landroid/system/virtualizationservice/VirtualMachineAppConfig;
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    const/high16 v2, 0x30000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->instanceImage:Landroid/os/ParcelFileDescriptor;

    .line 1433
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mName:Ljava/lang/String;

    iput-object v1, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->name:Ljava/lang/String;

    .line 1434
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceIdPath:Ljava/io/File;

    if-eqz v1, :cond_29

    .line 1435
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceIdPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->instanceId:[B

    goto :goto_2f

    .line 1438
    :cond_29
    const/16 v1, 0x40

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->instanceId:[B

    .line 1440
    :goto_2f
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    if-eqz v1, :cond_3b

    .line 1441
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    .line 1442
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->encryptedStorageImage:Landroid/os/ParcelFileDescriptor;

    .line 1445
    :cond_3b
    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getExtraApks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_80

    .line 1453
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mExtraApks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1454
    .local v1, "extraApkFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mExtraApks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;

    .line 1456
    .local v3, "extraApk":Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;
    :try_start_62
    iget-object v4, v3, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;->apk:Ljava/io/File;

    const/high16 v5, 0x10000000

    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_6d} :catch_6f

    .line 1459
    nop

    .line 1460
    .end local v3    # "extraApk":Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;
    goto :goto_56

    .line 1457
    .restart local v3    # "extraApk":Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;
    :catch_6f
    move-exception v2

    .line 1458
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "Failed to open extra APK"

    invoke-direct {v4, v5, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1461
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "extraApk":Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;
    :cond_78
    iget-object v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->payload:Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    invoke-virtual {v2}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->getPayloadConfig()Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;

    move-result-object v2

    iput-object v1, v2, Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;->extraApks:Ljava/util/List;

    .line 1465
    .end local v1    # "extraApkFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    :cond_80
    :try_start_80
    invoke-direct {p0, p2, v0}, Landroid/system/virtualmachine/VirtualMachine;->createIdSigsAndUpdateConfig(Landroid/system/virtualizationservice/IVirtualizationService;Landroid/system/virtualizationservice/VirtualMachineAppConfig;)V
    :try_end_83
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_83} :catch_89

    .line 1468
    nop

    .line 1469
    invoke-static {v0}, Landroid/system/virtualizationservice/VirtualMachineConfig;->appConfig(Landroid/system/virtualizationservice/VirtualMachineAppConfig;)Landroid/system/virtualizationservice/VirtualMachineConfig;

    move-result-object v1

    return-object v1

    .line 1466
    :catch_89
    move-exception v1

    .line 1467
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "Failed to generate APK signature"

    invoke-direct {v2, v3, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist createVirtualMachineConfigForRawFrom(Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualizationservice/VirtualMachineConfig;
    .registers 9
    .param p1, "vmConfig"    # Landroid/system/virtualmachine/VirtualMachineConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 896
    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->toVsRawConfig()Landroid/system/virtualizationservice/VirtualMachineRawConfig;

    move-result-object v0

    .line 899
    .local v0, "rawConfig":Landroid/system/virtualizationservice/VirtualMachineRawConfig;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .local v1, "inputDevices":Ljava/util/List;, "Ljava/util/List<Landroid/system/virtualizationservice/InputDevice;>;"
    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getCustomImageConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d3

    iget-object v2, v0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->displayConfig:Landroid/system/virtualizationservice/DisplayConfig;

    if-eqz v2, :cond_d3

    .line 901
    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getCustomImageConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->useTouch()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_43

    .line 902
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createSocketPair()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 903
    .local v2, "pfds":[Landroid/os/ParcelFileDescriptor;
    aget-object v5, v2, v3

    iput-object v5, p0, Landroid/system/virtualmachine/VirtualMachine;->mTouchSock:Landroid/os/ParcelFileDescriptor;

    .line 904
    new-instance v5, Landroid/system/virtualizationservice/InputDevice$MultiTouch;

    invoke-direct {v5}, Landroid/system/virtualizationservice/InputDevice$MultiTouch;-><init>()V

    .line 905
    .local v5, "t":Landroid/system/virtualizationservice/InputDevice$MultiTouch;
    iget-object v6, v0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->displayConfig:Landroid/system/virtualizationservice/DisplayConfig;

    iget v6, v6, Landroid/system/virtualizationservice/DisplayConfig;->width:I

    iput v6, v5, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->width:I

    .line 906
    iget-object v6, v0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->displayConfig:Landroid/system/virtualizationservice/DisplayConfig;

    iget v6, v6, Landroid/system/virtualizationservice/DisplayConfig;->height:I

    iput v6, v5, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->height:I

    .line 907
    aget-object v6, v2, v4

    iput-object v6, v5, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 908
    invoke-static {v5}, Landroid/system/virtualizationservice/InputDevice;->multiTouch(Landroid/system/virtualizationservice/InputDevice$MultiTouch;)Landroid/system/virtualizationservice/InputDevice;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    .end local v2    # "pfds":[Landroid/os/ParcelFileDescriptor;
    .end local v5    # "t":Landroid/system/virtualizationservice/InputDevice$MultiTouch;
    :cond_43
    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getCustomImageConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->useKeyboard()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 911
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createSocketPair()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 912
    .restart local v2    # "pfds":[Landroid/os/ParcelFileDescriptor;
    aget-object v5, v2, v3

    iput-object v5, p0, Landroid/system/virtualmachine/VirtualMachine;->mKeySock:Landroid/os/ParcelFileDescriptor;

    .line 913
    new-instance v5, Landroid/system/virtualizationservice/InputDevice$Keyboard;

    invoke-direct {v5}, Landroid/system/virtualizationservice/InputDevice$Keyboard;-><init>()V

    .line 914
    .local v5, "k":Landroid/system/virtualizationservice/InputDevice$Keyboard;
    aget-object v6, v2, v4

    iput-object v6, v5, Landroid/system/virtualizationservice/InputDevice$Keyboard;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 915
    invoke-static {v5}, Landroid/system/virtualizationservice/InputDevice;->keyboard(Landroid/system/virtualizationservice/InputDevice$Keyboard;)Landroid/system/virtualizationservice/InputDevice;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    .end local v2    # "pfds":[Landroid/os/ParcelFileDescriptor;
    .end local v5    # "k":Landroid/system/virtualizationservice/InputDevice$Keyboard;
    :cond_65
    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getCustomImageConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->useMouse()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 918
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createSocketPair()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 919
    .restart local v2    # "pfds":[Landroid/os/ParcelFileDescriptor;
    aget-object v5, v2, v3

    iput-object v5, p0, Landroid/system/virtualmachine/VirtualMachine;->mMouseSock:Landroid/os/ParcelFileDescriptor;

    .line 920
    new-instance v5, Landroid/system/virtualizationservice/InputDevice$Mouse;

    invoke-direct {v5}, Landroid/system/virtualizationservice/InputDevice$Mouse;-><init>()V

    .line 921
    .local v5, "m":Landroid/system/virtualizationservice/InputDevice$Mouse;
    aget-object v6, v2, v4

    iput-object v6, v5, Landroid/system/virtualizationservice/InputDevice$Mouse;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 922
    invoke-static {v5}, Landroid/system/virtualizationservice/InputDevice;->mouse(Landroid/system/virtualizationservice/InputDevice$Mouse;)Landroid/system/virtualizationservice/InputDevice;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    .end local v2    # "pfds":[Landroid/os/ParcelFileDescriptor;
    .end local v5    # "m":Landroid/system/virtualizationservice/InputDevice$Mouse;
    :cond_87
    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getCustomImageConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->useSwitches()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 925
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createSocketPair()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 926
    .restart local v2    # "pfds":[Landroid/os/ParcelFileDescriptor;
    aget-object v5, v2, v3

    iput-object v5, p0, Landroid/system/virtualmachine/VirtualMachine;->mSwitchesSock:Landroid/os/ParcelFileDescriptor;

    .line 927
    new-instance v5, Landroid/system/virtualizationservice/InputDevice$Switches;

    invoke-direct {v5}, Landroid/system/virtualizationservice/InputDevice$Switches;-><init>()V

    .line 928
    .local v5, "s":Landroid/system/virtualizationservice/InputDevice$Switches;
    aget-object v6, v2, v4

    iput-object v6, v5, Landroid/system/virtualizationservice/InputDevice$Switches;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 929
    invoke-static {v5}, Landroid/system/virtualizationservice/InputDevice;->switches(Landroid/system/virtualizationservice/InputDevice$Switches;)Landroid/system/virtualizationservice/InputDevice;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    .end local v2    # "pfds":[Landroid/os/ParcelFileDescriptor;
    .end local v5    # "s":Landroid/system/virtualizationservice/InputDevice$Switches;
    :cond_a9
    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getCustomImageConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->useTrackpad()Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 932
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createSocketPair()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 933
    .restart local v2    # "pfds":[Landroid/os/ParcelFileDescriptor;
    aget-object v5, v2, v3

    iput-object v5, p0, Landroid/system/virtualmachine/VirtualMachine;->mTrackpadSock:Landroid/os/ParcelFileDescriptor;

    .line 934
    new-instance v5, Landroid/system/virtualizationservice/InputDevice$Trackpad;

    invoke-direct {v5}, Landroid/system/virtualizationservice/InputDevice$Trackpad;-><init>()V

    .line 936
    .local v5, "t":Landroid/system/virtualizationservice/InputDevice$Trackpad;
    const/16 v6, 0x94c

    iput v6, v5, Landroid/system/virtualizationservice/InputDevice$Trackpad;->width:I

    .line 937
    const/16 v6, 0x559

    iput v6, v5, Landroid/system/virtualizationservice/InputDevice$Trackpad;->height:I

    .line 938
    aget-object v4, v2, v4

    iput-object v4, v5, Landroid/system/virtualizationservice/InputDevice$Trackpad;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 939
    invoke-static {v5}, Landroid/system/virtualizationservice/InputDevice;->trackpad(Landroid/system/virtualizationservice/InputDevice$Trackpad;)Landroid/system/virtualizationservice/InputDevice;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    .end local v2    # "pfds":[Landroid/os/ParcelFileDescriptor;
    .end local v5    # "t":Landroid/system/virtualizationservice/InputDevice$Trackpad;
    :cond_d3
    new-array v2, v3, [Landroid/system/virtualizationservice/InputDevice;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/system/virtualizationservice/InputDevice;

    iput-object v2, v0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->inputDevices:[Landroid/system/virtualizationservice/InputDevice;

    .line 945
    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getCustomImageConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    move-result-object v2

    if-eqz v2, :cond_ed

    .line 946
    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getCustomImageConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->useNetwork()Z

    move-result v2

    iput-boolean v2, v0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->networkSupported:Z

    .line 949
    :cond_ed
    invoke-static {v0}, Landroid/system/virtualizationservice/VirtualMachineConfig;->rawConfig(Landroid/system/virtualizationservice/VirtualMachineRawConfig;)Landroid/system/virtualizationservice/VirtualMachineConfig;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist createVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 678
    invoke-static {p0, p1}, Landroid/system/virtualmachine/VirtualMachine;->getVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 681
    .local v0, "vmDir":Ljava/io/File;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 686
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_1b
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_4 .. :try_end_1b} :catch_26
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1b} :catch_1d

    .line 691
    nop

    .line 692
    return-object v0

    .line 689
    :catch_1d
    move-exception v1

    .line 690
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "failed to create directory for VM"

    invoke-direct {v2, v3, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 687
    .end local v1    # "e":Ljava/io/IOException;
    :catch_26
    move-exception v1

    .line 688
    .local v1, "e":Ljava/nio/file/FileAlreadyExistsException;
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "virtual machine already exists"

    invoke-direct {v2, v3, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist createVmInputPipes()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 1649
    :try_start_0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleInReader:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleInWriter:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2e

    .line 1650
    :cond_8
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mConnectVmConsole:Z

    if-eqz v0, :cond_20

    .line 1653
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->createPtyConsole()V

    .line 1654
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mPtyFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleInReader:Landroid/os/ParcelFileDescriptor;

    .line 1655
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mPtsFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleInWriter:Landroid/os/ParcelFileDescriptor;

    goto :goto_2e

    .line 1657
    :cond_20
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1658
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleInReader:Landroid/os/ParcelFileDescriptor;

    .line 1659
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleInWriter:Landroid/os/ParcelFileDescriptor;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_30

    .line 1664
    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    :cond_2e
    :goto_2e
    nop

    .line 1665
    return-void

    .line 1662
    :catch_30
    move-exception v0

    .line 1663
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "Failed to create input stream for VM"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist createVmOutputPipes()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 1630
    :try_start_0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleOutReader:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleOutWriter:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_16

    .line 1631
    :cond_a
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1632
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    aget-object v3, v0, v2

    iput-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleOutReader:Landroid/os/ParcelFileDescriptor;

    .line 1633
    aget-object v3, v0, v1

    iput-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleOutWriter:Landroid/os/ParcelFileDescriptor;

    .line 1636
    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    :cond_16
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLogReader:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLogWriter:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2a

    .line 1637
    :cond_1e
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1638
    .restart local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    aget-object v2, v0, v2

    iput-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mLogReader:Landroid/os/ParcelFileDescriptor;

    .line 1639
    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mLogWriter:Landroid/os/ParcelFileDescriptor;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_2c

    .line 1643
    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    :cond_2a
    nop

    .line 1644
    return-void

    .line 1641
    :catch_2c
    move-exception v0

    .line 1642
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "Failed to create output stream for VM"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist deleteRecursively(Ljava/io/File;)V
    .registers 3
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1904
    nop

    .line 1905
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-instance v1, Landroid/system/virtualmachine/VirtualMachine$1;

    invoke-direct {v1}, Landroid/system/virtualmachine/VirtualMachine$1;-><init>()V

    .line 1904
    invoke-static {v0, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 1924
    return-void
.end method

.method private blacklist dropVm()V
    .registers 4

    .line 816
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mInputEventExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 817
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mInputEventExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 818
    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mInputEventExecutor:Ljava/util/concurrent/ExecutorService;

    .line 820
    :cond_c
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mMemoryManagementCallbacks:Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

    if-eqz v0, :cond_17

    .line 821
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mMemoryManagementCallbacks:Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 823
    :cond_17
    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    .line 824
    return-void
.end method

.method private blacklist executeCallback(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/system/virtualmachine/VirtualMachineCallback;",
            ">;)V"
        }
    .end annotation

    .line 878
    .local p1, "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/system/virtualmachine/VirtualMachineCallback;>;"
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 879
    :try_start_3
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallback:Landroid/system/virtualmachine/VirtualMachineCallback;

    .line 880
    .local v1, "callback":Landroid/system/virtualmachine/VirtualMachineCallback;
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 881
    .local v2, "executor":Ljava/util/concurrent/Executor;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_24

    .line 882
    if-eqz v1, :cond_23

    if-nez v2, :cond_d

    goto :goto_23

    .line 885
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 887
    .local v3, "restoreToken":J
    :try_start_11
    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, v1}, Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Landroid/system/virtualmachine/VirtualMachineCallback;)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    .line 889
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 890
    nop

    .line 891
    return-void

    .line 889
    :catchall_1e
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 890
    throw v0

    .line 883
    .end local v3    # "restoreToken":J
    :cond_23
    :goto_23
    return-void

    .line 881
    .end local v1    # "callback":Landroid/system/virtualmachine/VirtualMachineCallback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method static blacklist fromDescriptor(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineDescriptor;)Landroid/system/virtualmachine/VirtualMachine;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vmDescriptor"    # Landroid/system/virtualmachine/VirtualMachineDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 467
    invoke-static {p0, p1}, Landroid/system/virtualmachine/VirtualMachine;->createVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 470
    .local v0, "vmDir":Ljava/io/File;
    nop

    .line 471
    :try_start_5
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->getConfigFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/system/virtualmachine/VirtualMachineConfig;->from(Landroid/os/ParcelFileDescriptor;)Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v1

    .line 472
    .local v1, "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    new-instance v2, Landroid/system/virtualmachine/VirtualMachine;

    invoke-static {}, Landroid/system/virtualmachine/VirtualizationService;->getInstance()Landroid/system/virtualmachine/VirtualizationService;

    move-result-object v3

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/system/virtualmachine/VirtualMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;Landroid/system/virtualmachine/VirtualizationService;)V

    .line 473
    .local v2, "vm":Landroid/system/virtualmachine/VirtualMachine;
    iget-object v3, v2, Landroid/system/virtualmachine/VirtualMachine;->mConfigFilePath:Ljava/io/File;

    invoke-virtual {v1, v3}, Landroid/system/virtualmachine/VirtualMachineConfig;->serialize(Ljava/io/File;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_62

    .line 475
    :try_start_1b
    iget-object v3, v2, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_59
    .catchall {:try_start_1b .. :try_end_20} :catchall_62

    .line 478
    nop

    .line 479
    :try_start_21
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->getInstanceImgFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/system/virtualmachine/VirtualMachine;->importInstanceFrom(Landroid/os/ParcelFileDescriptor;)V

    .line 481
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->getEncryptedStoreFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_62

    if-eqz v3, :cond_45

    .line 483
    :try_start_2e
    iget-object v3, v2, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_3c
    .catchall {:try_start_2e .. :try_end_33} :catchall_62

    .line 487
    nop

    .line 488
    :try_start_34
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->getEncryptedStoreFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/system/virtualmachine/VirtualMachine;->importEncryptedStoreFrom(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_45

    .line 484
    :catch_3c
    move-exception v3

    .line 485
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "failed to create encrypted storage image"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "vmDescriptor":Landroid/system/virtualmachine/VirtualMachineDescriptor;
    throw v4

    .line 490
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "vmDescriptor":Landroid/system/virtualmachine/VirtualMachineDescriptor;
    :cond_45
    :goto_45
    iget-object v3, v2, Landroid/system/virtualmachine/VirtualMachine;->mInstanceIdPath:Ljava/io/File;

    if-eqz v3, :cond_53

    .line 491
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->getInstanceIdFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/system/virtualmachine/VirtualMachine;->importInstanceIdFrom(Landroid/os/ParcelFileDescriptor;)V

    .line 492
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachine;->claimInstance()V
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_62

    .line 494
    .end local v1    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :cond_53
    if-eqz p2, :cond_58

    :try_start_55
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->close()V
    :try_end_58
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_55 .. :try_end_58} :catch_6e
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_58} :catch_6e

    .line 495
    :cond_58
    return-object v2

    .line 476
    .restart local v1    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    :catch_59
    move-exception v3

    .line 477
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_5a
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "failed to create instance image"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "vmDescriptor":Landroid/system/virtualmachine/VirtualMachineDescriptor;
    throw v4
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_62

    .line 470
    .end local v1    # "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    .end local v2    # "vm":Landroid/system/virtualmachine/VirtualMachine;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "vmDescriptor":Landroid/system/virtualmachine/VirtualMachineDescriptor;
    :catchall_62
    move-exception v1

    if-eqz p2, :cond_6d

    :try_start_65
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception v2

    :try_start_6a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "vmDir":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "vmDescriptor":Landroid/system/virtualmachine/VirtualMachineDescriptor;
    :cond_6d
    :goto_6d
    throw v1
    :try_end_6e
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_6a .. :try_end_6e} :catch_6e
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6e} :catch_6e

    .line 496
    .restart local v0    # "vmDir":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "vmDescriptor":Landroid/system/virtualmachine/VirtualMachineDescriptor;
    :catch_6e
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6f
    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachine;->deleteRecursively(Ljava/io/File;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73

    .line 502
    goto :goto_77

    .line 500
    :catch_73
    move-exception v2

    .line 501
    .local v2, "innerException":Ljava/lang/Exception;
    invoke-virtual {v1, v2}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 503
    .end local v2    # "innerException":Ljava/lang/Exception;
    :goto_77
    throw v1
.end method

.method private blacklist getHostConsoleName()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 1716
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mConnectVmConsole:Z

    if-eqz v0, :cond_11

    .line 1719
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1720
    :try_start_7
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->createPtyConsole()V

    .line 1721
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mPtsName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1722
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1

    .line 1717
    :cond_11
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v1, "Host console is not enabled"

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getRunningVm()Landroid/system/virtualizationservice/IVirtualMachine;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 830
    :try_start_0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    .line 831
    invoke-interface {v0}, Landroid/system/virtualizationservice/IVirtualMachine;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/system/virtualmachine/VirtualMachine;->stateToStatus(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 832
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    return-object v0

    .line 834
    :cond_14
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mWasDeleted:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmRootPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_29

    .line 837
    :cond_21
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v1, "VM is not in running state"

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v0

    .line 835
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :cond_29
    :goto_29
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v1, "VM has been deleted"

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v0
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_31} :catch_31

    .line 840
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :catch_31
    move-exception v0

    .line 841
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static blacklist getVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 697
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 700
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "vm"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 701
    .local v0, "vmRoot":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 698
    .end local v0    # "vmRoot":Ljava/io/File;
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid VM name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist importEncryptedStoreFrom(Landroid/os/ParcelFileDescriptor;)V
    .registers 9
    .param p1, "encryptedStoreFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 2327
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_44

    move-object v1, v0

    .line 2328
    .local v1, "storeOutput":Ljava/nio/channels/FileChannel;
    :try_start_c
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_37

    .line 2329
    .local v2, "storeInput":Ljava/nio/channels/FileChannel;
    :try_start_15
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_2a

    .line 2330
    if-eqz v2, :cond_23

    :try_start_20
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_37

    .end local v2    # "storeInput":Ljava/nio/channels/FileChannel;
    :cond_23
    if-eqz v1, :cond_28

    :try_start_25
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_44

    .line 2332
    .end local v1    # "storeOutput":Ljava/nio/channels/FileChannel;
    :cond_28
    nop

    .line 2333
    return-void

    .line 2327
    .restart local v1    # "storeOutput":Ljava/nio/channels/FileChannel;
    .restart local v2    # "storeInput":Ljava/nio/channels/FileChannel;
    :catchall_2a
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_36

    :try_start_2e
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception v0

    :try_start_33
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "storeOutput":Ljava/nio/channels/FileChannel;
    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .end local p1    # "encryptedStoreFd":Landroid/os/ParcelFileDescriptor;
    :cond_36
    :goto_36
    throw v3
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    .end local v2    # "storeInput":Ljava/nio/channels/FileChannel;
    .restart local v1    # "storeOutput":Ljava/nio/channels/FileChannel;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .restart local p1    # "encryptedStoreFd":Landroid/os/ParcelFileDescriptor;
    :catchall_37
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_43

    :try_start_3b
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v0

    :try_start_40
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .end local p1    # "encryptedStoreFd":Landroid/os/ParcelFileDescriptor;
    :cond_43
    :goto_43
    throw v2
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_44

    .line 2330
    .end local v1    # "storeOutput":Ljava/nio/channels/FileChannel;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .restart local p1    # "encryptedStoreFd":Landroid/os/ParcelFileDescriptor;
    :catch_44
    move-exception v0

    .line 2331
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "failed to transfer encryptedstore image"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist importInstanceFrom(Landroid/os/ParcelFileDescriptor;)V
    .registers 9
    .param p1, "instanceFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 2317
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_44

    move-object v1, v0

    .line 2318
    .local v1, "instance":Ljava/nio/channels/FileChannel;
    :try_start_c
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_37

    .line 2319
    .local v2, "instanceInput":Ljava/nio/channels/FileChannel;
    :try_start_15
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_2a

    .line 2320
    if-eqz v2, :cond_23

    :try_start_20
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_37

    .end local v2    # "instanceInput":Ljava/nio/channels/FileChannel;
    :cond_23
    if-eqz v1, :cond_28

    :try_start_25
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_44

    .line 2322
    .end local v1    # "instance":Ljava/nio/channels/FileChannel;
    :cond_28
    nop

    .line 2323
    return-void

    .line 2317
    .restart local v1    # "instance":Ljava/nio/channels/FileChannel;
    .restart local v2    # "instanceInput":Ljava/nio/channels/FileChannel;
    :catchall_2a
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_36

    :try_start_2e
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception v0

    :try_start_33
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "instance":Ljava/nio/channels/FileChannel;
    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .end local p1    # "instanceFd":Landroid/os/ParcelFileDescriptor;
    :cond_36
    :goto_36
    throw v3
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    .end local v2    # "instanceInput":Ljava/nio/channels/FileChannel;
    .restart local v1    # "instance":Ljava/nio/channels/FileChannel;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .restart local p1    # "instanceFd":Landroid/os/ParcelFileDescriptor;
    :catchall_37
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_43

    :try_start_3b
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v0

    :try_start_40
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .end local p1    # "instanceFd":Landroid/os/ParcelFileDescriptor;
    :cond_43
    :goto_43
    throw v2
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_44

    .line 2320
    .end local v1    # "instance":Ljava/nio/channels/FileChannel;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .restart local p1    # "instanceFd":Landroid/os/ParcelFileDescriptor;
    :catch_44
    move-exception v0

    .line 2321
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "failed to transfer instance image"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist importInstanceIdFrom(Landroid/os/ParcelFileDescriptor;)V
    .registers 9
    .param p1, "instanceIdFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 2307
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceIdPath:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_44

    move-object v1, v0

    .line 2308
    .local v1, "idOutput":Ljava/nio/channels/FileChannel;
    :try_start_c
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_37

    .line 2309
    .local v2, "idInput":Ljava/nio/channels/FileChannel;
    :try_start_15
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_2a

    .line 2310
    if-eqz v2, :cond_23

    :try_start_20
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_37

    .end local v2    # "idInput":Ljava/nio/channels/FileChannel;
    :cond_23
    if-eqz v1, :cond_28

    :try_start_25
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_44

    .line 2312
    .end local v1    # "idOutput":Ljava/nio/channels/FileChannel;
    :cond_28
    nop

    .line 2313
    return-void

    .line 2307
    .restart local v1    # "idOutput":Ljava/nio/channels/FileChannel;
    .restart local v2    # "idInput":Ljava/nio/channels/FileChannel;
    :catchall_2a
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_36

    :try_start_2e
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception v0

    :try_start_33
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "idOutput":Ljava/nio/channels/FileChannel;
    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .end local p1    # "instanceIdFd":Landroid/os/ParcelFileDescriptor;
    :cond_36
    :goto_36
    throw v3
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    .end local v2    # "idInput":Ljava/nio/channels/FileChannel;
    .restart local v1    # "idOutput":Ljava/nio/channels/FileChannel;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .restart local p1    # "instanceIdFd":Landroid/os/ParcelFileDescriptor;
    :catchall_37
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_43

    :try_start_3b
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v0

    :try_start_40
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .end local p1    # "instanceIdFd":Landroid/os/ParcelFileDescriptor;
    :cond_43
    :goto_43
    throw v2
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_44

    .line 2310
    .end local v1    # "idOutput":Ljava/nio/channels/FileChannel;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .restart local p1    # "instanceIdFd":Landroid/os/ParcelFileDescriptor;
    :catch_44
    move-exception v0

    .line 2311
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "failed to copy instance_id"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic blacklist lambda$createPtyConsole$2(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[B)V
    .registers 7
    .param p0, "fd"    # Ljava/util/List;
    .param p1, "nameBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "mfd"    # Ljava/io/FileDescriptor;
    .param p3, "sfd"    # Ljava/io/FileDescriptor;
    .param p4, "ptsName"    # [B

    .line 1687
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1688
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1689
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p4, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    return-void
.end method

.method static synthetic blacklist lambda$executeCallback$0(Ljava/util/function/Consumer;Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .registers 2
    .param p0, "fn"    # Ljava/util/function/Consumer;
    .param p1, "callback"    # Landroid/system/virtualmachine/VirtualMachineCallback;

    .line 887
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$run$1()V
    .registers 4

    .line 1546
    nop

    :goto_1
    :try_start_1
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mInputEventQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1547
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1548
    .local v0, "event":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/system/virtualmachine/VirtualMachine$InputEventType;Landroid/view/MotionEvent;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    invoke-virtual {v1}, Landroid/system/virtualmachine/VirtualMachine$InputEventType;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    goto :goto_2d

    .line 1553
    :pswitch_15
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Landroid/system/virtualmachine/VirtualMachine;->sendTrackpadEventInternal(Landroid/view/MotionEvent;)Z

    .line 1554
    goto :goto_2d

    .line 1556
    :pswitch_1d
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Landroid/system/virtualmachine/VirtualMachine;->sendMouseEventInternal(Landroid/view/MotionEvent;)Z

    goto :goto_2d

    .line 1550
    :pswitch_25
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Landroid/system/virtualmachine/VirtualMachine;->sendMultiTouchEventInternal(Landroid/view/MotionEvent;)Z

    .line 1551
    nop

    .line 1559
    :goto_2d
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_35

    .end local v0    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/system/virtualmachine/VirtualMachine$InputEventType;Landroid/view/MotionEvent;>;"
    goto :goto_3f

    .line 1560
    :catch_35
    move-exception v0

    .line 1561
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VirtualMachine"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3f
    goto :goto_1

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_25
        :pswitch_1d
        :pswitch_15
    .end packed-switch
.end method

.method static blacklist load(Landroid/content/Context;Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 599
    invoke-static {p0, p1}, Landroid/system/virtualmachine/VirtualMachine;->getVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 600
    .local v0, "thisVmDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    .line 602
    const/4 v1, 0x0

    return-object v1

    .line 604
    :cond_c
    new-instance v1, Ljava/io/File;

    const-string v2, "config.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 605
    .local v1, "configFilePath":Ljava/io/File;
    invoke-static {v1}, Landroid/system/virtualmachine/VirtualMachineConfig;->from(Ljava/io/File;)Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v2

    .line 606
    .local v2, "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    new-instance v3, Landroid/system/virtualmachine/VirtualMachine;

    .line 607
    invoke-static {}, Landroid/system/virtualmachine/VirtualizationService;->getInstance()Landroid/system/virtualmachine/VirtualizationService;

    move-result-object v4

    invoke-direct {v3, p0, p1, v2, v4}, Landroid/system/virtualmachine/VirtualMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;Landroid/system/virtualmachine/VirtualizationService;)V

    .line 609
    .local v3, "vm":Landroid/system/virtualmachine/VirtualMachine;
    iget-object v4, v3, Landroid/system/virtualmachine/VirtualMachine;->mInstanceIdPath:Ljava/io/File;

    if-eqz v4, :cond_35

    iget-object v4, v3, Landroid/system/virtualmachine/VirtualMachine;->mInstanceIdPath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_35

    .line 610
    :cond_2d
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "instance_id file missing"

    invoke-direct {v4, v5}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 612
    :cond_35
    :goto_35
    iget-object v4, v3, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 615
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineConfig;->isEncryptedStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_54

    iget-object v4, v3, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_54

    .line 616
    :cond_4c
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "Storage image missing"

    invoke-direct {v4, v5}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 618
    :cond_54
    :goto_54
    return-object v3

    .line 613
    :cond_55
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "instance image missing"

    invoke-direct {v4, v5}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static native blacklist nativeBinderFromPreconnectedClient(Landroid/system/virtualmachine/VirtualMachine$NativeProviderWrapper;)Landroid/os/IBinder;
.end method

.method private static native blacklist nativeOpenPtyRawNonblock(Landroid/system/virtualmachine/VirtualMachine$OpenPtyCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static blacklist notifyInstanceRemoval(Ljava/io/File;Landroid/system/virtualmachine/VirtualizationService;)V
    .registers 6
    .param p0, "vmDirectory"    # Ljava/io/File;
    .param p1, "service"    # Landroid/system/virtualmachine/VirtualizationService;

    .line 647
    new-instance v0, Ljava/io/File;

    const-string v1, "instance_id"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 649
    .local v0, "instanceIdFile":Ljava/io/File;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    .line 650
    .local v1, "instanceId":[B
    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualizationService;->getBinder()Landroid/system/virtualizationservice/IVirtualizationService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/system/virtualizationservice/IVirtualizationService;->removeVmInstance([B)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_17

    .line 655
    .end local v1    # "instanceId":[B
    goto :goto_1f

    .line 651
    :catch_17
    move-exception v1

    .line 654
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VirtualMachine"

    const-string v3, "Failed to notify VS to remove the VM instance"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method private static blacklist parseExtraApkListFromPayloadConfig(Landroid/util/JsonReader;)Ljava/util/List;
    .registers 4
    .param p0, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 2253
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2255
    .local v0, "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 2256
    :goto_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2257
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_apks"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2258
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 2259
    :goto_1d
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2260
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 2261
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 2262
    .local v1, "name":Ljava/lang/String;
    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 2263
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 2265
    :cond_3a
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 2267
    :goto_3d
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 2268
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_1d

    .line 2269
    :cond_41
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_8

    .line 2271
    :cond_45
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    .line 2274
    :cond_49
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4c} :catch_4d

    .line 2275
    return-object v0

    .line 2276
    .end local v0    # "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_4d
    move-exception v0

    .line 2277
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    invoke-direct {v1, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist sendMouseEventInternal(Landroid/view/MotionEvent;)Z
    .registers 21
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 987
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/system/virtualmachine/VirtualMachine;->mMouseSock:Landroid/os/ParcelFileDescriptor;

    const-string v3, "VirtualMachine"

    const/4 v4, 0x0

    if-nez v2, :cond_11

    .line 988
    const-string v2, "mMouseSock == null"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return v4

    .line 992
    :cond_11
    const/4 v2, 0x0

    .line 993
    .local v2, "EV_SYN":S
    const/4 v5, 0x2

    .line 994
    .local v5, "EV_REL":S
    const/4 v6, 0x1

    .line 995
    .local v6, "EV_KEY":S
    const/4 v7, 0x0

    .line 996
    .local v7, "REL_X":S
    const/4 v8, 0x1

    .line 997
    .local v8, "REL_Y":S
    const/4 v9, 0x0

    .line 998
    .local v9, "SYN_REPORT":S
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    sparse-switch v10, :sswitch_data_110

    .line 1068
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const/16 v17, 0x0

    return v17

    .line 1010
    :sswitch_29
    const/16 v10, 0x110

    .line 1011
    .local v10, "BTN_LEFT":S
    const/16 v14, 0x111

    .line 1012
    .local v14, "BTN_RIGHT":S
    const/16 v15, 0x112

    .line 1014
    .local v15, "BTN_MIDDLE":S
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v16

    packed-switch v16, :pswitch_data_12a

    .line 1025
    :pswitch_36
    move/from16 v18, v10

    move v10, v4

    .end local v10    # "BTN_LEFT":S
    .local v18, "BTN_LEFT":S
    invoke-virtual {v1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    return v10

    .line 1022
    .end local v18    # "BTN_LEFT":S
    .restart local v10    # "BTN_LEFT":S
    :pswitch_41
    move v3, v15

    .line 1023
    .local v3, "keyCode":S
    goto :goto_47

    .line 1019
    .end local v3    # "keyCode":S
    :pswitch_43
    move v3, v14

    .line 1020
    .restart local v3    # "keyCode":S
    goto :goto_47

    .line 1016
    .end local v3    # "keyCode":S
    :pswitch_45
    move v3, v10

    .line 1017
    .restart local v3    # "keyCode":S
    nop

    .line 1028
    :goto_47
    const/16 v16, 0x1

    iget-object v12, v0, Landroid/system/virtualmachine/VirtualMachine;->mMouseSock:Landroid/os/ParcelFileDescriptor;

    new-array v11, v11, [Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    move/from16 v17, v4

    new-instance v4, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1034
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    move/from16 v18, v10

    .end local v10    # "BTN_LEFT":S
    .restart local v18    # "BTN_LEFT":S
    const/16 v10, 0xb

    if-ne v13, v10, :cond_5e

    .line 1035
    move/from16 v10, v16

    goto :goto_60

    .line 1036
    :cond_5e
    move/from16 v10, v17

    :goto_60
    const/4 v13, 0x0

    invoke-direct {v4, v6, v3, v10, v13}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v4, v11, v17

    new-instance v4, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    move/from16 v10, v17

    invoke-direct {v4, v2, v9, v10, v13}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v4, v11, v16

    .line 1030
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1028
    invoke-direct {v0, v12, v4}, Landroid/system/virtualmachine/VirtualMachine;->writeEventsToSock(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)Z

    move-result v4

    return v4

    .line 1039
    .end local v3    # "keyCode":S
    .end local v14    # "BTN_RIGHT":S
    .end local v15    # "BTN_MIDDLE":S
    .end local v18    # "BTN_LEFT":S
    :sswitch_78
    const/16 v16, 0x1

    const/4 v4, 0x6

    .line 1040
    .local v4, "REL_HWHEEL":S
    const/16 v10, 0x8

    .line 1041
    .local v10, "REL_WHEEL":S
    const/16 v12, 0xa

    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    float-to-int v12, v12

    .line 1042
    .local v12, "scrollX":I
    const/16 v13, 0x9

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v13

    float-to-int v13, v13

    .line 1043
    .local v13, "scrollY":I
    const/4 v14, 0x1

    .line 1044
    .local v14, "status":Z
    if-eqz v12, :cond_af

    .line 1045
    iget-object v3, v0, Landroid/system/virtualmachine/VirtualMachine;->mMouseSock:Landroid/os/ParcelFileDescriptor;

    new-array v11, v11, [Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    new-instance v15, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    const/4 v1, 0x0

    invoke-direct {v15, v5, v4, v12, v1}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/4 v1, 0x0

    aput-object v15, v11, v1

    new-instance v15, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    move/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "REL_HWHEEL":S
    .local v18, "REL_HWHEEL":S
    invoke-direct {v15, v2, v9, v1, v4}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v15, v11, v16

    .line 1048
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1046
    invoke-direct {v0, v3, v1}, Landroid/system/virtualmachine/VirtualMachine;->writeEventsToSock(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)Z

    move-result v1

    and-int/2addr v1, v14

    .end local v14    # "status":Z
    .local v1, "status":Z
    goto :goto_d0

    .line 1051
    .end local v1    # "status":Z
    .end local v18    # "REL_HWHEEL":S
    .restart local v4    # "REL_HWHEEL":S
    .restart local v14    # "status":Z
    :cond_af
    move/from16 v18, v4

    .end local v4    # "REL_HWHEEL":S
    .restart local v18    # "REL_HWHEEL":S
    if-eqz v13, :cond_d1

    .line 1052
    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachine;->mMouseSock:Landroid/os/ParcelFileDescriptor;

    new-array v3, v11, [Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    new-instance v4, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    const/4 v11, 0x0

    invoke-direct {v4, v5, v10, v13, v11}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/4 v15, 0x0

    aput-object v4, v3, v15

    new-instance v4, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v4, v2, v9, v15, v11}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v4, v3, v16

    .line 1055
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1053
    invoke-direct {v0, v1, v3}, Landroid/system/virtualmachine/VirtualMachine;->writeEventsToSock(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)Z

    move-result v1

    and-int/2addr v1, v14

    .line 1062
    .end local v14    # "status":Z
    .restart local v1    # "status":Z
    :goto_d0
    return v1

    .line 1059
    .end local v1    # "status":Z
    .restart local v14    # "status":Z
    :cond_d1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/16 v17, 0x0

    return v17

    .line 1000
    .end local v10    # "REL_WHEEL":S
    .end local v12    # "scrollX":I
    .end local v13    # "scrollY":I
    .end local v14    # "status":Z
    .end local v18    # "REL_HWHEEL":S
    :sswitch_db
    const/16 v16, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1001
    .local v1, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 1002
    .local v3, "y":I
    iget-object v4, v0, Landroid/system/virtualmachine/VirtualMachine;->mMouseSock:Landroid/os/ParcelFileDescriptor;

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    new-instance v12, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    const/4 v13, 0x0

    invoke-direct {v12, v5, v7, v1, v13}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/4 v15, 0x0

    aput-object v12, v10, v15

    new-instance v12, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v12, v5, v8, v3, v13}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v12, v10, v16

    new-instance v12, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v12, v2, v9, v15, v13}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v12, v10, v11

    .line 1004
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1002
    invoke-direct {v0, v4, v10}, Landroid/system/virtualmachine/VirtualMachine;->writeEventsToSock(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)Z

    move-result v4

    return v4

    .line 1066
    .end local v1    # "x":I
    .end local v3    # "y":I
    :sswitch_10c
    const/16 v16, 0x1

    return v16

    nop

    :sswitch_data_110
    .sparse-switch
        0x0 -> :sswitch_10c
        0x1 -> :sswitch_10c
        0x2 -> :sswitch_db
        0x8 -> :sswitch_78
        0xb -> :sswitch_29
        0xc -> :sswitch_29
    .end sparse-switch

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_45
        :pswitch_43
        :pswitch_36
        :pswitch_41
    .end packed-switch
.end method

.method private blacklist sendMultiTouchEventInternal(Landroid/view/MotionEvent;)Z
    .registers 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1087
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/system/virtualmachine/VirtualMachine;->mTouchSock:Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    if-nez v2, :cond_11

    .line 1088
    const-string v2, "VirtualMachine"

    const-string v4, "mTouchSock == null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    return v3

    .line 1092
    :cond_11
    const/4 v2, 0x0

    .line 1093
    .local v2, "EV_SYN":S
    const/4 v4, 0x3

    .line 1094
    .local v4, "EV_ABS":S
    const/4 v5, 0x1

    .line 1095
    .local v5, "EV_KEY":S
    const/16 v6, 0x14a

    .line 1096
    .local v6, "BTN_TOUCH":S
    const/4 v7, 0x0

    .line 1097
    .local v7, "ABS_X":S
    const/4 v8, 0x1

    .line 1098
    .local v8, "ABS_Y":S
    const/4 v9, 0x0

    .line 1099
    .local v9, "SYN_REPORT":S
    const/16 v10, 0x2f

    .line 1100
    .local v10, "ABS_MT_SLOT":S
    const/16 v11, 0x35

    .line 1101
    .local v11, "ABS_MT_POSITION_X":S
    const/16 v12, 0x36

    .line 1102
    .local v12, "ABS_MT_POSITION_Y":S
    const/16 v13, 0x39

    .line 1104
    .local v13, "ABS_MT_TRACKING_ID":S
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    const/16 v16, 0x1

    const/16 v17, 0x6

    packed-switch v14, :pswitch_data_146

    .line 1129
    :pswitch_2c
    move v1, v6

    move v6, v2

    move-object v2, v0

    move v0, v3

    .end local v2    # "EV_SYN":S
    .local v1, "BTN_TOUCH":S
    .local v6, "EV_SYN":S
    return v0

    .line 1106
    .end local v1    # "BTN_TOUCH":S
    .restart local v2    # "EV_SYN":S
    .local v6, "BTN_TOUCH":S
    :pswitch_31
    new-instance v14, Ljava/util/ArrayList;

    .line 1108
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v18

    mul-int/lit8 v18, v18, 0x6

    add-int/lit8 v3, v18, 0x1

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1110
    .local v14, "events":Ljava/util/List;, "Ljava/util/List<Landroid/system/virtualmachine/VirtualMachine$InputEvent;>;"
    const/4 v3, 0x0

    .local v3, "actionIdx":I
    :goto_3f
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    if-ge v3, v15, :cond_93

    .line 1111
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1112
    .local v15, "pointerId":I
    move/from16 v20, v5

    .end local v5    # "EV_KEY":S
    .local v20, "EV_KEY":S
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v5

    float-to-int v5, v5

    .line 1113
    .local v5, "x":I
    move/from16 v21, v6

    .end local v6    # "BTN_TOUCH":S
    .local v21, "BTN_TOUCH":S
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v6

    float-to-int v6, v6

    .line 1114
    .local v6, "y":I
    move/from16 v16, v3

    .end local v3    # "actionIdx":I
    .local v16, "actionIdx":I
    new-instance v3, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    const/4 v1, 0x0

    invoke-direct {v3, v4, v10, v15, v1}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    new-instance v3, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v3, v4, v13, v15, v1}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    new-instance v3, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v3, v4, v11, v5, v1}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    new-instance v3, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v3, v4, v12, v6, v1}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    new-instance v3, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v3, v4, v7, v5, v1}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    new-instance v3, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v3, v4, v8, v6, v1}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1110
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v15    # "pointerId":I
    add-int/lit8 v3, v16, 0x1

    move-object/from16 v1, p1

    move/from16 v5, v20

    move/from16 v6, v21

    .end local v16    # "actionIdx":I
    .restart local v3    # "actionIdx":I
    goto :goto_3f

    .end local v20    # "EV_KEY":S
    .end local v21    # "BTN_TOUCH":S
    .local v5, "EV_KEY":S
    .local v6, "BTN_TOUCH":S
    :cond_93
    move/from16 v16, v3

    move/from16 v20, v5

    const/4 v1, 0x0

    .line 1121
    .end local v3    # "actionIdx":I
    .end local v5    # "EV_KEY":S
    .restart local v20    # "EV_KEY":S
    new-instance v3, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v9, v5, v1}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachine;->mTouchSock:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1, v14}, Landroid/system/virtualmachine/VirtualMachine;->writeEventsToSock(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)Z

    move-result v1

    return v1

    .line 1127
    .end local v14    # "events":Ljava/util/List;, "Ljava/util/List<Landroid/system/virtualmachine/VirtualMachine$InputEvent;>;"
    .end local v20    # "EV_KEY":S
    .restart local v5    # "EV_KEY":S
    :pswitch_a8
    move/from16 v20, v5

    move/from16 v21, v6

    .line 1132
    .end local v5    # "EV_KEY":S
    .end local v6    # "BTN_TOUCH":S
    .restart local v20    # "EV_KEY":S
    .restart local v21    # "BTN_TOUCH":S
    nop

    .line 1133
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_bd

    .line 1134
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v3, :cond_bb

    goto :goto_bd

    :cond_bb
    const/4 v1, 0x0

    goto :goto_bf

    :cond_bd
    :goto_bd
    move/from16 v1, v16

    .line 1135
    .local v1, "down":Z
    :goto_bf
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 1136
    .local v5, "actionIdx":I
    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1137
    .local v14, "pointerId":I
    invoke-virtual {v6, v5}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v15

    float-to-int v15, v15

    .line 1138
    .local v15, "x":I
    move/from16 v22, v3

    invoke-virtual {v6, v5}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v3

    float-to-int v3, v3

    .line 1139
    .local v3, "y":I
    move/from16 v23, v1

    .end local v1    # "down":Z
    .local v23, "down":Z
    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachine;->mTouchSock:Landroid/os/ParcelFileDescriptor;

    move/from16 v24, v5

    .end local v5    # "actionIdx":I
    .local v24, "actionIdx":I
    const/16 v5, 0x8

    new-array v5, v5, [Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    move-object/from16 v25, v5

    new-instance v5, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1142
    if-eqz v23, :cond_e8

    move/from16 v6, v16

    goto :goto_e9

    :cond_e8
    const/4 v6, 0x0

    :goto_e9
    move-object/from16 v18, v1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "EV_SYN":S
    .end local v21    # "BTN_TOUCH":S
    .local v0, "EV_KEY":S
    .local v1, "BTN_TOUCH":S
    .local v20, "EV_SYN":S
    invoke-direct {v5, v0, v1, v6, v2}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/16 v19, 0x0

    aput-object v5, v25, v19

    new-instance v5, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v5, v4, v10, v14, v2}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v5, v25, v16

    new-instance v5, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1144
    if-eqz v23, :cond_106

    move v6, v14

    goto :goto_107

    :cond_106
    const/4 v6, -0x1

    :goto_107
    invoke-direct {v5, v4, v13, v6, v2}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/4 v6, 0x2

    aput-object v5, v25, v6

    new-instance v5, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v5, v4, v11, v15, v2}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/4 v6, 0x3

    aput-object v5, v25, v6

    new-instance v5, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v5, v4, v12, v3, v2}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/4 v6, 0x4

    aput-object v5, v25, v6

    new-instance v5, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v5, v4, v7, v15, v2}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v5, v25, v22

    new-instance v5, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v5, v4, v8, v3, v2}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v5, v25, v17

    new-instance v5, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    move/from16 v6, v20

    move/from16 v20, v0

    const/4 v0, 0x0

    .end local v0    # "EV_KEY":S
    .local v6, "EV_SYN":S
    .local v20, "EV_KEY":S
    invoke-direct {v5, v6, v9, v0, v2}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/4 v0, 0x7

    aput-object v5, v25, v0

    .line 1141
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1139
    move-object/from16 v2, p0

    move-object/from16 v5, v18

    invoke-direct {v2, v5, v0}, Landroid/system/virtualmachine/VirtualMachine;->writeEventsToSock(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_a8
        :pswitch_31
        :pswitch_2c
        :pswitch_2c
        :pswitch_a8
        :pswitch_a8
    .end packed-switch
.end method

.method private blacklist sendTrackpadEventInternal(Landroid/view/MotionEvent;)Z
    .registers 48
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1204
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/system/virtualmachine/VirtualMachine;->mTrackpadSock:Landroid/os/ParcelFileDescriptor;

    const-string v3, "VirtualMachine"

    const/4 v4, 0x0

    if-nez v2, :cond_11

    .line 1205
    const-string v2, "mTrackpadSock == null"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    return v4

    .line 1209
    :cond_11
    const/4 v2, 0x0

    .line 1210
    .local v2, "EV_SYN":S
    const/4 v5, 0x3

    .line 1211
    .local v5, "EV_ABS":S
    const/4 v6, 0x1

    .line 1212
    .local v6, "EV_KEY":S
    const/16 v7, 0x14a

    .line 1213
    .local v7, "BTN_TOUCH":S
    const/16 v8, 0x145

    .line 1214
    .local v8, "BTN_TOOL_FINGER":S
    const/16 v9, 0x14d

    .line 1215
    .local v9, "BTN_TOOL_DOUBLETAP":S
    const/16 v10, 0x14e

    .line 1216
    .local v10, "BTN_TOOL_TRIPLETAP":S
    const/16 v11, 0x14f

    .line 1217
    .local v11, "BTN_TOOL_QUADTAP":S
    const/4 v12, 0x0

    .line 1218
    .local v12, "ABS_X":S
    const/4 v13, 0x1

    .line 1219
    .local v13, "ABS_Y":S
    const/4 v14, 0x0

    .line 1220
    .local v14, "SYN_REPORT":S
    const/16 v15, 0x2f

    .line 1221
    .local v15, "ABS_MT_SLOT":S
    move/from16 v16, v4

    const/16 v4, 0x30

    .line 1222
    .local v4, "ABS_MT_TOUCH_MAJOR":S
    move/from16 v17, v11

    .end local v11    # "BTN_TOOL_QUADTAP":S
    .local v17, "BTN_TOOL_QUADTAP":S
    const/16 v11, 0x31

    .line 1223
    .local v11, "ABS_MT_TOUCH_MINOR":S
    const/16 v18, 0x32

    .line 1224
    .local v18, "ABS_MT_WIDTH_MAJOR":S
    const/16 v19, 0x33

    .line 1225
    .local v19, "ABS_MT_WIDTH_MINOR":S
    const/16 v20, 0x34

    .line 1226
    .local v20, "ABS_MT_ORIENTATION":S
    move/from16 v21, v10

    .end local v10    # "BTN_TOOL_TRIPLETAP":S
    .local v21, "BTN_TOOL_TRIPLETAP":S
    const/16 v10, 0x35

    .line 1227
    .local v10, "ABS_MT_POSITION_X":S
    move/from16 v22, v9

    .end local v9    # "BTN_TOOL_DOUBLETAP":S
    .local v22, "BTN_TOOL_DOUBLETAP":S
    const/16 v9, 0x36

    .line 1228
    .local v9, "ABS_MT_POSITION_Y":S
    move/from16 v23, v8

    .end local v8    # "BTN_TOOL_FINGER":S
    .local v23, "BTN_TOOL_FINGER":S
    const/16 v8, 0x37

    .line 1229
    .local v8, "ABS_MT_TOOL_TYPE":S
    const/16 v24, 0x38

    .line 1230
    .local v24, "ABS_MT_BLOB_ID":S
    move/from16 v25, v8

    .end local v8    # "ABS_MT_TOOL_TYPE":S
    .local v25, "ABS_MT_TOOL_TYPE":S
    const/16 v8, 0x39

    .line 1231
    .local v8, "ABS_MT_TRACKING_ID":S
    move/from16 v26, v7

    .end local v7    # "BTN_TOUCH":S
    .local v26, "BTN_TOUCH":S
    const/16 v7, 0x3a

    .line 1232
    .local v7, "ABS_MT_PRESSURE":S
    const/16 v27, 0x3b

    .line 1233
    .local v27, "ABS_MT_DISTANCE":S
    const/16 v28, 0x3c

    .line 1234
    .local v28, "ABS_MT_TOOL_X":S
    const/16 v29, 0x3d

    .line 1235
    .local v29, "ABS_MT_TOOL_Y":S
    move/from16 v30, v7

    .end local v7    # "ABS_MT_PRESSURE":S
    .local v30, "ABS_MT_PRESSURE":S
    const/16 v7, 0x18

    .line 1236
    .local v7, "ABS_PRESSURE":S
    const/16 v31, 0x1c

    .line 1238
    .local v31, "ABS_TOOL_WIDTH":S
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v32

    move/from16 v33, v7

    .end local v7    # "ABS_PRESSURE":S
    .local v33, "ABS_PRESSURE":S
    const/16 v34, 0xa

    const/high16 v36, 0x437f0000    # 255.0f

    const/16 v38, 0x1

    packed-switch v32, :pswitch_data_2f6

    .line 1305
    :pswitch_62
    move v1, v14

    move v14, v2

    move/from16 v2, v16

    .end local v2    # "EV_SYN":S
    .local v1, "SYN_REPORT":S
    .local v14, "EV_SYN":S
    return v2

    .line 1241
    .end local v1    # "SYN_REPORT":S
    .restart local v2    # "EV_SYN":S
    .local v14, "SYN_REPORT":S
    :pswitch_67
    const/16 v32, 0x110

    .line 1243
    .local v32, "BTN_LEFT":S
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v34

    packed-switch v34, :pswitch_data_314

    .line 1248
    move/from16 v39, v13

    move/from16 v13, v16

    .end local v13    # "ABS_Y":S
    .local v39, "ABS_Y":S
    invoke-virtual {v1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    return v13

    .line 1245
    .end local v39    # "ABS_Y":S
    .restart local v13    # "ABS_Y":S
    :pswitch_7c
    move/from16 v3, v32

    .line 1246
    .local v3, "keyCode":S
    nop

    .line 1251
    iget-object v7, v0, Landroid/system/virtualmachine/VirtualMachine;->mMouseSock:Landroid/os/ParcelFileDescriptor;

    move/from16 v39, v13

    const/4 v13, 0x2

    .end local v13    # "ABS_Y":S
    .restart local v39    # "ABS_Y":S
    new-array v13, v13, [Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    move-object/from16 v34, v13

    new-instance v13, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1257
    move/from16 v40, v12

    .end local v12    # "ABS_X":S
    .local v40, "ABS_X":S
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    move/from16 v41, v11

    const/16 v11, 0xb

    .end local v11    # "ABS_MT_TOUCH_MINOR":S
    .local v41, "ABS_MT_TOUCH_MINOR":S
    if-ne v12, v11, :cond_99

    .line 1258
    move/from16 v11, v38

    goto :goto_9b

    .line 1259
    :cond_99
    move/from16 v11, v16

    :goto_9b
    const/4 v12, 0x0

    invoke-direct {v13, v6, v3, v11, v12}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v13, v34, v16

    new-instance v11, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    move/from16 v13, v16

    invoke-direct {v11, v2, v14, v13, v12}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v11, v34, v38

    .line 1253
    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 1251
    invoke-direct {v0, v7, v11}, Landroid/system/virtualmachine/VirtualMachine;->writeEventsToSock(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)Z

    move-result v7

    return v7

    .line 1262
    .end local v3    # "keyCode":S
    .end local v32    # "BTN_LEFT":S
    .end local v39    # "ABS_Y":S
    .end local v40    # "ABS_X":S
    .end local v41    # "ABS_MT_TOUCH_MINOR":S
    .restart local v11    # "ABS_MT_TOUCH_MINOR":S
    .restart local v12    # "ABS_X":S
    .restart local v13    # "ABS_Y":S
    :pswitch_b3
    move/from16 v41, v11

    move/from16 v40, v12

    move/from16 v39, v13

    .end local v11    # "ABS_MT_TOUCH_MINOR":S
    .end local v12    # "ABS_X":S
    .end local v13    # "ABS_Y":S
    .restart local v39    # "ABS_Y":S
    .restart local v40    # "ABS_X":S
    .restart local v41    # "ABS_MT_TOUCH_MINOR":S
    new-instance v3, Ljava/util/ArrayList;

    .line 1264
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1266
    .local v3, "events":Ljava/util/List;, "Ljava/util/List<Landroid/system/virtualmachine/VirtualMachine$InputEvent;>;"
    const/4 v7, 0x0

    .local v7, "actionIdx":I
    :goto_c7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    if-ge v7, v11, :cond_16d

    .line 1267
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    .line 1268
    .local v11, "pointerId":I
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v12

    float-to-int v12, v12

    .line 1269
    .local v12, "x":I
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v13

    float-to-int v13, v13

    .line 1270
    .local v13, "y":I
    move/from16 v32, v6

    .end local v6    # "EV_KEY":S
    .local v32, "EV_KEY":S
    new-instance v6, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    const/4 v0, 0x0

    invoke-direct {v6, v5, v15, v11, v0}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    new-instance v6, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v6, v5, v8, v11, v0}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    new-instance v6, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v6, v5, v10, v12, v0}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    new-instance v6, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v6, v5, v9, v13, v0}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    new-instance v6, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1278
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    move/from16 v34, v11

    const/4 v11, 0x0

    .end local v11    # "pointerId":I
    .local v34, "pointerId":I
    invoke-direct {v6, v5, v4, v0, v11}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    .line 1274
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1279
    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1283
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v6

    float-to-int v6, v6

    int-to-short v6, v6

    move/from16 v42, v4

    move/from16 v4, v41

    .end local v41    # "ABS_MT_TOUCH_MINOR":S
    .local v4, "ABS_MT_TOUCH_MINOR":S
    .local v42, "ABS_MT_TOUCH_MAJOR":S
    invoke-direct {v0, v5, v4, v6, v11}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    .line 1279
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    move/from16 v6, v40

    .end local v40    # "ABS_X":S
    .local v6, "ABS_X":S
    invoke-direct {v0, v5, v6, v12, v11}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    move/from16 v35, v12

    move/from16 v12, v39

    .end local v39    # "ABS_Y":S
    .local v12, "ABS_Y":S
    .local v35, "x":I
    invoke-direct {v0, v5, v12, v13, v11}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1286
    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1290
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v37

    mul-float v11, v37, v36

    float-to-int v11, v11

    int-to-short v11, v11

    move/from16 v37, v13

    move/from16 v13, v33

    const/4 v12, 0x0

    .end local v12    # "ABS_Y":S
    .end local v33    # "ABS_PRESSURE":S
    .local v13, "ABS_PRESSURE":S
    .local v37, "y":I
    .restart local v39    # "ABS_Y":S
    invoke-direct {v0, v5, v13, v11, v12}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    .line 1286
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1291
    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1295
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v11

    mul-float v11, v11, v36

    float-to-int v11, v11

    int-to-short v11, v11

    move/from16 v33, v7

    move/from16 v7, v30

    .end local v30    # "ABS_MT_PRESSURE":S
    .local v7, "ABS_MT_PRESSURE":S
    .local v33, "actionIdx":I
    invoke-direct {v0, v5, v7, v11, v12}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    .line 1291
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    .end local v34    # "pointerId":I
    .end local v35    # "x":I
    .end local v37    # "y":I
    add-int/lit8 v0, v33, 0x1

    move/from16 v33, v13

    move/from16 v6, v32

    move/from16 v4, v42

    move v7, v0

    move-object/from16 v0, p0

    .end local v33    # "actionIdx":I
    .local v0, "actionIdx":I
    goto/16 :goto_c7

    .end local v0    # "actionIdx":I
    .end local v13    # "ABS_PRESSURE":S
    .end local v32    # "EV_KEY":S
    .end local v42    # "ABS_MT_TOUCH_MAJOR":S
    .local v4, "ABS_MT_TOUCH_MAJOR":S
    .local v6, "EV_KEY":S
    .local v7, "actionIdx":I
    .restart local v30    # "ABS_MT_PRESSURE":S
    .local v33, "ABS_PRESSURE":S
    .restart local v40    # "ABS_X":S
    .restart local v41    # "ABS_MT_TOUCH_MINOR":S
    :cond_16d
    const/4 v12, 0x0

    .line 1297
    .end local v7    # "actionIdx":I
    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    const/4 v11, 0x0

    invoke-direct {v0, v2, v14, v11, v12}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/system/virtualmachine/VirtualMachine;->mTrackpadSock:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v11, v3}, Landroid/system/virtualmachine/VirtualMachine;->writeEventsToSock(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)Z

    move-result v11

    return v11

    .line 1303
    .end local v3    # "events":Ljava/util/List;, "Ljava/util/List<Landroid/system/virtualmachine/VirtualMachine$InputEvent;>;"
    .end local v39    # "ABS_Y":S
    .end local v40    # "ABS_X":S
    .end local v41    # "ABS_MT_TOUCH_MINOR":S
    .local v11, "ABS_MT_TOUCH_MINOR":S
    .local v12, "ABS_X":S
    .local v13, "ABS_Y":S
    :pswitch_180
    move/from16 v42, v4

    move/from16 v32, v6

    move v4, v11

    move v6, v12

    move/from16 v39, v13

    move/from16 v7, v30

    move/from16 v13, v33

    .line 1308
    .end local v11    # "ABS_MT_TOUCH_MINOR":S
    .end local v12    # "ABS_X":S
    .end local v30    # "ABS_MT_PRESSURE":S
    .end local v33    # "ABS_PRESSURE":S
    .local v4, "ABS_MT_TOUCH_MINOR":S
    .local v6, "ABS_X":S
    .local v7, "ABS_MT_PRESSURE":S
    .local v13, "ABS_PRESSURE":S
    .restart local v32    # "EV_KEY":S
    .restart local v39    # "ABS_Y":S
    .restart local v42    # "ABS_MT_TOUCH_MAJOR":S
    nop

    .line 1309
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v11, 0x5

    if-eqz v3, :cond_19d

    .line 1310
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v11, :cond_19b

    goto :goto_19d

    :cond_19b
    const/4 v3, 0x0

    goto :goto_19f

    :cond_19d
    :goto_19d
    move/from16 v3, v38

    .line 1311
    .local v3, "down":Z
    :goto_19f
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    .line 1312
    .local v12, "actionIdx":I
    move/from16 v30, v11

    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    .line 1313
    .local v11, "pointerId":I
    move/from16 v33, v3

    .end local v3    # "down":Z
    .local v33, "down":Z
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v3

    float-to-int v3, v3

    .line 1314
    .local v3, "x":I
    move/from16 v40, v2

    .end local v2    # "EV_SYN":S
    .local v40, "EV_SYN":S
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v2

    float-to-int v2, v2

    .line 1315
    .local v2, "y":I
    move/from16 v41, v14

    .end local v14    # "SYN_REPORT":S
    .local v41, "SYN_REPORT":S
    iget-object v14, v0, Landroid/system/virtualmachine/VirtualMachine;->mTrackpadSock:Landroid/os/ParcelFileDescriptor;

    const/16 v0, 0x11

    new-array v0, v0, [Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    move-object/from16 v43, v0

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1318
    move-object/from16 v44, v14

    if-eqz v33, :cond_1ca

    move/from16 v14, v38

    goto :goto_1cb

    :cond_1ca
    const/4 v14, 0x0

    :goto_1cb
    move/from16 v45, v26

    move/from16 v26, v13

    move/from16 v13, v45

    move/from16 v45, v7

    move/from16 v7, v32

    move/from16 v32, v6

    const/4 v6, 0x0

    .end local v6    # "ABS_X":S
    .local v7, "EV_KEY":S
    .local v13, "BTN_TOUCH":S
    .local v26, "ABS_PRESSURE":S
    .local v32, "ABS_X":S
    .local v45, "ABS_MT_PRESSURE":S
    invoke-direct {v0, v7, v13, v14, v6}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/16 v16, 0x0

    aput-object v0, v43, v16

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1322
    if-eqz v33, :cond_1ed

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    move/from16 v14, v38

    if-ne v6, v14, :cond_1ef

    move v6, v14

    goto :goto_1f0

    :cond_1ed
    move/from16 v14, v38

    :cond_1ef
    const/4 v6, 0x0

    :goto_1f0
    move/from16 v38, v14

    move/from16 v14, v23

    move/from16 v23, v13

    const/4 v13, 0x0

    .end local v13    # "BTN_TOUCH":S
    .local v14, "BTN_TOOL_FINGER":S
    .local v23, "BTN_TOUCH":S
    invoke-direct {v0, v7, v14, v6, v13}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v0, v43, v38

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1324
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v13, 0x2

    if-ne v6, v13, :cond_208

    move/from16 v6, v38

    goto :goto_209

    :cond_208
    const/4 v6, 0x0

    :goto_209
    move/from16 v37, v13

    move/from16 v13, v22

    move/from16 v22, v14

    const/4 v14, 0x0

    .end local v14    # "BTN_TOOL_FINGER":S
    .local v13, "BTN_TOOL_DOUBLETAP":S
    .local v22, "BTN_TOOL_FINGER":S
    invoke-direct {v0, v7, v13, v6, v14}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v0, v43, v37

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1326
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v14, 0x3

    if-ne v6, v14, :cond_221

    move/from16 v6, v38

    goto :goto_222

    :cond_221
    const/4 v6, 0x0

    :goto_222
    move/from16 v37, v14

    move/from16 v14, v21

    move/from16 v21, v13

    const/4 v13, 0x0

    .end local v13    # "BTN_TOOL_DOUBLETAP":S
    .local v14, "BTN_TOOL_TRIPLETAP":S
    .local v21, "BTN_TOOL_DOUBLETAP":S
    invoke-direct {v0, v7, v14, v6, v13}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v0, v43, v37

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1328
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v13, 0x4

    if-le v6, v13, :cond_23a

    move/from16 v6, v38

    goto :goto_23b

    :cond_23a
    const/4 v6, 0x0

    :goto_23b
    move/from16 v37, v13

    move/from16 v13, v17

    move/from16 v17, v14

    const/4 v14, 0x0

    .end local v14    # "BTN_TOOL_TRIPLETAP":S
    .local v13, "BTN_TOOL_QUADTAP":S
    .local v17, "BTN_TOOL_TRIPLETAP":S
    invoke-direct {v0, v7, v13, v6, v14}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v0, v43, v37

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v0, v5, v15, v11, v14}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v0, v43, v30

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1330
    if-eqz v33, :cond_254

    move v6, v11

    goto :goto_255

    :cond_254
    const/4 v6, -0x1

    :goto_255
    invoke-direct {v0, v5, v8, v6, v14}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/4 v6, 0x6

    aput-object v0, v43, v6

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    move/from16 v6, v25

    move/from16 v25, v7

    const/4 v7, 0x0

    .end local v7    # "EV_KEY":S
    .local v6, "ABS_MT_TOOL_TYPE":S
    .local v25, "EV_KEY":S
    invoke-direct {v0, v5, v6, v7, v14}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/4 v7, 0x7

    aput-object v0, v43, v7

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v0, v5, v10, v3, v14}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/16 v7, 0x8

    aput-object v0, v43, v7

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v0, v5, v9, v2, v14}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/16 v7, 0x9

    aput-object v0, v43, v7

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1335
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v7

    float-to-int v7, v7

    int-to-short v7, v7

    move/from16 v30, v6

    move/from16 v6, v42

    .end local v42    # "ABS_MT_TOUCH_MAJOR":S
    .local v6, "ABS_MT_TOUCH_MAJOR":S
    .local v30, "ABS_MT_TOOL_TYPE":S
    invoke-direct {v0, v5, v6, v7, v14}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v0, v43, v34

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1337
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v7

    float-to-int v7, v7

    int-to-short v7, v7

    invoke-direct {v0, v5, v4, v7, v14}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/16 v35, 0xb

    aput-object v0, v43, v35

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    move/from16 v7, v32

    .end local v32    # "ABS_X":S
    .local v7, "ABS_X":S
    invoke-direct {v0, v5, v7, v3, v14}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/16 v32, 0xc

    aput-object v0, v43, v32

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    move/from16 v32, v3

    move/from16 v3, v39

    .end local v39    # "ABS_Y":S
    .local v3, "ABS_Y":S
    .local v32, "x":I
    invoke-direct {v0, v5, v3, v2, v14}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/16 v34, 0xd

    aput-object v0, v43, v34

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1341
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v34

    mul-float v14, v34, v36

    float-to-int v14, v14

    int-to-short v14, v14

    move/from16 v34, v2

    move/from16 v2, v26

    const/4 v3, 0x0

    .end local v3    # "ABS_Y":S
    .end local v26    # "ABS_PRESSURE":S
    .local v2, "ABS_PRESSURE":S
    .local v34, "y":I
    .restart local v39    # "ABS_Y":S
    invoke-direct {v0, v5, v2, v14, v3}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/16 v14, 0xe

    aput-object v0, v43, v14

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1345
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v14

    mul-float v14, v14, v36

    float-to-int v14, v14

    int-to-short v14, v14

    move/from16 v1, v45

    .end local v45    # "ABS_MT_PRESSURE":S
    .local v1, "ABS_MT_PRESSURE":S
    invoke-direct {v0, v5, v1, v14, v3}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/16 v14, 0xf

    aput-object v0, v43, v14

    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    move/from16 v14, v40

    move/from16 v1, v41

    const/4 v2, 0x0

    .end local v2    # "ABS_PRESSURE":S
    .end local v40    # "EV_SYN":S
    .end local v41    # "SYN_REPORT":S
    .local v1, "SYN_REPORT":S
    .local v14, "EV_SYN":S
    .restart local v26    # "ABS_PRESSURE":S
    .restart local v45    # "ABS_MT_PRESSURE":S
    invoke-direct {v0, v14, v1, v2, v3}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/16 v2, 0x10

    aput-object v0, v43, v2

    .line 1317
    invoke-static/range {v43 .. v43}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1315
    move-object/from16 v3, p0

    move-object/from16 v2, v44

    invoke-direct {v3, v2, v0}, Landroid/system/virtualmachine/VirtualMachine;->writeEventsToSock(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)Z

    move-result v0

    return v0

    :pswitch_data_2f6
    .packed-switch 0x0
        :pswitch_180
        :pswitch_180
        :pswitch_b3
        :pswitch_62
        :pswitch_62
        :pswitch_180
        :pswitch_180
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_67
        :pswitch_67
    .end packed-switch

    :pswitch_data_314
    .packed-switch 0x1
        :pswitch_7c
    .end packed-switch
.end method

.method private static blacklist setupExtraApks(Landroid/content/Context;Landroid/system/virtualmachine/VirtualMachineConfig;Ljava/io/File;)Ljava/util/List;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/system/virtualmachine/VirtualMachineConfig;
    .param p2, "vmDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/system/virtualmachine/VirtualMachineConfig;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 2212
    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getPayloadConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 2213
    .local v0, "configPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getExtraApks()Ljava/util/List;

    move-result-object v1

    .line 2214
    .local v1, "extraApks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_f

    .line 2215
    invoke-static {p0, p2, v0}, Landroid/system/virtualmachine/VirtualMachine;->setupExtraApksFromConfigFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2216
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2217
    invoke-static {p0, p2, v1}, Landroid/system/virtualmachine/VirtualMachine;->setupExtraApksFromList(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2219
    :cond_1a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist setupExtraApksFromConfigFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vmDir"    # Ljava/io/File;
    .param p2, "configPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 2225
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_6c

    .line 2226
    .local v0, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_9
    invoke-virtual {v0, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 2227
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 2228
    invoke-static {v2}, Landroid/system/virtualmachine/VirtualMachine;->parseExtraApkListFromPayloadConfig(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v2

    .line 2231
    .local v2, "apkList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2232
    .local v3, "extraApks":Ljava/util/List;, "Ljava/util/List<Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5d

    .line 2233
    new-instance v5, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;

    new-instance v6, Ljava/io/File;

    .line 2235
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extra_idsig_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 2233
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_9 .. :try_end_5a} :catchall_62

    .line 2232
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 2239
    .end local v4    # "i":I
    :cond_5d
    nop

    .line 2240
    :try_start_5e
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_6c

    .line 2239
    return-object v3

    .line 2225
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "apkList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "extraApks":Ljava/util/List;, "Ljava/util/List<Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;>;"
    :catchall_62
    move-exception v1

    :try_start_63
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_6b

    :catchall_67
    move-exception v2

    :try_start_68
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "vmDir":Ljava/io/File;
    .end local p2    # "configPath":Ljava/lang/String;
    :goto_6b
    throw v1
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6c} :catch_6c

    .line 2240
    .end local v0    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "vmDir":Ljava/io/File;
    .restart local p2    # "configPath":Ljava/lang/String;
    :catch_6c
    move-exception v0

    .line 2241
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "Couldn\'t parse extra apks from the vm config"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist setupExtraApksFromList(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vmDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 2283
    .local p2, "extraApkInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2284
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2285
    .local v1, "extraApks":Ljava/util/List;, "Ljava/util/List<Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_55

    .line 2286
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2289
    .local v3, "packageName":Ljava/lang/String;
    nop

    .line 2290
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2292
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v5

    .line 2291
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_21} :catch_4c

    .line 2295
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 2297
    new-instance v5, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;

    new-instance v6, Ljava/io/File;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extra_idsig_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2285
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2293
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_4c
    move-exception v4

    .line 2294
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v6, "Extra APK package not found"

    invoke-direct {v5, v6, v4}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 2302
    .end local v2    # "i":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_55
    return-object v1
.end method

.method private blacklist stateToStatus(I)I
    .registers 3
    .param p1, "state"    # I

    .line 776
    packed-switch p1, :pswitch_data_8

    .line 785
    const/4 v0, 0x0

    return v0

    .line 781
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist validatePort(J)I
    .registers 6
    .param p1, "port"    # J

    .line 2111
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-ltz v0, :cond_11

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_11

    .line 2114
    long-to-int v0, p1

    return v0

    .line 2112
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist vmInstanceCleanup(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 636
    invoke-static {p0, p1}, Landroid/system/virtualmachine/VirtualMachine;->getVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 637
    .local v0, "vmDir":Ljava/io/File;
    invoke-static {}, Landroid/system/virtualmachine/VirtualizationService;->getInstance()Landroid/system/virtualmachine/VirtualizationService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/system/virtualmachine/VirtualMachine;->notifyInstanceRemoval(Ljava/io/File;Landroid/system/virtualmachine/VirtualizationService;)V

    .line 639
    :try_start_b
    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachine;->deleteRecursively(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_10

    .line 642
    nop

    .line 643
    return-void

    .line 640
    :catch_10
    move-exception v1

    .line 641
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    invoke-direct {v2, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist writeEventsToSock(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)Z
    .registers 8
    .param p1, "sock"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List<",
            "Landroid/system/virtualmachine/VirtualMachine$InputEvent;",
            ">;)Z"
        }
    .end annotation

    .line 1408
    .local p2, "evtList":Ljava/util/List;, "Ljava/util/List<Landroid/system/virtualmachine/VirtualMachine$InputEvent;>;"
    nop

    .line 1409
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1410
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1411
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1412
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1413
    .local v2, "e":Landroid/system/virtualmachine/VirtualMachine$InputEvent;
    invoke-static {v2}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->-$$Nest$fgettype(Landroid/system/virtualmachine/VirtualMachine$InputEvent;)S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1414
    invoke-static {v2}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->-$$Nest$fgetcode(Landroid/system/virtualmachine/VirtualMachine$InputEvent;)S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1415
    invoke-static {v2}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;->-$$Nest$fgetvalue(Landroid/system/virtualmachine/VirtualMachine$InputEvent;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1416
    .end local v2    # "e":Landroid/system/virtualmachine/VirtualMachine$InputEvent;
    goto :goto_17

    .line 1418
    :cond_39
    nop

    .line 1419
    const/4 v1, 0x0

    :try_start_3b
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    .line 1418
    invoke-static {v2, v3, v1, v4}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4b} :catch_4e

    .line 1423
    nop

    .line 1424
    const/4 v1, 0x1

    return v1

    .line 1420
    :catch_4e
    move-exception v2

    .line 1421
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "VirtualMachine"

    const-string v4, "cannot send event"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1422
    return v1
.end method


# virtual methods
.method blacklist claimInstance()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceIdPath:Ljava/io/File;

    if-eqz v0, :cond_27

    .line 662
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualizationService:Landroid/system/virtualmachine/VirtualizationService;

    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualizationService;->getBinder()Landroid/system/virtualizationservice/IVirtualizationService;

    move-result-object v0

    .line 664
    .local v0, "service":Landroid/system/virtualizationservice/IVirtualizationService;
    :try_start_a
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceIdPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    .line 665
    .local v1, "instanceId":[B
    invoke-interface {v0, v1}, Landroid/system/virtualizationservice/IVirtualizationService;->claimVmInstance([B)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_18

    .line 670
    .end local v1    # "instanceId":[B
    goto :goto_27

    .line 668
    :catch_18
    move-exception v1

    .line 669
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 666
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1e
    move-exception v1

    .line 667
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "failed to read instance_id"

    invoke-direct {v2, v3, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 672
    .end local v0    # "service":Landroid/system/virtualizationservice/IVirtualizationService;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_27
    :goto_27
    return-void
.end method

.method public whitelist clearCallback()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 868
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 869
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallback:Landroid/system/virtualmachine/VirtualMachineCallback;

    .line 870
    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 871
    monitor-exit v0

    .line 872
    return-void

    .line 871
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1884
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1885
    :try_start_3
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    if-nez v1, :cond_9

    .line 1886
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    return-void

    .line 1889
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    invoke-interface {v1}, Landroid/system/virtualizationservice/IVirtualMachine;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/system/virtualmachine/VirtualMachine;->stateToStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 1890
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    invoke-interface {v1}, Landroid/system/virtualizationservice/IVirtualMachine;->stop()V

    .line 1891
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->dropVm()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_1f
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_1e} :catch_1f
    .catchall {:try_start_9 .. :try_end_1e} :catchall_29

    .line 1897
    :cond_1e
    goto :goto_27

    .line 1893
    :catch_1f
    move-exception v1

    .line 1896
    .local v1, "e":Ljava/lang/Exception;
    :try_start_20
    const-string v2, "VirtualMachine"

    const-string v3, "Ignoring error on close()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1898
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_27
    monitor-exit v0

    .line 1899
    return-void

    .line 1898
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public whitelist connectToVsockServer(J)Landroid/os/IBinder;
    .registers 5
    .param p1, "port"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 2033
    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/system/virtualmachine/VirtualMachine$2;-><init>(Landroid/system/virtualmachine/VirtualMachine;J)V

    .line 2040
    .local v0, "provider":Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;
    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachine;->binderFromPreconnectedClient(Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;)Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public whitelist connectVsock(J)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "port"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 2096
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2098
    :try_start_3
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->getRunningVm()Landroid/system/virtualizationservice/IVirtualMachine;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Landroid/system/virtualmachine/VirtualMachine;->validatePort(J)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/system/virtualizationservice/IVirtualMachine;->connectVsock(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_1a
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_f} :catch_13
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    :try_start_f
    monitor-exit v0

    return-object v1

    .line 2104
    :catchall_11
    move-exception v1

    goto :goto_20

    .line 2101
    :catch_13
    move-exception v1

    .line 2102
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    invoke-direct {v2, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .end local p1    # "port":J
    throw v2

    .line 2099
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .restart local p1    # "port":J
    :catch_1a
    move-exception v1

    .line 2100
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .end local p1    # "port":J
    throw v2

    .line 2104
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .restart local p1    # "port":J
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_11

    throw v1
.end method

.method blacklist delete(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 623
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_3
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->checkStopped()V

    .line 627
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mWasDeleted:Z

    .line 628
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 629
    invoke-static {p1, p2}, Landroid/system/virtualmachine/VirtualMachine;->vmInstanceCleanup(Landroid/content/Context;Ljava/lang/String;)V

    .line 630
    return-void

    .line 628
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist enableTestAttestation()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 2144
    :try_start_0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualizationService:Landroid/system/virtualmachine/VirtualizationService;

    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualizationService;->getBinder()Landroid/system/virtualizationservice/IVirtualizationService;

    move-result-object v0

    invoke-interface {v0}, Landroid/system/virtualizationservice/IVirtualizationService;->enableTestAttestation()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 2147
    nop

    .line 2148
    return-void

    .line 2145
    :catch_b
    move-exception v0

    .line 2146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getConfig()Landroid/system/virtualmachine/VirtualMachineConfig;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 730
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 731
    :try_start_3
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfig:Landroid/system/virtualmachine/VirtualMachineConfig;

    monitor-exit v0

    return-object v1

    .line 732
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getConsoleInput()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 1767
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmConsoleInputSupported:Z

    if-eqz v0, :cond_1a

    .line 1770
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1771
    :try_start_7
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->createVmInputPipes()V

    .line 1772
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleInWriter:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    monitor-exit v0

    return-object v1

    .line 1773
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    .line 1768
    :cond_1a
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v1, "VM console input is not supported"

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getConsoleOutput()Ljava/io/InputStream;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 1743
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmOutputCaptured:Z

    if-eqz v0, :cond_1a

    .line 1746
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1747
    :try_start_7
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->createVmOutputPipes()V

    .line 1748
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleOutReader:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    monitor-exit v0

    return-object v1

    .line 1749
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    .line 1744
    :cond_1a
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v1, "Capturing vm outputs is turned off"

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLogOutput()Ljava/io/InputStream;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 1794
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmOutputCaptured:Z

    if-eqz v0, :cond_1a

    .line 1797
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1798
    :try_start_7
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->createVmOutputPipes()V

    .line 1799
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mLogReader:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    monitor-exit v0

    return-object v1

    .line 1800
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    .line 1795
    :cond_1a
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v1, "Capturing vm outputs is turned off"

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getMemoryBalloon()J
    .registers 7

    .line 1351
    const-wide/16 v0, 0x0

    .line 1353
    .local v0, "bytes":J
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mMemoryManagementCallbacks:Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

    if-eqz v2, :cond_e

    .line 1354
    const-string v2, "VirtualMachine"

    const-string v3, "Auto balloon enabled in getMemoryBalloon"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    return-wide v0

    .line 1358
    :cond_e
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1360
    :try_start_11
    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    if-eqz v3, :cond_1c

    .line 1361
    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    invoke-interface {v3}, Landroid/system/virtualizationservice/IVirtualMachine;->getMemoryBalloon()J

    move-result-wide v3
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_1f
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1d

    move-wide v0, v3

    .line 1365
    :cond_1c
    goto :goto_27

    .line 1366
    :catchall_1d
    move-exception v3

    goto :goto_29

    .line 1363
    :catch_1f
    move-exception v3

    .line 1364
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v4, "VirtualMachine"

    const-string v5, "Cannot getMemoryBalloon"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1366
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_27
    monitor-exit v2

    .line 1368
    return-wide v0

    .line 1366
    :goto_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_1d

    throw v3
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 713
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRootDir()Ljava/io/File;
    .registers 2

    .line 2126
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmRootPath:Ljava/io/File;

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 747
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 748
    :try_start_3
    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mWasDeleted:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_a

    .line 749
    monitor-exit v0

    return v2

    .line 751
    :cond_a
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    .line 752
    .local v1, "virtualMachine":Landroid/system/virtualizationservice/IVirtualMachine;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_33

    .line 755
    if-nez v1, :cond_11

    .line 756
    const/4 v0, 0x0

    .local v0, "status":I
    goto :goto_1d

    .line 759
    .end local v0    # "status":I
    :cond_11
    :try_start_11
    invoke-interface {v1}, Landroid/system/virtualizationservice/IVirtualMachine;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/system/virtualmachine/VirtualMachine;->stateToStatus(I)I

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_1a

    .line 762
    .restart local v0    # "status":I
    goto :goto_1d

    .line 760
    .end local v0    # "status":I
    :catch_1a
    move-exception v0

    .line 761
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    move v0, v3

    .line 764
    .local v0, "status":I
    :goto_1d
    if-nez v0, :cond_32

    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmRootPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_32

    .line 767
    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 768
    :try_start_2a
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->dropVm()V

    .line 769
    monitor-exit v3

    .line 770
    return v2

    .line 769
    :catchall_2f
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_2f

    throw v2

    .line 772
    :cond_32
    return v0

    .line 752
    .end local v0    # "status":I
    .end local v1    # "virtualMachine":Landroid/system/virtualizationservice/IVirtualMachine;
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public blacklist resume()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 1858
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1859
    :try_start_3
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-eqz v1, :cond_1c

    .line 1863
    :try_start_7
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    invoke-interface {v1}, Landroid/system/virtualizationservice/IVirtualMachine;->resume()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_c} :catch_f
    .catchall {:try_start_7 .. :try_end_c} :catchall_24

    .line 1868
    nop

    .line 1869
    :try_start_d
    monitor-exit v0

    .line 1870
    return-void

    .line 1866
    :catch_f
    move-exception v1

    .line 1867
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    invoke-direct {v2, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v2

    .line 1864
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :catch_16
    move-exception v1

    .line 1865
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v2

    .line 1860
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :cond_1c
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "VM is not running"

    invoke-direct {v1, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v1

    .line 1869
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_24

    throw v1
.end method

.method public whitelist run()V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 1489
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1490
    :try_start_3
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->checkStopped()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_153

    .line 1493
    :try_start_6
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mIdsigFilePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1494
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mExtraApks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;

    .line 1495
    .local v2, "extraApk":Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;
    iget-object v3, v2, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;->idsig:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_22} :catch_14a
    .catchall {:try_start_6 .. :try_end_22} :catchall_153

    .line 1496
    nop

    .end local v2    # "extraApk":Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;
    goto :goto_11

    .line 1500
    :cond_24
    nop

    .line 1502
    :try_start_25
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualizationService:Landroid/system/virtualmachine/VirtualizationService;

    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualizationService;->getBinder()Landroid/system/virtualizationservice/IVirtualizationService;

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_153

    move-object v2, v0

    .line 1505
    .local v2, "service":Landroid/system/virtualizationservice/IVirtualizationService;
    :try_start_2c
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mConnectVmConsole:Z

    if-eqz v0, :cond_33

    .line 1506
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->createPtyConsole()V

    .line 1509
    :cond_33
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmOutputCaptured:Z

    if-eqz v0, :cond_3a

    .line 1510
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->createVmOutputPipes()V

    .line 1513
    :cond_3a
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmConsoleInputSupported:Z

    if-eqz v0, :cond_41

    .line 1514
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->createVmInputPipes()V

    .line 1517
    :cond_41
    const/4 v0, 0x0

    .line 1518
    .local v0, "consoleOutFd":Landroid/os/ParcelFileDescriptor;
    iget-boolean v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mConnectVmConsole:Z

    if-eqz v3, :cond_a1

    iget-boolean v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmOutputCaptured:Z

    if-eqz v3, :cond_a1

    .line 1521
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1522
    .local v3, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iput-object v4, p0, Landroid/system/virtualmachine/VirtualMachine;->mTeeConsoleOutReader:Landroid/os/ParcelFileDescriptor;

    .line 1523
    const/4 v4, 0x1

    aget-object v4, v3, v4

    iput-object v4, p0, Landroid/system/virtualmachine/VirtualMachine;->mTeeConsoleOutWriter:Landroid/os/ParcelFileDescriptor;

    .line 1524
    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachine;->mTeeConsoleOutWriter:Landroid/os/ParcelFileDescriptor;

    move-object v0, v4

    .line 1525
    new-instance v4, Landroid/system/virtualmachine/VirtualMachine$TeeWorker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/system/virtualmachine/VirtualMachine;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " console"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Landroid/system/virtualmachine/VirtualMachine;->mTeeConsoleOutReader:Landroid/os/ParcelFileDescriptor;

    .line 1528
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v8, p0, Landroid/system/virtualmachine/VirtualMachine;->mPtyFd:Landroid/os/ParcelFileDescriptor;

    .line 1530
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleOutWriter:Landroid/os/ParcelFileDescriptor;

    .line 1532
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1529
    invoke-static {v7, v8}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/system/virtualmachine/VirtualMachine$TeeWorker;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Collection;)V

    .line 1535
    .local v4, "tee":Landroid/system/virtualmachine/VirtualMachine$TeeWorker;
    iget-object v5, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v5, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1536
    .end local v3    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v4    # "tee":Landroid/system/virtualmachine/VirtualMachine$TeeWorker;
    move-object v4, v0

    goto :goto_b4

    :cond_a1
    iget-boolean v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mConnectVmConsole:Z

    if-eqz v3, :cond_aa

    .line 1537
    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mPtyFd:Landroid/os/ParcelFileDescriptor;

    move-object v0, v3

    move-object v4, v0

    goto :goto_b4

    .line 1538
    :cond_aa
    iget-boolean v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmOutputCaptured:Z

    if-eqz v3, :cond_b3

    .line 1539
    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleOutWriter:Landroid/os/ParcelFileDescriptor;

    move-object v0, v3

    move-object v4, v0

    goto :goto_b4

    .line 1538
    :cond_b3
    move-object v4, v0

    .line 1541
    .end local v0    # "consoleOutFd":Landroid/os/ParcelFileDescriptor;
    .local v4, "consoleOutFd":Landroid/os/ParcelFileDescriptor;
    :goto_b4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mInputEventExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1542
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mInputEventExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda2;-><init>(Landroid/system/virtualmachine/VirtualMachine;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1565
    const/4 v0, 0x0

    .line 1566
    .local v0, "consoleInFd":Landroid/os/ParcelFileDescriptor;
    iget-boolean v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mConnectVmConsole:Z

    if-eqz v3, :cond_ce

    .line 1567
    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mPtyFd:Landroid/os/ParcelFileDescriptor;

    move-object v0, v3

    move-object v5, v0

    goto :goto_d8

    .line 1568
    :cond_ce
    iget-boolean v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmConsoleInputSupported:Z

    if-eqz v3, :cond_d7

    .line 1569
    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleInReader:Landroid/os/ParcelFileDescriptor;

    move-object v0, v3

    move-object v5, v0

    goto :goto_d8

    .line 1568
    :cond_d7
    move-object v5, v0

    .line 1572
    .end local v0    # "consoleInFd":Landroid/os/ParcelFileDescriptor;
    .local v5, "consoleInFd":Landroid/os/ParcelFileDescriptor;
    :goto_d8
    invoke-virtual {p0}, Landroid/system/virtualmachine/VirtualMachine;->getConfig()Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v0

    .line 1574
    .local v0, "vmConfig":Landroid/system/virtualmachine/VirtualMachineConfig;
    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->getCustomImageConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    move-result-object v3

    if-eqz v3, :cond_e7

    .line 1575
    invoke-direct {p0, v0}, Landroid/system/virtualmachine/VirtualMachine;->createVirtualMachineConfigForRawFrom(Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualizationservice/VirtualMachineConfig;

    move-result-object v3

    goto :goto_eb

    .line 1576
    :cond_e7
    invoke-direct {p0, v0, v2}, Landroid/system/virtualmachine/VirtualMachine;->createVirtualMachineConfigForAppFrom(Landroid/system/virtualmachine/VirtualMachineConfig;Landroid/system/virtualizationservice/IVirtualizationService;)Landroid/system/virtualizationservice/VirtualMachineConfig;

    move-result-object v3

    :goto_eb
    nop

    .line 1578
    .local v3, "vmConfigParcel":Landroid/system/virtualizationservice/VirtualMachineConfig;
    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->isEncryptedStorageEnabled()Z

    move-result v6

    if-eqz v6, :cond_101

    .line 1579
    iget-object v6, p0, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    .line 1580
    const/high16 v7, 0x30000000

    invoke-static {v6, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 1581
    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->getEncryptedStorageBytes()J

    move-result-wide v7

    .line 1579
    invoke-interface {v2, v6, v7, v8}, Landroid/system/virtualizationservice/IVirtualizationService;->setEncryptedStorageSize(Landroid/os/ParcelFileDescriptor;J)V

    .line 1584
    :cond_101
    iget-object v6, p0, Landroid/system/virtualmachine/VirtualMachine;->mLogWriter:Landroid/os/ParcelFileDescriptor;

    .line 1585
    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/system/virtualizationservice/IVirtualizationService;->createVm(Landroid/system/virtualizationservice/VirtualMachineConfig;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/system/virtualizationservice/IVirtualMachine;

    move-result-object v6

    iput-object v6, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    .line 1587
    iget-object v6, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    new-instance v7, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;

    invoke-direct {v7, p0, v2}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;-><init>(Landroid/system/virtualmachine/VirtualMachine;Landroid/system/virtualizationservice/IVirtualizationService;)V

    invoke-interface {v6, v7}, Landroid/system/virtualizationservice/IVirtualMachine;->registerCallback(Landroid/system/virtualizationservice/IVirtualMachineCallback;)V

    .line 1588
    iget-object v6, p0, Landroid/system/virtualmachine/VirtualMachine;->mMemoryManagementCallbacks:Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

    if-eqz v6, :cond_11f

    .line 1589
    iget-object v6, p0, Landroid/system/virtualmachine/VirtualMachine;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/system/virtualmachine/VirtualMachine;->mMemoryManagementCallbacks:Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

    invoke-virtual {v6, v7}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1591
    :cond_11f
    iget-boolean v6, p0, Landroid/system/virtualmachine/VirtualMachine;->mConnectVmConsole:Z

    if-eqz v6, :cond_12c

    .line 1592
    iget-object v6, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->getHostConsoleName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/system/virtualizationservice/IVirtualMachine;->setHostConsoleName(Ljava/lang/String;)V

    .line 1594
    :cond_12c
    iget-object v6, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    invoke-interface {v6}, Landroid/system/virtualizationservice/IVirtualMachine;->start()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_131} :catch_141
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_131} :catch_13a
    .catch Landroid/os/ServiceSpecificException; {:try_start_2c .. :try_end_131} :catch_13a
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_131} :catch_134
    .catchall {:try_start_2c .. :try_end_131} :catchall_153

    .line 1601
    .end local v0    # "vmConfig":Landroid/system/virtualmachine/VirtualMachineConfig;
    .end local v3    # "vmConfigParcel":Landroid/system/virtualizationservice/VirtualMachineConfig;
    .end local v4    # "consoleOutFd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "consoleInFd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 1602
    .end local v2    # "service":Landroid/system/virtualizationservice/IVirtualizationService;
    :try_start_132
    monitor-exit v1

    .line 1603
    return-void

    .line 1599
    .restart local v2    # "service":Landroid/system/virtualizationservice/IVirtualizationService;
    :catch_134
    move-exception v0

    .line 1600
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v3

    .line 1597
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :catch_13a
    move-exception v0

    .line 1598
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Landroid/system/virtualmachine/VirtualMachineException;

    invoke-direct {v3, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v3

    .line 1595
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :catch_141
    move-exception v0

    .line 1596
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v4, "failed to persist files"

    invoke-direct {v3, v4, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v3

    .line 1497
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "service":Landroid/system/virtualizationservice/IVirtualizationService;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :catch_14a
    move-exception v0

    .line 1499
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "Failed to create APK signature file"

    invoke-direct {v2, v3, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v2

    .line 1602
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :catchall_153
    move-exception v0

    monitor-exit v1
    :try_end_155
    .catchall {:try_start_132 .. :try_end_155} :catchall_153

    throw v0
.end method

.method public blacklist sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 14
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 956
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mKeySock:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 957
    const-string v0, "VirtualMachine"

    const-string v2, "mKeySock == null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return v1

    .line 961
    :cond_d
    const/4 v0, 0x0

    .line 962
    .local v0, "EV_SYN":S
    const/4 v2, 0x1

    .line 963
    .local v2, "EV_KEY":S
    const/4 v3, 0x0

    .line 964
    .local v3, "SYN_REPORT":S
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_19

    move v4, v5

    goto :goto_1a

    :cond_19
    move v4, v1

    .line 966
    .local v4, "down":Z
    :goto_1a
    iget-object v6, p0, Landroid/system/virtualmachine/VirtualMachine;->mKeySock:Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    new-instance v8, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 969
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    int-to-short v9, v9

    if-eqz v4, :cond_2a

    move v10, v5

    goto :goto_2b

    :cond_2a
    move v10, v1

    :goto_2b
    const/4 v11, 0x0

    invoke-direct {v8, v2, v9, v10, v11}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v8, v7, v1

    new-instance v8, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v8, v0, v3, v1, v11}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v8, v7, v5

    .line 968
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 966
    invoke-direct {p0, v6, v1}, Landroid/system/virtualmachine/VirtualMachine;->writeEventsToSock(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public blacklist sendLidEvent(Z)Z
    .registers 11
    .param p1, "close"    # Z

    .line 1154
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mSwitchesSock:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1155
    const-string v0, "VirtualMachine"

    const-string v2, "mSwitcheSock == null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    return v1

    .line 1160
    :cond_d
    const/4 v0, 0x0

    .line 1161
    .local v0, "EV_SYN":S
    const/4 v2, 0x5

    .line 1162
    .local v2, "EV_SW":S
    const/4 v3, 0x0

    .line 1163
    .local v3, "SW_LID":S
    const/4 v4, 0x0

    .line 1164
    .local v4, "SYN_REPORT":S
    iget-object v5, p0, Landroid/system/virtualmachine/VirtualMachine;->mSwitchesSock:Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    new-instance v7, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1167
    const/4 v8, 0x0

    invoke-direct {v7, v2, v3, p1, v8}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v7, v6, v1

    new-instance v7, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v7, v0, v4, v1, v8}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/4 v1, 0x1

    aput-object v7, v6, v1

    .line 1166
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1164
    invoke-direct {p0, v5, v1}, Landroid/system/virtualmachine/VirtualMachine;->writeEventsToSock(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public blacklist sendMouseEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 976
    :try_start_0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mInputEventQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Landroid/system/virtualmachine/VirtualMachine$InputEventType;->MOUSE:Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    .line 977
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 976
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    .line 978
    const/4 v0, 0x1

    return v0

    .line 979
    :catch_11
    move-exception v0

    .line 980
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VirtualMachine"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist sendMultiTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1076
    :try_start_0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mInputEventQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Landroid/system/virtualmachine/VirtualMachine$InputEventType;->TOUCH:Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    .line 1077
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1076
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    .line 1078
    const/4 v0, 0x1

    return v0

    .line 1079
    :catch_11
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VirtualMachine"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist sendTabletModeEvent(Z)Z
    .registers 11
    .param p1, "tabletMode"    # Z

    .line 1173
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mSwitchesSock:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1174
    const-string v0, "VirtualMachine"

    const-string v2, "mSwitcheSock == null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    return v1

    .line 1179
    :cond_d
    const/4 v0, 0x0

    .line 1180
    .local v0, "EV_SYN":S
    const/4 v2, 0x5

    .line 1181
    .local v2, "EV_SW":S
    const/4 v3, 0x1

    .line 1182
    .local v3, "SW_TABLET_MODE":S
    const/4 v4, 0x0

    .line 1183
    .local v4, "SYN_REPORT":S
    iget-object v5, p0, Landroid/system/virtualmachine/VirtualMachine;->mSwitchesSock:Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    new-instance v7, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    .line 1186
    const/4 v8, 0x0

    invoke-direct {v7, v2, v3, p1, v8}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    aput-object v7, v6, v1

    new-instance v7, Landroid/system/virtualmachine/VirtualMachine$InputEvent;

    invoke-direct {v7, v0, v4, v1, v8}, Landroid/system/virtualmachine/VirtualMachine$InputEvent;-><init>(SSILandroid/system/virtualmachine/VirtualMachine-IA;)V

    const/4 v1, 0x1

    aput-object v7, v6, v1

    .line 1185
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1183
    invoke-direct {p0, v5, v1}, Landroid/system/virtualmachine/VirtualMachine;->writeEventsToSock(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public blacklist sendTrackpadEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1193
    :try_start_0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mInputEventQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Landroid/system/virtualmachine/VirtualMachine$InputEventType;->TRACKPAD:Landroid/system/virtualmachine/VirtualMachine$InputEventType;

    .line 1194
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1193
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    .line 1195
    const/4 v0, 0x1

    return v0

    .line 1196
    :catch_11
    move-exception v0

    .line 1197
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VirtualMachine"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setCallback(Ljava/util/concurrent/Executor;Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/system/virtualmachine/VirtualMachineCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 855
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 856
    :try_start_3
    iput-object p2, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallback:Landroid/system/virtualmachine/VirtualMachineCallback;

    .line 857
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 858
    monitor-exit v0

    .line 859
    return-void

    .line 858
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist setConfig(Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachineConfig;
    .registers 8
    .param p1, "newConfig"    # Landroid/system/virtualmachine/VirtualMachineConfig;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 1948
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1949
    :try_start_3
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfig:Landroid/system/virtualmachine/VirtualMachineConfig;

    .line 1950
    .local v1, "oldConfig":Landroid/system/virtualmachine/VirtualMachineConfig;
    invoke-virtual {v1, p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->isCompatibleWith(Landroid/system/virtualmachine/VirtualMachineConfig;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1951
    invoke-virtual {v1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getEncryptedStorageBytes()J

    move-result-wide v2

    .line 1952
    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getEncryptedStorageBytes()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2a

    .line 1955
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->checkStopped()V

    .line 1957
    if-eq v1, p1, :cond_28

    .line 1960
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfigFilePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1961
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfigFilePath:Ljava/io/File;

    invoke-virtual {p1, v2}, Landroid/system/virtualmachine/VirtualMachineConfig;->serialize(Ljava/io/File;)V

    .line 1962
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfig:Landroid/system/virtualmachine/VirtualMachineConfig;

    .line 1964
    :cond_28
    monitor-exit v0

    return-object v1

    .line 1953
    :cond_2a
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "incompatible config"

    invoke-direct {v2, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .end local p1    # "newConfig":Landroid/system/virtualmachine/VirtualMachineConfig;
    throw v2

    .line 1965
    .end local v1    # "oldConfig":Landroid/system/virtualmachine/VirtualMachineConfig;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    .restart local p1    # "newConfig":Landroid/system/virtualmachine/VirtualMachineConfig;
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public blacklist setMemoryBalloon(J)V
    .registers 7
    .param p1, "bytes"    # J

    .line 1373
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mMemoryManagementCallbacks:Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

    if-eqz v0, :cond_c

    .line 1374
    const-string v0, "VirtualMachine"

    const-string v1, "Auto balloon enabled in setMemoryBalloon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    return-void

    .line 1378
    :cond_c
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1380
    :try_start_f
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    if-eqz v1, :cond_18

    .line 1381
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    invoke-interface {v1, p1, p2}, Landroid/system/virtualizationservice/IVirtualMachine;->setMemoryBalloon(J)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_1b
    .catchall {:try_start_f .. :try_end_18} :catchall_19

    .line 1385
    :cond_18
    goto :goto_23

    .line 1386
    :catchall_19
    move-exception v1

    goto :goto_25

    .line 1383
    :catch_1b
    move-exception v1

    .line 1384
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1c
    const-string v2, "VirtualMachine"

    const-string v3, "Cannot setMemoryBalloon"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1386
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_23
    monitor-exit v0

    .line 1387
    return-void

    .line 1386
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_19

    throw v1
.end method

.method public blacklist setMemoryBalloonByPercent(I)V
    .registers 10
    .param p1, "percent"    # I

    .line 1391
    if-ltz p1, :cond_35

    const/16 v0, 0x64

    if-le p1, v0, :cond_7

    goto :goto_35

    .line 1395
    :cond_7
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1397
    :try_start_a
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    invoke-interface {v1}, Landroid/system/virtualizationservice/IVirtualMachine;->isMemoryBalloonEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1398
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfig:Landroid/system/virtualmachine/VirtualMachineConfig;

    invoke-virtual {v1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getMemoryBytes()J

    move-result-wide v1

    .line 1399
    .local v1, "bytes":J
    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    int-to-long v4, p1

    mul-long/2addr v4, v1

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Landroid/system/virtualizationservice/IVirtualMachine;->setMemoryBalloon(J)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_26} :catch_29
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_26} :catch_29
    .catchall {:try_start_a .. :try_end_26} :catchall_27

    .line 1403
    .end local v1    # "bytes":J
    :cond_26
    goto :goto_31

    .line 1404
    :catchall_27
    move-exception v1

    goto :goto_33

    .line 1401
    :catch_29
    move-exception v1

    .line 1402
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string v2, "VirtualMachine"

    const-string v3, "Cannot setMemoryBalloon"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1404
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_31
    monitor-exit v0

    .line 1405
    return-void

    .line 1404
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_27

    throw v1

    .line 1392
    :cond_35
    :goto_35
    const-string v0, "VirtualMachine"

    const-string v1, "Invalid percent value: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    return-void
.end method

.method public whitelist stop()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 1825
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1826
    :try_start_3
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_27

    if-eqz v1, :cond_1f

    .line 1830
    :try_start_7
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    invoke-interface {v1}, Landroid/system/virtualizationservice/IVirtualMachine;->stop()V

    .line 1831
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->dropVm()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_19
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_f} :catch_12
    .catchall {:try_start_7 .. :try_end_f} :catchall_27

    .line 1836
    nop

    .line 1837
    :try_start_10
    monitor-exit v0

    .line 1838
    return-void

    .line 1834
    :catch_12
    move-exception v1

    .line 1835
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    invoke-direct {v2, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v2

    .line 1832
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :catch_19
    move-exception v1

    .line 1833
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v2

    .line 1827
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :cond_1f
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "VM is not running"

    invoke-direct {v1, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v1

    .line 1837
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public blacklist suspend()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 1842
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1843
    :try_start_3
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-eqz v1, :cond_1c

    .line 1847
    :try_start_7
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    invoke-interface {v1}, Landroid/system/virtualizationservice/IVirtualMachine;->suspend()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_c} :catch_f
    .catchall {:try_start_7 .. :try_end_c} :catchall_24

    .line 1852
    nop

    .line 1853
    :try_start_d
    monitor-exit v0

    .line 1854
    return-void

    .line 1850
    :catch_f
    move-exception v1

    .line 1851
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    invoke-direct {v2, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v2

    .line 1848
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :catch_16
    move-exception v1

    .line 1849
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v2

    .line 1844
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :cond_1c
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "VM is not running"

    invoke-direct {v1, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v1

    .line 1853
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_24

    throw v1
.end method

.method public whitelist toDescriptor()Landroid/system/virtualmachine/VirtualMachineDescriptor;
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 2169
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2170
    :try_start_3
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->checkStopped()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_3b

    .line 2172
    :try_start_6
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineDescriptor;

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfigFilePath:Ljava/io/File;

    .line 2173
    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2174
    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceIdPath:Ljava/io/File;

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    .line 2175
    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceIdPath:Ljava/io/File;

    invoke-static {v4, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_1d

    .line 2176
    :cond_1c
    move-object v4, v5

    :goto_1d
    iget-object v6, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    .line 2177
    invoke-static {v6, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 2178
    iget-object v7, p0, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    if-eqz v7, :cond_2e

    .line 2179
    iget-object v5, p0, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    invoke-static {v5, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    goto :goto_2f

    .line 2180
    :cond_2e
    nop

    :goto_2f
    invoke-direct {v1, v2, v4, v6, v5}, Landroid/system/virtualmachine/VirtualMachineDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_32} :catch_34
    .catchall {:try_start_6 .. :try_end_32} :catchall_3b

    :try_start_32
    monitor-exit v0

    .line 2172
    return-object v1

    .line 2181
    :catch_34
    move-exception v1

    .line 2182
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    invoke-direct {v2, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    throw v2

    .line 2184
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine;
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 2189
    invoke-virtual {p0}, Landroid/system/virtualmachine/VirtualMachine;->getConfig()Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v0

    .line 2190
    .local v0, "config":Landroid/system/virtualmachine/VirtualMachineConfig;
    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->getPayloadConfigPath()Ljava/lang/String;

    move-result-object v1

    .line 2191
    .local v1, "payloadConfigPath":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->getPayloadBinaryName()Ljava/lang/String;

    move-result-object v2

    .line 2193
    .local v2, "payloadBinaryName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2194
    .local v3, "result":Ljava/lang/StringBuilder;
    const-string v4, "VirtualMachine("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/system/virtualmachine/VirtualMachine;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    if-eqz v2, :cond_39

    .line 2196
    const-string v4, "payload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    :cond_39
    if-eqz v1, :cond_48

    .line 2199
    const-string v4, "config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    :cond_48
    const-string v4, "package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/system/virtualmachine/VirtualMachine;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
