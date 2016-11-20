.class public final Landroid/bluetooth/BluetoothGattServer;
.super Ljava/lang/Object;
.source "BluetoothGattServer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGattServer$1;
    }
.end annotation


# static fields
.field private static final CALLBACK_REG_TIMEOUT:I = 0x2710

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothGattServer"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

.field private mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

.field private final mContext:Landroid/content/Context;

.field private mServerIf:I

.field private mServerIfLock:Ljava/lang/Object;

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

.field private mTransport:I


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothGattServer;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@2
    return p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/IBluetoothGatt;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p3, "transport"    # I

    #@0
    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    #@a
    .line 63
    new-instance v0, Landroid/bluetooth/BluetoothGattServer$1;

    #@c
    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothGattServer$1;-><init>(Landroid/bluetooth/BluetoothGattServer;)V

    #@f
    .line 62
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

    #@11
    .line 311
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mContext:Landroid/content/Context;

    #@13
    .line 312
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@15
    .line 313
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@1b
    .line 314
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    #@1e
    .line 315
    const/4 v0, 0x0

    #@1f
    iput v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@21
    .line 316
    iput p3, p0, Landroid/bluetooth/BluetoothGattServer;->mTransport:I

    #@23
    .line 317
    new-instance v0, Ljava/util/ArrayList;

    #@25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@28
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    #@2a
    .line 310
    return-void
.end method

.method private unregisterCallback()V
    .locals 4

    #@0
    .prologue
    .line 388
    const-string/jumbo v1, "BluetoothGattServer"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "unregisterCallback() - mServerIf="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

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
    .line 389
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@1e
    if-eqz v1, :cond_0

    #@20
    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@22
    if-nez v1, :cond_1

    #@24
    :cond_0
    return-void

    #@25
    .line 392
    :cond_1
    const/4 v1, 0x0

    #@26
    :try_start_0
    iput-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    #@28
    .line 393
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2a
    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@2c
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterServer(I)V

    #@2f
    .line 394
    const/4 v1, 0x0

    #@30
    iput v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 387
    :goto_0
    return-void

    #@33
    .line 395
    :catch_0
    move-exception v0

    #@34
    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGattServer"

    #@37
    const-string/jumbo v2, ""

    #@3a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    goto :goto_0
.end method


