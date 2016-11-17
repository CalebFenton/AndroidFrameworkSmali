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
    .line 499
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
    .line 501
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mContext:Landroid/content/Context;

    #@1c
    .line 502
    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@1e
    .line 503
    iput-object p3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@20
    .line 504
    iput p4, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    #@22
    .line 505
    new-instance v0, Ljava/util/ArrayList;

    #@24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@27
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    #@29
    .line 507
    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    #@2b
    .line 500
    return-void
.end method

.method private registerApp(Landroid/bluetooth/BluetoothGattCallback;)Z
    .locals 6
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 584
    const-string/jumbo v2, "BluetoothGatt"

    #@4
    const-string/jumbo v3, "registerApp()"

    #@7
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 585
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@c
    if-nez v2, :cond_0

    #@e
    return v5

    #@f
    .line 587
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    #@11
    .line 588
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@14
    move-result-object v1

    #@15
    .line 589
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
    .line 592
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
    .line 598
    const/4 v2, 0x1

    #@3c
    return v2

    #@3d
    .line 593
    :catch_0
    move-exception v0

    #@3e
    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothGatt"

    #@41
    const-string/jumbo v3, ""

    #@44
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    .line 595
    return v5
.end method

.method private unregisterApp()V
    .locals 4

    #@0
    .prologue
    .line 605
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
    .line 606
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
    .line 609
    :cond_1
    const/4 v1, 0x0

    #@26
    :try_start_0
    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    #@28
    .line 610
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2a
    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@2c
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    #@2f
    .line 611
    const/4 v1, 0x0

    #@30
    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 604
    :goto_0
    return-void

    #@33
    .line 612
    :catch_0
    move-exception v0

    #@34
    .line 613
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
    .line 1036
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
    .line 1039
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
    .line 1034
    :goto_0
    return-void

    #@18
    .line 1040
    :catch_0
    move-exception v0

    #@19
    .line 1041
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
    .line 1049
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->abortReliableWrite()V

    #@3
    .line 1048
    return-void
.end method

.method public beginReliableWrite()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 981
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
    .line 984
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
    .line 990
    const/4 v1, 0x1

    #@18
    return v1

    #@19
    .line 985
    :catch_0
    move-exception v0

    #@1a
    .line 986
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@1d
    const-string/jumbo v2, ""

    #@20
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    .line 987
    return v4
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    .line 517
    const-string/jumbo v0, "BluetoothGatt"

    #@3
    const-string/jumbo v1, "close()"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 519
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGatt;->unregisterApp()V

    #@c
    .line 520
    const/4 v0, 0x4

    #@d
    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    #@f
    .line 516
    return-void
.end method

.method public connect()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 691
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
    .line 692
    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    #@d
    const/4 v5, 0x0

    #@e
    .line 691
    invoke-interface {v1, v2, v3, v5, v4}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 693
    const/4 v1, 0x1

    #@12
    return v1

    #@13
    .line 694
    :catch_0
    move-exception v0

    #@14
    .line 695
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@17
    const-string/jumbo v2, ""

    #@1a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 696
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
    .line 641
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
    .line 642
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    #@2f
    monitor-enter v1

    #@30
    .line 643
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    #@32
    if-eqz v0, :cond_0

    #@34
    .line 644
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
    .line 642
    :catchall_0
    move-exception v0

    #@3e
    monitor-exit v1

    #@3f
    throw v0

    #@40
    .line 646
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
    .line 649
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@47
    move-result v0

    #@48
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    #@4a
    .line 651
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGatt;->registerApp(Landroid/bluetooth/BluetoothGattCallback;)Z

    #@4d
    move-result v0

    #@4e
    if-nez v0, :cond_1

    #@50
    .line 652
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    #@52
    monitor-enter v0

    #@53
    .line 653
    const/4 v1, 0x0

    #@54
    :try_start_2
    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@56
    monitor-exit v0

    #@57
    .line 655
    const-string/jumbo v0, "BluetoothGatt"

    #@5a
    const-string/jumbo v1, "Failed to register callback"

    #@5d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 656
    return v3

    #@61
    .line 652
    :catchall_1
    move-exception v1

    #@62
    monitor-exit v0

    #@63
    throw v1

    #@64
    .line 660
    :cond_1
    return v4
.end method

