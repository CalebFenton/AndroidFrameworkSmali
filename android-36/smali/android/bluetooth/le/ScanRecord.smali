.class public final Landroid/bluetooth/le/ScanRecord;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanRecord$AdvertisingDataType;
    }
.end annotation


# static fields
.field public static final whitelist DATA_TYPE_3D_INFORMATION_DATA:I = 0x3d

.field public static final whitelist DATA_TYPE_ADVERTISING_INTERVAL:I = 0x1a

.field public static final whitelist DATA_TYPE_ADVERTISING_INTERVAL_LONG:I = 0x2f

.field public static final whitelist DATA_TYPE_APPEARANCE:I = 0x19

.field public static final whitelist DATA_TYPE_BIG_INFO:I = 0x2c

.field public static final whitelist DATA_TYPE_BROADCAST_CODE:I = 0x2d

.field public static final whitelist DATA_TYPE_CHANNEL_MAP_UPDATE_INDICATION:I = 0x28

.field public static final whitelist DATA_TYPE_CLASS_OF_DEVICE:I = 0xd

.field public static final whitelist DATA_TYPE_DEVICE_ID:I = 0x10

.field public static final whitelist DATA_TYPE_FLAGS:I = 0x1

.field public static final whitelist DATA_TYPE_INDOOR_POSITIONING:I = 0x25

.field public static final whitelist DATA_TYPE_LE_BLUETOOTH_DEVICE_ADDRESS:I = 0x1b

.field public static final whitelist DATA_TYPE_LE_ROLE:I = 0x1c

.field public static final whitelist DATA_TYPE_LE_SECURE_CONNECTIONS_CONFIRMATION_VALUE:I = 0x22

.field public static final whitelist DATA_TYPE_LE_SECURE_CONNECTIONS_RANDOM_VALUE:I = 0x23

.field public static final whitelist DATA_TYPE_LE_SUPPORTED_FEATURES:I = 0x27

.field public static final whitelist DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field public static final whitelist DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field public static final whitelist DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field public static final whitelist DATA_TYPE_MESH_BEACON:I = 0x2b

.field public static final whitelist DATA_TYPE_MESH_MESSAGE:I = 0x2a

.field public static final whitelist DATA_TYPE_NONE:I = -0x1

.field public static final whitelist DATA_TYPE_PB_ADV:I = 0x29

.field public static final whitelist DATA_TYPE_PUBLIC_TARGET_ADDRESS:I = 0x17

.field public static final whitelist DATA_TYPE_RANDOM_TARGET_ADDRESS:I = 0x18

.field public static final whitelist DATA_TYPE_RESOLVABLE_SET_IDENTIFIER:I = 0x2e

.field public static final whitelist DATA_TYPE_SECURITY_MANAGER_OUT_OF_BAND_FLAGS:I = 0x11

.field public static final whitelist DATA_TYPE_SERVICE_DATA_128_BIT:I = 0x21

.field public static final whitelist DATA_TYPE_SERVICE_DATA_16_BIT:I = 0x16

.field public static final whitelist DATA_TYPE_SERVICE_DATA_32_BIT:I = 0x20

.field public static final whitelist DATA_TYPE_SERVICE_SOLICITATION_UUIDS_128_BIT:I = 0x15

.field public static final whitelist DATA_TYPE_SERVICE_SOLICITATION_UUIDS_16_BIT:I = 0x14

.field public static final whitelist DATA_TYPE_SERVICE_SOLICITATION_UUIDS_32_BIT:I = 0x1f

.field public static final whitelist DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field public static final whitelist DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field public static final whitelist DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field public static final whitelist DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field public static final whitelist DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field public static final whitelist DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field public static final whitelist DATA_TYPE_SIMPLE_PAIRING_HASH_C:I = 0xe

.field public static final whitelist DATA_TYPE_SIMPLE_PAIRING_HASH_C_256:I = 0x1d

.field public static final whitelist DATA_TYPE_SIMPLE_PAIRING_RANDOMIZER_R:I = 0xf

