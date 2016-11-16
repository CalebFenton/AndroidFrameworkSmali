.class public final Landroid/bluetooth/BluetoothDevice;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothDevice$1;,
        Landroid/bluetooth/BluetoothDevice$2;
    }
.end annotation


# static fields
.field public static final ACCESS_ALLOWED:I = 0x1

.field public static final ACCESS_REJECTED:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field public static final ACTION_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_CONNECTED"

.field public static final ACTION_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECTED"

.field public static final ACTION_ACL_DISCONNECT_REQUESTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

.field public static final ACTION_ALIAS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.ALIAS_CHANGED"

.field public static final ACTION_BOND_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.BOND_STATE_CHANGED"

.field public static final ACTION_CLASS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.CLASS_CHANGED"

.field public static final ACTION_CONNECTION_ACCESS_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

.field public static final ACTION_CONNECTION_ACCESS_REPLY:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

.field public static final ACTION_CONNECTION_ACCESS_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

.field public static final ACTION_DISAPPEARED:Ljava/lang/String; = "android.bluetooth.device.action.DISAPPEARED"

.field public static final ACTION_FOUND:Ljava/lang/String; = "android.bluetooth.device.action.FOUND"

.field public static final ACTION_MAS_INSTANCE:Ljava/lang/String; = "android.bluetooth.device.action.MAS_INSTANCE"

.field public static final ACTION_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_CHANGED"

.field public static final ACTION_NAME_FAILED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_FAILED"

.field public static final ACTION_PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"

.field public static final ACTION_PAIRING_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_REQUEST"

.field public static final ACTION_SDP_RECORD:Ljava/lang/String; = "android.bluetooth.device.action.SDP_RECORD"

.field public static final ACTION_UUID:Ljava/lang/String; = "android.bluetooth.device.action.UUID"

.field public static final BOND_BONDED:I = 0xc

.field public static final BOND_BONDING:I = 0xb

.field public static final BOND_NONE:I = 0xa

.field public static final BOND_SUCCESS:I = 0x0

.field public static final CONNECTION_ACCESS_NO:I = 0x2

.field public static final CONNECTION_ACCESS_YES:I = 0x1

.field private static final CONNECTION_STATE_CONNECTED:I = 0x1

.field private static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field private static final CONNECTION_STATE_ENCRYPTED_BREDR:I = 0x2

.field private static final CONNECTION_STATE_ENCRYPTED_LE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final DEVICE_TYPE_CLASSIC:I = 0x1

.field public static final DEVICE_TYPE_DUAL:I = 0x3

.field public static final DEVICE_TYPE_LE:I = 0x2

.field public static final DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_ACCESS_REQUEST_TYPE:Ljava/lang/String; = "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

.field public static final EXTRA_ALWAYS_ALLOWED:Ljava/lang/String; = "android.bluetooth.device.extra.ALWAYS_ALLOWED"

.field public static final EXTRA_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.BOND_STATE"

.field public static final EXTRA_CLASS:Ljava/lang/String; = "android.bluetooth.device.extra.CLASS"

.field public static final EXTRA_CLASS_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.CLASS_NAME"

.field public static final EXTRA_CONNECTION_ACCESS_RESULT:Ljava/lang/String; = "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "android.bluetooth.device.extra.DEVICE"

.field public static final EXTRA_MAS_INSTANCE:Ljava/lang/String; = "android.bluetooth.device.extra.MAS_INSTANCE"

.field public static final EXTRA_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.NAME"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.PACKAGE_NAME"

.field public static final EXTRA_PAIRING_KEY:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_KEY"

.field public static final EXTRA_PAIRING_VARIANT:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_VARIANT"

.field public static final EXTRA_PREVIOUS_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.bluetooth.device.extra.REASON"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "android.bluetooth.device.extra.RSSI"

.field public static final EXTRA_SDP_RECORD:Ljava/lang/String; = "android.bluetooth.device.extra.SDP_RECORD"

