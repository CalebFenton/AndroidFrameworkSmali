.class public final Landroid/bluetooth/le/ScanFilter$Builder;
.super Ljava/lang/Object;
.source "ScanFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mManufacturerData:[B

.field private mManufacturerDataMask:[B

.field private mManufacturerId:I

.field private mServiceData:[B

.field private mServiceDataMask:[B

.field private mServiceDataUuid:Landroid/os/ParcelUuid;

.field private mServiceUuid:Landroid/os/ParcelUuid;

.field private mUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 437
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    #@6
    .line 425
    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/ScanFilter;
    .locals 12

    #@0
    .prologue
    .line 596
    new-instance v0, Landroid/bluetooth/le/ScanFilter;

    #@2
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    #@6
    .line 597
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    #@8
    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    #@a
    .line 598
    iget-object v5, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    #@c
    iget-object v6, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    #@e
    iget-object v7, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    #@10
    .line 599
    iget v8, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    #@12
    iget-object v9, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    #@14
    iget-object v10, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    #@16
    .line 596
    const/4 v11, 0x0

    #@17
    invoke-direct/range {v0 .. v11}, Landroid/bluetooth/le/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BLandroid/bluetooth/le/ScanFilter;)V

    #@1a
    return-object v0
.end method

.method public setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 458
    if-eqz p1, :cond_0

    #@2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 461
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    #@a
    .line 462
    return-object p0

    #@b
    .line 459
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "invalid device address "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method public setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 445
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    #@2
    .line 446
    return-object p0
.end method

.method public setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerData"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 547
    if-eqz p2, :cond_0

    #@3
    if-gez p1, :cond_0

    #@5
    .line 548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "invalid manufacture id"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 550
    :cond_0
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    #@10
    .line 551
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    #@12
    .line 552
    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    #@14
    .line 553
    return-object p0
.end method

.method public setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerData"    # [B
    .param p3, "manufacturerDataMask"    # [B

    #@0
    .prologue
    .line 569
    if-eqz p2, :cond_0

    #@2
    if-gez p1, :cond_0

    #@4
    .line 570
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "invalid manufacture id"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 572
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 573
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    #@13
    if-nez v0, :cond_1

    #@15
    .line 574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    .line 575
    const-string/jumbo v1, "manufacturerData is null while manufacturerDataMask is not null"

    #@1a
    .line 574
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 579
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    #@20
    array-length v0, v0

    #@21
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    #@23
    array-length v1, v1

    #@24
    if-eq v0, v1, :cond_2

    #@26
    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    .line 581
    const-string/jumbo v1, "size mismatch for manufacturerData and manufacturerDataMask"

    #@2b
    .line 580
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 584
    :cond_2
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    #@31
    .line 585
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    #@33
    .line 586
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    #@35
    .line 587
    return-object p0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 497
    if-nez p1, :cond_0

    #@3
    .line 498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "serviceDataUuid is null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 500
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    #@e
    .line 501
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    #@10
    .line 502
    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    #@12
    .line 503
    return-object p0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B
    .param p3, "serviceDataMask"    # [B

    #@0
    .prologue
    .line 518
    if-nez p1, :cond_0

    #@2
    .line 519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "serviceDataUuid is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 521
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 522
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    #@11
    if-nez v0, :cond_1

    #@13
    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    .line 524
    const-string/jumbo v1, "serviceData is null while serviceDataMask is not null"

    #@18
    .line 523
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 528
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    #@1e
    array-length v0, v0

    #@1f
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    #@21
    array-length v1, v1

    #@22
    if-eq v0, v1, :cond_2

    #@24
    .line 529
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    .line 530
    const-string/jumbo v1, "size mismatch for service data and service data mask"

    #@29
    .line 529
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 533
    :cond_2
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    #@2f
    .line 534
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    #@31
    .line 535
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    #@33
    .line 536
    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 1
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 469
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    #@2
    .line 470
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    #@5
    .line 471
    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;
    .param p2, "uuidMask"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 483
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 484
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "uuid is null while uuidMask is not null!"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 486
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    #@13
    .line 487
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    #@15
    .line 488
    return-object p0
.end method