.method public disconnect()V
    .locals 4

    #@0
    .prologue
    .line 670
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
    .line 671
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
    .line 674
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
    .line 669
    :goto_0
    return-void

    #@37
    .line 675
    :catch_0
    move-exception v0

    #@38
    .line 676
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
    .line 723
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
    .line 724
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
    .line 726
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    #@2c
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@2f
    .line 729
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
    .line 735
    const/4 v1, 0x1

    #@3d
    return v1

    #@3e
    .line 730
    :catch_0
    move-exception v0

    #@3f
    .line 731
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@42
    const-string/jumbo v2, ""

    #@45
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    .line 732
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
    .line 1008
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
    .line 1010
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@d
    monitor-enter v2

    #@e
    .line 1011
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
    .line 1012
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
    .line 1016
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
    .line 1023
    return v6

    #@2f
    .line 1010
    :catchall_0
    move-exception v1

    #@30
    monitor-exit v2

    #@31
    throw v1

    #@32
    .line 1017
    :catch_0
    move-exception v0

    #@33
    .line 1018
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@36
    const-string/jumbo v2, ""

    #@39
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    .line 1019
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@42
    .line 1020
    return v5
.end method

.method getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I

    #@0
    .prologue
    .line 546
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .local v3, "svc$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_2

    #@c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    #@12
    .line 547
    .local v2, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    #@15
    move-result-object v4

    #@16
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "charac$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    #@26
    .line 548
    .local v0, "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    #@29
    move-result v4

    #@2a
    if-ne v4, p2, :cond_1

    #@2c
    .line 549
    return-object v0

    #@2d
    .line 552
    .end local v0    # "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "charac$iterator":Ljava/util/Iterator;
    .end local v2    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_2
    const/4 v4, 0x0

    #@2e
    return-object v4
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
    .line 1212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 1213
    const-string/jumbo v1, "Use BluetoothManager#getConnectedDevices instead."

    #@5
    .line 1212
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 1201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Use BluetoothManager#getConnectionState instead."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I

    #@0
    .prologue
    .line 560
    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    #@2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v5

    #@6
    .local v5, "svc$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v6

    #@a
    if-eqz v6, :cond_3

    #@c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Landroid/bluetooth/BluetoothGattService;

    #@12
    .line 561
    .local v4, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    #@15
    move-result-object v6

    #@16
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "charac$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_0

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    #@26
    .line 562
    .local v0, "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    #@29
    move-result-object v6

    #@2a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v3

    #@2e
    .local v3, "desc$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_1

    #@34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Landroid/bluetooth/BluetoothGattDescriptor;

    #@3a
    .line 563
    .local v2, "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    #@3d
    move-result v6

    #@3e
    if-ne v6, p2, :cond_2

    #@40
    .line 564
    return-object v2

    #@41
    .line 568
    .end local v0    # "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "charac$iterator":Ljava/util/Iterator;
    .end local v2    # "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v3    # "desc$iterator":Ljava/util/Iterator;
    .end local v4    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_3
    const/4 v6, 0x0

    #@42
    return-object v6
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    #@0
    .prologue
    .line 706
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
    .line 1225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 1226
    const-string/jumbo v1, "Use BluetoothManager#getDevicesMatchingConnectionStates instead."

    #@5
    .line 1225
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
    .line 529
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
    .line 530
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
    .line 531
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@1f
    move-result v2

    #@20
    if-ne v2, p4, :cond_0

    #@22
    .line 532
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@25
    move-result v2

    #@26
    if-ne v2, p3, :cond_0

    #@28
    .line 533
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v2

    #@30
    .line 530
    if-eqz v2, :cond_0

    #@32
    .line 534
    return-object v0

    #@33
    .line 537
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
    .line 779
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
    .line 780
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
    .line 781
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    .line 780
    if-eqz v2, :cond_0

    #@28
    .line 782
    return-object v0

    #@29
    .line 786
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
    .line 751
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 753
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
    .line 754
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
    .line 755
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_0

    #@27
    .line 759
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    return-object v0
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 10
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 802
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    #@5
    move-result v3

    #@6
    and-int/lit8 v3, v3, 0x2

    #@8
    if-nez v3, :cond_0

    #@a
    .line 803
    return v8

    #@b
    .line 806
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@d
    if-eqz v3, :cond_1

    #@f
    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@11
    if-nez v3, :cond_2

    #@13
    :cond_1
    return v8

    #@14
    .line 808
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    #@17
    move-result-object v2

    #@18
    .line 809
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v2, :cond_3

    #@1a
    return v8

    #@1b
    .line 811
    :cond_3
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@1e
    move-result-object v0

    #@1f
    .line 812
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_4

    #@21
    return v8

    #@22
    .line 814
    :cond_4
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@24
    monitor-enter v4

    #@25
    .line 815
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@27
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_5

    #@2d
    monitor-exit v4

    #@2e
    return v8

    #@2f
    .line 816
    :cond_5
    const/4 v3, 0x1

    #@30
    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@33
    move-result-object v3

    #@34
    iput-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    monitor-exit v4

    #@37
    .line 820
    :try_start_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@39
    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@3b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    .line 821
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    #@42
    move-result v6

    #@43
    const/4 v7, 0x0

    #@44
    .line 820
    invoke-interface {v3, v4, v5, v6, v7}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@47
    .line 828
    return v9

    #@48
    .line 814
    :catchall_0
    move-exception v3

    #@49
    monitor-exit v4

    #@4a
    throw v3

    #@4b
    .line 822
    :catch_0
    move-exception v1

    #@4c
    .line 823
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothGatt"

    #@4f
    const-string/jumbo v4, ""

    #@52
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@55
    .line 824
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@58
    move-result-object v3

    #@59
    iput-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@5b
    .line 825
    return v8
