.class public final Landroid/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;,
        Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;,
        Landroid/bluetooth/BluetoothAdapter$LeScanCallback;,
        Landroid/bluetooth/BluetoothAdapter$1;
    }
.end annotation


# static fields
.field public static final ACTION_BLE_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_ACL_CONNECTED"

.field public static final ACTION_BLE_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED"

.field public static final ACTION_BLE_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final ACTION_LOCAL_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

.field public static final ACTION_REQUEST_BLE_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_BLE_SCAN_ALWAYS_AVAILABLE"

.field public static final ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

.field public static final ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_ENABLE"

.field public static final ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field public static final ACTIVITY_ENERGY_INFO_CACHED:I = 0x0

.field public static final ACTIVITY_ENERGY_INFO_REFRESHED:I = 0x1

.field private static final ADDRESS_LENGTH:I = 0x11

.field public static final BLUETOOTH_MANAGER_SERVICE:Ljava/lang/String; = "bluetooth_manager"

.field private static final CONTROLLER_ENERGY_UPDATE_TIMEOUT_MILLIS:I = 0x1e

.field private static final DBG:Z = true

.field public static final DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONNECTION_STATE"

.field public static final EXTRA_DISCOVERABLE_DURATION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

.field public static final EXTRA_LOCAL_NAME:Ljava/lang/String; = "android.bluetooth.adapter.extra.LOCAL_NAME"

.field public static final EXTRA_PREVIOUS_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

.field public static final EXTRA_PREVIOUS_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_STATE"

.field public static final EXTRA_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.SCAN_MODE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field public static final SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final SCAN_MODE_NONE:I = 0x14

.field public static final SOCKET_CHANNEL_AUTO_STATIC_NO_SDP:I = -0x2

.field public static final STATE_BLE_ON:I = 0xf

.field public static final STATE_BLE_TURNING_OFF:I = 0x10

.field public static final STATE_BLE_TURNING_ON:I = 0xe

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field public static final STATE_TURNING_OFF:I = 0xd

.field public static final STATE_TURNING_ON:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapter"

.field private static final VDBG:Z

.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private static sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;


# instance fields
.field private final mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/le/ScanCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private final mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private final mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/bluetooth/IBluetooth;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get3()Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 1

    #@0
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@2
    return-object v0
.end method

.method static synthetic -get4()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 1

    #@0
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 3
    .param p1, "managerService"    # Landroid/bluetooth/IBluetoothManager;

    #@0
    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 488
    new-instance v1, Ljava/lang/Object;

    #@5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    #@a
    .line 1912
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$1;

    #@c
    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$1;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    #@f
    .line 1911
    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@11
    .line 2092
    new-instance v1, Ljava/util/ArrayList;

    #@13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    #@18
    .line 517
    if-nez p1, :cond_0

    #@1a
    .line 518
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v2, "bluetooth manager service is null"

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 521
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@25
    invoke-interface {p1, v1}, Landroid/bluetooth/IBluetoothManager;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    #@28
    move-result-object v1

    #@29
    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 523
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@2d
    .line 524
    new-instance v1, Ljava/util/HashMap;

    #@2f
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@32
    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    #@34
    .line 525
    new-instance v1, Landroid/os/Binder;

    #@36
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    #@39
    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    #@3b
    .line 515
    return-void

    #@3c
    .line 522
    :catch_0
    move-exception v0

    #@3d
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@40
    const-string/jumbo v2, ""

    #@43
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@46
    goto :goto_0
.end method

.method public static checkBluetoothAddress(Ljava/lang/String;)Z
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0x11

    #@2
    const/4 v3, 0x0

    #@3
    .line 2065
    if-eqz p0, :cond_0

    #@5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v2

    #@9
    if-eq v2, v4, :cond_1

    #@b
    .line 2066
    :cond_0
    return v3

    #@c
    .line 2068
    :cond_1
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_5

    #@f
    .line 2069
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 2070
    .local v0, "c":C
    rem-int/lit8 v2, v1, 0x3

    #@15
    packed-switch v2, :pswitch_data_0

    #@18
    .line 2068
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 2073
    :pswitch_0
    const/16 v2, 0x30

    #@1d
    if-lt v0, v2, :cond_3

    #@1f
    const/16 v2, 0x39

    #@21
    if-le v0, v2, :cond_2

    #@23
    :cond_3
    const/16 v2, 0x41

    #@25
    if-lt v0, v2, :cond_4

    #@27
    const/16 v2, 0x46

    #@29
    if-le v0, v2, :cond_2

    #@2b
    .line 2077
    :cond_4
    return v3

    #@2c
    .line 2079
    :pswitch_1
    const/16 v2, 0x3a

    #@2e
    if-eq v0, v2, :cond_2

    #@30
    .line 2082
    return v3

    #@31
    .line 2085
    .end local v0    # "c":C
    :cond_5
    const/4 v2, 0x1

    #@32
    return v2

    #@33
    .line 2070
    nop

    #@34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1630
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    #@2
    .line 1631
    new-instance v2, Landroid/os/ParcelUuid;

    #@4
    invoke-direct {v2, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@7
    .line 1630
    const/4 v3, 0x1

    #@8
    invoke-direct {v1, v3, p3, p4, v2}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZLandroid/os/ParcelUuid;)V

    #@b
    .line 1632
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothServerSocket;->setServiceName(Ljava/lang/String;)V

    #@e
    .line 1633
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@10
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    #@13
    move-result v0

    #@14
    .line 1634
    .local v0, "errno":I
    if-eqz v0, :cond_0

    #@16
    .line 1638
    new-instance v2, Ljava/io/IOException;

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Error: "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 1640
    :cond_0
    return-object v1
.end method

.method public static declared-synchronized getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 5

    #@0
    .prologue
    const-class v3, Landroid/bluetooth/BluetoothAdapter;

    #@2
    monitor-enter v3

    #@3
    .line 500
    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 501
    const-string/jumbo v2, "bluetooth_manager"

    #@a
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 502
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    #@10
    .line 503
    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    #@13
    move-result-object v1

    #@14
    .line 504
    .local v1, "managerService":Landroid/bluetooth/IBluetoothManager;
    new-instance v2, Landroid/bluetooth/BluetoothAdapter;

    #@16
    invoke-direct {v2, v1}, Landroid/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    #@19
    sput-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@1b
    .line 509
    .end local v1    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_0
    :goto_0
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v3

    #@1e
    return-object v2

    #@1f
    .line 506
    :cond_1
    :try_start_1
    const-string/jumbo v2, "BluetoothAdapter"

    #@22
    const-string/jumbo v4, "Bluetooth binder is null"

    #@25
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit v3

    #@2b
    throw v2
.end method

