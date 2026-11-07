.class public final Landroid/media/midi/MidiDeviceServer;
.super Ljava/lang/Object;
.source "MidiDeviceServer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDeviceServer$Callback;,
        Landroid/media/midi/MidiDeviceServer$OutputPortClient;,
        Landroid/media/midi/MidiDeviceServer$InputPortClient;,
        Landroid/media/midi/MidiDeviceServer$PortClient;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MidiDeviceServer"

.field private static final blacklist UNUSED_UID:I = -0x1


# instance fields
.field private final greylist-max-o mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private greylist-max-o mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private final greylist-max-o mGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mInputPortClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/midi/MidiInputPort;",
            "Landroid/media/midi/MidiDeviceServer$PortClient;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mInputPortCount:I

.field private final greylist-max-o mInputPortFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

.field private final greylist-max-o mInputPortOpen:[Z

.field private final greylist-max-o mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

.field private final greylist-max-o mInputPortReceivers:[Landroid/media/midi/MidiReceiver;

.field private final greylist-max-o mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/midi/MidiInputPort;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mIsClosed:Z

.field private final greylist-max-o mMidiManager:Landroid/media/midi/IMidiManager;

.field private final greylist-max-o mOutputPortCount:I

.field private greylist-max-o mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

.field private final greylist-max-o mOutputPortOpenCount:[I

.field private final greylist-max-o mPortClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/media/midi/MidiDeviceServer$PortClient;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mServer:Landroid/media/midi/IMidiDeviceServer;

.field private blacklist mTotalInputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mTotalOutputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mUmpInputPortUids:[I

.field private final blacklist mUmpOutputPortUids:[I

.field private final blacklist mUmpUidLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortClients:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputPortCount(Landroid/media/midi/MidiDeviceServer;)I
    .registers 1

    iget p0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputPortOpen(Landroid/media/midi/MidiDeviceServer;)[Z
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOpen:[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputPortOutputPorts(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputPortReceivers(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiReceiver;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortReceivers:[Landroid/media/midi/MidiReceiver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputPorts(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputPortCount(Landroid/media/midi/MidiDeviceServer;)I
    .registers 1

    iget p0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputPortDispatchers(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputPortOpenCount(Landroid/media/midi/MidiDeviceServer;)[I
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortOpenCount:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalInputBytes(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mTotalInputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalOutputBytes(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mTotalOutputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUmpInputPortUids(Landroid/media/midi/MidiDeviceServer;)[I
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mUmpInputPortUids:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUmpOutputPortUids(Landroid/media/midi/MidiDeviceServer;)[I
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mUmpOutputPortUids:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUmpUidLock(Landroid/media/midi/MidiDeviceServer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiDeviceServer;->mUmpUidLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceInfo(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misUmpDevice(Landroid/media/midi/MidiDeviceServer;)Z
    .registers 1

    invoke-direct {p0}, Landroid/media/midi/MidiDeviceServer;->isUmpDevice()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDeviceStatus(Landroid/media/midi/MidiDeviceServer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/midi/MidiDeviceServer;->updateDeviceStatus()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateTotalBytes(Landroid/media/midi/MidiDeviceServer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/midi/MidiDeviceServer;->updateTotalBytes()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateSeqPacketSocketPair()[Ljava/io/FileDescriptor;
    .registers 1

    invoke-static {}, Landroid/media/midi/MidiDeviceServer;->createSeqPacketSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method constructor greylist-max-o <init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;ILandroid/media/midi/MidiDeviceServer$Callback;)V
    .registers 9
    .param p1, "midiManager"    # Landroid/media/midi/IMidiManager;
    .param p2, "inputPortReceivers"    # [Landroid/media/midi/MidiReceiver;
    .param p3, "numOutputPorts"    # I
    .param p4, "callback"    # Landroid/media/midi/MidiDeviceServer$Callback;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortClients:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mTotalInputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mTotalOutputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mUmpUidLock:Ljava/lang/Object;

    .line 208
    new-instance v0, Landroid/media/midi/MidiDeviceServer$1;

    invoke-direct {v0, p0}, Landroid/media/midi/MidiDeviceServer$1;-><init>(Landroid/media/midi/MidiDeviceServer;)V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 425
    new-instance v0, Landroid/media/midi/MidiDeviceServer$2;

    invoke-direct {v0, p0}, Landroid/media/midi/MidiDeviceServer$2;-><init>(Landroid/media/midi/MidiDeviceServer;)V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    .line 399
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer;->mMidiManager:Landroid/media/midi/IMidiManager;

    .line 400
    iput-object p2, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortReceivers:[Landroid/media/midi/MidiReceiver;

    .line 401
    array-length v0, p2

    iput v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    .line 402
    iput p3, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    .line 403
    iput-object p4, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    .line 405
    iget v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    new-array v0, v0, [Landroid/media/midi/MidiOutputPort;

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    .line 407
    new-array v0, p3, [Lcom/android/internal/midi/MidiDispatcher;

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    .line 408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_57
    if-ge v0, p3, :cond_67

    .line 409
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    new-instance v2, Lcom/android/internal/midi/MidiDispatcher;

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/midi/MidiDispatcher;-><init>(Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;)V

    aput-object v2, v1, v0

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 412
    .end local v0    # "i":I
    :cond_67
    iget v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOpen:[Z

    .line 413
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortOpenCount:[I

    .line 415
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mUmpUidLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_74
    iget v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mUmpInputPortUids:[I

    .line 417
    iget v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mUmpOutputPortUids:[I

    .line 418
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mUmpInputPortUids:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 419
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mUmpOutputPortUids:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 420
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_74 .. :try_end_8c} :catchall_94

    .line 422
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 423
    return-void

    .line 420
    :catchall_94
    move-exception v1

    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v1
.end method

.method constructor greylist-max-o <init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiDeviceServer$Callback;)V
    .registers 6
    .param p1, "midiManager"    # Landroid/media/midi/IMidiManager;
    .param p2, "inputPortReceivers"    # [Landroid/media/midi/MidiReceiver;
    .param p3, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p4, "callback"    # Landroid/media/midi/MidiDeviceServer$Callback;

    .line 442
    invoke-virtual {p3}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/media/midi/MidiDeviceServer;-><init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;ILandroid/media/midi/MidiDeviceServer$Callback;)V

    .line 443
    iput-object p3, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 444
    return-void
.end method

.method private static greylist-max-o createSeqPacketSocketPair()[Ljava/io/FileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    :try_start_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 199
    .local v0, "fd0":Ljava/io/FileDescriptor;
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 200
    .local v1, "fd1":Ljava/io/FileDescriptor;
    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    sget v3, Landroid/system/OsConstants;->SOCK_SEQPACKET:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 201
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/FileDescriptor;

    aput-object v0, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v2

    .line 202
    .end local v0    # "fd0":Ljava/io/FileDescriptor;
    .end local v1    # "fd1":Ljava/io/FileDescriptor;
    :catch_1b
    move-exception v0

    .line 203
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private blacklist isUmpDevice()Z
    .registers 3

    .line 533
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getDefaultProtocol()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private greylist-max-o updateDeviceStatus()V
    .registers 7

    .line 456
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 458
    .local v0, "identityToken":J
    :try_start_4
    new-instance v2, Landroid/media/midi/MidiDeviceStatus;

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOpen:[Z

    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortOpenCount:[I

    invoke-direct {v2, v3, v4, v5}, Landroid/media/midi/MidiDeviceStatus;-><init>(Landroid/media/midi/MidiDeviceInfo;[Z[I)V

    .line 460
    .local v2, "status":Landroid/media/midi/MidiDeviceStatus;
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    if-eqz v3, :cond_18

    .line 461
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    invoke-interface {v3, p0, v2}, Landroid/media/midi/MidiDeviceServer$Callback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V

    .line 464
    :cond_18
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v3, v4, v2}, Landroid/media/midi/IMidiManager;->setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_22
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    .line 468
    .end local v2    # "status":Landroid/media/midi/MidiDeviceStatus;
    goto :goto_2b

    :catchall_20
    move-exception v2

    goto :goto_30

    .line 465
    :catch_22
    move-exception v2

    .line 466
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_23
    const-string v3, "MidiDeviceServer"

    const-string v4, "RemoteException in updateDeviceStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 468
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 469
    nop

    .line 470
    return-void

    .line 468
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 469
    throw v2
.end method

.method private blacklist updateTotalBytes()V
    .registers 5

    .line 526
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer;->mTotalInputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mTotalOutputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/media/midi/IMidiManager;->updateTotalBytes(Landroid/media/midi/IMidiDeviceServer;II)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 529
    goto :goto_1c

    .line 527
    :catch_14
    move-exception v0

    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MidiDeviceServer"

    const-string v2, "RemoteException in updateTotalBytes"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method


# virtual methods
.method public greylist-max-o asBinder()Landroid/os/IBinder;
    .registers 2

    .line 451
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v0

    .line 475
    :try_start_3
    iget-boolean v1, p0, Landroid/media/midi/MidiDeviceServer;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 476
    :cond_9
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 477
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget v2, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    if-ge v1, v2, :cond_2d

    .line 478
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    aget-object v2, v2, v1

    .line 479
    .local v2, "outputPort":Landroid/media/midi/MidiOutputPort;
    if-eqz v2, :cond_2a

    .line 480
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mTotalOutputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Landroid/media/midi/MidiOutputPort;->pullTotalBytesCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 481
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 482
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 477
    .end local v2    # "outputPort":Landroid/media/midi/MidiOutputPort;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 485
    .end local v1    # "i":I
    :cond_2d
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/MidiInputPort;

    .line 486
    .local v2, "inputPort":Landroid/media/midi/MidiInputPort;
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer;->mTotalInputBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Landroid/media/midi/MidiInputPort;->pullTotalBytesCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 487
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 488
    .end local v2    # "inputPort":Landroid/media/midi/MidiInputPort;
    goto :goto_33

    .line 489
    :cond_4c
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 490
    invoke-direct {p0}, Landroid/media/midi/MidiDeviceServer;->updateTotalBytes()V
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_69

    .line 492
    :try_start_54
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v1, v2}, Landroid/media/midi/IMidiManager;->unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5b} :catch_5c
    .catchall {:try_start_54 .. :try_end_5b} :catchall_69

    .line 495
    goto :goto_64

    .line 493
    :catch_5c
    move-exception v1

    .line 494
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5d
    const-string v2, "MidiDeviceServer"

    const-string v3, "RemoteException in unregisterDeviceServer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_64
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/midi/MidiDeviceServer;->mIsClosed:Z

    .line 497
    monitor-exit v0

    .line 498
    return-void

    .line 497
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_69

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 503
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 504
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 507
    :cond_9
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 509
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 510
    nop

    .line 511
    return-void

    .line 509
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 510
    throw v0
.end method

.method greylist-max-o getBinderInterface()Landroid/media/midi/IMidiDeviceServer;
    .registers 2

    .line 447
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    return-object v0
.end method

.method public greylist-max-o getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;
    .registers 5

    .line 519
    iget v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    new-array v0, v0, [Landroid/media/midi/MidiReceiver;

    .line 520
    .local v0, "receivers":[Landroid/media/midi/MidiReceiver;
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    const/4 v2, 0x0

    iget v3, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    return-object v0
.end method