.end method

.method public readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 11
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 889
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@4
    if-eqz v4, :cond_0

    #@6
    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@8
    if-nez v4, :cond_1

    #@a
    :cond_0
    return v9

    #@b
    .line 891
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    #@e
    move-result-object v0

    #@f
    .line 892
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_2

    #@11
    return v9

    #@12
    .line 894
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    #@15
    move-result-object v3

    #@16
    .line 895
    .local v3, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v3, :cond_3

    #@18
    return v9

    #@19
    .line 897
    :cond_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@1c
    move-result-object v1

    #@1d
    .line 898
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_4

    #@1f
    return v9

    #@20
    .line 900
    :cond_4
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@22
    monitor-enter v5

    #@23
    .line 901
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@25
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_5

    #@2b
    monitor-exit v5

    #@2c
    return v9

    #@2d
    .line 902
    :cond_5
    const/4 v4, 0x1

    #@2e
    :try_start_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@31
    move-result-object v4

    #@32
    iput-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v5

    #@35
    .line 906
    :try_start_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@37
    iget v5, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@39
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    .line 907
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    #@40
    move-result v7

    #@41
    const/4 v8, 0x0

    #@42
    .line 906
    invoke-interface {v4, v5, v6, v7, v8}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@45
    .line 914
    return v10

    #@46
    .line 900
    :catchall_0
    move-exception v4

    #@47
    monitor-exit v5

    #@48
    throw v4

    #@49
    .line 908
    :catch_0
    move-exception v2

    #@4a
    .line 909
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "BluetoothGatt"

    #@4d
    const-string/jumbo v5, ""

    #@50
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    .line 910
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@56
    move-result-object v4

    #@57
    iput-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@59
    .line 911
    return v9
.end method

.method public readRemoteRssi()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1119
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
    .line 1120
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
    .line 1123
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
    .line 1129
    const/4 v1, 0x1

    #@38
    return v1

    #@39
    .line 1124
    :catch_0
    move-exception v0

    #@3a
    .line 1125
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@3d
    const-string/jumbo v2, ""

    #@40
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@43
    .line 1126
    return v4
.end method

.method public refresh()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1095
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
    .line 1096
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
    .line 1099
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
    .line 1105
    const/4 v1, 0x1

    #@38
    return v1

    #@39
    .line 1100
    :catch_0
    move-exception v0

    #@3a
    .line 1101
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@3d
    const-string/jumbo v2, ""

    #@40
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@43
    .line 1102
    return v4
.end method

.method public requestConnectionPriority(I)Z
    .locals 5
    .param p1, "connectionPriority"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1175
    if-ltz p1, :cond_0

    #@3
    .line 1176
    const/4 v1, 0x2

    #@4
    if-le p1, v1, :cond_1

    #@6
    .line 1177
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "connectionPriority not within valid range"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 1180
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
    .line 1181
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
    .line 1184
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
    .line 1190
    const/4 v1, 0x1

    #@40
    return v1

    #@41
    .line 1185
    :catch_0
    move-exception v0

    #@42
    .line 1186
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@45
    const-string/jumbo v2, ""

    #@48
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4b
    .line 1187
    return v4
.end method