.method public static listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1701
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    #@3
    .line 1702
    const/4 v2, 0x2

    #@4
    const/4 v3, -0x1

    #@5
    .line 1701
    invoke-direct {v1, v2, v4, v4, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    #@8
    .line 1703
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@a
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    #@d
    move-result v0

    #@e
    .line 1704
    .local v0, "errno":I
    if-gez v0, :cond_0

    #@10
    .line 1709
    :cond_0
    return-object v1
.end method

.method private notifyUserAction(Z)V
    .locals 3
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 643
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 644
    const-string/jumbo v1, "BluetoothAdapter"

    #@7
    const-string/jumbo v2, "mService is null"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 645
    return-void

    #@e
    .line 649
    :cond_0
    if-eqz p1, :cond_1

    #@10
    .line 650
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@12
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V

    #@15
    .line 642
    :goto_0
    return-void

    #@16
    .line 652
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@18
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    goto :goto_0

    #@1c
    .line 654
    :catch_0
    move-exception v0

    #@1d
    .line 655
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@20
    const-string/jumbo v2, ""

    #@23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0
.end method

.method private toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    .locals 2
    .param p1, "devices"    # [Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2042
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@9
    .line 2043
    .local v0, "deviceSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method


# virtual methods
.method public cancelDiscovery()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1221
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0xc

    #@7
    if-eq v1, v2, :cond_0

    #@9
    return v3

    #@a
    .line 1223
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@c
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1224
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@f
    if-eqz v1, :cond_1

    #@11
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@13
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->cancelDiscovery()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v1

    #@17
    :try_start_2
    monitor-exit v2

    #@18
    return v1

    #@19
    :cond_1
    monitor-exit v2

    #@1a
    .line 1227
    :goto_0
    return v3

    #@1b
    .line 1223
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 1226
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@22
    const-string/jumbo v2, ""

    #@25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)Z
    .locals 1
    .param p1, "on"    # Z
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2004
    if-nez p2, :cond_0

    #@3
    return v0

    #@4
    .line 2014
    :cond_0
    return v0
.end method

.method public closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 12
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    #@0
    .prologue
    .line 1857
    if-nez p2, :cond_0

    #@2
    return-void

    #@3
    .line 1859
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@6
    .line 1856
    :goto_0
    :pswitch_0
    return-void

    #@7
    :pswitch_1
    move-object v5, p2

    #@8
    .line 1861
    check-cast v5, Landroid/bluetooth/BluetoothHeadset;

    #@a
    .line 1862
    .local v5, "headset":Landroid/bluetooth/BluetoothHeadset;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHeadset;->close()V

    #@d
    goto :goto_0

    #@e
    .end local v5    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :pswitch_2
    move-object v0, p2

    #@f
    .line 1865
    check-cast v0, Landroid/bluetooth/BluetoothA2dp;

    #@11
    .line 1866
    .local v0, "a2dp":Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->close()V

    #@14
    goto :goto_0

    #@15
    .end local v0    # "a2dp":Landroid/bluetooth/BluetoothA2dp;
    :pswitch_3
    move-object v1, p2

    #@16
    .line 1869
    check-cast v1, Landroid/bluetooth/BluetoothA2dpSink;

    #@18
    .line 1870
    .local v1, "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dpSink;->close()V

    #@1b
    goto :goto_0

    #@1c
    .end local v1    # "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    :pswitch_4
    move-object v2, p2

    #@1d
    .line 1873
    check-cast v2, Landroid/bluetooth/BluetoothAvrcpController;

    #@1f
    .line 1874
    .local v2, "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAvrcpController;->close()V

    #@22
    goto :goto_0

    #@23
    .end local v2    # "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    :pswitch_5
    move-object v8, p2

    #@24
    .line 1877
    check-cast v8, Landroid/bluetooth/BluetoothInputDevice;

    #@26
    .line 1878
    .local v8, "iDev":Landroid/bluetooth/BluetoothInputDevice;
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothInputDevice;->close()V

    #@29
    goto :goto_0

    #@2a
    .end local v8    # "iDev":Landroid/bluetooth/BluetoothInputDevice;
    :pswitch_6
    move-object v10, p2

    #@2b
    .line 1881
    check-cast v10, Landroid/bluetooth/BluetoothPan;

    #@2d
    .line 1882
    .local v10, "pan":Landroid/bluetooth/BluetoothPan;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothPan;->close()V

    #@30
    goto :goto_0

    #@31
    .end local v10    # "pan":Landroid/bluetooth/BluetoothPan;
    :pswitch_7
    move-object v7, p2

    #@32
    .line 1885
    check-cast v7, Landroid/bluetooth/BluetoothHealth;

    #@34
    .line 1886
    .local v7, "health":Landroid/bluetooth/BluetoothHealth;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothHealth;->close()V

    #@37
    goto :goto_0

    #@38
    .end local v7    # "health":Landroid/bluetooth/BluetoothHealth;
    :pswitch_8
    move-object v3, p2

    #@39
    .line 1889
    check-cast v3, Landroid/bluetooth/BluetoothGatt;

    #@3b
    .line 1890
    .local v3, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->close()V

    #@3e
    goto :goto_0

    #@3f
    .end local v3    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :pswitch_9
    move-object v4, p2

    #@40
    .line 1893
    check-cast v4, Landroid/bluetooth/BluetoothGattServer;

    #@42
    .line 1894
    .local v4, "gattServer":Landroid/bluetooth/BluetoothGattServer;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattServer;->close()V

    #@45
    goto :goto_0

    #@46
    .end local v4    # "gattServer":Landroid/bluetooth/BluetoothGattServer;
    :pswitch_a
    move-object v9, p2

    #@47
    .line 1897
    check-cast v9, Landroid/bluetooth/BluetoothMap;

    #@49
    .line 1898
    .local v9, "map":Landroid/bluetooth/BluetoothMap;
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothMap;->close()V

    #@4c
    goto :goto_0

    #@4d
    .end local v9    # "map":Landroid/bluetooth/BluetoothMap;
    :pswitch_b
    move-object v6, p2

    #@4e
    .line 1901
    check-cast v6, Landroid/bluetooth/BluetoothHeadsetClient;

    #@50
    .line 1902
    .local v6, "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClient;->close()V

    #@53
    goto :goto_0

    #@54
    .end local v6    # "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    :pswitch_c
    move-object v11, p2

    #@55
    .line 1905
    check-cast v11, Landroid/bluetooth/BluetoothSap;

    #@57
    .line 1906
    .local v11, "sap":Landroid/bluetooth/BluetoothSap;
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothSap;->close()V

    #@5a
    goto :goto_0

    #@5b
    .line 1859
    nop

    #@5c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public configHciSnoopLog(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 997
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@2
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 998
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@9
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->configHciSnoopLog(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    move-result v1

    #@d
    :try_start_2
    monitor-exit v2

    #@e
    return v1

    #@f
    :cond_0
    monitor-exit v2

    #@10
    .line 1001
    :goto_0
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    .line 997
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@15
    .line 1000
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@19
    const-string/jumbo v2, ""

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public disable()Z
    .locals 3

    #@0
    .prologue
    .line 933
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v1

    #@7
    return v1

    #@8
    .line 934
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@c
    const-string/jumbo v2, ""

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 935
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public disable(Z)Z
    .locals 3
    .param p1, "persist"    # Z

    #@0
    .prologue
    .line 951
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@2
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 952
    :catch_0
    move-exception v0

    #@8
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@b
    const-string/jumbo v2, ""

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 953
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public disableBLE()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 687
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    return v6

    #@9
    .line 689
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    #@c
    move-result v2

    #@d
    .line 690
    .local v2, "state":I
    const/16 v3, 0xc

    #@f
    if-ne v2, v3, :cond_1

    #@11
    .line 691
    const-string/jumbo v3, "BluetoothAdapter"

    #@14
    const-string/jumbo v4, "STATE_ON: shouldn\'t disable"

    #@17
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 693
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@1c
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v5}, Landroid/bluetooth/IBluetoothManager;->updateBleAppCount(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 697
    :goto_0
    return v7

    #@23
    .line 694
    :catch_0
    move-exception v1

    #@24
    .line 695
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothAdapter"

    #@27
    const-string/jumbo v4, ""

    #@2a
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    goto :goto_0

    #@2e
    .line 699
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/16 v3, 0xf

    #@30
    if-ne v2, v3, :cond_3

    #@32
    .line 700
    const-string/jumbo v3, "BluetoothAdapter"

    #@35
    const-string/jumbo v4, "STATE_BLE_ON"

    #@38
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 701
    const/4 v0, 0x0

    #@3c
    .line 703
    .local v0, "bleAppCnt":I
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@3e
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    #@40
    const/4 v5, 0x0

    #@41
    invoke-interface {v3, v4, v5}, Landroid/bluetooth/IBluetoothManager;->updateBleAppCount(Landroid/os/IBinder;Z)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@44
    move-result v0

    #@45
    .line 707
    :goto_1
    if-nez v0, :cond_2

    #@47
    .line 709
    invoke-direct {p0, v6}, Landroid/bluetooth/BluetoothAdapter;->notifyUserAction(Z)V

    #@4a
    .line 711
    :cond_2
    return v7

    #@4b
    .line 704
    :catch_1
    move-exception v1

    #@4c
    .line 705
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothAdapter"

    #@4f
    const-string/jumbo v4, ""

    #@52
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@55
    goto :goto_1

    #@56
    .line 714
    .end local v0    # "bleAppCnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v3, "BluetoothAdapter"

    #@59
    const-string/jumbo v4, "STATE_OFF: Already disabled"

    #@5c
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 715
    return v6
.end method

.method public enable()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 883
    const/16 v1, 0xa

    #@3
    .line 884
    .local v1, "state":I
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 885
    const-string/jumbo v2, "BluetoothAdapter"

    #@c
    const-string/jumbo v3, "enable(): BT is already enabled..!"

    #@f
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 886
    return v4

    #@13
    .line 889
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 891
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@19
    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result v1

    #@1d
    .line 895
    :cond_1
    :goto_0
    const/16 v2, 0xf

    #@1f
    if-ne v1, v2, :cond_2

    #@21
    .line 896
    const-string/jumbo v2, "BluetoothAdapter"

    #@24
    const-string/jumbo v3, "BT is in BLE_ON State"

    #@27
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 897
    invoke-direct {p0, v4}, Landroid/bluetooth/BluetoothAdapter;->notifyUserAction(Z)V

    #@2d
    .line 898
    return v4

    #@2e
    .line 892
    :catch_0
    move-exception v0

    #@2f
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothAdapter"

    #@32
    const-string/jumbo v3, ""

    #@35
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    goto :goto_0

    #@39
    .line 901
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@3b
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->enable()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@3e
    move-result v2

    #@3f
    return v2

    #@40
    .line 902
    :catch_1
    move-exception v0

    #@41
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothAdapter"

    #@44
    const-string/jumbo v3, ""

    #@47
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    .line 903
    const/4 v2, 0x0

    #@4b
    return v2
.end method

.method public enableBLE()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 750
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    return v5

    #@9
    .line 752
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 753
    const-string/jumbo v1, "BluetoothAdapter"

    #@12
    const-string/jumbo v2, "enableBLE(): BT is already enabled..!"

    #@15
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 755
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@1a
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    #@1c
    const/4 v3, 0x1

    #@1d
    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothManager;->updateBleAppCount(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 759
    :goto_0
    return v4

    #@21
    .line 756
    :catch_0
    move-exception v0

    #@22
    .line 757
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@25
    const-string/jumbo v2, ""

    #@28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_0

    #@2c
    .line 763
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    const-string/jumbo v1, "BluetoothAdapter"

    #@2f
    const-string/jumbo v2, "Calling enableBLE"

    #@32
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 764
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@37
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    #@39
    const/4 v3, 0x1

    #@3a
    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothManager;->updateBleAppCount(Landroid/os/IBinder;Z)I

    #@3d
    .line 765
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@3f
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->enable()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@42
    move-result v1

    #@43
    return v1

    #@44
    .line 766
    :catch_1
    move-exception v0

    #@45
    .line 767
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@48
    const-string/jumbo v2, ""

    #@4b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    .line 770
    return v5
.end method

.method public enableNoAutoConnect()Z
    .locals 3

    #@0
    .prologue
    .line 1963
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1964
    const-string/jumbo v1, "BluetoothAdapter"

    #@9
    const-string/jumbo v2, "enableNoAutoConnect(): BT is already enabled..!"

    #@c
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1965
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 1968
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@13
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->enableNoAutoConnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 1969
    :catch_0
    move-exception v0

    #@19
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@1c
    const-string/jumbo v2, ""

    #@1f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    .line 1970
    const/4 v1, 0x0

    #@23
    return v1
.end method

.method public factoryReset()Z
    .locals 3

    #@0
    .prologue
    .line 1016
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1017
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@6
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->factoryReset()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1019
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@f
    const-string/jumbo v2, ""

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 1020
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 2048
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@2
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@4
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 2052
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@a
    .line 2046
    :goto_0
    return-void

    #@b
    .line 2049
    :catch_0
    move-exception v0

    #@c
    .line 2050
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothAdapter"

    #@f
    const-string/jumbo v2, ""

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    .line 2052
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@18
    goto :goto_0

    #@19
    .line 2051
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1a
    .line 2052
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@1d
    .line 2051
    throw v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 966
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@2
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 967
    :catch_0
    move-exception v0

    #@8
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@b
    const-string/jumbo v2, ""

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 968
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 572
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    return-object v2

    #@8
    .line 573
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isMultipleAdvertisementSupported()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isPeripheralModeSupported()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_3

    #@14
    .line 577
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v1

    #@17
    .line 578
    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@19
    if-nez v0, :cond_2

    #@1b
    .line 579
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@1d
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@1f
    invoke-direct {v0, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    #@22
    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_2
    monitor-exit v1

    #@25
    .line 582
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@27
    return-object v0

    #@28
    .line 574
    :cond_3
    const-string/jumbo v0, "BluetoothAdapter"

    #@2b
    const-string/jumbo v1, "Bluetooth LE advertising not supported"

    #@2e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 575
    return-object v2

    #@32
    .line 577
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0
.end method

.method public getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 589
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    return-object v1

    #@8
    .line 590
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v1

    #@b
    .line 591
    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 592
    new-instance v0, Landroid/bluetooth/le/BluetoothLeScanner;

    #@11
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@13
    invoke-direct {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    #@16
    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_1
    monitor-exit v1

    #@19
    .line 595
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    #@1b
    return-object v0

    #@1c
    .line 590
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    .locals 1

    #@0
    .prologue
    .line 2089
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@2
    return-object v0
.end method

.method getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .locals 3
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothManagerCallback;

    #@0
    .prologue
    .line 2095
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 2096
    if-nez p1, :cond_1

    #@5
    .line 2097
    :try_start_0
    const-string/jumbo v0, "BluetoothAdapter"

    #@8
    const-string/jumbo v2, "getBluetoothService() called with no BluetoothManagerCallback"

    #@b
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    :goto_0
    monitor-exit v1

    #@f
    .line 2102
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@11
    return-object v0

    #@12
    .line 2098
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 2099
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 2095
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1411
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@5
    move-result v1

    #@6
    const/16 v2, 0xc

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 1412
    new-array v1, v3, [Landroid/bluetooth/BluetoothDevice;

    #@c
    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 1415
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@13
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1416
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@16
    if-eqz v1, :cond_1

    #@18
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@1a
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    move-result-object v1

    #@22
    :try_start_2
    monitor-exit v2

    #@23
    return-object v1

    #@24
    :cond_1
    monitor-exit v2

    #@25
    .line 1418
    const/4 v1, 0x0

    #@26
    new-array v1, v1, [Landroid/bluetooth/BluetoothDevice;

    #@28
    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    #@2b
    move-result-object v1

    #@2c
    return-object v1

    #@2d
    .line 1415
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@30
    .line 1419
    :catch_0
    move-exception v0

    #@31
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@34
    const-string/jumbo v2, ""

    #@37
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    .line 1420
    return-object v4
.end method

.method public getConnectionState()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1437
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0xc

    #@7
    if-eq v1, v2, :cond_0

    #@9
    return v3

    #@a
    .line 1439
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@c
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1440
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@f
    if-eqz v1, :cond_1

    #@11
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@13
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getAdapterConnectionState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v1

    #@17
    :try_start_2
    monitor-exit v2

    #@18
    return v1

    #@19
    :cond_1
    monitor-exit v2

    #@1a
    .line 1443
    :goto_0
    return v3

    #@1b
    .line 1439
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 1442
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@22
    const-string/jumbo v2, "getConnectionState:"

    #@25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0
.end method

.method public getControllerActivityEnergyInfo(I)Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 7
    .param p1, "updateType"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1372
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@4
    move-result v3

    #@5
    const/16 v4, 0xc

    #@7
    if-eq v3, v4, :cond_0

    #@9
    return-object v6

    #@a
    .line 1375
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@c
    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->isActivityAndEnergyReportingSupported()Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_1

    #@12
    .line 1376
    return-object v6

    #@13
    .line 1378
    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@14
    .line 1379
    const/4 v3, 0x1

    #@15
    if-ne p1, v3, :cond_2

    #@17
    .line 1380
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@19
    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getActivityEnergyInfoFromController()V

    #@1c
    .line 1381
    const-wide/16 v4, 0x1e

    #@1e
    invoke-virtual {p0, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->wait(J)V

    #@21
    .line 1383
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@23
    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    #@26
    move-result-object v2

    #@27
    .line 1384
    .local v2, "record":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_3

    #@2d
    :try_start_2
    monitor-exit p0

    #@2e
    .line 1385
    return-object v2

    #@2f
    :cond_3
    monitor-exit p0

    #@30
    .line 1387
    return-object v6

    #@31
    .line 1378
    .end local v2    # "record":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :catchall_0
    move-exception v3

    #@32
    monitor-exit p0

    #@33
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@34
    .line 1390
    :catch_0
    move-exception v1

    #@35
    .line 1391
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "BluetoothAdapter"

    #@38
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v5, "getControllerActivityEnergyInfoCallback wait interrupted: "

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 1395
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-object v6

    #@50
    .line 1392
    :catch_1
    move-exception v0

    #@51
    .line 1393
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothAdapter"

    #@54
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v5, "getControllerActivityEnergyInfoCallback: "

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    goto :goto_0
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1142
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0xc

    #@7
    if-eq v1, v2, :cond_0

    #@9
    return v3

    #@a
    .line 1144
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@c
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1145
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@f
    if-eqz v1, :cond_1

    #@11
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@13
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getDiscoverableTimeout()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v1

    #@17
    :try_start_2
    monitor-exit v2

    #@18
    return v1

    #@19
    :cond_1
    monitor-exit v2

    #@1a
    .line 1148
    :goto_0
    return v3

    #@1b
    .line 1144
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 1147
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@22
    const-string/jumbo v2, ""

    #@25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0
.end method

.method getLeAccess()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 845
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    #@4
    move-result v0

    #@5
    const/16 v1, 0xc

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 846
    return v2

    #@a
    .line 848
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    #@d
    move-result v0

    #@e
    const/16 v1, 0xf

    #@10
    if-ne v0, v1, :cond_1

    #@12
    .line 849
    return v2

    #@13
    .line 851
    :cond_1
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public getLeState()I
    .locals 4

    #@0
    .prologue
    .line 830
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@2
    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 831
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 833
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@9
    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    move-result v1

    #@d
    .local v1, "state":I
    :try_start_2
    monitor-exit v3

    #@e
    .line 835
    return v1

    #@f
    .end local v1    # "state":I
    :cond_0
    monitor-exit v3

    #@10
    .line 841
    :goto_0
    const/16 v2, 0xa

    #@12
    return v2

    #@13
    .line 830
    :catchall_0
    move-exception v2

    #@14
    monitor-exit v3

    #@15
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@16
    .line 838
    :catch_0
    move-exception v0

    #@17
    .line 839
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothAdapter"

    #@1a
    const-string/jumbo v3, ""

    #@1d
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 980
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@2
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 981
    :catch_0
    move-exception v0

    #@8
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@b
    const-string/jumbo v2, ""

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 982
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public getProfileConnectionState(I)I
    .locals 4
    .param p1, "profile"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1463
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0xc

    #@7
    if-eq v1, v2, :cond_0

    #@9
    return v3

    #@a
    .line 1465
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@c
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1466
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@f
    if-eqz v1, :cond_1

    #@11
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@13
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->getProfileConnectionState(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v1

    #@17
    :try_start_2
    monitor-exit v2

    #@18
    return v1

    #@19
    :cond_1
    monitor-exit v2

    #@1a
    .line 1471
    :goto_0
    return v3

    #@1b
    .line 1465
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 1468
    :catch_0
    move-exception v0

    #@1f
    .line 1469
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@22
    const-string/jumbo v2, "getProfileConnectionState:"

    #@25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0
.end method

.method public getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "profile"    # I

    #@0
    .prologue
    .line 1808
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    :cond_0
    const/4 v10, 0x0

    #@5
    return v10

    #@6
    .line 1810
    :cond_1
    const/4 v10, 0x1

    #@7
    if-ne p3, v10, :cond_2

    #@9
    .line 1811
    new-instance v3, Landroid/bluetooth/BluetoothHeadset;

    #@b
    invoke-direct {v3, p1, p2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    #@e
    .line 1812
    .local v3, "headset":Landroid/bluetooth/BluetoothHeadset;
    const/4 v10, 0x1

    #@f
    return v10

    #@10
    .line 1813
    .end local v3    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :cond_2
    const/4 v10, 0x2

    #@11
    if-ne p3, v10, :cond_3

    #@13
    .line 1814
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    #@15
    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    #@18
    .line 1815
    .local v0, "a2dp":Landroid/bluetooth/BluetoothA2dp;
    const/4 v10, 0x1

    #@19
    return v10

    #@1a
    .line 1816
    .end local v0    # "a2dp":Landroid/bluetooth/BluetoothA2dp;
    :cond_3
    const/16 v10, 0xb

    #@1c
    if-ne p3, v10, :cond_4

    #@1e
    .line 1817
    new-instance v1, Landroid/bluetooth/BluetoothA2dpSink;

    #@20
    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothA2dpSink;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    #@23
    .line 1818
    .local v1, "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    const/4 v10, 0x1

    #@24
    return v10

    #@25
    .line 1819
    .end local v1    # "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    :cond_4
    const/16 v10, 0xc

    #@27
    if-ne p3, v10, :cond_5

    #@29
    .line 1820
    new-instance v2, Landroid/bluetooth/BluetoothAvrcpController;

    #@2b
    invoke-direct {v2, p1, p2}, Landroid/bluetooth/BluetoothAvrcpController;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    #@2e
    .line 1821
    .local v2, "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    const/4 v10, 0x1

    #@2f
    return v10

    #@30
    .line 1822
    .end local v2    # "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    :cond_5
    const/4 v10, 0x4

    #@31
    if-ne p3, v10, :cond_6

    #@33
    .line 1823
    new-instance v6, Landroid/bluetooth/BluetoothInputDevice;

    #@35
    invoke-direct {v6, p1, p2}, Landroid/bluetooth/BluetoothInputDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    #@38
    .line 1824
    .local v6, "iDev":Landroid/bluetooth/BluetoothInputDevice;
    const/4 v10, 0x1

    #@39
    return v10

    #@3a
    .line 1825
    .end local v6    # "iDev":Landroid/bluetooth/BluetoothInputDevice;
    :cond_6
    const/4 v10, 0x5

    #@3b
    if-ne p3, v10, :cond_7

    #@3d
    .line 1826
    new-instance v8, Landroid/bluetooth/BluetoothPan;

    #@3f
    invoke-direct {v8, p1, p2}, Landroid/bluetooth/BluetoothPan;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    #@42
    .line 1827
    .local v8, "pan":Landroid/bluetooth/BluetoothPan;
    const/4 v10, 0x1

    #@43
    return v10

    #@44
    .line 1828
    .end local v8    # "pan":Landroid/bluetooth/BluetoothPan;
    :cond_7
    const/4 v10, 0x3

    #@45
    if-ne p3, v10, :cond_8

    #@47
    .line 1829
    new-instance v5, Landroid/bluetooth/BluetoothHealth;

    #@49
    invoke-direct {v5, p1, p2}, Landroid/bluetooth/BluetoothHealth;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    #@4c
    .line 1830
    .local v5, "health":Landroid/bluetooth/BluetoothHealth;
    const/4 v10, 0x1

    #@4d
    return v10

    #@4e
    .line 1831
    .end local v5    # "health":Landroid/bluetooth/BluetoothHealth;
    :cond_8
    const/16 v10, 0x9

    #@50
    if-ne p3, v10, :cond_9

    #@52
    .line 1832
    new-instance v7, Landroid/bluetooth/BluetoothMap;

    #@54
    invoke-direct {v7, p1, p2}, Landroid/bluetooth/BluetoothMap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    #@57
    .line 1833
    .local v7, "map":Landroid/bluetooth/BluetoothMap;
    const/4 v10, 0x1

    #@58
    return v10

    #@59
    .line 1834
    .end local v7    # "map":Landroid/bluetooth/BluetoothMap;
    :cond_9
    const/16 v10, 0x10

    #@5b
    if-ne p3, v10, :cond_a

    #@5d
    .line 1835
    new-instance v4, Landroid/bluetooth/BluetoothHeadsetClient;

    #@5f
    invoke-direct {v4, p1, p2}, Landroid/bluetooth/BluetoothHeadsetClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    #@62
    .line 1836
    .local v4, "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    const/4 v10, 0x1

    #@63
    return v10

    #@64
    .line 1837
    .end local v4    # "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    :cond_a
    const/16 v10, 0xa

    #@66
    if-ne p3, v10, :cond_b

    #@68
    .line 1838
    new-instance v9, Landroid/bluetooth/BluetoothSap;

    #@6a
    invoke-direct {v9, p1, p2}, Landroid/bluetooth/BluetoothSap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    #@6d
    .line 1839
    .local v9, "sap":Landroid/bluetooth/BluetoothSap;
    const/4 v10, 0x1

    #@6e
    return v10

    #@6f
    .line 1841
    .end local v9    # "sap":Landroid/bluetooth/BluetoothSap;
    :cond_b
    const/4 v10, 0x0

    #@70
    return v10
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 541
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    #@2
    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 10
    .param p1, "address"    # [B

    #@0
    .prologue
    const/4 v9, 0x4

    #@1
    const/4 v8, 0x3

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 556
    if-eqz p1, :cond_0

    #@7
    array-length v0, p1

    #@8
    const/4 v1, 0x6

    #@9
    if-eq v0, v1, :cond_1

    #@b
    .line 557
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Bluetooth address must have 6 bytes"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 559
    :cond_1
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    #@16
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@18
    const-string/jumbo v2, "%02X:%02X:%02X:%02X:%02X:%02X"

    #@1b
    const/4 v3, 0x6

    #@1c
    new-array v3, v3, [Ljava/lang/Object;

    #@1e
    .line 560
    aget-byte v4, p1, v5

    #@20
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@23
    move-result-object v4

    #@24
    aput-object v4, v3, v5

    #@26
    aget-byte v4, p1, v6

    #@28
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@2b
    move-result-object v4

    #@2c
    aput-object v4, v3, v6

    #@2e
    aget-byte v4, p1, v7

    #@30
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@33
    move-result-object v4

    #@34
    aput-object v4, v3, v7

    #@36
    aget-byte v4, p1, v8

    #@38
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@3b
    move-result-object v4

    #@3c
    aput-object v4, v3, v8

    #@3e
    aget-byte v4, p1, v9

    #@40
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@43
    move-result-object v4

    #@44
    aput-object v4, v3, v9

    #@46
    const/4 v4, 0x5

    #@47
    aget-byte v4, p1, v4

    #@49
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@4c
    move-result-object v4

    #@4d
    const/4 v5, 0x5

    #@4e
    aput-object v4, v3, v5

    #@50
    .line 559
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    #@57
    return-object v0
.end method

.method public getScanMode()I
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x14

    #@2
    .line 1086
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@5
    move-result v1

    #@6
    const/16 v2, 0xc

    #@8
    if-eq v1, v2, :cond_0

    #@a
    return v3

    #@b
    .line 1088
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@d
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 1089
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@10
    if-eqz v1, :cond_1

    #@12
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@14
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getScanMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result v1

    #@18
    :try_start_2
    monitor-exit v2

    #@19
    return v1

    #@1a
    :cond_1
    monitor-exit v2

    #@1b
    .line 1092
    :goto_0
    return v3

    #@1c
    .line 1088
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1f
    .line 1091
    :catch_0
    move-exception v0

    #@20
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@23
    const-string/jumbo v2, ""

    #@26
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    goto :goto_0
.end method

.method public getState()I
    .locals 4

    #@0
    .prologue
    .line 788
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@2
    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 789
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@5
    if-eqz v2, :cond_3

    #@7
    .line 791
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@9
    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    move-result v1

    #@d
    .line 794
    .local v1, "state":I
    const/16 v2, 0xf

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 795
    const/16 v2, 0xe

    #@13
    if-ne v1, v2, :cond_2

    #@15
    .line 798
    :cond_0
    :goto_0
    const/16 v1, 0xa

    #@17
    :cond_1
    :try_start_2
    monitor-exit v3

    #@18
    .line 800
    return v1

    #@19
    .line 796
    :cond_2
    const/16 v2, 0x10

    #@1b
    if-ne v1, v2, :cond_1

    #@1d
    goto :goto_0

    #@1e
    .end local v1    # "state":I
    :cond_3
    monitor-exit v3

    #@1f
    .line 806
    :goto_1
    const/16 v2, 0xa

    #@21
    return v2

    #@22
    .line 788
    :catchall_0
    move-exception v2

    #@23
    monitor-exit v3

    #@24
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@25
    .line 805
    :catch_0
    move-exception v0

    #@26
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothAdapter"

    #@29
    const-string/jumbo v3, ""

    #@2c
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    goto :goto_1
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1032
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0xc

    #@7
    if-eq v1, v2, :cond_0

    #@9
    return-object v3

    #@a
    .line 1034
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@c
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1035
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@f
    if-eqz v1, :cond_1

    #@11
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@13
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getUuids()[Landroid/os/ParcelUuid;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v1

    #@17
    :try_start_2
    monitor-exit v2

    #@18
    return-object v1

    #@19
    :cond_1
    monitor-exit v2

    #@1a
    .line 1038
    :goto_0
    return-object v3

    #@1b
    .line 1034
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 1037
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@22
    const-string/jumbo v2, ""

    #@25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0
.end method

.method public isBleScanAlwaysAvailable()Z
    .locals 3

    #@0
    .prologue
    .line 1288
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@2
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->isBleScanAlwaysAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1289
    :catch_0
    move-exception v0

    #@8
    .line 1290
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@b
    const-string/jumbo v2, "remote expection when calling isBleScanAlwaysAvailable"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 1291
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public isDiscovering()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1251
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0xc

    #@7
    if-eq v1, v2, :cond_0

    #@9
    return v3

    #@a
    .line 1253
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@c
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1254
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@f
    if-eqz v1, :cond_1

    #@11
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@13
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isDiscovering()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v1

    #@17
    :try_start_2
    monitor-exit v2

    #@18
    return v1

    #@19
    :cond_1
    monitor-exit v2

    #@1a
    .line 1257
    :goto_0
    return v3

    #@1b
    .line 1253
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 1256
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@22
    const-string/jumbo v2, ""

    #@25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 609
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@2
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 610
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@9
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    move-result v1

    #@d
    :try_start_2
    monitor-exit v2

    #@e
    return v1

    #@f
    :cond_0
    monitor-exit v2

    #@10
    .line 613
    :goto_0
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    .line 609
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@15
    .line 612
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@19
    const-string/jumbo v2, ""

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public isHardwareTrackingFiltersAvailable()Z
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1347
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    return v2

    #@8
    .line 1349
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@a
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    #@d
    move-result-object v1

    #@e
    .line 1350
    .local v1, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v1, :cond_1

    #@10
    .line 1352
    return v2

    #@11
    .line 1354
    :cond_1
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothGatt;->numHwTrackFiltersAvailable()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_2

    #@17
    const/4 v2, 0x1

    #@18
    :cond_2
    return v2

    #@19
    .line 1355
    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_0
    move-exception v0

    #@1a
    .line 1356
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothAdapter"

    #@1d
    const-string/jumbo v4, ""

    #@20
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    .line 1358
    return v2
.end method

.method public isLeEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 626
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    #@3
    move-result v0

    #@4
    .line 627
    .local v0, "state":I
    const/16 v1, 0xc

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 628
    const-string/jumbo v1, "BluetoothAdapter"

    #@b
    const-string/jumbo v2, "STATE_ON"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 635
    :goto_0
    const/4 v1, 0x1

    #@12
    return v1

    #@13
    .line 629
    :cond_0
    const/16 v1, 0xf

    #@15
    if-ne v0, v1, :cond_1

    #@17
    .line 630
    const-string/jumbo v1, "BluetoothAdapter"

    #@1a
    const-string/jumbo v2, "STATE_BLE_ON"

    #@1d
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    goto :goto_0

    #@21
    .line 632
    :cond_1
    const-string/jumbo v1, "BluetoothAdapter"

    #@24
    const-string/jumbo v2, "STATE_OFF"

    #@27
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 633
    const/4 v1, 0x0

    #@2b
    return v1
.end method

.method public isMultipleAdvertisementSupported()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1266
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0xc

    #@7
    if-eq v1, v2, :cond_0

    #@9
    return v3

    #@a
    .line 1268
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isMultiAdvertisementSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 1269
    :catch_0
    move-exception v0

    #@12
    .line 1270
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@15
    const-string/jumbo v2, "failed to get isMultipleAdvertisementSupported, error: "

    #@18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 1272
    return v3
.end method

.method public isOffloadedFilteringSupported()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1316
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    return v3

    #@8
    .line 1318
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@a
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isOffloadedFilteringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 1319
    :catch_0
    move-exception v0

    #@10
    .line 1320
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@13
    const-string/jumbo v2, "failed to get isOffloadedFilteringSupported, error: "

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 1322
    return v3
.end method

.method public isOffloadedScanBatchingSupported()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1331
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    return v3

    #@8
    .line 1333
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@a
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isOffloadedScanBatchingSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 1334
    :catch_0
    move-exception v0

    #@10
    .line 1335
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@13
    const-string/jumbo v2, "failed to get isOffloadedScanBatchingSupported, error: "

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 1337
    return v3
.end method

.method public isPeripheralModeSupported()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1301
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0xc

    #@7
    if-eq v1, v2, :cond_0

    #@9
    return v3

    #@a
    .line 1303
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@c
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isPeripheralModeSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 1304
    :catch_0
    move-exception v0

    #@12
    .line 1305
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@15
    const-string/jumbo v2, "failed to get peripheral mode capability: "

    #@18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 1307
    return v3
.end method

.method public listenUsingEncryptedRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1677
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    #@4
    invoke-direct {v1, v3, v2, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    #@7
    .line 1679
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@9
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    #@c
    move-result v0

    #@d
    .line 1680
    .local v0, "errno":I
    const/4 v2, -0x2

    #@e
    if-ne p1, v2, :cond_0

    #@10
    .line 1681
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@12
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    #@15
    move-result v2

    #@16
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    #@19
    .line 1683
    :cond_0
    if-gez v0, :cond_1

    #@1b
    .line 1687
    new-instance v2, Ljava/io/IOException;

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "Error: "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 1689
    :cond_1
    return-object v1
.end method

.method public listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1623
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1652
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    #@3
    .line 1653
    const/4 v2, 0x1

    #@4
    .line 1652
    invoke-direct {v1, v2, v3, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    #@7
    .line 1654
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@9
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    #@c
    move-result v0

    #@d
    .line 1655
    .local v0, "errno":I
    const/4 v2, -0x2

    #@e
    if-ne p1, v2, :cond_0

    #@10
    .line 1656
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@12
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    #@15
    move-result v2

    #@16
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    #@19
    .line 1658
    :cond_0
    if-eqz v0, :cond_1

    #@1b
    .line 1662
    new-instance v2, Ljava/io/IOException;

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "Error: "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 1664
    :cond_1
    return-object v1
.end method

.method public listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1585
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public listenUsingL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1754
    invoke-virtual {p0, p1, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingL2capOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public listenUsingL2capOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 8
    .param p1, "port"    # I
    .param p2, "mitm"    # Z
    .param p3, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1727
    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    #@3
    .line 1728
    const/4 v1, 0x3

    #@4
    move v3, v2

    #@5
    move v4, p1

    #@6
    move v5, p2

    #@7
    move v6, p3

    #@8
    .line 1727
    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    #@b
    .line 1729
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@d
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    #@10
    move-result v7

    #@11
    .line 1730
    .local v7, "errno":I
    const/4 v1, -0x2

    #@12
    if-ne p1, v1, :cond_0

    #@14
    .line 1731
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@16
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    #@1d
    .line 1733
    :cond_0
    if-eqz v7, :cond_1

    #@1f
    .line 1737
    new-instance v1, Ljava/io/IOException;

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Error: "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@38
    throw v1

    #@39
    .line 1739
    :cond_1
    return-object v0
.end method

.method public listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1489
    invoke-virtual {p0, p1, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 8
    .param p1, "channel"    # I
    .param p2, "mitm"    # Z
    .param p3, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1513
    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    #@3
    move v2, v1

    #@4
    move v3, v1

    #@5
    move v4, p1

    #@6
    move v5, p2

    #@7
    move v6, p3

    #@8
    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    #@b
    .line 1515
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@d
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    #@10
    move-result v7

    #@11
    .line 1516
    .local v7, "errno":I
    const/4 v1, -0x2

    #@12
    if-ne p1, v1, :cond_0

    #@14
    .line 1517
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@16
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    #@1d
    .line 1519
    :cond_0
    if-eqz v7, :cond_1

    #@1f
    .line 1523
    new-instance v1, Ljava/io/IOException;

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Error: "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@38
    throw v1

    #@39
    .line 1525
    :cond_1
    return-object v0
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1553
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public readOutOfBandData()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1766
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@4
    move-result v0

    #@5
    const/16 v1, 0xc

    #@7
    if-eq v0, v1, :cond_0

    #@9
    return-object v2

    #@a
    .line 1787
    :cond_0
    return-object v2
.end method

.method removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothManagerCallback;

    #@0
    .prologue
    .line 2106
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 2107
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 2105
    return-void

    #@a
    .line 2106
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public setDiscoverableTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 1153
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@3
    move-result v1

    #@4
    const/16 v2, 0xc

    #@6
    if-eq v1, v2, :cond_0

    #@8
    return-void

    #@9
    .line 1155
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@b
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 1156
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@e
    if-eqz v1, :cond_1

    #@10
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@12
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->setDiscoverableTimeout(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    :cond_1
    :try_start_2
    monitor-exit v2

    #@16
    .line 1152
    :goto_0
    return-void

    #@17
    .line 1155
    :catchall_0
    move-exception v1

    #@18
    monitor-exit v2

    #@19
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1a
    .line 1158
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@1e
    const-string/jumbo v2, ""

    #@21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1058
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0xc

    #@7
    if-eq v1, v2, :cond_0

    #@9
    return v3

    #@a
    .line 1060
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@c
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1061
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@f
    if-eqz v1, :cond_1

    #@11
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@13
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v1

    #@17
    :try_start_2
    monitor-exit v2

    #@18
    return v1

    #@19
    :cond_1
    monitor-exit v2

    #@1a
    .line 1064
    :goto_0
    return v3

    #@1b
    .line 1060
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 1063
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@22
    const-string/jumbo v2, ""

    #@25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0
.end method

.method public setScanMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 1135
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0xc

    #@6
    if-eq v0, v1, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 1137
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getDiscoverableTimeout()I

    #@d
    move-result v0

    #@e
    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public setScanMode(II)Z
    .locals 4
    .param p1, "mode"    # I
    .param p2, "duration"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1124
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0xc

    #@7
    if-eq v1, v2, :cond_0

    #@9
    return v3

    #@a
    .line 1126
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@c
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1127
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@f
    if-eqz v1, :cond_1

    #@11
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@13
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetooth;->setScanMode(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v1

    #@17
    :try_start_2
    monitor-exit v2

    #@18
    return v1

    #@19
    :cond_1
    monitor-exit v2

    #@1a
    .line 1130
    :goto_0
    return v3

    #@1b
    .line 1126
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 1129
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@22
    const-string/jumbo v2, ""

    #@25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0
.end method

.method public startDiscovery()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1193
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0xc

    #@7
    if-eq v1, v2, :cond_0

    #@9
    return v3

    #@a
    .line 1195
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@c
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1196
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@f
    if-eqz v1, :cond_1

    #@11
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    #@13
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->startDiscovery()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v1

    #@17
    :try_start_2
    monitor-exit v2

    #@18
    return v1

    #@19
    :cond_1
    monitor-exit v2

    #@1a
    .line 1199
    :goto_0
    return v3

    #@1b
    .line 1195
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 1198
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothAdapter"

    #@22
    const-string/jumbo v2, ""

    #@25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0
.end method

.method public startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2147
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 13
    .param p1, "serviceUuids"    # [Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 2168
    const-string/jumbo v7, "BluetoothAdapter"

    #@5
    new-instance v8, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v9, "startLeScan(): "

    #@d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v8

    #@11
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v8

    #@15
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v8

    #@19
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 2169
    if-nez p2, :cond_0

    #@1e
    .line 2170
    const-string/jumbo v7, "BluetoothAdapter"

    #@21
    const-string/jumbo v8, "startLeScan: null callback"

    #@24
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 2171
    return v11

    #@28
    .line 2173
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    #@2b
    move-result-object v5

    #@2c
    .line 2174
    .local v5, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-nez v5, :cond_1

    #@2e
    .line 2175
    const-string/jumbo v7, "BluetoothAdapter"

    #@31
    const-string/jumbo v8, "startLeScan: cannot get BluetoothLeScanner"

    #@34
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 2176
    return v11

    #@38
    .line 2179
    :cond_1
    iget-object v8, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    #@3a
    monitor-enter v8

    #@3b
    .line 2180
    :try_start_0
    iget-object v7, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    #@3d
    invoke-interface {v7, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_2

    #@43
    .line 2181
    const-string/jumbo v7, "BluetoothAdapter"

    #@46
    const-string/jumbo v9, "LE Scan has already started"

    #@49
    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    monitor-exit v8

    #@4d
    .line 2182
    return v11

    #@4e
    .line 2186
    :cond_2
    :try_start_1
    iget-object v7, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    #@50
    invoke-interface {v7}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    move-result-object v3

    #@54
    .line 2187
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v3, :cond_3

    #@56
    monitor-exit v8

    #@57
    .line 2189
    return v11

    #@58
    .line 2192
    :cond_3
    :try_start_2
    new-instance v4, Landroid/bluetooth/BluetoothAdapter$2;

    #@5a
    invoke-direct {v4, p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$2;-><init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    #@5d
    .line 2219
    .local v4, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    new-instance v7, Landroid/bluetooth/le/ScanSettings$Builder;

    #@5f
    invoke-direct {v7}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    #@62
    .line 2220
    const/4 v9, 0x1

    #@63
    .line 2219
    invoke-virtual {v7, v9}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    #@66
    move-result-object v7

    #@67
    .line 2221
    const/4 v9, 0x2

    #@68
    .line 2219
    invoke-virtual {v7, v9}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    #@6f
    move-result-object v6

    #@70
    .line 2223
    .local v6, "settings":Landroid/bluetooth/le/ScanSettings;
    new-instance v2, Ljava/util/ArrayList;

    #@72
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@75
    .line 2224
    .local v2, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    if-eqz p1, :cond_4

    #@77
    array-length v7, p1

    #@78
    if-lez v7, :cond_4

    #@7a
    .line 2227
    new-instance v7, Landroid/bluetooth/le/ScanFilter$Builder;

    #@7c
    invoke-direct {v7}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    #@7f
    .line 2228
    new-instance v9, Landroid/os/ParcelUuid;

    #@81
    const/4 v10, 0x0

    #@82
    aget-object v10, p1, v10

    #@84
    invoke-direct {v9, v10}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@87
    .line 2227
    invoke-virtual {v7, v9}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    #@8a
    move-result-object v7

    #@8b
    invoke-virtual {v7}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    #@8e
    move-result-object v1

    #@8f
    .line 2229
    .local v1, "filter":Landroid/bluetooth/le/ScanFilter;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@92
    .line 2231
    .end local v1    # "filter":Landroid/bluetooth/le/ScanFilter;
    :cond_4
    invoke-virtual {v5, v2, v6, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    #@95
    .line 2233
    iget-object v7, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    #@97
    invoke-interface {v7, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9a
    monitor-exit v8

    #@9b
    .line 2234
    return v12

    #@9c
    .line 2236
    .end local v2    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    .end local v6    # "settings":Landroid/bluetooth/le/ScanSettings;
    :catch_0
    move-exception v0

    #@9d
    .line 2237
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v7, "BluetoothAdapter"

    #@a0
    const-string/jumbo v9, ""

    #@a3
    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a6
    monitor-exit v8

    #@a7
    .line 2240
    return v11

    #@a8
    .line 2179
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    #@a9
    monitor-exit v8

    #@aa
    throw v7
.end method

.method public stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2255
    const-string/jumbo v2, "BluetoothAdapter"

    #@3
    const-string/jumbo v3, "stopLeScan()"

    #@6
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 2256
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    #@c
    move-result-object v1

    #@d
    .line 2257
    .local v1, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-nez v1, :cond_0

    #@f
    .line 2258
    return-void

    #@10
    .line 2260
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    #@12
    monitor-enter v3

    #@13
    .line 2261
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    #@15
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/bluetooth/le/ScanCallback;

    #@1b
    .line 2262
    .local v0, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    if-nez v0, :cond_1

    #@1d
    .line 2263
    const-string/jumbo v2, "BluetoothAdapter"

    #@20
    const-string/jumbo v4, "scan not started yet"

    #@23
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v3

    #@27
    .line 2264
    return-void

    #@28
    .line 2266
    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    monitor-exit v3

    #@2c
    .line 2254
    return-void

    #@2d
    .line 2260
    .end local v0    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit v3

    #@2f
    throw v2
.end method