.field public static final EXTRA_SDP_SEARCH_STATUS:Ljava/lang/String; = "android.bluetooth.device.extra.SDP_SEARCH_STATUS"

.field public static final EXTRA_UUID:Ljava/lang/String; = "android.bluetooth.device.extra.UUID"

.field public static final PAIRING_VARIANT_CONSENT:I = 0x3

.field public static final PAIRING_VARIANT_DISPLAY_PASSKEY:I = 0x4

.field public static final PAIRING_VARIANT_DISPLAY_PIN:I = 0x5

.field public static final PAIRING_VARIANT_OOB_CONSENT:I = 0x6

.field public static final PAIRING_VARIANT_PASSKEY:I = 0x1

.field public static final PAIRING_VARIANT_PASSKEY_CONFIRMATION:I = 0x2

.field public static final PAIRING_VARIANT_PIN:I = 0x0

.field public static final PAIRING_VARIANT_PIN_16_DIGITS:I = 0x7

.field public static final REQUEST_TYPE_MESSAGE_ACCESS:I = 0x3

.field public static final REQUEST_TYPE_PHONEBOOK_ACCESS:I = 0x2

.field public static final REQUEST_TYPE_PROFILE_CONNECTION:I = 0x1

.field public static final REQUEST_TYPE_SIM_ACCESS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothDevice"

.field public static final TRANSPORT_AUTO:I = 0x0

.field public static final TRANSPORT_BREDR:I = 0x1

.field public static final TRANSPORT_LE:I = 0x2

.field public static final UNBOND_REASON_AUTH_CANCELED:I = 0x3

.field public static final UNBOND_REASON_AUTH_FAILED:I = 0x1

.field public static final UNBOND_REASON_AUTH_REJECTED:I = 0x2

.field public static final UNBOND_REASON_AUTH_TIMEOUT:I = 0x6

.field public static final UNBOND_REASON_DISCOVERY_IN_PROGRESS:I = 0x5

.field public static final UNBOND_REASON_REMOTE_AUTH_CANCELED:I = 0x8

.field public static final UNBOND_REASON_REMOTE_DEVICE_DOWN:I = 0x4

.field public static final UNBOND_REASON_REMOVED:I = 0x9

.field public static final UNBOND_REASON_REPEATED_ATTEMPTS:I = 0x7

.field static mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private static sService:Landroid/bluetooth/IBluetooth;


# instance fields
.field private final mAddress:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/bluetooth/IBluetooth;
    .locals 1

    #@0
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0

    #@0
    sput-object p0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@2
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 618
    new-instance v0, Landroid/bluetooth/BluetoothDevice$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/BluetoothDevice$1;-><init>()V

    #@5
    sput-object v0, Landroid/bluetooth/BluetoothDevice;->mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@7
    .line 690
    new-instance v0, Landroid/bluetooth/BluetoothDevice$2;

    #@9
    invoke-direct {v0}, Landroid/bluetooth/BluetoothDevice$2;-><init>()V

    #@c
    .line 689
    sput-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    .line 72
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 651
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    #@6
    .line 652
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, " is not a valid Bluetooth address"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 656
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    #@28
    .line 650
    return-void
.end method

