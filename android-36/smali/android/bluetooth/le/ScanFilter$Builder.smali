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


# static fields
.field public static final whitelist LEN_IRK_OCTETS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private blacklist mAddressType:I

.field private blacklist mAdvertisingData:[B

.field private blacklist mAdvertisingDataMask:[B

.field private blacklist mAdvertisingDataType:I

.field private blacklist mDeviceAddress:Ljava/lang/String;

.field private blacklist mDeviceName:Ljava/lang/String;

.field private blacklist mIrk:[B

.field private blacklist mManufacturerData:[B

.field private blacklist mManufacturerDataMask:[B

.field private blacklist mManufacturerId:I

.field private blacklist mServiceData:[B

.field private blacklist mServiceDataMask:[B

.field private blacklist mServiceDataUuid:Landroid/os/ParcelUuid;

.field private blacklist mServiceSolicitationUuid:Landroid/os/ParcelUuid;

.field private blacklist mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

.field private blacklist mServiceUuid:Landroid/os/ParcelUuid;

.field private blacklist mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;

.field private blacklist mUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAddressType:I

    .line 712
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    .line 716
    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataType:I

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;

    return-void
.end method

.method private blacklist setDeviceAddressInternal(Ljava/lang/String;I[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 7
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "addressType"    # I
    .param p3, "irk"    # [B

    .line 838
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 844
    if-ltz p2, :cond_28

    const/4 v0, 0x1

    if-gt p2, v0, :cond_28

    .line 850
    if-ne p2, v0, :cond_21

    .line 852
    if-eqz p3, :cond_21

    .line 855
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->isAddressRandomStatic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_21

    .line 856
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid combination: IRK requires either a PUBLIC or RANDOM (STATIC) Address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_21
    :goto_21
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 867
    iput p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAddressType:I

    .line 868
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mIrk:[B

    .line 869
    return-object p0

    .line 846
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'addressType\' is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid device address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/le/ScanFilter;
    .registers 23

    .line 1126
    move-object/from16 v0, p0

    new-instance v1, Landroid/bluetooth/le/ScanFilter;

    iget-object v2, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    iget-object v4, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v5, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    iget-object v6, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    iget-object v7, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    iget-object v8, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v9, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    iget-object v10, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    iget v11, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    iget-object v12, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    iget v14, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mAddressType:I

    iget-object v15, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mIrk:[B

    move-object/from16 v16, v1

    iget v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataType:I

    move/from16 v17, v1

    iget-object v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingData:[B

    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataMask:[B

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;

    const/16 v20, 0x0

    move-object/from16 v21, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v21

    invoke-direct/range {v1 .. v20}, Landroid/bluetooth/le/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BI[BI[B[BLandroid/bluetooth/le/TransportBlockFilter;Landroid/bluetooth/le/ScanFilter-IA;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public whitelist setAdvertisingDataType(I)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 4
    .param p1, "advertisingDataType"    # I

    .line 1113
    if-ltz p1, :cond_5

    .line 1116
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataType:I

    .line 1117
    return-object p0

    .line 1114
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid advertising data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAdvertisingDataTypeWithData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 6
    .param p1, "advertisingDataType"    # I
    .param p2, "advertisingData"    # [B
    .param p3, "advertisingDataMask"    # [B

    .line 1081
    if-ltz p1, :cond_22

    .line 1084
    if-eqz p3, :cond_1b

    .line 1085
    if-eqz p2, :cond_13

    .line 1091
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_b

    goto :goto_1b

    .line 1092
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size mismatch for advertisingData and advertisingDataMask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1086
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "advertisingData is null while advertisingDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_1b
    :goto_1b
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataType:I

    .line 1097
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingData:[B

    .line 1098
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataMask:[B

    .line 1099
    return-object p0

    .line 1082
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid advertising data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 740
    if-nez p1, :cond_5

    .line 741
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 742
    return-object p0

    .line 744
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;I)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setDeviceAddress(Ljava/lang/String;I)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "addressType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 767
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddressInternal(Ljava/lang/String;I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setDeviceAddress(Ljava/lang/String;I[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 6
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "addressType"    # I
    .param p3, "irk"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 809
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    array-length v0, p3

    const/16 v1, 0x10

    if-ne v0, v1, :cond_d

    .line 813
    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddressInternal(Ljava/lang/String;I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    return-object v0

    .line 811
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'irk\' is invalid length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 724
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    .line 725
    return-object p0
.end method

.method public whitelist setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 5
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerData"    # [B

    .line 983
    if-eqz p2, :cond_d

    if-ltz p1, :cond_5

    goto :goto_d

    .line 984
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid manufacture id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :cond_d
    :goto_d
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    .line 987
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    .line 988
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    .line 989
    return-object p0
.end method

.method public whitelist setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 6
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerData"    # [B
    .param p3, "manufacturerDataMask"    # [B

    .line 1005
    if-eqz p2, :cond_d

    if-ltz p1, :cond_5

    goto :goto_d

    .line 1006
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid manufacture id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :cond_d
    :goto_d
    if-eqz p3, :cond_26

    .line 1009
    if-eqz p2, :cond_1e

    .line 1015
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_16

    goto :goto_26

    .line 1016
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size mismatch for manufacturerData and manufacturerDataMask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "manufacturerData is null while manufacturerDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_26
    :goto_26
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    .line 1021
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    .line 1022
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    .line 1023
    return-object p0
.end method

.method public whitelist setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 5
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B

    .line 935
    if-eqz p1, :cond_a

    .line 938
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 939
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    .line 940
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    .line 941
    return-object p0

    .line 936
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 6
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B
    .param p3, "serviceDataMask"    # [B

    .line 956
    if-eqz p1, :cond_22

    .line 959
    if-eqz p3, :cond_1b

    .line 960
    if-eqz p2, :cond_13

    .line 966
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_b

    goto :goto_1b

    .line 967
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size mismatch for service data and service data mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceData is null while serviceDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_1b
    :goto_1b
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 972
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    .line 973
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    .line 974
    return-object p0

    .line 957
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setServiceSolicitationUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 3
    .param p1, "serviceSolicitationUuid"    # Landroid/os/ParcelUuid;

    .line 899
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    .line 900
    if-nez p1, :cond_7

    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    .line 903
    :cond_7
    return-object p0
.end method

.method public whitelist setServiceSolicitationUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 5
    .param p1, "serviceSolicitationUuid"    # Landroid/os/ParcelUuid;
    .param p2, "solicitationUuidMask"    # Landroid/os/ParcelUuid;

    .line 920
    if-eqz p2, :cond_d

    if-eqz p1, :cond_5

    goto :goto_d

    .line 921
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SolicitationUuid is null while SolicitationUuidMask is not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_d
    :goto_d
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    .line 925
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    .line 926
    return-object p0
.end method

.method public whitelist setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 3
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;

    .line 874
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 875
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    .line 876
    return-object p0
.end method

.method public whitelist setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 5
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;
    .param p2, "uuidMask"    # Landroid/os/ParcelUuid;

    .line 888
    if-eqz p2, :cond_d

    if-eqz p1, :cond_5

    goto :goto_d

    .line 889
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuid is null while uuidMask is not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_d
    :goto_d
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 892
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    .line 893
    return-object p0
.end method

.method public whitelist setTransportBlockFilter(Landroid/bluetooth/le/TransportBlockFilter;)Landroid/bluetooth/le/ScanFilter$Builder;
    .registers 5
    .param p1, "transportBlockFilter"    # Landroid/bluetooth/le/TransportBlockFilter;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1048
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1050
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_19

    .line 1053
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getOffloadedTransportDiscoveryDataScanSupported()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_11

    .line 1059
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;

    .line 1060
    return-object p0

    .line 1055
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Transport Discovery Data filter is not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1051
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "BluetoothAdapter is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
