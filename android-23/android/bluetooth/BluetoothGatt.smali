.class public final Landroid/bluetooth/BluetoothGatt;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGatt$1;
    }
.end annotation


# static fields
.field static final AUTHENTICATION_MITM:I = 0x2

.field static final AUTHENTICATION_NONE:I = 0x0

.field static final AUTHENTICATION_NO_MITM:I = 0x1

.field public static final CONNECTION_PRIORITY_BALANCED:I = 0x0

.field public static final CONNECTION_PRIORITY_HIGH:I = 0x1

.field public static final CONNECTION_PRIORITY_LOW_POWER:I = 0x2

.field private static final CONN_STATE_CLOSED:I = 0x4

.field private static final CONN_STATE_CONNECTED:I = 0x2

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static final CONN_STATE_IDLE:I = 0x0

.field private static final DBG:Z = true

.field public static final GATT_CONNECTION_CONGESTED:I = 0x8f

.field public static final GATT_FAILURE:I = 0x101

.field public static final GATT_INSUFFICIENT_AUTHENTICATION:I = 0x5

.field public static final GATT_INSUFFICIENT_ENCRYPTION:I = 0xf

.field public static final GATT_INVALID_ATTRIBUTE_LENGTH:I = 0xd

.field public static final GATT_INVALID_OFFSET:I = 0x7

.field public static final GATT_READ_NOT_PERMITTED:I = 0x2

.field public static final GATT_REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final GATT_SUCCESS:I = 0x0

.field public static final GATT_WRITE_NOT_PERMITTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothGatt"

.field private static final VDBG:Z


# instance fields
.field private mAuthRetry:Z

.field private mAutoConnect:Z

.field private final mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

.field private mCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mClientIf:I

.field private mConnState:I

.field private final mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceBusy:Ljava/lang/Boolean;

.field private mService:Landroid/bluetooth/IBluetoothGatt;

.field private mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateLock:Ljava/lang/Object;

.field private mTransport:I


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothGatt;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/bluetooth/BluetoothGatt;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothGatt;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/bluetooth/BluetoothGatt;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/bluetooth/BluetoothGatt;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "transport"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 48
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z

    #@6
    .line 52
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    #@d
    .line 53
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@13
    .line 135
    new-instance v0, Landroid/bluetooth/BluetoothGatt$1;

    #@15
    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothGatt$1;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    #@18
    .line 134
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    #@1a
    .line 613
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mContext:Landroid/content/Context;

    #@1c
    .line 614
    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@1e
    .line 615
    iput-object p3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@20
    .line 616
    iput p4, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    #@22
    .line 617
    new-instance v0, Ljava/util/ArrayList;

    #@24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@27
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    #@29
    .line 619
    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    #@2b
    .line 612
    return-void
.end method