.method public static convertPinToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "pin"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1539
    if-nez p0, :cond_0

    #@3
    .line 1540
    return-object v4

    #@4
    .line 1544
    :cond_0
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    #@7
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    .line 1549
    .local v0, "pinBytes":[B
    array-length v2, v0

    #@c
    if-lez v2, :cond_1

    #@e
    array-length v2, v0

    #@f
    const/16 v3, 0x10

    #@11
    if-le v2, v3, :cond_2

    #@13
    .line 1550
    :cond_1
    return-object v4

    #@14
    .line 1545
    .end local v0    # "pinBytes":[B
    :catch_0
    move-exception v1

    #@15
    .line 1546
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "BluetoothDevice"

    #@18
    const-string/jumbo v3, "UTF-8 not supported?!?"

    #@1b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1547
    return-object v4

    #@1f
    .line 1552
    .end local v1    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "pinBytes":[B
    :cond_2
    return-object v0
.end method

.method static getService()Landroid/bluetooth/IBluetooth;
    .locals 3

    #@0
    .prologue
    .line 609
    const-class v2, Landroid/bluetooth/BluetoothDevice;

    #@2
    monitor-enter v2

    #@3
    .line 610
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 611
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@a
    move-result-object v0

    #@b
    .line 612
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    #@d
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    #@10
    move-result-object v1

    #@11
    sput-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v2

    #@14
    .line 615
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@16
    return-object v1

    #@17
    .line 609
    :catchall_0
    move-exception v1

    #@18
    monitor-exit v2

    #@19
    throw v1
.end method


# virtual methods
.method public cancelBondProcess()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 928
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 929
    const-string/jumbo v1, "BluetoothDevice"

    #@8
    const-string/jumbo v2, "BT not enabled. Cannot cancel Remote Device bond"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 930
    return v4

    #@f
    .line 933
    :cond_0
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "cancelBondProcess() for device "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 934
    const-string/jumbo v3, " called by pid: "

    #@29
    .line 933
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 934
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@30
    move-result v3

    #@31
    .line 933
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 935
    const-string/jumbo v3, " tid: "

    #@38
    .line 933
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 935
    invoke-static {}, Landroid/os/Process;->myTid()I

    #@3f
    move-result v3

    #@40
    .line 933
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 936
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@4d
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    move-result v1

    #@51
    return v1

    #@52
    .line 937
    :catch_0
    move-exception v0

    #@53
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@56
    const-string/jumbo v2, ""

    #@59
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5c
    .line 938
    return v4
.end method

.method public cancelPairingUserInput()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1199
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1200
    const-string/jumbo v1, "BluetoothDevice"

    #@8
    const-string/jumbo v2, "BT not enabled. Cannot create pairing user input"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 1201
    return v3

    #@f
    .line 1204
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@11
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 1205
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@1a
    const-string/jumbo v2, ""

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 1206
    return v3
.end method

.method public connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    #@0
    .prologue
    .line 1569
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p4, "transport"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1591
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@4
    move-result-object v0

    #@5
    .line 1592
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@8
    move-result-object v4

    #@9
    .line 1594
    .local v4, "managerService":Landroid/bluetooth/IBluetoothManager;
    :try_start_0
    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    #@c
    move-result-object v3

    #@d
    .line 1595
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v3, :cond_0

    #@f
    .line 1597
    return-object v7

    #@10
    .line 1599
    :cond_0
    new-instance v2, Landroid/bluetooth/BluetoothGatt;

    #@12
    invoke-direct {v2, v3, p0, p4}, Landroid/bluetooth/BluetoothGatt;-><init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothDevice;I)V

    #@15
    .line 1600
    .local v2, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v2, v5, p3}, Landroid/bluetooth/BluetoothGatt;->connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1601
    return-object v2

    #@1d
    .line 1602
    .end local v2    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_0
    move-exception v1

    #@1e
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "BluetoothDevice"

    #@21
    const-string/jumbo v6, ""

    #@24
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    .line 1603
    return-object v7
.end method

.method public createBond()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 825
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 826
    const-string/jumbo v1, "BluetoothDevice"

    #@8
    const-string/jumbo v2, "BT not enabled. Cannot create bond to Remote Device"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 827
    return v4

    #@f
    .line 830
    :cond_0
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "createBond() for device "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 831
    const-string/jumbo v3, " called by pid: "

    #@29
    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 831
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@30
    move-result v3

    #@31
    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 832
    const-string/jumbo v3, " tid: "

    #@38
    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 832
    invoke-static {}, Landroid/os/Process;->myTid()I

    #@3f
    move-result v3

    #@40
    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 833
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@4d
    const/4 v2, 0x0

    #@4e
    invoke-interface {v1, p0, v2}, Landroid/bluetooth/IBluetooth;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    move-result v1

    #@52
    return v1

    #@53
    .line 834
    :catch_0
    move-exception v0

    #@54
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@57
    const-string/jumbo v2, ""

    #@5a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5d
    .line 835
    return v4