.field public static final whitelist DATA_TYPE_SIMPLE_PAIRING_RANDOMIZER_R_256:I = 0x1e

.field public static final whitelist DATA_TYPE_SLAVE_CONNECTION_INTERVAL_RANGE:I = 0x12

.field public static final whitelist DATA_TYPE_TRANSPORT_DISCOVERY_DATA:I = 0x26

.field public static final whitelist DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field public static final whitelist DATA_TYPE_URI:I = 0x24

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdvertiseFlags:I

.field private final blacklist mAdvertisingDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final blacklist mBytes:[B

.field private final blacklist mDeviceName:Ljava/lang/String;

.field private final blacklist mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final blacklist mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final blacklist mServiceSolicitationUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTransportDiscoveryData:Landroid/bluetooth/le/TransportDiscoveryData;

.field private final blacklist mTxPowerLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    const-class v0, Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/le/ScanRecord;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;Ljava/util/Map;Landroid/bluetooth/le/TransportDiscoveryData;[B)V
    .registers 11
    .param p5, "advertiseFlags"    # I
    .param p6, "txPowerLevel"    # I
    .param p7, "localName"    # Ljava/lang/String;
    .param p9, "transportDiscoveryData"    # Landroid/bluetooth/le/TransportDiscoveryData;
    .param p10, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Landroid/bluetooth/le/TransportDiscoveryData;",
            "[B)V"
        }
    .end annotation

    .line 497
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p3, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p4, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local p8, "advertisingDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p2, p0, Landroid/bluetooth/le/ScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    .line 499
    iput-object p1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    .line 500
    iput-object p3, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 501
    iput-object p4, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 502
    iput-object p7, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 503
    iput p5, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    .line 504
    iput p6, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    .line 505
    iput-object p8, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertisingDataMap:Ljava/util/Map;

    .line 506
    iput-object p9, p0, Landroid/bluetooth/le/ScanRecord;->mTransportDiscoveryData:Landroid/bluetooth/le/TransportDiscoveryData;

    .line 507
    iput-object p10, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    .line 508
    return-void
.end method

