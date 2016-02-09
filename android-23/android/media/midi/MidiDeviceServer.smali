.class public final Landroid/media/midi/MidiDeviceServer;
.super Ljava/lang/Object;
.source "MidiDeviceServer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDeviceServer$Callback;,
        Landroid/media/midi/MidiDeviceServer$PortClient;,
        Landroid/media/midi/MidiDeviceServer$InputPortClient;,
        Landroid/media/midi/MidiDeviceServer$OutputPortClient;,
        Landroid/media/midi/MidiDeviceServer$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MidiDeviceServer"


# instance fields
.field private final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mInputPortCount:I

.field private final mInputPortOpen:[Z

.field private final mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

.field private final mInputPortReceivers:[Landroid/media/midi/MidiReceiver;

.field private final mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/media/midi/MidiInputPort;",
            ">;"
        }
    .end annotation
.end field

.field private mIsClosed:Z

.field private final mMidiManager:Landroid/media/midi/IMidiManager;

.field private final mOutputPortCount:I

.field private mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

.field private final mOutputPortOpenCount:[I

.field private final mPortClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/media/midi/MidiDeviceServer$PortClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mServer:Landroid/media/midi/IMidiDeviceServer;


# direct methods
.method static synthetic -get0(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/midi/MidiDeviceServer;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/media/midi/MidiDeviceServer;)[Z
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOpen:[Z

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiReceiver;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortReceivers:[Landroid/media/midi/MidiReceiver;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/media/midi/MidiDeviceServer;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/media/midi/MidiDeviceServer;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortOpenCount:[I

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceInfo;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/midi/MidiDeviceServer;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/midi/MidiDeviceServer;->updateDeviceStatus()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;ILandroid/media/midi/MidiDeviceServer$Callback;)V
    .locals 3
    .param p1, "midiManager"    # Landroid/media/midi/IMidiManager;
    .param p2, "inputPortReceivers"    # [Landroid/media/midi/MidiReceiver;
    .param p3, "numOutputPorts"    # I
    .param p4, "callback"    # Landroid/media/midi/MidiDeviceServer$Callback;

    #@0
    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@8
    .line 63
    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    .line 71
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    #@10
    .line 157
    new-instance v1, Ljava/util/HashMap;

    #@12
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@15
    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;

    #@17
    .line 160
    new-instance v1, Landroid/media/midi/MidiDeviceServer$1;

    #@19
    invoke-direct {v1, p0}, Landroid/media/midi/MidiDeviceServer$1;-><init>(Landroid/media/midi/MidiDeviceServer;)V

    #@1c
    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    #@1e
    .line 295
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer;->mMidiManager:Landroid/media/midi/IMidiManager;

    #@20
    .line 296
    iput-object p2, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortReceivers:[Landroid/media/midi/MidiReceiver;

    #@22
    .line 297
    array-length v1, p2

    #@23
    iput v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    #@25
    .line 298
    iput p3, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    #@27
    .line 299
    iput-object p4, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    #@29
    .line 301
    iget v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    #@2b
    new-array v1, v1, [Landroid/media/midi/MidiOutputPort;

    #@2d
    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    #@2f
    .line 303
    new-array v1, p3, [Lcom/android/internal/midi/MidiDispatcher;

    #@31
    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    #@33
    .line 304
    const/4 v0, 0x0

    #@34
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    #@36
    .line 305
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    #@38
    new-instance v2, Lcom/android/internal/midi/MidiDispatcher;

    #@3a
    invoke-direct {v2}, Lcom/android/internal/midi/MidiDispatcher;-><init>()V

    #@3d
    aput-object v2, v1, v0

    #@3f
    .line 304
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_0

    #@42
    .line 308
    :cond_0
    iget v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    #@44
    new-array v1, v1, [Z

    #@46
    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOpen:[Z

    #@48
    .line 309
    new-array v1, p3, [I

    #@4a
    iput-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortOpenCount:[I

    #@4c
    .line 311
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    #@4e
    const-string/jumbo v2, "close"

    #@51
    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@54
    .line 294
    return-void
.end method

.method constructor <init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiDeviceServer$Callback;)V
    .locals 1
    .param p1, "midiManager"    # Landroid/media/midi/IMidiManager;
    .param p2, "inputPortReceivers"    # [Landroid/media/midi/MidiReceiver;
    .param p3, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p4, "callback"    # Landroid/media/midi/MidiDeviceServer$Callback;

    #@0
    .prologue
    .line 317
    invoke-virtual {p3}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, p2, v0, p4}, Landroid/media/midi/MidiDeviceServer;-><init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;ILandroid/media/midi/MidiDeviceServer$Callback;)V

    #@7
    .line 318
    iput-object p3, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@9
    .line 316
    return-void
.end method

.method private updateDeviceStatus()V
    .locals 7

    #@0
    .prologue
    .line 331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 333
    .local v2, "identityToken":J
    new-instance v1, Landroid/media/midi/MidiDeviceStatus;

    #@6
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@8
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOpen:[Z

    #@a
    .line 334
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortOpenCount:[I

    #@c
    .line 333
    invoke-direct {v1, v4, v5, v6}, Landroid/media/midi/MidiDeviceStatus;-><init>(Landroid/media/midi/MidiDeviceInfo;[Z[I)V

    #@f
    .line 335
    .local v1, "status":Landroid/media/midi/MidiDeviceStatus;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 336
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    #@15
    invoke-interface {v4, p0, v1}, Landroid/media/midi/MidiDeviceServer$Callback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V

    #@18
    .line 339
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer;->mMidiManager:Landroid/media/midi/IMidiManager;

    #@1a
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    #@1c
    invoke-interface {v4, v5, v1}, Landroid/media/midi/IMidiManager;->setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 343
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 329
    :goto_0
    return-void

    #@23
    .line 340
    :catch_0
    move-exception v0

    #@24
    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v4, "MidiDeviceServer"

    #@27
    const-string/jumbo v5, "RemoteException in updateDeviceStatus"

    #@2a
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    .line 343
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    goto :goto_0

    #@31
    .line 342
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@32
    .line 343
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 342
    throw v4
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    #@2
    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 349
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    monitor-enter v6

    #@3
    .line 350
    :try_start_0
    iget-boolean v5, p0, Landroid/media/midi/MidiDeviceServer;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v5, :cond_0

    #@7
    monitor-exit v6

    #@8
    return-void

    #@9
    .line 351
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    #@b
    invoke-virtual {v5}, Ldalvik/system/CloseGuard;->close()V

    #@e
    .line 353
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    iget v5, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I

    #@11
    if-ge v1, v5, :cond_2

    #@13
    .line 354
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    #@15
    aget-object v4, v5, v1

    #@17
    .line 355
    .local v4, "outputPort":Landroid/media/midi/MidiOutputPort;
    if-eqz v4, :cond_1

    #@19
    .line 356
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1c
    .line 357
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;

    #@1e
    const/4 v7, 0x0

    #@1f
    aput-object v7, v5, v1

    #@21
    .line 353
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 360
    .end local v4    # "outputPort":Landroid/media/midi/MidiOutputPort;
    :cond_2
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@26
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v3

    #@2a
    .local v3, "inputPort$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_3

    #@30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroid/media/midi/MidiInputPort;

    #@36
    .line 361
    .local v2, "inputPort":Landroid/media/midi/MidiInputPort;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    goto :goto_1

    #@3a
    .line 349
    .end local v1    # "i":I
    .end local v2    # "inputPort":Landroid/media/midi/MidiInputPort;
    .end local v3    # "inputPort$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@3b
    monitor-exit v6

    #@3c
    throw v5

    #@3d
    .line 363
    .restart local v1    # "i":I
    .restart local v3    # "inputPort$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_2
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@3f
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    .line 365
    :try_start_3
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer;->mMidiManager:Landroid/media/midi/IMidiManager;

    #@44
    iget-object v7, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    #@46
    invoke-interface {v5, v7}, Landroid/media/midi/IMidiManager;->unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@49
    .line 369
    :goto_2
    const/4 v5, 0x1

    #@4a
    :try_start_4
    iput-boolean v5, p0, Landroid/media/midi/MidiDeviceServer;->mIsClosed:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4c
    monitor-exit v6

    #@4d
    .line 348
    return-void

    #@4e
    .line 366
    :catch_0
    move-exception v0

    #@4f
    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v5, "MidiDeviceServer"

    #@52
    const-string/jumbo v7, "RemoteException in unregisterDeviceServer"

    #@55
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@58
    goto :goto_2
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
    .line 376
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 377
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 379
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 374
    return-void

    #@c
    .line 378
    :catchall_0
    move-exception v0

    #@d
    .line 379
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@10
    .line 378
    throw v0
.end method

.method getBinderInterface()Landroid/media/midi/IMidiDeviceServer;
    .locals 1

    #@0
    .prologue
    .line 322
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer;->mServer:Landroid/media/midi/IMidiDeviceServer;

    #@2
    return-object v0
.end method

.method public getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 389
    iget v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    #@3
    new-array v0, v1, [Landroid/media/midi/MidiReceiver;

    #@5
    .line 390
    .local v0, "receivers":[Landroid/media/midi/MidiReceiver;
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;

    #@7
    iget v2, p0, Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I

    #@9
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    .line 391
    return-object v0
.end method