.end method

.method public createBond(I)Z
    .locals 5
    .param p1, "transport"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 855
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 856
    const-string/jumbo v1, "BluetoothDevice"

    #@8
    const-string/jumbo v2, "BT not enabled. Cannot create bond to Remote Device"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 857
    return v4

    #@f
    .line 859
    :cond_0
    if-ltz p1, :cond_1

    #@11
    const/4 v1, 0x2

    #@12
    if-le p1, v1, :cond_2

    #@14
    .line 861
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, " is not a valid Bluetooth transport"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 864
    :cond_2
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    #@31
    new-instance v2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v3, "createBond() for device "

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    .line 865
    const-string/jumbo v3, " called by pid: "

    #@48
    .line 864
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    .line 865
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@4f
    move-result v3

    #@50
    .line 864
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    .line 866
    const-string/jumbo v3, " tid: "

    #@57
    .line 864
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    .line 866
    invoke-static {}, Landroid/os/Process;->myTid()I

    #@5e
    move-result v3

    #@5f
    .line 864
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 867
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@6c
    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    move-result v1

    #@70
    return v1

    #@71
    .line 868
    :catch_0
    move-exception v0

    #@72
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@75
    const-string/jumbo v2, ""

    #@78
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7b
    .line 869
    return v4
.end method

