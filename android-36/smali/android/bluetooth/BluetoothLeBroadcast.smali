.class public final Landroid/bluetooth/BluetoothLeBroadcast;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcast.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = true

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

.field private final blacklist mCallbackExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothLeBroadcast$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mService:Landroid/bluetooth/IBluetoothLeAudio;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    const-class v0, Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    .line 73
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcast$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothLeBroadcast$1;-><init>(Landroid/bluetooth/BluetoothLeBroadcast;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    .line 296
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 297
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mService:Landroid/bluetooth/IBluetoothLeAudio;

    .line 300
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCloseGuard:Landroid/util/CloseGuard;

    .line 301
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method private static blacklist buildBroadcastSettingsFromMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;[B)Landroid/bluetooth/BluetoothLeBroadcastSettings;
    .registers 5
    .param p0, "contentMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .param p1, "broadcastCode"    # [B

    .line 783
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;-><init>()V

    .line 785
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->setContentMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    move-result-object v0

    .line 787
    .local v0, "subgroupBuilder":Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;
    new-instance v1, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;-><init>()V

    .line 789
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setPublicBroadcast(Z)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    move-result-object v1

    .line 790
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    move-result-object v1

    .line 792
    .local v1, "builder":Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->addSubgroupSettings(Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    .line 793
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSettings;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothLeAudio;
    .registers 2

    .line 833
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mService:Landroid/bluetooth/IBluetoothLeAudio;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .registers 3

    .line 797
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    .line 798
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 844
    sget-object v0, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 778
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 779
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 307
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 308
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 310
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->close()V

    .line 311
    return-void
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 840
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getAllBroadcastMetadata()Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastMetadata;",
            ">;"
        }
    .end annotation

    .line 683
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 684
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1a

    .line 685
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_51

    .line 687
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 689
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothLeAudio;->getAllBroadcastMetadata(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return-object v1

    .line 690
    :catch_27
    move-exception v1

    .line 691
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LE Audio Broadcasts are not connection-oriented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LE Audio Broadcasts are not connection-oriented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 4
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LE Audio Broadcasts are not connection-oriented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMaximumNumberOfBroadcasts()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 706
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 707
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1a

    .line 708
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_4f

    .line 710
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 712
    :try_start_20
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothLeAudio;->getMaximumNumberOfBroadcasts()I

    move-result v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_25

    return v1

    .line 713
    :catch_25
    move-exception v1

    .line 714
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4f
    :goto_4f
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getMaximumStreamsPerBroadcast()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 729
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 730
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1a

    .line 731
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_4f

    .line 733
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 735
    :try_start_20
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothLeAudio;->getMaximumStreamsPerBroadcast()I

    move-result v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_25

    return v1

    .line 736
    :catch_25
    move-exception v1

    .line 737
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4f
    :goto_4f
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getMaximumSubgroupsPerBroadcast()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 755
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 756
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1a

    .line 757
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_4f

    .line 759
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 761
    :try_start_20
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothLeAudio;->getMaximumSubgroupsPerBroadcast()I

    move-result v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_25

    return v1

    .line 762
    :catch_25
    move-exception v1

    .line 763
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4f
    :goto_4f
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist isPlaying(I)Z
    .registers 7
    .param p1, "broadcastId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 658
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 659
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_1a

    .line 660
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_51

    .line 662
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 664
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->isPlaying(ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v1

    .line 665
    :catch_27
    move-exception v1

    .line 666
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "service"    # Landroid/os/IBinder;

    .line 806
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeAudio$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mService:Landroid/bluetooth/IBluetoothLeAudio;

    .line 808
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 809
    :try_start_9
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 810
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_2b

    return-void

    .line 813
    :cond_13
    if-eqz p1, :cond_28

    .line 814
    :try_start_15
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mService:Landroid/bluetooth/IBluetoothLeAudio;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio;->registerLeBroadcastCallback(Landroid/bluetooth/IBluetoothLeBroadcastCallback;Landroid/content/AttributionSource;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f
    .catchall {:try_start_15 .. :try_end_1e} :catchall_2b

    goto :goto_28

    .line 816
    :catch_1f
    move-exception v1

    .line 817
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_20
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    const-string v3, "onServiceConnected: Failed to register Le Broadcaster callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 821
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    nop

    .line 822
    :goto_29
    monitor-exit v0

    .line 823
    return-void

    .line 822
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 829
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mService:Landroid/bluetooth/IBluetoothLeAudio;

    .line 830
    return-void
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 366
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v0, "registerCallback"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 373
    :try_start_e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 374
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_25

    .line 378
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_74

    return-void

    .line 382
    :cond_25
    :try_start_25
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v1

    .line 383
    .local v1, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v1, :cond_32

    .line 384
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothLeAudio;->registerLeBroadcastCallback(Landroid/bluetooth/IBluetoothLeBroadcastCallback;Landroid/content/AttributionSource;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_32} :catch_33
    .catchall {:try_start_25 .. :try_end_32} :catchall_74

    .line 388
    .end local v1    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :cond_32
    goto :goto_5d

    .line 386
    :catch_33
    move-exception v1

    .line 387
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_34
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 395
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    monitor-exit v0

    .line 397
    return-void

    .line 393
    :cond_6c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has already been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcast;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    throw v1

    .line 396
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcast;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_34 .. :try_end_76} :catchall_74

    throw v1
.end method

.method public whitelist startBroadcast(Landroid/bluetooth/BluetoothLeAudioContentMetadata;[B)V
    .registers 8
    .param p1, "contentMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .param p2, "broadcastCode"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 484
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 489
    const-string v0, "startBroadcasting"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    .line 490
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 491
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_2a

    .line 492
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_65

    .line 494
    :cond_2a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 496
    nop

    .line 497
    :try_start_31
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast;->buildBroadcastSettingsFromMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;[B)Landroid/bluetooth/BluetoothLeBroadcastSettings;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    .line 496
    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothLeAudio;->startBroadcast(Landroid/bluetooth/BluetoothLeBroadcastSettings;Landroid/content/AttributionSource;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3a} :catch_3b

    .line 501
    goto :goto_65

    .line 499
    :catch_3b
    move-exception v1

    .line 500
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_65
    :goto_65
    return-void

    .line 486
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startBroadcast(Landroid/bluetooth/BluetoothLeBroadcastSettings;)V
    .registers 7
    .param p1, "broadcastSettings"    # Landroid/bluetooth/BluetoothLeBroadcastSettings;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 517
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    .line 522
    const-string v0, "startBroadcasting"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    .line 523
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 524
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_2a

    .line 525
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_60

    .line 527
    :cond_2a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 529
    :try_start_30
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->startBroadcast(Landroid/bluetooth/BluetoothLeBroadcastSettings;Landroid/content/AttributionSource;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    .line 532
    goto :goto_60

    .line 530
    :catch_36
    move-exception v1

    .line 531
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_60
    :goto_60
    return-void

    .line 519
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopBroadcast(I)V
    .registers 7
    .param p1, "broadcastId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 628
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 632
    const-string v0, "disableBroadcastMode"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    .line 633
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 634
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_27

    .line 635
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 637
    :cond_27
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 639
    :try_start_2d
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->stopBroadcast(ILandroid/content/AttributionSource;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_33

    .line 642
    goto :goto_5d

    .line 640
    :catch_33
    move-exception v1

    .line 641
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    return-void

    .line 629
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterCallback(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V
    .registers 6
    .param p1, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 416
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v0, "unregisterCallback"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 421
    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 424
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_5d

    .line 427
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 429
    :try_start_1c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 430
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v0, :cond_29

    .line 431
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothLeAudio;->unregisterLeBroadcastCallback(Landroid/bluetooth/IBluetoothLeBroadcastCallback;Landroid/content/AttributionSource;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_29} :catch_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_29} :catch_2a

    .line 435
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :cond_29
    goto :goto_54

    .line 433
    :catch_2a
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_54
    :goto_54
    return-void

    .line 422
    :cond_55
    :try_start_55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has not been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcast;
    .end local p1    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    throw v1

    .line 424
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcast;
    .restart local p1    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public whitelist updateBroadcast(ILandroid/bluetooth/BluetoothLeAudioContentMetadata;)V
    .registers 8
    .param p1, "broadcastId"    # I
    .param p2, "contentMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 554
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    .line 559
    const-string v0, "updateBroadcast"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    .line 560
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 561
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_2a

    .line 562
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_66

    .line 564
    :cond_2a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 566
    nop

    .line 568
    const/4 v1, 0x0

    :try_start_32
    invoke-static {p2, v1}, Landroid/bluetooth/BluetoothLeBroadcast;->buildBroadcastSettingsFromMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;[B)Landroid/bluetooth/BluetoothLeBroadcastSettings;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    .line 566
    invoke-interface {v0, p1, v1, v2}, Landroid/bluetooth/IBluetoothLeAudio;->updateBroadcast(ILandroid/bluetooth/BluetoothLeBroadcastSettings;Landroid/content/AttributionSource;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_3c

    .line 572
    goto :goto_66

    .line 570
    :catch_3c
    move-exception v1

    .line 571
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_66
    :goto_66
    return-void

    .line 556
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :cond_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateBroadcast(ILandroid/bluetooth/BluetoothLeBroadcastSettings;)V
    .registers 8
    .param p1, "broadcastId"    # I
    .param p2, "broadcastSettings"    # Landroid/bluetooth/BluetoothLeBroadcastSettings;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 594
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    .line 599
    const-string v0, "updateBroadcast"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    .line 600
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 601
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_2a

    .line 602
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_60

    .line 604
    :cond_2a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 606
    :try_start_30
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothLeAudio;->updateBroadcast(ILandroid/bluetooth/BluetoothLeBroadcastSettings;Landroid/content/AttributionSource;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    .line 609
    goto :goto_60

    .line 607
    :catch_36
    move-exception v1

    .line 608
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcast;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_60
    :goto_60
    return-void

    .line 596
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