.method private registerApp(Landroid/bluetooth/BluetoothGattCallback;)Z
    .locals 6
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 666
    const-string/jumbo v2, "BluetoothGatt"

    #@4
    const-string/jumbo v3, "registerApp()"

    #@7
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 667
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@c
    if-nez v2, :cond_0

    #@e
    return v5

    #@f
    .line 669
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    #@11
    .line 670
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@14
    move-result-object v1

    #@15
    .line 671
    .local v1, "uuid":Ljava/util/UUID;
    const-string/jumbo v2, "BluetoothGatt"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "registerApp() - UUID="

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 674
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@31
    new-instance v3, Landroid/os/ParcelUuid;

    #@33
    invoke-direct {v3, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@36
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    #@38
    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 680
    const/4 v2, 0x1

    #@3c
    return v2

    #@3d
    .line 675
    :catch_0
    move-exception v0

    #@3e
    .line 676
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothGatt"

    #@41
    const-string/jumbo v3, ""

    #@44
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    .line 677
    return v5
.end method

.method private unregisterApp()V
    .locals 4

    #@0
    .prologue
    .line 687
    const-string/jumbo v1, "BluetoothGatt"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "unregisterApp() - mClientIf="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 688
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@1e
    if-eqz v1, :cond_0

    #@20
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@22
    if-nez v1, :cond_1

    #@24
    :cond_0
    return-void

    #@25
    .line 691
    :cond_1
    const/4 v1, 0x0

    #@26
    :try_start_0
    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    #@28
    .line 692
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2a
    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@2c
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    #@2f
    .line 693
    const/4 v1, 0x0

    #@30
    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 686
    :goto_0
    return-void

    #@33
    .line 694
    :catch_0
    move-exception v0

    #@34
    .line 695
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@37
    const-string/jumbo v2, ""

    #@3a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    goto :goto_0
.end method


# virtual methods
.method public abortReliableWrite()V
    .locals 5

    #@0
    .prologue
    .line 1127
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@6
    if-nez v1, :cond_1

    #@8
    :cond_0
    return-void

    #@9
    .line 1130
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@b
    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@d
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@f
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    const/4 v4, 0x0

    #@14
    invoke-interface {v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1125
    :goto_0
    return-void

    #@18
    .line 1131
    :catch_0
    move-exception v0

    #@19
    .line 1132
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@1c
    const-string/jumbo v2, ""

    #@1f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0
.end method

.method public abortReliableWrite(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "mDevice"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 1140
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->abortReliableWrite()V

    #@3
    .line 1139
    return-void
.end method

.method public beginReliableWrite()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1072
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@7
    if-nez v1, :cond_1

    #@9
    :cond_0
    return v4

    #@a
    .line 1075
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@c
    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@e
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@10
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->beginReliableWrite(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1081
    const/4 v1, 0x1

    #@18
    return v1

    #@19
    .line 1076
    :catch_0
    move-exception v0

    #@1a
    .line 1077
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@1d
    const-string/jumbo v2, ""

    #@20
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    .line 1078
    return v4
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    .line 629
    const-string/jumbo v0, "BluetoothGatt"

    #@3
    const-string/jumbo v1, "close()"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 631
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGatt;->unregisterApp()V

    #@c
    .line 632
    const/4 v0, 0x4

    #@d
    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    #@f
    .line 628
    return-void
.end method

.method public connect()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 771
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@3
    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@5
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@7
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 772
    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    #@d
    const/4 v5, 0x0

    #@e
    .line 771
    invoke-interface {v1, v2, v3, v5, v4}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 773
    const/4 v1, 0x1

    #@12
    return v1

    #@13
    .line 774
    :catch_0
    move-exception v0

    #@14
    .line 775
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@17
    const-string/jumbo v2, ""

    #@1a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 776
    return v6
.end method

.method connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;)Z
    .locals 5
    .param p1, "autoConnect"    # Ljava/lang/Boolean;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 723
    const-string/jumbo v0, "BluetoothGatt"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "connect() - device: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@13
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, ", auto: "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 724
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    #@2f
    monitor-enter v1

    #@30
    .line 725
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    #@32
    if-eqz v0, :cond_0

    #@34
    .line 726
    new-instance v0, Ljava/lang/IllegalStateException;

    #@36
    const-string/jumbo v2, "Not idle"

    #@39
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 724
    :catchall_0
    move-exception v0

    #@3e
    monitor-exit v1

    #@3f
    throw v0

    #@40
    .line 728
    :cond_0
    const/4 v0, 0x1

    #@41
    :try_start_1
    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit v1

    #@44
    .line 730
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGatt;->registerApp(Landroid/bluetooth/BluetoothGattCallback;)Z

    #@47
    move-result v0

    #@48
    if-nez v0, :cond_1

    #@4a
    .line 731
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    #@4c
    monitor-enter v0

    #@4d
    .line 732
    const/4 v1, 0x0

    #@4e
    :try_start_2
    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@50
    monitor-exit v0

    #@51
    .line 734
    const-string/jumbo v0, "BluetoothGatt"

    #@54
    const-string/jumbo v1, "Failed to register callback"

    #@57
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 735
    return v3

    #@5b
    .line 731
    :catchall_1
    move-exception v1

    #@5c
    monitor-exit v0

    #@5d
    throw v1

    #@5e
    .line 739
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@61
    move-result v0

    #@62
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    #@64
    .line 740
    return v4
.end method

.method public disconnect()V
    .locals 4

    #@0
    .prologue
    .line 750
    const-string/jumbo v1, "BluetoothGatt"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "cancelOpen() - device: "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@11
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 751
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@22
    if-eqz v1, :cond_0

    #@24
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@26
    if-nez v1, :cond_1

    #@28
    :cond_0
    return-void

    #@29
    .line 754
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2b
    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@2d
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@2f
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->clientDisconnect(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 749
    :goto_0
    return-void

    #@37
    .line 755
    :catch_0
    move-exception v0

    #@38
    .line 756
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@3b
    const-string/jumbo v2, ""

    #@3e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    goto :goto_0
.end method

.method public discoverServices()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 803
    const-string/jumbo v1, "BluetoothGatt"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "discoverServices() - device: "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@12
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 804
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@23
    if-eqz v1, :cond_0

    #@25
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@27
    if-nez v1, :cond_1

    #@29
    :cond_0
    return v4

    #@2a
    .line 806
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    #@2c
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@2f
    .line 809
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@31
    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@33
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@35
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->discoverServices(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 815
    const/4 v1, 0x1

    #@3d
    return v1

    #@3e
    .line 810
    :catch_0
    move-exception v0

    #@3f
    .line 811
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@42
    const-string/jumbo v2, ""

    #@45
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    .line 812
    return v4
.end method

.method public executeReliableWrite()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1099
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@8
    if-nez v1, :cond_1

    #@a
    :cond_0
    return v5

    #@b
    .line 1101
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@d
    monitor-enter v2

    #@e
    .line 1102
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    monitor-exit v2

    #@17
    return v5

    #@18
    .line 1103
    :cond_2
    const/4 v1, 0x1

    #@19
    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    monitor-exit v2

    #@20
    .line 1107
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@22
    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@24
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@26
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    const/4 v4, 0x1

    #@2b
    invoke-interface {v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@2e
    .line 1114
    return v6

    #@2f
    .line 1101
    :catchall_0
    move-exception v1

    #@30
    monitor-exit v2

    #@31
    throw v1

    #@32
    .line 1108
    :catch_0
    move-exception v0

    #@33
    .line 1109
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@36
    const-string/jumbo v2, ""

    #@39
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    .line 1110
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@42
    .line 1111
    return v5
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1306
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 1307
    const-string/jumbo v1, "Use BluetoothManager#getConnectedDevices instead."

    #@5
    .line 1306
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 1295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Use BluetoothManager#getConnectionState instead."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    #@0
    .prologue
    .line 786
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@2
    return-object v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1319
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 1320
    const-string/jumbo v1, "Use BluetoothManager#getDevicesMatchingConnectionStates instead."

    #@5
    .line 1319
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "type"    # I

    #@0
    .prologue
    .line 641
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "svc$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    #@12
    .line 642
    .local v0, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 643
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@1f
    move-result v2

    #@20
    if-ne v2, p4, :cond_0

    #@22
    .line 644
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@25
    move-result v2

    #@26
    if-ne v2, p3, :cond_0

    #@28
    .line 645
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v2

    #@30
    .line 642
    if-eqz v2, :cond_0

    #@32
    .line 646
    return-object v0

    #@33
    .line 649
    .end local v0    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    const/4 v2, 0x0

    #@34
    return-object v2
.end method

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;

    #@0
    .prologue
    .line 859
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "service$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    #@12
    .line 860
    .local v0, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@18
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 861
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    .line 860
    if-eqz v2, :cond_0

    #@28
    .line 862
    return-object v0

    #@29
    .line 866
    .end local v0    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    const/4 v2, 0x0

    #@2a
    return-object v2
.end method

.method public getServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 831
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 833
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "service$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    #@17
    .line 834
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@1d
    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 835
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_0

    #@27
    .line 839
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    return-object v0
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 14
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 882
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    #@5
    move-result v0

    #@6
    and-int/lit8 v0, v0, 0x2

    #@8
    if-nez v0, :cond_0

    #@a
    .line 883
    return v12

    #@b
    .line 886
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@d
    if-eqz v0, :cond_1

    #@f
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@11
    if-nez v0, :cond_2

    #@13
    :cond_1
    return v12

    #@14
    .line 888
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    #@17
    move-result-object v11

    #@18
    .line 889
    .local v11, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v11, :cond_3

    #@1a
    return v12

    #@1b
    .line 891
    :cond_3
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@1e
    move-result-object v9

    #@1f
    .line 892
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v9, :cond_4

    #@21
    return v12

    #@22
    .line 894
    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@24
    monitor-enter v1

    #@25
    .line 895
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_5

    #@2d
    monitor-exit v1

    #@2e
    return v12

    #@2f
    .line 896
    :cond_5
    const/4 v0, 0x1

    #@30
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    monitor-exit v1

    #@37
    .line 900
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@39
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@3b
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 901
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@42
    move-result v3

    #@43
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@46
    move-result v4

    #@47
    .line 902
    new-instance v5, Landroid/os/ParcelUuid;

    #@49
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@4c
    move-result-object v6

    #@4d
    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@50
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    #@53
    move-result v6

    #@54
    .line 903
    new-instance v7, Landroid/os/ParcelUuid;

    #@56
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@59
    move-result-object v8

    #@5a
    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@5d
    const/4 v8, 0x0

    #@5e
    .line 900
    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@61
    .line 910
    return v13

    #@62
    .line 894
    :catchall_0
    move-exception v0

    #@63
    monitor-exit v1

    #@64
    throw v0

    #@65
    .line 904
    :catch_0
    move-exception v10

    #@66
    .line 905
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGatt"

    #@69
    const-string/jumbo v1, ""

    #@6c
    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6f
    .line 906
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@72
    move-result-object v0

    #@73
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@75
    .line 907
    return v12
.end method

.method public readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 15
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    #@0
    .prologue
    .line 974
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@6
    if-nez v0, :cond_1

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 976
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    #@d
    move-result-object v11

    #@e
    .line 977
    .local v11, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v11, :cond_2

    #@10
    const/4 v0, 0x0

    #@11
    return v0

    #@12
    .line 979
    :cond_2
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    #@15
    move-result-object v14

    #@16
    .line 980
    .local v14, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v14, :cond_3

    #@18
    const/4 v0, 0x0

    #@19
    return v0

    #@1a
    .line 982
    :cond_3
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@1d
    move-result-object v12

    #@1e
    .line 983
    .local v12, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v12, :cond_4

    #@20
    const/4 v0, 0x0

    #@21
    return v0

    #@22
    .line 985
    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@24
    monitor-enter v1

    #@25
    .line 986
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_5

    #@2d
    const/4 v0, 0x0

    #@2e
    monitor-exit v1

    #@2f
    return v0

    #@30
    .line 987
    :cond_5
    const/4 v0, 0x1

    #@31
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    monitor-exit v1

    #@38
    .line 991
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@3a
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@3c
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@43
    move-result v3

    #@44
    .line 992
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@47
    move-result v4

    #@48
    new-instance v5, Landroid/os/ParcelUuid;

    #@4a
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@4d
    move-result-object v6

    #@4e
    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@51
    .line 993
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    #@54
    move-result v6

    #@55
    new-instance v7, Landroid/os/ParcelUuid;

    #@57
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@5a
    move-result-object v8

    #@5b
    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@5e
    .line 994
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    #@61
    move-result v8

    #@62
    new-instance v9, Landroid/os/ParcelUuid;

    #@64
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    #@67
    move-result-object v10

    #@68
    invoke-direct {v9, v10}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@6b
    .line 995
    const/4 v10, 0x0

    #@6c
    .line 991
    invoke-interface/range {v0 .. v10}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@6f
    .line 1002
    const/4 v0, 0x1

    #@70
    return v0

    #@71
    .line 985
    :catchall_0
    move-exception v0

    #@72
    monitor-exit v1

    #@73
    throw v0

    #@74
    .line 996
    :catch_0
    move-exception v13

    #@75
    .line 997
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGatt"

    #@78
    const-string/jumbo v1, ""

    #@7b
    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7e
    .line 998
    const/4 v0, 0x0

    #@7f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@82
    move-result-object v0

    #@83
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@85
    .line 999
    const/4 v0, 0x0

    #@86
    return v0
.end method

.method public readRemoteRssi()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1213
    const-string/jumbo v1, "BluetoothGatt"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "readRssi() - device: "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@12
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1214
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@23
    if-eqz v1, :cond_0

    #@25
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@27
    if-nez v1, :cond_1

    #@29
    :cond_0
    return v4

    #@2a
    .line 1217
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2c
    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@2e
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@30
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->readRemoteRssi(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 1223
    const/4 v1, 0x1

    #@38
    return v1

    #@39
    .line 1218
    :catch_0
    move-exception v0

    #@3a
    .line 1219
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@3d
    const-string/jumbo v2, ""

    #@40
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@43
    .line 1220
    return v4
.end method

.method public refresh()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1189
    const-string/jumbo v1, "BluetoothGatt"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "refresh() - device: "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@12
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1190
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@23
    if-eqz v1, :cond_0

    #@25
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@27
    if-nez v1, :cond_1

    #@29
    :cond_0
    return v4

    #@2a
    .line 1193
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2c
    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@2e
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@30
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->refreshDevice(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 1199
    const/4 v1, 0x1

    #@38
    return v1

    #@39
    .line 1194
    :catch_0
    move-exception v0

    #@3a
    .line 1195
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@3d
    const-string/jumbo v2, ""

    #@40
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@43
    .line 1196
    return v4
.end method

.method public requestConnectionPriority(I)Z
    .locals 5
    .param p1, "connectionPriority"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1269
    if-ltz p1, :cond_0

    #@3
    .line 1270
    const/4 v1, 0x2

    #@4
    if-le p1, v1, :cond_1

    #@6
    .line 1271
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "connectionPriority not within valid range"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 1274
    :cond_1
    const-string/jumbo v1, "BluetoothGatt"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "requestConnectionPriority() - params: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 1275
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2b
    if-eqz v1, :cond_2

    #@2d
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@2f
    if-nez v1, :cond_3

    #@31
    :cond_2
    return v4

    #@32
    .line 1278
    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@34
    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@36
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@38
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-interface {v1, v2, v3, p1}, Landroid/bluetooth/IBluetoothGatt;->connectionParameterUpdate(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 1284
    const/4 v1, 0x1

    #@40
    return v1

    #@41
    .line 1279
    :catch_0
    move-exception v0

    #@42
    .line 1280
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@45
    const-string/jumbo v2, ""

    #@48
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4b
    .line 1281
    return v4
.end method

.method public requestMtu(I)Z
    .locals 5
    .param p1, "mtu"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1241
    const-string/jumbo v1, "BluetoothGatt"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "configureMTU() - device: "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@12
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    .line 1242
    const-string/jumbo v3, " mtu: "

    #@1d
    .line 1241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 1243
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2e
    if-eqz v1, :cond_0

    #@30
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@32
    if-nez v1, :cond_1

    #@34
    :cond_0
    return v4

    #@35
    .line 1246
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@37
    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@39
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@3b
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-interface {v1, v2, v3, p1}, Landroid/bluetooth/IBluetoothGatt;->configureMTU(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 1252
    const/4 v1, 0x1

    #@43
    return v1

    #@44
    .line 1247
    :catch_0
    move-exception v0

    #@45
    .line 1248
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@48
    const-string/jumbo v2, ""

    #@4b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    .line 1249
    return v4
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 13
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "enable"    # Z

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1159
    const-string/jumbo v0, "BluetoothGatt"

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "setCharacteristicNotification() - uuid: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 1160
    const-string/jumbo v2, " enable: "

    #@1b
    .line 1159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 1161
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2c
    if-eqz v0, :cond_0

    #@2e
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@30
    if-nez v0, :cond_1

    #@32
    :cond_0
    return v12

    #@33
    .line 1163
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    #@36
    move-result-object v11

    #@37
    .line 1164
    .local v11, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v11, :cond_2

    #@39
    return v12

    #@3a
    .line 1166
    :cond_2
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@3d
    move-result-object v9

    #@3e
    .line 1167
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v9, :cond_3

    #@40
    return v12

    #@41
    .line 1170
    :cond_3
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@43
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@45
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    .line 1171
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@4c
    move-result v3

    #@4d
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@50
    move-result v4

    #@51
    .line 1172
    new-instance v5, Landroid/os/ParcelUuid;

    #@53
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@56
    move-result-object v6

    #@57
    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@5a
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    #@5d
    move-result v6

    #@5e
    .line 1173
    new-instance v7, Landroid/os/ParcelUuid;

    #@60
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@63
    move-result-object v8

    #@64
    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@67
    move v8, p2

    #@68
    .line 1170
    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt;->registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    .line 1180
    const/4 v0, 0x1

    #@6c
    return v0

    #@6d
    .line 1175
    :catch_0
    move-exception v10

    #@6e
    .line 1176
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGatt"

    #@71
    const-string/jumbo v1, ""

    #@74
    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@77
    .line 1177
    return v12
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 14
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    #@0
    .prologue
    .line 926
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v0, v0, 0x8

    #@6
    if-nez v0, :cond_0

    #@8
    .line 927
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    #@b
    move-result v0

    #@c
    and-int/lit8 v0, v0, 0x4

    #@e
    if-nez v0, :cond_0

    #@10
    .line 928
    const/4 v0, 0x0

    #@11
    return v0

    #@12
    .line 931
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@14
    if-eqz v0, :cond_1

    #@16
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@18
    if-nez v0, :cond_2

    #@1a
    :cond_1
    const/4 v0, 0x0

    #@1b
    return v0

    #@1c
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 933
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    #@25
    move-result-object v13

    #@26
    .line 934
    .local v13, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v13, :cond_3

    #@28
    const/4 v0, 0x0

    #@29
    return v0

    #@2a
    .line 936
    :cond_3
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@2d
    move-result-object v11

    #@2e
    .line 937
    .local v11, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v11, :cond_4

    #@30
    const/4 v0, 0x0

    #@31
    return v0

    #@32
    .line 939
    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@34
    monitor-enter v1

    #@35
    .line 940
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_5

    #@3d
    const/4 v0, 0x0

    #@3e
    monitor-exit v1

    #@3f
    return v0

    #@40
    .line 941
    :cond_5
    const/4 v0, 0x1

    #@41
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    monitor-exit v1

    #@48
    .line 945
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@4a
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@4c
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .line 946
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@53
    move-result v3

    #@54
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@57
    move-result v4

    #@58
    .line 947
    new-instance v5, Landroid/os/ParcelUuid;

    #@5a
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@5d
    move-result-object v6

    #@5e
    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@61
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    #@64
    move-result v6

    #@65
    .line 948
    new-instance v7, Landroid/os/ParcelUuid;

    #@67
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@6a
    move-result-object v8

    #@6b
    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@6e
    .line 949
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    #@71
    move-result v8

    #@72
    .line 950
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@75
    move-result-object v10

    #@76
    .line 949
    const/4 v9, 0x0

    #@77
    .line 945
    invoke-interface/range {v0 .. v10}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@7a
    .line 957
    const/4 v0, 0x1

    #@7b
    return v0

    #@7c
    .line 939
    :catchall_0
    move-exception v0

    #@7d
    monitor-exit v1

    #@7e
    throw v0

    #@7f
    .line 951
    :catch_0
    move-exception v12

    #@80
    .line 952
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGatt"

    #@83
    const-string/jumbo v1, ""

    #@86
    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@89
    .line 953
    const/4 v0, 0x0

    #@8a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8d
    move-result-object v0

    #@8e
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@90
    .line 954
    const/4 v0, 0x0

    #@91
    return v0
.end method

.method public writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 18
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    #@0
    .prologue
    .line 1018
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@4
    if-eqz v1, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget v1, v0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@a
    if-nez v1, :cond_1

    #@c
    :cond_0
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    #@11
    move-result-object v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 1020
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    #@17
    move-result-object v14

    #@18
    .line 1021
    .local v14, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v14, :cond_2

    #@1a
    const/4 v1, 0x0

    #@1b
    return v1

    #@1c
    .line 1023
    :cond_2
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    #@1f
    move-result-object v17

    #@20
    .line 1024
    .local v17, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v17, :cond_3

    #@22
    const/4 v1, 0x0

    #@23
    return v1

    #@24
    .line 1026
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@27
    move-result-object v15

    #@28
    .line 1027
    .local v15, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v15, :cond_4

    #@2a
    const/4 v1, 0x0

    #@2b
    return v1

    #@2c
    .line 1029
    :cond_4
    move-object/from16 v0, p0

    #@2e
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@30
    monitor-enter v2

    #@31
    .line 1030
    :try_start_0
    move-object/from16 v0, p0

    #@33
    iget-object v1, v0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@35
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_5

    #@3b
    const/4 v1, 0x0

    #@3c
    monitor-exit v2

    #@3d
    return v1

    #@3e
    .line 1031
    :cond_5
    const/4 v1, 0x1

    #@3f
    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@42
    move-result-object v1

    #@43
    move-object/from16 v0, p0

    #@45
    iput-object v1, v0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    monitor-exit v2

    #@48
    .line 1035
    :try_start_2
    move-object/from16 v0, p0

    #@4a
    iget-object v1, v0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget v2, v0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@50
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@57
    move-result v4

    #@58
    .line 1036
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@5b
    move-result v5

    #@5c
    new-instance v6, Landroid/os/ParcelUuid;

    #@5e
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@61
    move-result-object v7

    #@62
    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@65
    .line 1037
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    #@68
    move-result v7

    #@69
    new-instance v8, Landroid/os/ParcelUuid;

    #@6b
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@6e
    move-result-object v9

    #@6f
    invoke-direct {v8, v9}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@72
    .line 1038
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    #@75
    move-result v9

    #@76
    new-instance v10, Landroid/os/ParcelUuid;

    #@78
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    #@7b
    move-result-object v11

    #@7c
    invoke-direct {v10, v11}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@7f
    .line 1039
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    #@82
    move-result v11

    #@83
    .line 1040
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    #@86
    move-result-object v13

    #@87
    .line 1039
    const/4 v12, 0x0

    #@88
    .line 1035
    invoke-interface/range {v1 .. v13}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@8b
    .line 1047
    const/4 v1, 0x1

    #@8c
    return v1

    #@8d
    .line 1029
    :catchall_0
    move-exception v1

    #@8e
    monitor-exit v2

    #@8f
    throw v1

    #@90
    .line 1041
    :catch_0
    move-exception v16

    #@91
    .line 1042
    .local v16, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@94
    const-string/jumbo v2, ""

    #@97
    move-object/from16 v0, v16

    #@99
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9c
    .line 1043
    const/4 v1, 0x0

    #@9d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a0
    move-result-object v1

    #@a1
    move-object/from16 v0, p0

    #@a3
    iput-object v1, v0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@a5
    .line 1044
    const/4 v1, 0x0

    #@a6
    return v1
.end method