.method public createBondOutOfBand(ILandroid/bluetooth/OobData;)Z
    .locals 3
    .param p1, "transport"    # I
    .param p2, "oobData"    # Landroid/bluetooth/OobData;

    #@0
    .prologue
    .line 893
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@2
    invoke-interface {v1, p0, p1, p2}, Landroid/bluetooth/IBluetooth;->createBondOutOfBand(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 894
    :catch_0
    move-exception v0

    #@8
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@b
    const-string/jumbo v2, ""

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 895
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public createInsecureRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 8
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
    .line 1502
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1503
    const-string/jumbo v0, "BluetoothDevice"

    #@a
    const-string/jumbo v1, "Bluetooth is not enabled"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 1504
    new-instance v0, Ljava/io/IOException;

    #@12
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@15
    throw v0

    #@16
    .line 1506
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    #@18
    const/4 v1, 0x1

    #@19
    const/4 v2, -0x1

    #@1a
    .line 1507
    const/4 v7, 0x0

    #@1b
    move v4, v3

    #@1c
    move-object v5, p0

    #@1d
    move v6, p1

    #@1e
    .line 1506
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    #@21
    return-object v0
.end method

.method public createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 1478
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1479
    const-string/jumbo v0, "BluetoothDevice"

    #@b
    const-string/jumbo v1, "Bluetooth is not enabled"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1480
    new-instance v0, Ljava/io/IOException;

    #@13
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@16
    throw v0

    #@17
    .line 1482
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    #@19
    .line 1483
    new-instance v7, Landroid/os/ParcelUuid;

    #@1b
    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@1e
    .line 1482
    const/4 v1, 0x1

    #@1f
    move v4, v3

    #@20
    move-object v5, p0

    #@21
    move v6, v2

    #@22
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    #@25
    return-object v0
.end method

.method public createL2capSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1402
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    #@3
    const/4 v1, 0x3

    #@4
    const/4 v2, -0x1

    #@5
    .line 1403
    const/4 v7, 0x0

    #@6
    move v4, v3

    #@7
    move-object v5, p0

    #@8
    move v6, p1

    #@9
    .line 1402
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    #@c
    return-object v0
.end method

.method public createRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1368
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1369
    const-string/jumbo v0, "BluetoothDevice"

    #@a
    const-string/jumbo v1, "Bluetooth is not enabled"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 1370
    new-instance v0, Ljava/io/IOException;

    #@12
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@15
    throw v0

    #@16
    .line 1372
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    #@18
    const/4 v2, -0x1

    #@19
    .line 1373
    const/4 v7, 0x0

    #@1a
    move v3, v1

    #@1b
    move v4, v1

    #@1c
    move-object v5, p0

    #@1d
    move v6, p1

    #@1e
    .line 1372
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    #@21
    return-object v0
.end method

.method public createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x1

    #@2
    .line 1439
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1440
    const-string/jumbo v0, "BluetoothDevice"

    #@b
    const-string/jumbo v1, "Bluetooth is not enabled"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1441
    new-instance v0, Ljava/io/IOException;

    #@13
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@16
    throw v0

    #@17
    .line 1444
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    #@19
    .line 1445
    new-instance v7, Landroid/os/ParcelUuid;

    #@1b
    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@1e
    move v3, v1

    #@1f
    move v4, v1

    #@20
    move-object v5, p0

    #@21
    move v6, v2

    #@22
    .line 1444
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    #@25
    return-object v0
.end method

.method public createScoSocket()Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    .line 1522
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1523
    const-string/jumbo v0, "BluetoothDevice"

    #@b
    const-string/jumbo v1, "Bluetooth is not enabled"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1524
    new-instance v0, Ljava/io/IOException;

    #@13
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@16
    throw v0

    #@17
    .line 1526
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    #@19
    const/4 v1, 0x2

    #@1a
    const/4 v7, 0x0

    #@1b
    move v4, v3

    #@1c
    move-object v5, p0

    #@1d
    move v6, v2

    #@1e
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    #@21
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 686
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 661
    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 662
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    #@6
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    #@8
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 664
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@12
    return v0
.end method

.method public fetchUuidsWithSdp()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1097
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    .line 1098
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v1, :cond_0

    #@5
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 1099
    :cond_0
    const-string/jumbo v2, "BluetoothDevice"

    #@e
    const-string/jumbo v3, "BT not enabled. Cannot fetchUuidsWithSdp"

    #@11
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 1100
    return v4

    #@15
    .line 1103
    :cond_1
    :try_start_0
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 1104
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    #@1e
    const-string/jumbo v3, ""

    #@21
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 1105
    return v4
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 710
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 764
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 765
    const-string/jumbo v1, "BluetoothDevice"

    #@8
    const-string/jumbo v2, "BT not enabled. Cannot get Remote Device Alias"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 766
    return-object v3

    #@f
    .line 769
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@11
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 770
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@1a
    const-string/jumbo v2, ""

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 771
    return-object v3
.end method

.method public getAliasName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 805
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 806
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 807
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 809
    :cond_0
    return-object v0
.end method

.method public getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1044
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1045
    const-string/jumbo v2, "BluetoothDevice"

    #@8
    const-string/jumbo v3, "BT not enabled. Cannot get Bluetooth Class"

    #@b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 1046
    return-object v4

    #@f
    .line 1049
    :cond_0
    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@11
    invoke-interface {v2, p0}, Landroid/bluetooth/IBluetooth;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    #@14
    move-result v0

    #@15
    .line 1050
    .local v0, "classInt":I
    const/high16 v2, -0x1000000

    #@17
    if-ne v0, v2, :cond_1

    #@19
    return-object v4

    #@1a
    .line 1051
    :cond_1
    new-instance v2, Landroid/bluetooth/BluetoothClass;

    #@1c
    invoke-direct {v2, v0}, Landroid/bluetooth/BluetoothClass;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    return-object v2

    #@20
    .line 1052
    .end local v0    # "classInt":I
    :catch_0
    move-exception v1

    #@21
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    #@24
    const-string/jumbo v3, ""

    #@27
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    .line 1053
    return-object v4
.end method

.method public getBondState()I
    .locals 6

    #@0
    .prologue
    const/16 v5, 0xa

    #@2
    .line 977
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 978
    const-string/jumbo v2, "BluetoothDevice"

    #@9
    const-string/jumbo v3, "BT not enabled. Cannot get bond state"

    #@c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 979
    return v5

    #@10
    .line 982
    :cond_0
    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@12
    invoke-interface {v2, p0}, Landroid/bluetooth/IBluetooth;->getBondState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 984
    :catch_0
    move-exception v1

    #@18
    .line 987
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "BluetoothDevice"

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "NullPointerException for getBondState() of device ("

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 988
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .line 987
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    .line 988
    const-string/jumbo v4, ")"

    #@32
    .line 987
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    .line 990
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    return v5

    #@3e
    .line 983
    :catch_1
    move-exception v0

    #@3f
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    #@42
    const-string/jumbo v3, ""

    #@45
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    goto :goto_0
.end method

.method public getMessageAccessPermission()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1273
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1274
    return v3

    #@6
    .line 1277
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@8
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1278
    :catch_0
    move-exception v0

    #@e
    .line 1279
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@11
    const-string/jumbo v2, ""

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 1281
    return v3
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 725
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 726
    const-string/jumbo v1, "BluetoothDevice"

    #@8
    const-string/jumbo v2, "BT not enabled. Cannot get Remote Device name"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 727
    return-object v3

    #@f
    .line 730
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@11
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 731
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@1a
    const-string/jumbo v2, ""

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 732
    return-object v3
.end method

.method public getPhonebookAccessPermission()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1235
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1236
    return v3

    #@6
    .line 1239
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@8
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1240
    :catch_0
    move-exception v0

    #@e
    .line 1241
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@11
    const-string/jumbo v2, ""

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 1243
    return v3
.end method

.method public getSimAccessPermission()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1311
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1312
    return v3

    #@6
    .line 1315
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@8
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1316
    :catch_0
    move-exception v0

    #@e
    .line 1317
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@11
    const-string/jumbo v2, ""

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 1319
    return v3
.end method

.method public getType()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 746
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 747
    const-string/jumbo v1, "BluetoothDevice"

    #@8
    const-string/jumbo v2, "BT not enabled. Cannot get Remote Device type"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 748
    return v3

    #@f
    .line 751
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@11
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 752
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@1a
    const-string/jumbo v2, ""

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 753
    return v3
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1070
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    .line 1071
    :cond_0
    const-string/jumbo v1, "BluetoothDevice"

    #@e
    const-string/jumbo v2, "BT not enabled. Cannot get remote device Uuids"

    #@11
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 1072
    return-object v3

    #@15
    .line 1075
    :cond_1
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@17
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 1076
    :catch_0
    move-exception v0

    #@1d
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@20
    const-string/jumbo v2, ""

    #@23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 1077
    return-object v3
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 669
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isBluetoothDock()Z
    .locals 1

    #@0
    .prologue
    .line 1216
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method isBluetoothEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 1220
    const/4 v1, 0x0

    #@1
    .line 1221
    .local v1, "ret":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@4
    move-result-object v0

    #@5
    .line 1222
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1223
    const/4 v1, 0x1

    #@e
    .line 1225
    :cond_0
    return v1
.end method

.method public isConnected()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1002
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1004
    return v1

    #@6
    .line 1007
    :cond_0
    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@8
    invoke-interface {v2, p0}, Landroid/bluetooth/IBluetooth;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    const/4 v1, 0x1

    #@f
    :cond_1
    return v1

    #@10
    .line 1008
    :catch_0
    move-exception v0

    #@11
    .line 1009
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    #@14
    const-string/jumbo v3, ""

    #@17
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 1010
    return v1
.end method

.method public isEncrypted()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1024
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 1026
    return v2

    #@7
    .line 1029
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@9
    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v3

    #@d
    if-le v3, v1, :cond_1

    #@f
    :goto_0
    return v1

    #@10
    :cond_1
    move v1, v2

    #@11
    goto :goto_0

    #@12
    .line 1030
    :catch_0
    move-exception v0

    #@13
    .line 1031
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@16
    const-string/jumbo v3, ""

    #@19
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 1032
    return v2
.end method

.method public removeBond()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 952
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 953
    const-string/jumbo v1, "BluetoothDevice"

    #@8
    const-string/jumbo v2, "BT not enabled. Cannot remove Remote Device bond"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 954
    return v4

    #@f
    .line 957
    :cond_0
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "removeBond() for device "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 958
    const-string/jumbo v3, " called by pid: "

    #@29
    .line 957
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 958
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@30
    move-result v3

    #@31
    .line 957
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 959
    const-string/jumbo v3, " tid: "

    #@38
    .line 957
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 959
    invoke-static {}, Landroid/os/Process;->myTid()I

    #@3f
    move-result v3

    #@40
    .line 957
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 960
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@4d
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    move-result v1

    #@51
    return v1

    #@52
    .line 961
    :catch_0
    move-exception v0

    #@53
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@56
    const-string/jumbo v2, ""

    #@59
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5c
    .line 962
    return v4
.end method

.method public sdpSearch(Landroid/os/ParcelUuid;)Z
    .locals 4
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1130
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1131
    const-string/jumbo v1, "BluetoothDevice"

    #@8
    const-string/jumbo v2, "BT not enabled. Cannot query remote device sdp records"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 1132
    return v3

    #@f
    .line 1135
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@11
    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 1136
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@1a
    const-string/jumbo v2, ""

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 1137
    return v3
.end method

.method public setAlias(Ljava/lang/String;)Z
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 785
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 786
    const-string/jumbo v1, "BluetoothDevice"

    #@8
    const-string/jumbo v2, "BT not enabled. Cannot set Remote Device name"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 787
    return v3

    #@f
    .line 790
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@11
    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 791
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@1a
    const-string/jumbo v2, ""

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 792
    return v3
.end method

.method public setDeviceOutOfBandData([B[B)Z
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "randomizer"    # [B

    #@0
    .prologue
    .line 917
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setMessageAccessPermission(I)Z
    .locals 4
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1293
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1294
    return v3

    #@6
    .line 1297
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@8
    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1298
    :catch_0
    move-exception v0

    #@e
    .line 1299
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@11
    const-string/jumbo v2, ""

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 1301
    return v3
.end method

.method public setPairingConfirmation(Z)Z
    .locals 4
    .param p1, "confirm"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1177
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1178
    const-string/jumbo v1, "BluetoothDevice"

    #@8
    const-string/jumbo v2, "BT not enabled. Cannot set pairing confirmation"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 1179
    return v3

    #@f
    .line 1182
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@11
    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 1183
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@1a
    const-string/jumbo v2, ""

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 1184
    return v3
.end method

.method public setPasskey(I)Z
    .locals 1
    .param p1, "passkey"    # I

    #@0
    .prologue
    .line 1165
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setPhonebookAccessPermission(I)Z
    .locals 4
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1255
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1256
    return v3

    #@6
    .line 1259
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@8
    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1260
    :catch_0
    move-exception v0

    #@e
    .line 1261
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@11
    const-string/jumbo v2, ""

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 1263
    return v3
.end method

.method public setPin([B)Z
    .locals 5
    .param p1, "pin"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1148
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1149
    const-string/jumbo v1, "BluetoothDevice"

    #@8
    const-string/jumbo v2, "BT not enabled. Cannot set Remote Device pin"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 1150
    return v4

    #@f
    .line 1153
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@11
    array-length v2, p1

    #@12
    const/4 v3, 0x1

    #@13
    invoke-interface {v1, p0, v3, v2, p1}, Landroid/bluetooth/IBluetooth;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 1154
    :catch_0
    move-exception v0

    #@19
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@1c
    const-string/jumbo v2, ""

    #@1f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    .line 1155
    return v4
.end method

.method public setRemoteOutOfBandData()Z
    .locals 1

    #@0
    .prologue
    .line 1194
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setSimAccessPermission(I)Z
    .locals 4
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1331
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1332
    return v3

    #@6
    .line 1335
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    #@8
    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1336
    :catch_0
    move-exception v0

    #@e
    .line 1337
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    #@11
    const-string/jumbo v2, ""

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 1339
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 700
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 699
    return-void
.end method