.method private static blacklist extractBytes([BII)[B
    .registers 5
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 758
    new-array v0, p2, [B

    .line 759
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    return-object v0
.end method

.method public static greylist parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;
    .registers 22
    .param p0, "scanRecord"    # [B

    .line 523
    move-object/from16 v10, p0

    if-nez v10, :cond_6

    .line 524
    const/4 v0, 0x0

    return-object v0

    .line 527
    :cond_6
    const/4 v0, 0x0

    .line 528
    .local v0, "currentPos":I
    const/4 v1, -0x1

    .line 529
    .local v1, "advertiseFlag":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v2, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v3, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v4, 0x0

    .line 532
    .local v4, "localName":Ljava/lang/String;
    const/high16 v5, -0x80000000

    .line 534
    .local v5, "txPowerLevel":I
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 535
    .local v6, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 536
    .local v7, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 538
    .local v8, "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    const/4 v9, 0x0

    move-object v11, v9

    move v9, v5

    move v5, v1

    move v1, v0

    .line 541
    .end local v0    # "currentPos":I
    .local v1, "currentPos":I
    .local v5, "advertiseFlag":I
    .local v9, "txPowerLevel":I
    .local v11, "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    :goto_29
    :try_start_29
    array-length v0, v10
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2a} :catch_1e3

    if-ge v1, v0, :cond_19d

    .line 543
    add-int/lit8 v12, v1, 0x1

    .end local v1    # "currentPos":I
    .local v12, "currentPos":I
    :try_start_2e
    aget-byte v0, v10, v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_30} :catch_18e

    and-int/lit16 v0, v0, 0xff

    .line 544
    .local v0, "length":I
    if-nez v0, :cond_3a

    .line 545
    move-object/from16 v19, v4

    move/from16 v20, v5

    goto/16 :goto_1a2

    .line 548
    :cond_3a
    add-int/lit8 v1, v0, -0x1

    .line 550
    .local v1, "dataLength":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "currentPos":I
    .local v13, "currentPos":I
    :try_start_3e
    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    .line 551
    .local v12, "fieldType":I
    invoke-static {v10, v13, v1}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v14

    .line 552
    .local v14, "advertisingData":[B
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const/4 v15, 0x2

    sparse-switch v12, :sswitch_data_220

    move/from16 v18, v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v0    # "length":I
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .local v18, "length":I
    .local v19, "localName":Ljava/lang/String;
    .local v20, "advertiseFlag":I
    goto/16 :goto_177

    .line 639
    .end local v18    # "length":I
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .restart local v0    # "length":I
    .restart local v4    # "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    :sswitch_59
    add-int/lit8 v15, v13, 0x1

    aget-byte v15, v10, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    move/from16 v18, v0

    .end local v0    # "length":I
    .restart local v18    # "length":I
    aget-byte v0, v10, v13
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_65} :catch_17e

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v15, v0

    .line 642
    .local v15, "manufacturerId":I
    add-int/lit8 v0, v13, 0x2

    move-object/from16 v19, v4

    .end local v4    # "localName":Ljava/lang/String;
    .restart local v19    # "localName":Ljava/lang/String;
    add-int/lit8 v4, v1, -0x2

    .line 643
    :try_start_6e
    invoke-static {v10, v0, v4}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 644
    .local v0, "manufacturerDataBytes":[B
    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 645
    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7e} :catch_a2

    .line 646
    .local v4, "firstValue":[B
    move/from16 v20, v5

    .end local v5    # "advertiseFlag":I
    .restart local v20    # "advertiseFlag":I
    :try_start_80
    array-length v5, v4

    move/from16 v16, v5

    array-length v5, v0

    add-int v5, v16, v5

    .line 647
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 649
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 650
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 651
    move-object/from16 v16, v4

    .end local v4    # "firstValue":[B
    .local v16, "firstValue":[B
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v6, v15, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 652
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v16    # "firstValue":[B
    goto/16 :goto_177

    .line 653
    .end local v20    # "advertiseFlag":I
    .local v5, "advertiseFlag":I
    :cond_9b
    move/from16 v20, v5

    .end local v5    # "advertiseFlag":I
    .restart local v20    # "advertiseFlag":I
    invoke-virtual {v6, v15, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 655
    goto/16 :goto_177

    .line 685
    .end local v0    # "manufacturerDataBytes":[B
    .end local v1    # "dataLength":I
    .end local v12    # "fieldType":I
    .end local v14    # "advertisingData":[B
    .end local v15    # "manufacturerId":I
    .end local v18    # "length":I
    .end local v20    # "advertiseFlag":I
    .restart local v5    # "advertiseFlag":I
    :catch_a2
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v17, v2

    move-object v14, v7

    move v15, v9

    move-object/from16 v16, v11

    move v12, v13

    move-object v11, v3

    move-object v13, v6

    .end local v5    # "advertiseFlag":I
    .restart local v20    # "advertiseFlag":I
    goto/16 :goto_1f1

    .line 658
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .local v0, "length":I
    .restart local v1    # "dataLength":I
    .local v4, "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    .restart local v12    # "fieldType":I
    .restart local v14    # "advertisingData":[B
    :sswitch_b0
    move/from16 v18, v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v0    # "length":I
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .restart local v18    # "length":I
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    add-int/lit8 v0, v13, -0x1

    add-int/lit8 v4, v1, 0x1

    .line 659
    invoke-static {v10, v0, v4}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 660
    .local v0, "transportDiscoveryDataBytes":[B
    new-instance v4, Landroid/bluetooth/le/TransportDiscoveryData;

    invoke-direct {v4, v0}, Landroid/bluetooth/le/TransportDiscoveryData;-><init>([B)V

    .line 662
    .end local v11    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    .local v4, "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    move-object v11, v4

    move-object/from16 v4, v19

    move/from16 v5, v20

    goto/16 :goto_17b

    .line 593
    .end local v18    # "length":I
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .local v0, "length":I
    .local v4, "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    .restart local v11    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    :sswitch_ca
    move/from16 v18, v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v0    # "length":I
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .restart local v18    # "length":I
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    const/4 v0, 0x4

    invoke-static {v10, v13, v1, v0, v3}, Landroid/bluetooth/le/ScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    .line 599
    goto/16 :goto_177

    .line 618
    .end local v18    # "length":I
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .restart local v0    # "length":I
    .restart local v4    # "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    :sswitch_d6
    move/from16 v18, v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v0    # "length":I
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .restart local v18    # "length":I
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    const/4 v0, 0x2

    .line 619
    .local v0, "serviceUuidLength":I
    const/16 v4, 0x20

    if-ne v12, v4, :cond_e3

    .line 620
    const/4 v0, 0x4

    goto :goto_e9

    .line 621
    :cond_e3
    const/16 v4, 0x21

    if-ne v12, v4, :cond_e9

    .line 622
    const/16 v0, 0x10

    .line 625
    :cond_e9
    :goto_e9
    nop

    .line 626
    invoke-static {v10, v13, v0}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v4

    .line 627
    .local v4, "serviceDataUuidBytes":[B
    nop

    .line 628
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v5

    .line 629
    .local v5, "serviceDataUuid":Landroid/os/ParcelUuid;
    add-int v15, v13, v0

    move/from16 v16, v0

    .end local v0    # "serviceUuidLength":I
    .local v16, "serviceUuidLength":I
    sub-int v0, v1, v16

    .line 630
    invoke-static {v10, v15, v0}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 634
    .local v0, "serviceDataArray":[B
    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    goto/16 :goto_177

    .line 601
    .end local v16    # "serviceUuidLength":I
    .end local v18    # "length":I
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .local v0, "length":I
    .local v4, "localName":Ljava/lang/String;
    .local v5, "advertiseFlag":I
    :sswitch_102
    move/from16 v18, v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v0    # "length":I
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .restart local v18    # "length":I
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    const/16 v0, 0x10

    invoke-static {v10, v13, v1, v0, v3}, Landroid/bluetooth/le/ScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    .line 607
    goto/16 :goto_177

    .line 585
    .end local v18    # "length":I
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .restart local v0    # "length":I
    .restart local v4    # "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    :sswitch_10f
    move/from16 v18, v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v0    # "length":I
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .restart local v18    # "length":I
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    invoke-static {v10, v13, v1, v15, v3}, Landroid/bluetooth/le/ScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    .line 591
    goto/16 :goto_177

    .line 613
    .end local v18    # "length":I
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .restart local v0    # "length":I
    .restart local v4    # "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    :sswitch_11a
    move/from16 v18, v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v0    # "length":I
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .restart local v18    # "length":I
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    aget-byte v0, v10, v13

    .line 614
    .end local v9    # "txPowerLevel":I
    .local v0, "txPowerLevel":I
    move v9, v0

    move-object/from16 v4, v19

    move/from16 v5, v20

    goto/16 :goto_17b

    .line 610
    .end local v18    # "length":I
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .local v0, "length":I
    .restart local v4    # "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    .restart local v9    # "txPowerLevel":I
    :sswitch_129
    move/from16 v18, v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v0    # "length":I
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .restart local v18    # "length":I
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    new-instance v0, Ljava/lang/String;

    invoke-static {v10, v13, v1}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 611
    .end local v19    # "localName":Ljava/lang/String;
    .local v0, "localName":Ljava/lang/String;
    move-object v4, v0

    move/from16 v5, v20

    goto :goto_17b

    .line 577
    .end local v18    # "length":I
    .end local v20    # "advertiseFlag":I
    .local v0, "length":I
    .restart local v4    # "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    :sswitch_13c
    move/from16 v18, v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v0    # "length":I
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .restart local v18    # "length":I
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    const/16 v0, 0x10

    invoke-static {v10, v13, v1, v0, v2}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 583
    goto :goto_177

    .line 568
    .end local v18    # "length":I
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .restart local v0    # "length":I
    .restart local v4    # "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    :sswitch_148
    move/from16 v18, v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v0    # "length":I
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .restart local v18    # "length":I
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    const/4 v0, 0x4

    invoke-static {v10, v13, v1, v0, v2}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 574
    goto :goto_177

    .line 559
    .end local v18    # "length":I
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .restart local v0    # "length":I
    .restart local v4    # "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    :sswitch_153
    move/from16 v18, v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v0    # "length":I
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .restart local v18    # "length":I
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    invoke-static {v10, v13, v1, v15, v2}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 565
    goto :goto_177

    .line 555
    .end local v18    # "length":I
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .restart local v0    # "length":I
    .restart local v4    # "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    :sswitch_15d
    move/from16 v18, v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v0    # "length":I
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .restart local v18    # "length":I
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    aget-byte v0, v10, v13
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_165} :catch_16b

    and-int/lit16 v0, v0, 0xff

    .line 556
    .end local v20    # "advertiseFlag":I
    .local v0, "advertiseFlag":I
    move v5, v0

    move-object/from16 v4, v19

    goto :goto_17b

    .line 685
    .end local v0    # "advertiseFlag":I
    .end local v1    # "dataLength":I
    .end local v12    # "fieldType":I
    .end local v14    # "advertisingData":[B
    .end local v18    # "length":I
    .restart local v20    # "advertiseFlag":I
    :catch_16b
    move-exception v0

    move-object/from16 v17, v2

    move-object v14, v7

    move v15, v9

    move-object/from16 v16, v11

    move v12, v13

    move-object v11, v3

    move-object v13, v6

    goto/16 :goto_1f1

    .line 668
    .restart local v1    # "dataLength":I
    .restart local v12    # "fieldType":I
    .restart local v14    # "advertisingData":[B
    .restart local v18    # "length":I
    :goto_177
    move-object/from16 v4, v19

    move/from16 v5, v20

    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .restart local v4    # "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    :goto_17b
    add-int/2addr v1, v13

    .line 669
    .end local v12    # "fieldType":I
    .end local v13    # "currentPos":I
    .end local v14    # "advertisingData":[B
    .end local v18    # "length":I
    .local v1, "currentPos":I
    goto/16 :goto_29

    .line 685
    .end local v1    # "currentPos":I
    .restart local v13    # "currentPos":I
    :catch_17e
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v17, v2

    move-object v14, v7

    move v15, v9

    move-object/from16 v16, v11

    move v12, v13

    move-object v11, v3

    move-object v13, v6

    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    goto/16 :goto_1f1

    .end local v13    # "currentPos":I
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .restart local v4    # "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    .local v12, "currentPos":I
    :catch_18e
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v17, v2

    move-object v13, v6

    move-object v14, v7

    move v15, v9

    move-object/from16 v16, v11

    move-object v11, v3

    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    goto/16 :goto_1f1

    .line 541
    .end local v12    # "currentPos":I
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .restart local v1    # "currentPos":I
    .restart local v4    # "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    :cond_19d
    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    move v12, v1

    .line 671
    .end local v1    # "currentPos":I
    .restart local v12    # "currentPos":I
    :goto_1a2
    :try_start_1a2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1a6} :catch_1d9

    if-eqz v0, :cond_1ab

    .line 672
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_1ac

    .line 671
    :cond_1ab
    move-object v1, v2

    .line 674
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_1ac
    :try_start_1ac
    new-instance v0, Landroid/bluetooth/le/ScanRecord;
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1ae} :catch_1cf

    move-object v2, v3

    move-object v3, v6

    move-object v4, v7

    move v6, v9

    move-object v9, v11

    move-object/from16 v7, v19

    move/from16 v5, v20

    .end local v11    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .local v2, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v3, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local v4, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v5    # "advertiseFlag":I
    .local v6, "txPowerLevel":I
    .local v7, "localName":Ljava/lang/String;
    .local v9, "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    :try_start_1b7
    invoke-direct/range {v0 .. v10}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;Ljava/util/Map;Landroid/bluetooth/le/TransportDiscoveryData;[B)V
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1ba} :catch_1c1

    move-object v11, v2

    move-object v13, v3

    move-object v14, v4

    move v15, v6

    move-object/from16 v16, v9

    .end local v2    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v3    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .end local v4    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v5    # "advertiseFlag":I
    .end local v6    # "txPowerLevel":I
    .end local v7    # "localName":Ljava/lang/String;
    .end local v9    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    .local v11, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v13, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local v14, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local v15, "txPowerLevel":I
    .local v16, "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    return-object v0

    .line 685
    .end local v11    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v13    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .end local v14    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v15    # "txPowerLevel":I
    .end local v16    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .restart local v2    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v3    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .restart local v4    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v5    # "advertiseFlag":I
    .restart local v6    # "txPowerLevel":I
    .restart local v7    # "localName":Ljava/lang/String;
    .restart local v9    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    :catch_1c1
    move-exception v0

    move-object v11, v2

    move-object v13, v3

    move-object v14, v4

    move/from16 v20, v5

    move v15, v6

    move-object/from16 v19, v7

    move-object/from16 v16, v9

    move-object/from16 v17, v1

    .end local v2    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v3    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .end local v4    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v5    # "advertiseFlag":I
    .end local v6    # "txPowerLevel":I
    .end local v7    # "localName":Ljava/lang/String;
    .end local v9    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    .restart local v11    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v13    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .restart local v14    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v15    # "txPowerLevel":I
    .restart local v16    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    goto :goto_1f1

    .end local v13    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .end local v14    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v15    # "txPowerLevel":I
    .end local v16    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    .local v3, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v6, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local v7, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local v9, "txPowerLevel":I
    .local v11, "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    :catch_1cf
    move-exception v0

    move-object v13, v6

    move-object v14, v7

    move v15, v9

    move-object/from16 v16, v11

    move-object v11, v3

    move-object/from16 v17, v1

    .end local v3    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v6    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .end local v7    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v9    # "txPowerLevel":I
    .local v11, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v13    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .restart local v14    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v15    # "txPowerLevel":I
    .restart local v16    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    goto :goto_1f1

    .end local v1    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v13    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .end local v14    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v15    # "txPowerLevel":I
    .end local v16    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    .local v2, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v3    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v6    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .restart local v7    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v9    # "txPowerLevel":I
    .local v11, "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    :catch_1d9
    move-exception v0

    move-object v13, v6

    move-object v14, v7

    move v15, v9

    move-object/from16 v16, v11

    move-object v11, v3

    move-object/from16 v17, v2

    .end local v3    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v6    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .end local v7    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v9    # "txPowerLevel":I
    .local v11, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v13    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .restart local v14    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v15    # "txPowerLevel":I
    .restart local v16    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    goto :goto_1f1

    .end local v12    # "currentPos":I
    .end local v13    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .end local v14    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v15    # "txPowerLevel":I
    .end local v16    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    .end local v19    # "localName":Ljava/lang/String;
    .end local v20    # "advertiseFlag":I
    .local v1, "currentPos":I
    .restart local v3    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v4, "localName":Ljava/lang/String;
    .restart local v5    # "advertiseFlag":I
    .restart local v6    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .restart local v7    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v9    # "txPowerLevel":I
    .local v11, "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    :catch_1e3
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object v13, v6

    move-object v14, v7

    move v15, v9

    move-object/from16 v16, v11

    move-object v11, v3

    move v12, v1

    move-object/from16 v17, v2

    .end local v1    # "currentPos":I
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v3    # "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "advertiseFlag":I
    .end local v6    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .end local v7    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v9    # "txPowerLevel":I
    .local v11, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v12    # "currentPos":I
    .restart local v13    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .restart local v14    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v15    # "txPowerLevel":I
    .restart local v16    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    .local v17, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v19    # "localName":Ljava/lang/String;
    .restart local v20    # "advertiseFlag":I
    :goto_1f1
    move-object/from16 v18, v0

    .line 686
    .local v18, "e":Ljava/lang/Exception;
    sget-object v0, Landroid/bluetooth/le/ScanRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse scan record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance v0, Landroid/bluetooth/le/ScanRecord;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, -0x80000000

    move-object/from16 v10, p0

    invoke-direct/range {v0 .. v10}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;Ljava/util/Map;Landroid/bluetooth/le/TransportDiscoveryData;[B)V

    return-object v0

    :sswitch_data_220
    .sparse-switch
        0x1 -> :sswitch_15d
        0x2 -> :sswitch_153
        0x3 -> :sswitch_153
        0x4 -> :sswitch_148
        0x5 -> :sswitch_148
        0x6 -> :sswitch_13c
        0x7 -> :sswitch_13c
        0x8 -> :sswitch_129
        0x9 -> :sswitch_129
        0xa -> :sswitch_11a
        0x14 -> :sswitch_10f
        0x15 -> :sswitch_102
        0x16 -> :sswitch_d6
        0x1f -> :sswitch_ca
        0x20 -> :sswitch_d6
        0x21 -> :sswitch_d6
        0x26 -> :sswitch_b0
        0xff -> :sswitch_59
    .end sparse-switch
.end method

.method private static blacklist parseServiceSolicitationUuid([BIIILjava/util/List;)I
    .registers 7
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .line 747
    .local p4, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    nop

    :goto_1
    if-lez p2, :cond_11

    .line 748
    invoke-static {p0, p1, p3}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 749
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    sub-int/2addr p2, p3

    .line 751
    add-int/2addr p1, p3

    .line 752
    .end local v0    # "uuidBytes":[B
    goto :goto_1

    .line 753
    :cond_11
    return p1
.end method

.method private static blacklist parseServiceUuid([BIIILjava/util/List;)I
    .registers 7
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .line 731
    .local p4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    nop

    :goto_1
    if-lez p2, :cond_11

    .line 732
    invoke-static {p0, p1, p3}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 733
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    sub-int/2addr p2, p3

    .line 735
    add-int/2addr p1, p3

    .line 736
    .end local v0    # "uuidBytes":[B
    goto :goto_1

    .line 737
    :cond_11
    return p1
.end method


# virtual methods
.method public whitelist getAdvertiseFlags()I
    .registers 2

    .line 368
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public whitelist getAdvertisingDataMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertisingDataMap:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getBytes()[B
    .registers 2

    .line 464
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    return-object v0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .registers 2

    .line 439
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getManufacturerSpecificData()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getManufacturerSpecificData(I)[B
    .registers 3
    .param p1, "manufacturerId"    # I

    .line 402
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    .line 403
    const/4 v0, 0x0

    return-object v0

    .line 405
    :cond_6
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getServiceData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getServiceData(Landroid/os/ParcelUuid;)[B
    .registers 3
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;

    .line 419
    if-eqz p1, :cond_10

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    if-nez v0, :cond_7

    goto :goto_10

    .line 422
    :cond_7
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 420
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getServiceSolicitationUuids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getServiceUuids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTransportDiscoveryData()Landroid/bluetooth/le/TransportDiscoveryData;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 459
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mTransportDiscoveryData:Landroid/bluetooth/le/TransportDiscoveryData;

    return-object v0
.end method

.method public whitelist getTxPowerLevel()I
    .registers 2

    .line 433
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public blacklist matchesAnyField(Ljava/util/function/Predicate;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "[B>;)Z"
        }
    .end annotation

    .line 473
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<[B>;"
    const/4 v0, 0x0

    .line 474
    .local v0, "pos":I
    :goto_1
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 475
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    .line 476
    .local v1, "length":I
    if-nez v1, :cond_f

    .line 477
    goto :goto_24

    .line 479
    :cond_f
    iget-object v2, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    add-int v3, v0, v1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 480
    return v4

    .line 482
    :cond_20
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v2

    .line 483
    .end local v1    # "length":I
    goto :goto_1

    .line 484
    :cond_24
    :goto_24
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceSolicitationUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 712
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 714
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransportDiscoveryData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mTransportDiscoveryData:Landroid/bluetooth/le/TransportDiscoveryData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    return-object v0
.end method
