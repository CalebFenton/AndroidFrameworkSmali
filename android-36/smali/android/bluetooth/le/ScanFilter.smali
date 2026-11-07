.class public final Landroid/bluetooth/le/ScanFilter;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanFilter$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EMPTY:Landroid/bluetooth/le/ScanFilter;


# instance fields
.field private final blacklist mAddressType:I

.field private final blacklist mAdvertisingData:[B

.field private final blacklist mAdvertisingDataMask:[B

.field private blacklist mAdvertisingDataType:I

.field private final blacklist mDeviceAddress:Ljava/lang/String;

.field private final blacklist mDeviceName:Ljava/lang/String;

.field private final blacklist mIrk:[B

.field private final blacklist mManufacturerData:[B

.field private final blacklist mManufacturerDataMask:[B

.field private final blacklist mManufacturerId:I

.field private final blacklist mServiceData:[B

.field private final blacklist mServiceDataMask:[B

.field private final blacklist mServiceDataUuid:Landroid/os/ParcelUuid;

.field private final blacklist mServiceSolicitationUuid:Landroid/os/ParcelUuid;

.field private final blacklist mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

.field private final blacklist mServiceUuid:Landroid/os/ParcelUuid;

.field private final blacklist mServiceUuidMask:Landroid/os/ParcelUuid;

.field private final blacklist mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/le/ScanFilter;->EMPTY:Landroid/bluetooth/le/ScanFilter;

    .line 219
    new-instance v0, Landroid/bluetooth/le/ScanFilter$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BI[BI[B[BLandroid/bluetooth/le/TransportBlockFilter;)V
    .registers 35
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "uuidMask"    # Landroid/os/ParcelUuid;
    .param p5, "solicitationUuid"    # Landroid/os/ParcelUuid;
    .param p6, "solicitationUuidMask"    # Landroid/os/ParcelUuid;
    .param p7, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p8, "serviceData"    # [B
    .param p9, "serviceDataMask"    # [B
    .param p10, "manufacturerId"    # I
    .param p11, "manufacturerData"    # [B
    .param p12, "manufacturerDataMask"    # [B
    .param p13, "addressType"    # I
    .param p14, "irk"    # [B
    .param p15, "advertisingDataType"    # I
    .param p16, "advertisingData"    # [B
    .param p17, "advertisingDataMask"    # [B
    .param p18, "transportBlockFilter"    # Landroid/bluetooth/le/TransportBlockFilter;

    .line 109
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v1, -0x1

    iput v1, v0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    .line 110
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    .line 111
    move-object/from16 v2, p3

    iput-object v2, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 112
    move-object/from16 v3, p4

    iput-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 113
    move-object/from16 v4, p5

    iput-object v4, v0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    .line 114
    move-object/from16 v5, p6

    iput-object v5, v0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    .line 115
    move-object/from16 v6, p2

    iput-object v6, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 116
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 117
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    .line 118
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    .line 119
    move/from16 v10, p10

    iput v10, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    .line 120
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    .line 121
    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    .line 122
    move/from16 v13, p13

    iput v13, v0, Landroid/bluetooth/le/ScanFilter;->mAddressType:I

    .line 123
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/bluetooth/le/ScanFilter;->mIrk:[B

    .line 124
    move/from16 v15, p15

    iput v15, v0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    .line 125
    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    .line 126
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    .line 127
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/bluetooth/le/ScanFilter;->mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;

    .line 128
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BI[BI[B[BLandroid/bluetooth/le/TransportBlockFilter;Landroid/bluetooth/le/ScanFilter-IA;)V
    .registers 20

    invoke-direct/range {p0 .. p18}, Landroid/bluetooth/le/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BI[BI[B[BLandroid/bluetooth/le/TransportBlockFilter;)V

    return-void
.end method

.method static blacklist matchesPartialData([B[B[B)Z
    .registers 9
    .param p0, "data"    # [B
    .param p1, "dataMask"    # [B
    .param p2, "parsedData"    # [B

    .line 578
    const/4 v0, 0x0

    if-eqz p2, :cond_2f

    array-length v1, p2

    array-length v2, p0

    if-ge v1, v2, :cond_8

    goto :goto_2f

    .line 581
    :cond_8
    const/4 v1, 0x1

    if-nez p1, :cond_1a

    .line 582
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, p0

    if-ge v2, v3, :cond_19

    .line 583
    aget-byte v3, p2, v2

    aget-byte v4, p0, v2

    if-eq v3, v4, :cond_16

    .line 584
    return v0

    .line 582
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 587
    .end local v2    # "i":I
    :cond_19
    return v1

    .line 589
    :cond_1a
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1b
    array-length v3, p0

    if-ge v2, v3, :cond_2e

    .line 590
    aget-byte v3, p1, v2

    aget-byte v4, p2, v2

    and-int/2addr v3, v4

    aget-byte v4, p1, v2

    aget-byte v5, p0, v2

    and-int/2addr v4, v5

    if-eq v3, v4, :cond_2b

    .line 591
    return v0

    .line 589
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 594
    .end local v2    # "i":I
    :cond_2e
    return v1

    .line 579
    :cond_2f
    :goto_2f
    return v0
.end method

.method private static blacklist matchesServiceSolicitationUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z
    .registers 10
    .param p0, "solicitationUuid"    # Landroid/os/ParcelUuid;
    .param p1, "parcelSolicitationUuidMask"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)Z"
        }
    .end annotation

    .line 554
    .local p2, "solicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 555
    return v0

    .line 557
    :cond_4
    const/4 v1, 0x0

    if-nez p2, :cond_8

    .line 558
    return v1

    .line 561
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 563
    .local v3, "parcelSolicitationUuid":Landroid/os/ParcelUuid;
    if-nez p1, :cond_1c

    .line 564
    const/4 v4, 0x0

    goto :goto_20

    .line 565
    :cond_1c
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    :goto_20
    nop

    .line 566
    .local v4, "solicitationUuidMask":Ljava/util/UUID;
    nop

    .line 567
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 569
    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    .line 566
    invoke-static {v5, v4, v6}, Landroid/bluetooth/le/ScanFilter;->matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 570
    return v0

    .line 572
    .end local v3    # "parcelSolicitationUuid":Landroid/os/ParcelUuid;
    .end local v4    # "solicitationUuidMask":Ljava/util/UUID;
    :cond_31
    goto :goto_c

    .line 573
    :cond_32
    return v1
.end method

.method private static blacklist matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 4
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "mask"    # Ljava/util/UUID;
    .param p2, "data"    # Ljava/util/UUID;

    .line 546
    invoke-static {p2, p0, p1}, Landroid/bluetooth/le/BluetoothLeUtils;->maskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public static blacklist matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z
    .registers 10
    .param p0, "uuid"    # Landroid/os/ParcelUuid;
    .param p1, "parcelUuidMask"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)Z"
        }
    .end annotation

    .line 528
    .local p2, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 529
    return v0

    .line 531
    :cond_4
    const/4 v1, 0x0

    if-nez p2, :cond_8

    .line 532
    return v1

    .line 535
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 536
    .local v3, "parcelUuid":Landroid/os/ParcelUuid;
    if-nez p1, :cond_1c

    const/4 v4, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    .line 537
    .local v4, "uuidMask":Ljava/util/UUID;
    :goto_20
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v5, v4, v6}, Landroid/bluetooth/le/ScanFilter;->matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 538
    return v0

    .line 540
    .end local v3    # "parcelUuid":Landroid/os/ParcelUuid;
    .end local v4    # "uuidMask":Ljava/util/UUID;
    :cond_2f
    goto :goto_c

    .line 541
    :cond_30
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 657
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 658
    return v0

    .line 660
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_b3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_b3

    .line 663
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/bluetooth/le/ScanFilter;

    .line 664
    .local v2, "other":Landroid/bluetooth/le/ScanFilter;
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 665
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    iget v4, v2, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    if-ne v3, v4, :cond_b1

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    .line 667
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    .line 668
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 669
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    .line 670
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    .line 671
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 672
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 673
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    .line 674
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    .line 675
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    iget v4, v2, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    if-ne v3, v4, :cond_b1

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    .line 677
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    .line 678
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;

    .line 679
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanFilter;->getTransportBlockFilter()Landroid/bluetooth/le/TransportBlockFilter;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    goto :goto_b2

    :cond_b1
    move v0, v1

    .line 664
    :goto_b2
    return v0

    .line 661
    .end local v2    # "other":Landroid/bluetooth/le/ScanFilter;
    :cond_b3
    :goto_b3
    return v1
.end method

.method public whitelist getAddressType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 365
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mAddressType:I

    return v0
.end method

.method public whitelist getAdvertisingData()[B
    .registers 2

    .line 427
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    return-object v0
.end method

.method public whitelist getAdvertisingDataMask()[B
    .registers 2

    .line 432
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    return-object v0
.end method

.method public whitelist getAdvertisingDataType()I
    .registers 2

    .line 422
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    return v0
.end method

.method public whitelist getDeviceAddress()Ljava/lang/String;
    .registers 2

    .line 359
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .registers 2

    .line 331
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIrk()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 372
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mIrk:[B

    return-object v0
.end method

.method public whitelist getManufacturerData()[B
    .registers 2

    .line 397
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    return-object v0
.end method

.method public whitelist getManufacturerDataMask()[B
    .registers 2

    .line 402
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    return-object v0
.end method

.method public whitelist getManufacturerId()I
    .registers 2

    .line 392
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    return v0
.end method

.method public whitelist getServiceData()[B
    .registers 2

    .line 377
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    return-object v0
.end method

.method public whitelist getServiceDataMask()[B
    .registers 2

    .line 382
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    return-object v0
.end method

.method public whitelist getServiceDataUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 387
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public whitelist getServiceSolicitationUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 348
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public whitelist getServiceSolicitationUuidMask()Landroid/os/ParcelUuid;
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public whitelist getServiceUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 337
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public whitelist getServiceUuidMask()Landroid/os/ParcelUuid;
    .registers 2

    .line 342
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public whitelist getTransportBlockFilter()Landroid/bluetooth/le/TransportBlockFilter;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 413
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 19

    .line 636
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    iget-object v2, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    iget v3, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    .line 639
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    .line 640
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    .line 641
    invoke-static {v5}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v7, v0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    .line 643
    invoke-static {v7}, Ljava/util/Arrays;->hashCode([B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    .line 644
    invoke-static {v8}, Ljava/util/Arrays;->hashCode([B)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v10, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    iget-object v11, v0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    iget-object v12, v0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    iget v13, v0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    .line 649
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    .line 650
    invoke-static {v14}, Ljava/util/Arrays;->hashCode([B)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    .line 651
    invoke-static {v15}, Ljava/util/Arrays;->hashCode([B)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/bluetooth/le/ScanFilter;->mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;

    move-object/from16 v17, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    .line 636
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public blacklist isAllFieldsEmpty()Z
    .registers 2

    .line 688
    sget-object v0, Landroid/bluetooth/le/ScanFilter;->EMPTY:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/le/ScanFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist matches(Landroid/bluetooth/le/ScanResult;)Z
    .registers 8
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .line 440
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 441
    return v0

    .line 443
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 445
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_1b

    if-eqz v1, :cond_1a

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 446
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 447
    :cond_1a
    return v0

    .line 450
    :cond_1b
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    .line 453
    .local v2, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    if-nez v2, :cond_3a

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-nez v3, :cond_39

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v3, :cond_39

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    if-nez v3, :cond_39

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    if-nez v3, :cond_39

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    if-nez v3, :cond_39

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    if-eqz v3, :cond_3a

    .line 460
    :cond_39
    return v0

    .line 464
    :cond_3a
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v3, :cond_4b

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 465
    return v0

    .line 469
    :cond_4b
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 471
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v5

    .line 470
    invoke-static {v3, v4, v5}, Landroid/bluetooth/le/ScanFilter;->matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 472
    return v0

    .line 476
    :cond_5e
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    if-eqz v3, :cond_71

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    .line 480
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getServiceSolicitationUuids()Ljava/util/List;

    move-result-object v5

    .line 477
    invoke-static {v3, v4, v5}, Landroid/bluetooth/le/ScanFilter;->matchesServiceSolicitationUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_71

    .line 481
    return v0

    .line 485
    :cond_71
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v3, :cond_86

    .line 486
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    iget-object v5, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 487
    invoke-virtual {v2, v5}, Landroid/bluetooth/le/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    move-result-object v5

    .line 486
    invoke-static {v3, v4, v5}, Landroid/bluetooth/le/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v3

    if-nez v3, :cond_86

    .line 488
    return v0

    .line 493
    :cond_86
    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    if-ltz v3, :cond_9f

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    if-eqz v3, :cond_9f

    .line 494
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    iget v5, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    .line 497
    invoke-virtual {v2, v5}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object v5

    .line 494
    invoke-static {v3, v4, v5}, Landroid/bluetooth/le/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v3

    if-nez v3, :cond_9f

    .line 498
    return v0

    .line 503
    :cond_9f
    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    if-lez v3, :cond_c0

    .line 504
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getAdvertisingDataMap()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 505
    .local v3, "advertisingData":[B
    if-eqz v3, :cond_bf

    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    iget-object v5, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    .line 506
    invoke-static {v4, v5, v3}, Landroid/bluetooth/le/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v4

    if-nez v4, :cond_c0

    .line 508
    :cond_bf
    return v0

    .line 513
    .end local v3    # "advertisingData":[B
    :cond_c0
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;

    if-eqz v3, :cond_cd

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/le/TransportBlockFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result v3

    if-nez v3, :cond_cd

    .line 514
    return v0

    .line 518
    :cond_cd
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothLeScanFilter [mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUuidMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceSolicitationUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceSolicitationUuidMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceDataUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 612
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    .line 614
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    .line 616
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    .line 620
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    .line 622
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvertisingDataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvertisingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    .line 626
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvertisingDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    .line 628
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransportBlockFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 137
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 139
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 141
    :cond_15
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-nez v0, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 143
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 145
    :cond_28
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_2e

    move v0, v2

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_4e

    .line 147
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-nez v0, :cond_41

    move v0, v2

    goto :goto_42

    :cond_41
    move v0, v1

    :goto_42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_4e

    .line 150
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 153
    :cond_4e
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_54

    move v0, v2

    goto :goto_55

    :cond_54
    move v0, v1

    :goto_55
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_74

    .line 155
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 156
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    if-nez v0, :cond_67

    move v0, v2

    goto :goto_68

    :cond_67
    move v0, v1

    :goto_68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_74

    .line 158
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 161
    :cond_74
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_7a

    move v0, v2

    goto :goto_7b

    :cond_7a
    move v0, v1

    :goto_7b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_b9

    .line 163
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    if-nez v0, :cond_8d

    move v0, v2

    goto :goto_8e

    :cond_8d
    move v0, v1

    :goto_8e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    if-eqz v0, :cond_b9

    .line 166
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 169
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    if-nez v0, :cond_a6

    move v0, v2

    goto :goto_a7

    :cond_a6
    move v0, v1

    :goto_a7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    if-eqz v0, :cond_b9

    .line 171
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 176
    :cond_b9
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    if-nez v0, :cond_c4

    move v0, v2

    goto :goto_c5

    :cond_c4
    move v0, v1

    :goto_c5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    if-eqz v0, :cond_f0

    .line 179
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 182
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    if-nez v0, :cond_dd

    move v0, v2

    goto :goto_de

    :cond_dd
    move v0, v1

    :goto_de
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    if-eqz v0, :cond_f0

    .line 184
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 190
    :cond_f0
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_112

    .line 191
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mIrk:[B

    if-nez v0, :cond_ff

    move v0, v2

    goto :goto_100

    :cond_ff
    move v0, v1

    :goto_100
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mIrk:[B

    if-eqz v0, :cond_112

    .line 194
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mIrk:[B

    const/16 v3, 0x10

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 199
    :cond_112
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    if-nez v0, :cond_11d

    move v0, v2

    goto :goto_11e

    :cond_11d
    move v0, v1

    :goto_11e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    if-eqz v0, :cond_149

    .line 202
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 205
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    if-nez v0, :cond_136

    move v0, v2

    goto :goto_137

    :cond_136
    move v0, v1

    :goto_137
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    if-eqz v0, :cond_149

    .line 207
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 212
    :cond_149
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;

    if-nez v0, :cond_14e

    move v1, v2

    :cond_14e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;

    if-eqz v0, :cond_15a

    .line 214
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mTransportBlockFilter:Landroid/bluetooth/le/TransportBlockFilter;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    :cond_15a
    return-void
.end method