.method public requestMtu(I)Z
    .locals 5
    .param p1, "mtu"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1147
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
    .line 1148
    const-string/jumbo v3, " mtu: "

    #@1d
    .line 1147
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
    .line 1149
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
    .line 1152
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
    .line 1158
    const/4 v1, 0x1

    #@43
    return v1

    #@44
    .line 1153
    :catch_0
    move-exception v0

    #@45
    .line 1154
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@48
    const-string/jumbo v2, ""

    #@4b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    .line 1155
    return v4
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 8
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "enable"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1068
    const-string/jumbo v3, "BluetoothGatt"

    #@4
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "setCharacteristicNotification() - uuid: "

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    .line 1069
    const-string/jumbo v5, " enable: "

    #@1b
    .line 1068
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 1070
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2c
    if-eqz v3, :cond_0

    #@2e
    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@30
    if-nez v3, :cond_1

    #@32
    :cond_0
    return v7

    #@33
    .line 1072
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    #@36
    move-result-object v2

    #@37
    .line 1073
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v2, :cond_2

    #@39
    return v7

    #@3a
    .line 1075
    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@3d
    move-result-object v0

    #@3e
    .line 1076
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_3

    #@40
    return v7

    #@41
    .line 1079
    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@43
    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@45
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    .line 1080
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    #@4c
    move-result v6

    #@4d
    .line 1079
    invoke-interface {v3, v4, v5, v6, p2}, Landroid/bluetooth/IBluetoothGatt;->registerForNotification(ILjava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 1086
    const/4 v3, 0x1

    #@51
    return v3

    #@52
    .line 1081
    :catch_0
    move-exception v1

    #@53
    .line 1082
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothGatt"

    #@56
    const-string/jumbo v4, ""

    #@59
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5c
    .line 1083
    return v7
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 12
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 844
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    #@5
    move-result v0

    #@6
    and-int/lit8 v0, v0, 0x8

    #@8
    if-nez v0, :cond_0

    #@a
    .line 845
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    #@d
    move-result v0

    #@e
    and-int/lit8 v0, v0, 0x4

    #@10
    if-nez v0, :cond_0

    #@12
    .line 846
    return v10

    #@13
    .line 849
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@15
    if-eqz v0, :cond_1

    #@17
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@19
    if-nez v0, :cond_2

    #@1b
    :cond_1
    return v10

    #@1c
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 851
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    #@25
    move-result-object v9

    #@26
    .line 852
    .local v9, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v9, :cond_3

    #@28
    return v10

    #@29
    .line 854
    :cond_3
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@2c
    move-result-object v7

    #@2d
    .line 855
    .local v7, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v7, :cond_4

    #@2f
    return v10

    #@30
    .line 857
    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@32
    monitor-enter v1

    #@33
    .line 858
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_5

    #@3b
    monitor-exit v1

    #@3c
    return v10

    #@3d
    .line 859
    :cond_5
    const/4 v0, 0x1

    #@3e
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    monitor-exit v1

    #@45
    .line 863
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@47
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@49
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    .line 864
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    #@50
    move-result v3

    #@51
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    #@54
    move-result v4

    #@55
    .line 865
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@58
    move-result-object v6

    #@59
    const/4 v5, 0x0

    #@5a
    .line 863
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;III[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@5d
    .line 872
    return v11

    #@5e
    .line 857
    :catchall_0
    move-exception v0

    #@5f
    monitor-exit v1

    #@60
    throw v0

    #@61
    .line 866
    :catch_0
    move-exception v8

    #@62
    .line 867
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGatt"

    #@65
    const-string/jumbo v1, ""

    #@68
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6b
    .line 868
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6e
    move-result-object v0

    #@6f
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@71
    .line 869
    return v10
.end method

.method public writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 13
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 930
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@8
    if-nez v0, :cond_1

    #@a
    :cond_0
    return v11

    #@b
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 932
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    #@14
    move-result-object v7

    #@15
    .line 933
    .local v7, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v7, :cond_2

    #@17
    return v11

    #@18
    .line 935
    :cond_2
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    #@1b
    move-result-object v10

    #@1c
    .line 936
    .local v10, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v10, :cond_3

    #@1e
    return v11

    #@1f
    .line 938
    :cond_3
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    #@22
    move-result-object v8

    #@23
    .line 939
    .local v8, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v8, :cond_4

    #@25
    return v11

    #@26
    .line 941
    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@28
    monitor-enter v1

    #@29
    .line 942
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@2b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_5

    #@31
    monitor-exit v1

    #@32
    return v11

    #@33
    .line 943
    :cond_5
    const/4 v0, 0x1

    #@34
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    monitor-exit v1

    #@3b
    .line 947
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@3d
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    #@3f
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    #@46
    move-result v3

    #@47
    .line 949
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    #@4a
    move-result-object v6

    #@4b
    .line 948
    const/4 v4, 0x2

    #@4c
    const/4 v5, 0x0

    #@4d
    .line 947
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;III[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@50
    .line 956
    return v12

    #@51
    .line 941
    :catchall_0
    move-exception v0

    #@52
    monitor-exit v1

    #@53
    throw v0

    #@54
    .line 950
    :catch_0
    move-exception v9

    #@55
    .line 951
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGatt"

    #@58
    const-string/jumbo v1, ""

    #@5b
    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5e
    .line 952
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@61
    move-result-object v0

    #@62
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    #@64
    .line 953
    return v11
.end method