# virtual methods
.method public addService(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 19
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    #@0
    .prologue
    .line 568
    const-string/jumbo v1, "BluetoothGattServer"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "addService() - service: "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 569
    move-object/from16 v0, p0

    #@20
    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@22
    if-eqz v1, :cond_0

    #@24
    move-object/from16 v0, p0

    #@26
    iget v1, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@28
    if-nez v1, :cond_1

    #@2a
    :cond_0
    const/4 v1, 0x0

    #@2b
    return v1

    #@2c
    .line 571
    :cond_1
    move-object/from16 v0, p0

    #@2e
    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@35
    .line 574
    :try_start_0
    move-object/from16 v0, p0

    #@37
    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@39
    move-object/from16 v0, p0

    #@3b
    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@3d
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@40
    move-result v3

    #@41
    .line 575
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@44
    move-result v4

    #@45
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getHandles()I

    #@48
    move-result v5

    #@49
    .line 576
    new-instance v6, Landroid/os/ParcelUuid;

    #@4b
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@4e
    move-result-object v7

    #@4f
    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@52
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->isAdvertisePreferred()Z

    #@55
    move-result v7

    #@56
    .line 574
    invoke-interface/range {v1 .. v7}, Landroid/bluetooth/IBluetoothGatt;->beginServiceDeclaration(IIIILandroid/os/ParcelUuid;Z)V

    #@59
    .line 578
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    #@5c
    move-result-object v17

    #@5d
    .line 579
    .local v17, "includedServices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@60
    move-result-object v16

    #@61
    .local v16, "includedService$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@64
    move-result v1

    #@65
    if-eqz v1, :cond_2

    #@67
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6a
    move-result-object v15

    #@6b
    check-cast v15, Landroid/bluetooth/BluetoothGattService;

    #@6d
    .line 580
    .local v15, "includedService":Landroid/bluetooth/BluetoothGattService;
    move-object/from16 v0, p0

    #@6f
    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@71
    move-object/from16 v0, p0

    #@73
    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@75
    .line 581
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@78
    move-result v3

    #@79
    .line 582
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@7c
    move-result v4

    #@7d
    .line 583
    new-instance v5, Landroid/os/ParcelUuid;

    #@7f
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@82
    move-result-object v6

    #@83
    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@86
    .line 580
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->addIncludedService(IIILandroid/os/ParcelUuid;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@89
    goto :goto_0

    #@8a
    .line 604
    .end local v15    # "includedService":Landroid/bluetooth/BluetoothGattService;
    .end local v16    # "includedService$iterator":Ljava/util/Iterator;
    .end local v17    # "includedServices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :catch_0
    move-exception v14

    #@8b
    .line 605
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGattServer"

    #@8e
    const-string/jumbo v2, ""

    #@91
    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@94
    .line 606
    const/4 v1, 0x0

    #@95
    return v1

    #@96
    .line 586
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v16    # "includedService$iterator":Ljava/util/Iterator;
    .restart local v17    # "includedServices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    #@99
    move-result-object v10

    #@9a
    .line 587
    .local v10, "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9d
    move-result-object v9

    #@9e
    .local v9, "characteristic$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@a1
    move-result v1

    #@a2
    if-eqz v1, :cond_4

    #@a4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a7
    move-result-object v8

    #@a8
    check-cast v8, Landroid/bluetooth/BluetoothGattCharacteristic;

    #@aa
    .line 588
    .local v8, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getKeySize()I

    #@ad
    move-result v1

    #@ae
    add-int/lit8 v1, v1, -0x7

    #@b0
    shl-int/lit8 v1, v1, 0xc

    #@b2
    .line 589
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getPermissions()I

    #@b5
    move-result v2

    #@b6
    .line 588
    add-int v18, v1, v2

    #@b8
    .line 590
    .local v18, "permission":I
    move-object/from16 v0, p0

    #@ba
    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@bc
    move-object/from16 v0, p0

    #@be
    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@c0
    .line 591
    new-instance v3, Landroid/os/ParcelUuid;

    #@c2
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@c5
    move-result-object v4

    #@c6
    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@c9
    .line 592
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    #@cc
    move-result v4

    #@cd
    .line 590
    move/from16 v0, v18

    #@cf
    invoke-interface {v1, v2, v3, v4, v0}, Landroid/bluetooth/IBluetoothGatt;->addCharacteristic(ILandroid/os/ParcelUuid;II)V

    #@d2
    .line 594
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    #@d5
    move-result-object v13

    #@d6
    .line 595
    .local v13, "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d9
    move-result-object v12

    #@da
    .local v12, "descriptor$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@dd
    move-result v1

    #@de
    if-eqz v1, :cond_3

    #@e0
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e3
    move-result-object v11

    #@e4
    check-cast v11, Landroid/bluetooth/BluetoothGattDescriptor;

    #@e6
    .line 596
    .local v11, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getKeySize()I

    #@e9
    move-result v1

    #@ea
    add-int/lit8 v1, v1, -0x7

    #@ec
    shl-int/lit8 v1, v1, 0xc

    #@ee
    .line 597
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattDescriptor;->getPermissions()I

    #@f1
    move-result v2

    #@f2
    .line 596
    add-int v18, v1, v2

    #@f4
    .line 598
    move-object/from16 v0, p0

    #@f6
    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@f8
    move-object/from16 v0, p0

    #@fa
    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@fc
    .line 599
    new-instance v3, Landroid/os/ParcelUuid;

    #@fe
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    #@101
    move-result-object v4

    #@102
    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@105
    .line 598
    move/from16 v0, v18

    #@107
    invoke-interface {v1, v2, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->addDescriptor(ILandroid/os/ParcelUuid;I)V

    #@10a
    goto :goto_1

    #@10b
    .line 603
    .end local v8    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v11    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v12    # "descriptor$iterator":Ljava/util/Iterator;
    .end local v13    # "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    .end local v18    # "permission":I
    :cond_4
    move-object/from16 v0, p0

    #@10d
    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@10f
    move-object/from16 v0, p0

    #@111
    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@113
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->endServiceDeclaration(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@116
    .line 609
    const/4 v1, 0x1

    #@117
    return v1
.end method

.method public cancelConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 461
    const-string/jumbo v1, "BluetoothGattServer"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "cancelConnection() - device: "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 462
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@20
    if-eqz v1, :cond_0

    #@22
    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@24
    if-nez v1, :cond_1

    #@26
    :cond_0
    return-void

    #@27
    .line 465
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@29
    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@2b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->serverDisconnect(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 460
    :goto_0
    return-void

    #@33
    .line 466
    :catch_0
    move-exception v0

    #@34
    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGattServer"

    #@37
    const-string/jumbo v2, ""

    #@3a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    goto :goto_0
.end method

.method public clearServices()V
    .locals 3

    #@0
    .prologue
    .line 645
    const-string/jumbo v1, "BluetoothGattServer"

    #@3
    const-string/jumbo v2, "clearServices()"

    #@6
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 646
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@f
    if-nez v1, :cond_1

    #@11
    :cond_0
    return-void

    #@12
    .line 649
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@14
    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@16
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->clearServices(I)V

    #@19
    .line 650
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    #@1b
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 644
    :goto_0
    return-void

    #@1f
    .line 651
    :catch_0
    move-exception v0

    #@20
    .line 652
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGattServer"

    #@23
    const-string/jumbo v2, ""

    #@26
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    goto :goto_0
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    .line 327
    const-string/jumbo v0, "BluetoothGattServer"

    #@3
    const-string/jumbo v1, "close()"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 328
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServer;->unregisterCallback()V

    #@c
    .line 326
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "autoConnect"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 438
    const-string/jumbo v1, "BluetoothGattServer"

    #@5
    new-instance v4, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v5, "connect() - device: "

    #@d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    const-string/jumbo v5, ", auto: "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 439
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2d
    if-eqz v1, :cond_0

    #@2f
    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@31
    if-nez v1, :cond_1

    #@33
    :cond_0
    return v2

    #@34
    .line 442
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@36
    iget v5, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@38
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    .line 443
    if-eqz p2, :cond_2

    #@3e
    move v1, v2

    #@3f
    :goto_0
    iget v7, p0, Landroid/bluetooth/BluetoothGattServer;->mTransport:I

    #@41
    .line 442
    invoke-interface {v4, v5, v6, v1, v7}, Landroid/bluetooth/IBluetoothGatt;->serverConnect(ILjava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 449
    return v3

    #@45
    :cond_2
    move v1, v3

    #@46
    .line 443
    goto :goto_0

    #@47
    .line 444
    :catch_0
    move-exception v0

    #@48
    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGattServer"

    #@4b
    const-string/jumbo v3, ""

    #@4e
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    .line 446
    return v2
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
    .line 714
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 715
    const-string/jumbo v1, "Use BluetoothManager#getConnectedDevices instead."

    #@5
    .line 714
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 703
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Use BluetoothManager#getConnectionState instead."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
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
    .line 727
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 728
    const-string/jumbo v1, "Use BluetoothManager#getDevicesMatchingConnectionStates instead."

    #@5
    .line 727
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    #@0
    .prologue
    .line 685
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

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
    .line 686
    .local v0, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 687
    return-object v0

    #@1d
    .line 691
    .end local v0    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    const/4 v2, 0x0

    #@1e
    return-object v2
.end method

.method getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I
    .param p3, "type"    # I

    #@0
    .prologue
    .line 405
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

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
    .line 406
    .local v0, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@15
    move-result v2

    #@16
    if-ne v2, p3, :cond_0

    #@18
    .line 407
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@1b
    move-result v2

    #@1c
    if-ne v2, p2, :cond_0

    #@1e
    .line 408
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    .line 406
    if-eqz v2, :cond_0

    #@28
    .line 409
    return-object v0

    #@29
    .line 412
    .end local v0    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    const/4 v2, 0x0

    #@2a
    return-object v2
.end method

.method public getServices()Ljava/util/List;
    .locals 1
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
    .line 668
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "confirm"    # Z

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@6
    if-nez v0, :cond_1

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 530
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    #@d
    move-result-object v11

    #@e
    .line 531
    .local v11, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v11, :cond_2

    #@10
    const/4 v0, 0x0

    #@11
    return v0

    #@12
    .line 533
    :cond_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@15
    move-result-object v0

    #@16
    if-nez v0, :cond_3

    #@18
    .line 534
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "Chracteristic value is empty. Use BluetoothGattCharacteristic#setvalue to update"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 539
    :cond_3
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@23
    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@25
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 540
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@2c
    move-result v3

    #@2d
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@30
    move-result v4

    #@31
    .line 541
    new-instance v5, Landroid/os/ParcelUuid;

    #@33
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@36
    move-result-object v6

    #@37
    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@3a
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    #@3d
    move-result v6

    #@3e
    .line 542
    new-instance v7, Landroid/os/ParcelUuid;

    #@40
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@43
    move-result-object v8

    #@44
    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@47
    .line 543
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@4a
    move-result-object v9

    #@4b
    move v8, p3

    #@4c
    .line 539
    invoke-interface/range {v0 .. v9}, Landroid/bluetooth/IBluetoothGatt;->sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    .line 549
    const/4 v0, 0x1

    #@50
    return v0

    #@51
    .line 544
    :catch_0
    move-exception v10

    #@52
    .line 545
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGattServer"

    #@55
    const-string/jumbo v1, ""

    #@58
    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    .line 546
    const/4 v0, 0x0

    #@5c
    return v0
.end method

.method registerCallback(Landroid/bluetooth/BluetoothGattServerCallback;)Z
    .locals 9
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 345
    const-string/jumbo v3, "BluetoothGattServer"

    #@4
    const-string/jumbo v4, "registerCallback()"

    #@7
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 346
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@c
    if-nez v3, :cond_0

    #@e
    .line 347
    const-string/jumbo v3, "BluetoothGattServer"

    #@11
    const-string/jumbo v4, "GATT service not available"

    #@14
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 348
    return v8

    #@18
    .line 350
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@1b
    move-result-object v2

    #@1c
    .line 351
    .local v2, "uuid":Ljava/util/UUID;
    const-string/jumbo v3, "BluetoothGattServer"

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "registerCallback() - UUID="

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 353
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    #@38
    monitor-enter v4

    #@39
    .line 354
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    #@3b
    if-eqz v3, :cond_1

    #@3d
    .line 355
    const-string/jumbo v3, "BluetoothGattServer"

    #@40
    const-string/jumbo v5, "App can register callback only once"

    #@43
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    monitor-exit v4

    #@47
    .line 356
    return v8

    #@48
    .line 359
    :cond_1
    :try_start_1
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 361
    :try_start_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@4c
    new-instance v5, Landroid/os/ParcelUuid;

    #@4e
    invoke-direct {v5, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@51
    iget-object v6, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

    #@53
    invoke-interface {v3, v5, v6}, Landroid/bluetooth/IBluetoothGatt;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    .line 369
    :try_start_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    #@58
    const-wide/16 v6, 0x2710

    #@5a
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5d
    .line 375
    :goto_0
    :try_start_4
    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@5f
    if-nez v3, :cond_2

    #@61
    .line 376
    const/4 v3, 0x0

    #@62
    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@64
    monitor-exit v4

    #@65
    .line 377
    return v8

    #@66
    .line 362
    :catch_0
    move-exception v0

    #@67
    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v3, "BluetoothGattServer"

    #@6a
    const-string/jumbo v5, ""

    #@6d
    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@70
    .line 364
    const/4 v3, 0x0

    #@71
    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@73
    monitor-exit v4

    #@74
    .line 365
    return v8

    #@75
    .line 370
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@76
    .line 371
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string/jumbo v3, "BluetoothGattServer"

    #@79
    new-instance v5, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v6, ""

    #@81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v5

    #@8d
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    .line 372
    const/4 v3, 0x0

    #@91
    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@93
    goto :goto_0

    #@94
    .line 353
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    #@95
    monitor-exit v4

    #@96
    throw v3

    #@97
    .line 379
    :cond_2
    const/4 v3, 0x1

    #@98
    monitor-exit v4

    #@99
    return v3
.end method

.method public removeService(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 9
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 621
    const-string/jumbo v2, "BluetoothGattServer"

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "removeService() - service: "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 622
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@21
    if-eqz v2, :cond_0

    #@23
    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@25
    if-nez v2, :cond_1

    #@27
    :cond_0
    return v8

    #@28
    .line 624
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@2b
    move-result-object v2

    #@2c
    .line 625
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@2f
    move-result v3

    #@30
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@33
    move-result v4

    #@34
    .line 624
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@37
    move-result-object v1

    #@38
    .line 626
    .local v1, "intService":Landroid/bluetooth/BluetoothGattService;
    if-nez v1, :cond_2

    #@3a
    return v8

    #@3b
    .line 629
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@3d
    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@3f
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@42
    move-result v4

    #@43
    .line 630
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@46
    move-result v5

    #@47
    new-instance v6, Landroid/os/ParcelUuid;

    #@49
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@4c
    move-result-object v7

    #@4d
    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@50
    .line 629
    invoke-interface {v2, v3, v4, v5, v6}, Landroid/bluetooth/IBluetoothGatt;->removeService(IIILandroid/os/ParcelUuid;)V

    #@53
    .line 631
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    #@55
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    .line 637
    const/4 v2, 0x1

    #@59
    return v2

    #@5a
    .line 632
    :catch_0
    move-exception v0

    #@5b
    .line 633
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothGattServer"

    #@5e
    const-string/jumbo v3, ""

    #@61
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@64
    .line 634
    return v8
.end method

.method public sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "status"    # I
    .param p4, "offset"    # I
    .param p5, "value"    # [B

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 495
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@7
    if-nez v0, :cond_1

    #@9
    :cond_0
    return v8

    #@a
    .line 498
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    #@c
    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    #@e
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    move v3, p2

    #@13
    move v4, p3

    #@14
    move v5, p4

    #@15
    move-object v6, p5

    #@16
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->sendResponse(ILjava/lang/String;III[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 504
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 500
    :catch_0
    move-exception v7

    #@1c
    .line 501
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGattServer"

    #@1f
    const-string/jumbo v1, ""

    #@22
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    .line 502
    return v8
.end method
