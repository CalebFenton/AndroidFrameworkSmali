.class public final Landroid/bluetooth/BluetoothGattServer;
.super Ljava/lang/Object;
.source "BluetoothGattServer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGattServer$NotifyCharacteristicReturnValues;
    }
.end annotation


# static fields
.field private static final blacklist CALLBACK_REG_TIMEOUT:I = 0x2710

.field private static final blacklist DBG:Z = true

.field private static final blacklist GATT_MAX_ATTR_LEN:I = 0x200

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

.field private blacklist mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

.field private blacklist mPendingService:Landroid/bluetooth/BluetoothGattService;

.field private blacklist mServerIf:I

.field private final blacklist mServerIfLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/bluetooth/IBluetoothGatt;

.field private final blacklist mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTransport:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdapter(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingService(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattService;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGattServer;->mPendingService:Landroid/bluetooth/BluetoothGattService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServerIfLock(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServices(Landroid/bluetooth/BluetoothGattServer;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingService(Landroid/bluetooth/BluetoothGattServer;Landroid/bluetooth/BluetoothGattService;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mPendingService:Landroid/bluetooth/BluetoothGattService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServerIf(Landroid/bluetooth/BluetoothGattServer;I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const-class v0, Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/IBluetoothGatt;ILandroid/bluetooth/BluetoothAdapter;)V
    .registers 5
    .param p1, "iGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p2, "transport"    # I
    .param p3, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Landroid/bluetooth/BluetoothGattServer$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothGattServer$1;-><init>(Landroid/bluetooth/BluetoothGattServer;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

    .line 517
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    .line 518
    iput-object p3, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 519
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    .line 522
    iput p2, p0, Landroid/bluetooth/BluetoothGattServer;->mTransport:I

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    .line 524
    return-void
.end method

.method private blacklist unregisterCallback()V
    .registers 4

    .line 682
    sget-object v0, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCallback() - mServerIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_3c

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_23

    goto :goto_3c

    .line 686
    :cond_23
    const/4 v0, 0x0

    :try_start_24
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 687
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterServer(ILandroid/content/AttributionSource;)V

    .line 688
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_32} :catch_33

    .line 691
    goto :goto_3b

    .line 689
    :catch_33
    move-exception v0

    .line 690
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3b
    return-void

    .line 683
    :cond_3c
    :goto_3c
    return-void
.end method


# virtual methods
.method public whitelist addService(Landroid/bluetooth/BluetoothGattService;)Z
    .registers 6
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .line 982
    sget-object v0, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addService() - service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_26

    goto :goto_3d

    .line 985
    :cond_26
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mPendingService:Landroid/bluetooth/BluetoothGattService;

    .line 988
    :try_start_28
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, p1, v3}, Landroid/bluetooth/IBluetoothGatt;->addService(ILandroid/bluetooth/BluetoothGattService;Landroid/content/AttributionSource;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_34

    .line 992
    nop

    .line 994
    const/4 v0, 0x1

    return v0

    .line 989
    :catch_34
    move-exception v0

    .line 990
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 991
    return v1

    .line 983
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3d
    :goto_3d
    return v1
.end method

.method public whitelist cancelConnection(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 762
    sget-object v0, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelConnection() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_38

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_21

    goto :goto_38

    .line 766
    :cond_21
    :try_start_21
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->serverDisconnect(ILjava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2e} :catch_2f

    .line 769
    goto :goto_37

    .line 767
    :catch_2f
    move-exception v0

    .line 768
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 770
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void

    .line 763
    :cond_38
    :goto_38
    return-void
.end method

.method public whitelist clearServices()V
    .registers 4

    .line 1030
    sget-object v0, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string v1, "clearServices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_28

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_10

    goto :goto_28

    .line 1034
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt;->clearServices(ILandroid/content/AttributionSource;)V

    .line 1035
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_1f

    .line 1038
    goto :goto_27

    .line 1036
    :catch_1f
    move-exception v0

    .line 1037
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1039
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void

    .line 1031
    :cond_28
    :goto_28
    return-void
.end method

.method public whitelist close()V
    .registers 3

    .line 596
    sget-object v0, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServer;->unregisterCallback()V

    .line 598
    return-void
.end method

.method public whitelist connect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "autoConnect"    # Z

    .line 732
    sget-object v0, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_2c

    goto :goto_50

    .line 738
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    .line 740
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 741
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressType()I

    move-result v5

    const/4 v0, 0x1

    if-nez p2, :cond_3d

    move v6, v0

    goto :goto_3e

    :cond_3d
    move v6, v1

    :goto_3e
    iget v7, p0, Landroid/bluetooth/BluetoothGattServer;->mTransport:I

    iget-object v8, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    .line 738
    invoke-interface/range {v2 .. v8}, Landroid/bluetooth/IBluetoothGatt;->serverConnect(ILjava/lang/String;IZILandroid/content/AttributionSource;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_45} :catch_47

    .line 748
    nop

    .line 750
    return v0

    .line 745
    :catch_47
    move-exception v0

    .line 746
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    return v1

    .line 734
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_50
    :goto_50
    return v1
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 584
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method blacklist getCharacteristicByHandle(I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 7
    .param p1, "handle"    # I

    .line 542
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 543
    .local v1, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 544
    .local v3, "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v4

    if-ne v4, p1, :cond_2d

    .line 545
    return-object v3

    .line 547
    .end local v3    # "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_2d
    goto :goto_1a

    .line 548
    .end local v1    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_2e
    goto :goto_6

    .line 549
    :cond_2f
    const/4 v0, 0x0

    return-object v0
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

    .line 1098
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1086
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectionState instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getDescriptorByHandle(I)Landroid/bluetooth/BluetoothGattDescriptor;
    .registers 9
    .param p1, "handle"    # I

    .line 558
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 559
    .local v1, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 560
    .local v3, "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 561
    .local v5, "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v6

    if-ne v6, p1, :cond_41

    .line 562
    return-object v5

    .line 564
    .end local v5    # "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_41
    goto :goto_2e

    .line 565
    .end local v3    # "charac":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_42
    goto :goto_1a

    .line 566
    .end local v1    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_43
    goto :goto_6

    .line 567
    :cond_44
    const/4 v0, 0x0

    return-object v0
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

    .line 1111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getDevicesMatchingConnectionStates instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getServerIf()I
    .registers 2

    .line 533
    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    return v0
.end method

.method public whitelist getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 1068
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 1069
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1070
    return-object v1

    .line 1072
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_1d
    goto :goto_6

    .line 1074
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;
    .registers 7
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I
    .param p3, "type"    # I

    .line 700
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 701
    .local v1, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v2

    if-ne v2, p3, :cond_29

    .line 702
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v2

    if-ne v2, p2, :cond_29

    .line 703
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 704
    return-object v1

    .line 706
    .end local v1    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_29
    goto :goto_6

    .line 707
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    return-object v0
.end method

.method public whitelist notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z[B)I
    .registers 14
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "confirm"    # Z
    .param p4, "value"    # [B

    .line 927
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_77

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_c

    move v6, p3

    move-object v7, p4

    goto/16 :goto_79

    .line 931
    :cond_c
    if-eqz p2, :cond_6d

    .line 934
    if-eqz p1, :cond_63

    .line 937
    array-length v0, p4

    const/16 v1, 0x200

    if-gt v0, v1, :cond_59

    .line 941
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 942
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v1, :cond_4f

    .line 945
    if-eqz p4, :cond_45

    .line 950
    :try_start_1d
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    .line 952
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 953
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v5

    iget-object v8, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2b} :catch_35

    .line 950
    move v6, p3

    move-object v7, p4

    .end local p3    # "confirm":Z
    .end local p4    # "value":[B
    .local v6, "confirm":Z
    .local v7, "value":[B
    :try_start_2d
    invoke-interface/range {v2 .. v8}, Landroid/bluetooth/IBluetoothGatt;->sendNotification(ILjava/lang/String;IZ[BLandroid/content/AttributionSource;)I

    move-result p3
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_31} :catch_32

    return p3

    .line 957
    :catch_32
    move-exception v0

    move-object p3, v0

    goto :goto_39

    .end local v6    # "confirm":Z
    .end local v7    # "value":[B
    .restart local p3    # "confirm":Z
    .restart local p4    # "value":[B
    :catch_35
    move-exception v0

    move v6, p3

    move-object v7, p4

    move-object p3, v0

    .line 958
    .end local p4    # "value":[B
    .restart local v6    # "confirm":Z
    .restart local v7    # "value":[B
    .local p3, "e":Landroid/os/RemoteException;
    :goto_39
    sget-object p4, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p4, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 959
    invoke-virtual {p3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p4

    throw p4

    .line 946
    .end local v6    # "confirm":Z
    .end local v7    # "value":[B
    .local p3, "confirm":Z
    .restart local p4    # "value":[B
    :cond_45
    move v6, p3

    move-object v7, p4

    .end local p3    # "confirm":Z
    .end local p4    # "value":[B
    .restart local v6    # "confirm":Z
    .restart local v7    # "value":[B
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string p4, "Characteristic value must not be null"

    invoke-direct {p3, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 943
    .end local v6    # "confirm":Z
    .end local v7    # "value":[B
    .restart local p3    # "confirm":Z
    .restart local p4    # "value":[B
    :cond_4f
    move v6, p3

    move-object v7, p4

    .end local p3    # "confirm":Z
    .end local p4    # "value":[B
    .restart local v6    # "confirm":Z
    .restart local v7    # "value":[B
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string p4, "Characteristic must have a non-null service"

    invoke-direct {p3, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 938
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v6    # "confirm":Z
    .end local v7    # "value":[B
    .restart local p3    # "confirm":Z
    .restart local p4    # "value":[B
    :cond_59
    move v6, p3

    move-object v7, p4

    .end local p3    # "confirm":Z
    .end local p4    # "value":[B
    .restart local v6    # "confirm":Z
    .restart local v7    # "value":[B
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string p4, "notification should not be longer than max length of an attribute value"

    invoke-direct {p3, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 935
    .end local v6    # "confirm":Z
    .end local v7    # "value":[B
    .restart local p3    # "confirm":Z
    .restart local p4    # "value":[B
    :cond_63
    move v6, p3

    move-object v7, p4

    .end local p3    # "confirm":Z
    .end local p4    # "value":[B
    .restart local v6    # "confirm":Z
    .restart local v7    # "value":[B
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string p4, "device must not be null"

    invoke-direct {p3, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 932
    .end local v6    # "confirm":Z
    .end local v7    # "value":[B
    .restart local p3    # "confirm":Z
    .restart local p4    # "value":[B
    :cond_6d
    move v6, p3

    move-object v7, p4

    .end local p3    # "confirm":Z
    .end local p4    # "value":[B
    .restart local v6    # "confirm":Z
    .restart local v7    # "value":[B
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string p4, "characteristic must not be null"

    invoke-direct {p3, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 927
    .end local v6    # "confirm":Z
    .end local v7    # "value":[B
    .restart local p3    # "confirm":Z
    .restart local p4    # "value":[B
    :cond_77
    move v6, p3

    move-object v7, p4

    .line 928
    .end local p3    # "confirm":Z
    .end local p4    # "value":[B
    .restart local v6    # "confirm":Z
    .restart local v7    # "value":[B
    :goto_79
    const/16 p3, 0x9

    return p3
.end method

.method public whitelist notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "confirm"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 884
    nop

    .line 885
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 884
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z[B)I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "service"    # Landroid/os/IBinder;

    .line 573
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 1

    .line 578
    return-void
.end method

.method public whitelist readPhy(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 812
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->serverReadPhy(ILjava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 815
    goto :goto_16

    .line 813
    :catch_e
    move-exception v0

    .line 814
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 816
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method blacklist registerCallback(Landroid/bluetooth/BluetoothGattServerCallback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;

    .line 614
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothGattServer;->registerCallback(Landroid/bluetooth/BluetoothGattServerCallback;Z)Z

    move-result v0

    return v0
.end method

.method blacklist registerCallback(Landroid/bluetooth/BluetoothGattServerCallback;Z)Z
    .registers 11
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;
    .param p2, "eattSupport"    # Z

    .line 635
    sget-object v0, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string v1, "registerCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 637
    sget-object v0, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string v2, "GATT service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return v1

    .line 640
    :cond_14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 641
    .local v0, "uuid":Ljava/util/UUID;
    sget-object v2, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCallback() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    monitor-enter v2

    .line 644
    :try_start_33
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    if-eqz v3, :cond_40

    .line 645
    sget-object v3, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string v4, "App can register callback only once"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    monitor-exit v2

    return v1

    .line 649
    :cond_40
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_8c

    .line 651
    const/4 v3, 0x0

    :try_start_43
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-direct {v5, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v6, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

    iget-object v7, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v4, v5, v6, p2, v7}, Landroid/bluetooth/IBluetoothGatt;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;ZLandroid/content/AttributionSource;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_51} :catch_80
    .catchall {:try_start_43 .. :try_end_51} :catchall_8c

    .line 660
    nop

    .line 663
    :try_start_52
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_59} :catch_5a
    .catchall {:try_start_52 .. :try_end_59} :catchall_8c

    .line 667
    goto :goto_75

    .line 664
    :catch_5a
    move-exception v4

    .line 665
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_5b
    sget-object v5, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 669
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_75
    iget v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v4, :cond_7d

    .line 670
    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 671
    monitor-exit v2

    return v1

    .line 673
    :cond_7d
    monitor-exit v2

    const/4 v1, 0x1

    return v1

    .line 656
    :catch_80
    move-exception v4

    .line 657
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v5, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 659
    monitor-exit v2

    return v1

    .line 675
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_8c
    move-exception v1

    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_5b .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method public whitelist removeService(Landroid/bluetooth/BluetoothGattService;)Z
    .registers 8
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .line 1007
    sget-object v0, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeService() - service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_26

    goto :goto_58

    .line 1010
    :cond_26
    nop

    .line 1011
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 1012
    .local v0, "intService":Landroid/bluetooth/BluetoothGattService;
    if-nez v0, :cond_3a

    return v1

    .line 1015
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->removeService(IILandroid/content/AttributionSource;)V

    .line 1016
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_4c} :catch_4f

    .line 1020
    nop

    .line 1022
    const/4 v1, 0x1

    return v1

    .line 1017
    :catch_4f
    move-exception v2

    .line 1018
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
    return v1

    .line 1008
    .end local v0    # "intService":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_58
    :goto_58
    return v1
.end method

.method public whitelist sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z
    .registers 16
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "status"    # I
    .param p4, "offset"    # I
    .param p5, "value"    # [B

    .line 843
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_e

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    goto :goto_37

    .line 846
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    .line 848
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_25

    .line 846
    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    .end local p2    # "requestId":I
    .end local p3    # "status":I
    .end local p4    # "offset":I
    .end local p5    # "value":[B
    .local v5, "requestId":I
    .local v6, "status":I
    .local v7, "offset":I
    .local v8, "value":[B
    :try_start_1c
    invoke-interface/range {v2 .. v9}, Landroid/bluetooth/IBluetoothGatt;->sendResponse(ILjava/lang/String;III[BLandroid/content/AttributionSource;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_22

    .line 857
    nop

    .line 858
    const/4 p2, 0x1

    return p2

    .line 854
    :catch_22
    move-exception v0

    move-object p2, v0

    goto :goto_2b

    .end local v5    # "requestId":I
    .end local v6    # "status":I
    .end local v7    # "offset":I
    .end local v8    # "value":[B
    .restart local p2    # "requestId":I
    .restart local p3    # "status":I
    .restart local p4    # "offset":I
    .restart local p5    # "value":[B
    :catch_25
    move-exception v0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    move-object p2, v0

    .line 855
    .end local p3    # "status":I
    .end local p4    # "offset":I
    .end local p5    # "value":[B
    .restart local v5    # "requestId":I
    .restart local v6    # "status":I
    .restart local v7    # "offset":I
    .restart local v8    # "value":[B
    .local p2, "e":Landroid/os/RemoteException;
    :goto_2b
    sget-object p3, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string p4, ""

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 856
    return v1

    .line 843
    .end local v5    # "requestId":I
    .end local v6    # "status":I
    .end local v7    # "offset":I
    .end local v8    # "value":[B
    .local p2, "requestId":I
    .restart local p3    # "status":I
    .restart local p4    # "offset":I
    .restart local p5    # "value":[B
    :cond_33
    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    .end local p2    # "requestId":I
    .end local p3    # "status":I
    .end local p4    # "offset":I
    .end local p5    # "value":[B
    .restart local v5    # "requestId":I
    .restart local v6    # "status":I
    .restart local v7    # "offset":I
    .restart local v8    # "value":[B
    :goto_37
    return v1
.end method

.method public whitelist setPreferredPhy(Landroid/bluetooth/BluetoothDevice;III)V
    .registers 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "phyOptions"    # I

    .line 795
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    .line 796
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Landroid/bluetooth/BluetoothGattServer;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_14

    .line 795
    move v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "txPhy":I
    .end local p3    # "rxPhy":I
    .end local p4    # "phyOptions":I
    .local v3, "txPhy":I
    .local v4, "rxPhy":I
    .local v5, "phyOptions":I
    :try_start_d
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->serverSetPreferredPhy(ILjava/lang/String;IIILandroid/content/AttributionSource;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    .line 799
    goto :goto_20

    .line 797
    :catch_11
    move-exception v0

    move-object p2, v0

    goto :goto_19

    .end local v3    # "txPhy":I
    .end local v4    # "rxPhy":I
    .end local v5    # "phyOptions":I
    .restart local p2    # "txPhy":I
    .restart local p3    # "rxPhy":I
    .restart local p4    # "phyOptions":I
    :catch_14
    move-exception v0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object p2, v0

    .line 798
    .end local p3    # "rxPhy":I
    .end local p4    # "phyOptions":I
    .restart local v3    # "txPhy":I
    .restart local v4    # "rxPhy":I
    .restart local v5    # "phyOptions":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_19
    sget-object p3, Landroid/bluetooth/BluetoothGattServer;->TAG:Ljava/lang/String;

    const-string p4, ""

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    .end local p2    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method
