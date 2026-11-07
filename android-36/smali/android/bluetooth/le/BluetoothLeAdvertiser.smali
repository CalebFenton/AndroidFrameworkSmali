.class public final Landroid/bluetooth/le/BluetoothLeAdvertiser;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"


# static fields
.field private static final blacklist FLAGS_FIELD_BYTES:I = 0x3

.field private static final blacklist MANUFACTURER_SPECIFIC_DATA_LENGTH:I = 0x2

.field private static final blacklist MAX_LEGACY_ADVERTISING_DATA_BYTES:I = 0x1f

.field private static final blacklist OVERHEAD_BYTES_PER_FIELD:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdvertisingSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/le/AdvertisingSet;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mCallbackWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/AdvertisingSetCallback;",
            "Landroid/bluetooth/le/IAdvertisingSetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLegacyAdvertisers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/AdvertiseCallback;",
            "Landroid/bluetooth/le/AdvertisingSetCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdvertisingSets(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBluetoothAdapter(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/bluetooth/BluetoothAdapter;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackWrappers(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpostStartFailure(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostStartSuccess(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    const-class v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    .line 87
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 88
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAttributionSource:Landroid/content/AttributionSource;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method private static blacklist byteLength([B)I
    .registers 2
    .param p0, "array"    # [B

    .line 760
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p0

    :goto_5
    return v0
.end method

.method private static blacklist calculateUuidsSize(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .line 730
    .local p0, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    .line 731
    :cond_4
    const/4 v0, 0x0

    .line 732
    .local v0, "num16BitUuids":I
    const/4 v1, 0x0

    .line 733
    .local v1, "num32BitUuids":I
    const/4 v2, 0x0

    .line 734
    .local v2, "num128BitUuids":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 735
    .local v4, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 737
    :cond_20
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 738
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 740
    :cond_29
    add-int/lit8 v2, v2, 0x1

    .line 742
    .end local v4    # "uuid":Landroid/os/ParcelUuid;
    :goto_2b
    goto :goto_b

    .line 743
    :cond_2c
    const/4 v3, 0x0

    .line 745
    .local v3, "size":I
    if-eqz v0, :cond_34

    .line 746
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 749
    :cond_34
    if-eqz v1, :cond_3b

    .line 750
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 753
    :cond_3b
    if-eqz v2, :cond_42

    .line 754
    mul-int/lit8 v4, v2, 0x10

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 756
    :cond_42
    return v3
.end method

.method static synthetic blacklist lambda$postStartFailure$1(Landroid/bluetooth/le/AdvertiseCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p1, "error"    # I

    .line 882
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$postStartSetFailure$0(Landroid/bluetooth/le/AdvertisingSetCallback;I)V
    .registers 4
    .param p0, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p1, "error"    # I

    .line 877
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V

    return-void
.end method

.method static synthetic blacklist lambda$postStartSuccess$2(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .line 888
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method

.method private blacklist postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "error"    # I

    .line 882
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/le/AdvertiseCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 883
    return-void
.end method

.method private static blacklist postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V
    .registers 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p2, "error"    # I

    .line 877
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 878
    return-void
.end method

.method private blacklist postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .line 888
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 889
    return-void
.end method

.method private blacklist totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I
    .registers 11
    .param p1, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p2, "isFlagsIncluded"    # Z

    .line 696
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 698
    :cond_4
    if-eqz p2, :cond_7

    const/4 v0, 0x3

    .line 699
    .local v0, "size":I
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->calculateUuidsSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 700
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceSolicitationUuids()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->calculateUuidsSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 702
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getTransportDiscoveryData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/TransportDiscoveryData;

    .line 703
    .local v2, "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    invoke-virtual {v2}, Landroid/bluetooth/le/TransportDiscoveryData;->totalBytes()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 704
    .end local v2    # "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    goto :goto_21

    .line 705
    :cond_35
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 706
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 707
    .local v3, "uuid":Landroid/os/ParcelUuid;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 708
    .local v4, "serviceData":[B
    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->uuidToBytes(Landroid/os/ParcelUuid;)[B

    move-result-object v5

    array-length v5, v5

    .line 709
    .local v5, "uuidLen":I
    add-int/lit8 v6, v5, 0x2

    invoke-static {v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    .line 710
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;[B>;"
    .end local v3    # "uuid":Landroid/os/ParcelUuid;
    .end local v4    # "serviceData":[B
    .end local v5    # "uuidLen":I
    goto :goto_41

    .line 711
    :cond_67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_68
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_87

    .line 712
    nop

    .line 715
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 711
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 717
    .end local v1    # "i":I
    :cond_87
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 718
    add-int/lit8 v0, v0, 0x3

    .line 720
    :cond_8f
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 721
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getNameLengthForAdvertise()I

    move-result v1

    .line 722
    .local v1, "length":I
    if-ltz v1, :cond_a0

    .line 723
    add-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    .line 726
    .end local v1    # "length":I
    :cond_a0
    return v0
.end method


# virtual methods
.method public blacklist cleanup()V
    .registers 2

    .line 687
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 688
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 689
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 690
    return-void
.end method

.method public whitelist startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 5
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 116
    return-void
.end method

.method public whitelist startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 21
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .line 145
    move-object/from16 v1, p0

    move-object/from16 v10, p4

    iget-object v11, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    monitor-enter v11

    .line 146
    :try_start_7
    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 147
    if-eqz v10, :cond_fb

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->isConnectable()Z

    move-result v0

    .line 151
    .local v0, "isConnectable":Z
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->isDiscoverable()Z

    move-result v2

    move v12, v2

    .line 152
    .local v12, "isDiscoverable":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1f

    if-eqz v12, :cond_1f

    move v4, v3

    goto :goto_20

    :cond_1f
    move v4, v2

    :goto_20
    move v13, v4

    .line 153
    .local v13, "hasFlags":Z
    move-object/from16 v4, p2

    invoke-direct {v1, v4, v13}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v5

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_f6

    .line 154
    move-object/from16 v5, p3

    invoke-direct {v1, v5, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v2

    if-le v2, v6, :cond_35

    goto/16 :goto_f6

    .line 158
    :cond_35
    iget-object v2, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x3

    if-eqz v2, :cond_43

    .line 159
    invoke-direct {v1, v10, v6}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 160
    monitor-exit v11

    return-void

    .line 163
    :cond_43
    new-instance v2, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;-><init>()V

    move-object v14, v2

    .line 164
    .local v14, "parameters":Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    invoke-virtual {v14, v3}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setLegacyMode(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 165
    invoke-virtual {v14, v0}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 166
    invoke-virtual {v14, v12}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setDiscoverable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 167
    invoke-virtual {v14, v3}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setScannable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getOwnAddressType()I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setOwnAddressType(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v2

    const/4 v7, 0x2

    if-nez v2, :cond_69

    .line 170
    const/16 v2, 0x640

    invoke-virtual {v14, v2}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_80

    .line 171
    :cond_69
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v2

    if-ne v2, v3, :cond_75

    .line 172
    const/16 v2, 0x190

    invoke-virtual {v14, v2}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_80

    .line 173
    :cond_75
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v2

    if-ne v2, v7, :cond_80

    .line 174
    const/16 v2, 0xa0

    invoke-virtual {v14, v2}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 177
    :cond_80
    :goto_80
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v2

    if-nez v2, :cond_93

    .line 178
    sget-object v2, Landroid/bluetooth/le/BluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v6, "TxPower == ADVERTISE_TX_POWER_ULTRA_LOW"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/16 v2, -0x15

    invoke-virtual {v14, v2}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_c8

    .line 180
    :cond_93
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v2

    if-ne v2, v3, :cond_a6

    .line 181
    sget-object v2, Landroid/bluetooth/le/BluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v6, "TxPower == ADVERTISE_TX_POWER_LOW"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/16 v2, -0xf

    invoke-virtual {v14, v2}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_c8

    .line 183
    :cond_a6
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v2

    if-ne v2, v7, :cond_b8

    .line 184
    sget-object v2, Landroid/bluetooth/le/BluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v6, "TxPower == ADVERTISE_TX_POWER_MEDIUM"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v2, -0x7

    invoke-virtual {v14, v2}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_c8

    .line 186
    :cond_b8
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v2

    if-ne v2, v6, :cond_c8

    .line 187
    sget-object v2, Landroid/bluetooth/le/BluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v6, "TxPower == ADVERTISE_TX_POWER_HIGH"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v14, v3}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    .line 191
    :cond_c8
    :goto_c8
    const/4 v2, 0x0

    .line 192
    .local v2, "duration":I
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTimeout()I

    move-result v6

    move v15, v6

    .line 193
    .local v15, "timeoutMillis":I
    if-lez v15, :cond_da

    .line 194
    const/16 v6, 0xa

    if-ge v15, v6, :cond_d5

    goto :goto_d7

    :cond_d5
    div-int/lit8 v3, v15, 0xa

    :goto_d7
    move v2, v3

    move v7, v2

    goto :goto_db

    .line 193
    :cond_da
    move v7, v2

    .line 197
    .end local v2    # "duration":I
    .local v7, "duration":I
    :goto_db
    move-object/from16 v2, p1

    invoke-virtual {v1, v10, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrapOldCallback(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)Landroid/bluetooth/le/AdvertisingSetCallback;

    move-result-object v9

    .line 198
    .local v9, "wrapped":Landroid/bluetooth/le/AdvertisingSetCallback;
    iget-object v3, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    nop

    .line 200
    invoke-virtual {v14}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->build()Landroid/bluetooth/le/AdvertisingSetParameters;

    move-result-object v2

    .line 199
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v4

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;)V

    .line 208
    .end local v0    # "isConnectable":Z
    .end local v7    # "duration":I
    .end local v9    # "wrapped":Landroid/bluetooth/le/AdvertisingSetCallback;
    .end local v12    # "isDiscoverable":Z
    .end local v13    # "hasFlags":Z
    .end local v14    # "parameters":Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .end local v15    # "timeoutMillis":I
    monitor-exit v11

    .line 209
    return-void

    .line 155
    .restart local v0    # "isConnectable":Z
    .restart local v12    # "isDiscoverable":Z
    .restart local v13    # "hasFlags":Z
    :cond_f6
    :goto_f6
    invoke-direct {v1, v10, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 156
    monitor-exit v11

    return-void

    .line 148
    .end local v0    # "isConnectable":Z
    .end local v12    # "isDiscoverable":Z
    .end local v13    # "hasFlags":Z
    :cond_fb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .end local p1    # "settings":Landroid/bluetooth/le/AdvertiseSettings;
    .end local p2    # "advertiseData":Landroid/bluetooth/le/AdvertiseData;
    .end local p3    # "scanResponse":Landroid/bluetooth/le/AdvertiseData;
    .end local p4    # "callback":Landroid/bluetooth/le/AdvertiseCallback;
    throw v0

    .line 208
    .restart local p0    # "this":Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .restart local p1    # "settings":Landroid/bluetooth/le/AdvertiseSettings;
    .restart local p2    # "advertiseData":Landroid/bluetooth/le/AdvertiseData;
    .restart local p3    # "scanResponse":Landroid/bluetooth/le/AdvertiseData;
    .restart local p4    # "callback":Landroid/bluetooth/le/AdvertiseCallback;
    :catchall_103
    move-exception v0

    monitor-exit v11
    :try_end_105
    .catchall {:try_start_7 .. :try_end_105} :catchall_103

    throw v0
.end method

.method public whitelist startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/BluetoothGattServer;Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V
    .registers 30
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "duration"    # I
    .param p7, "maxExtendedAdvertisingEvents"    # I
    .param p8, "gattServer"    # Landroid/bluetooth/BluetoothGattServer;
    .param p9, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p10, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 548
    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 549
    if-eqz v13, :cond_185

    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->isConnectable()Z

    move-result v15

    .line 554
    .local v15, "isConnectable":Z
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->isDiscoverable()Z

    move-result v16

    .line 555
    .local v16, "isDiscoverable":Z
    const/4 v0, 0x0

    if-eqz v15, :cond_24

    if-eqz v16, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    move v2, v0

    .line 556
    .local v2, "hasFlags":Z
    :goto_25
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 557
    invoke-direct {v1, v4, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v3

    const/16 v6, 0x1f

    if-gt v3, v6, :cond_47

    .line 561
    invoke-direct {v1, v5, v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v3

    if-gt v3, v6, :cond_3f

    move-object/from16 v12, p5

    move/from16 v17, v2

    goto/16 :goto_b6

    .line 562
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Legacy scan response data too big"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Legacy advertising data too big"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_4f
    iget-object v3, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isLeCodedPhySupported()Z

    move-result v3

    .line 566
    .local v3, "supportCodedPhy":Z
    iget-object v6, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isLe2MPhySupported()Z

    move-result v6

    .line 567
    .local v6, "support2MPhy":Z
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->getPrimaryPhy()I

    move-result v7

    .line 568
    .local v7, "pphy":I
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->getSecondaryPhy()I

    move-result v10

    .line 569
    .local v10, "sphy":I
    const/4 v11, 0x3

    if-ne v7, v11, :cond_71

    if-eqz v3, :cond_69

    goto :goto_71

    .line 570
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unsupported primary PHY selected"

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_71
    :goto_71
    if-ne v10, v11, :cond_75

    if-eqz v3, :cond_7b

    :cond_75
    const/4 v11, 0x2

    if-ne v10, v11, :cond_83

    if-eqz v6, :cond_7b

    goto :goto_83

    .line 575
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unsupported secondary PHY selected"

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_83
    :goto_83
    iget-object v11, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->getLeMaximumAdvertisingDataLength()I

    move-result v11

    .line 579
    .local v11, "maxData":I
    invoke-direct {v1, v4, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v12

    if-gt v12, v11, :cond_17b

    .line 583
    invoke-direct {v1, v5, v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v12

    if-gt v12, v11, :cond_171

    .line 587
    move-object/from16 v12, p5

    move/from16 v17, v2

    .end local v2    # "hasFlags":Z
    .local v17, "hasFlags":Z
    invoke-direct {v1, v12, v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v2

    if-gt v2, v11, :cond_169

    .line 591
    iget-object v2, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v2

    .line 592
    .local v2, "supportPeriodic":Z
    if-eqz p4, :cond_b4

    if-eqz v2, :cond_aa

    goto :goto_b6

    .line 593
    :cond_aa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move/from16 v18, v2

    .end local v2    # "supportPeriodic":Z
    .local v18, "supportPeriodic":Z
    const-string v2, "Controller does not support LE Periodic Advertising"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    .end local v18    # "supportPeriodic":Z
    .restart local v2    # "supportPeriodic":Z
    :cond_b4
    move/from16 v18, v2

    .line 598
    .end local v2    # "supportPeriodic":Z
    .end local v3    # "supportCodedPhy":Z
    .end local v6    # "support2MPhy":Z
    .end local v7    # "pphy":I
    .end local v10    # "sphy":I
    .end local v11    # "maxData":I
    :goto_b6
    if-ltz v9, :cond_14e

    const/16 v2, 0xff

    if-gt v9, v2, :cond_14e

    .line 603
    if-eqz v9, :cond_cf

    iget-object v2, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 604
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isLeExtendedAdvertisingSupported()Z

    move-result v2

    if-eqz v2, :cond_c7

    goto :goto_cf

    .line 605
    :cond_c7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t use maxExtendedAdvertisingEvents with controller that doesn\'t support LE Extended Advertising"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_cf
    :goto_cf
    if-ltz v8, :cond_133

    const v2, 0xffff

    if-gt v8, v2, :cond_133

    .line 614
    iget-object v2, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothAdvertise()Landroid/bluetooth/IBluetoothAdvertise;

    move-result-object v2

    .line 615
    .local v2, "advertise":Landroid/bluetooth/IBluetoothAdvertise;
    const/4 v3, 0x4

    if-nez v2, :cond_ea

    .line 616
    sget-object v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v6, "Bluetooth Advertise is null"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {v14, v13, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    .line 619
    return-void

    .line 622
    :cond_ea
    invoke-virtual {v1, v13, v14}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v11

    .line 623
    .local v11, "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    iget-object v6, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v6, v13, v11}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_12b

    .line 629
    nop

    .line 637
    if-nez p8, :cond_fa

    goto :goto_fe

    :cond_fa
    :try_start_fa
    invoke-virtual/range {p8 .. p8}, Landroid/bluetooth/BluetoothGattServer;->getServerIf()I

    move-result v0

    :goto_fe
    move v10, v0

    iget-object v12, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_101
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_101} :catch_11c
    .catch Ljava/lang/SecurityException; {:try_start_fa .. :try_end_101} :catch_113

    .line 629
    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v18, v15

    move v15, v3

    move-object/from16 v3, p1

    .end local v15    # "isConnectable":Z
    .local v18, "isConnectable":Z
    :try_start_10a
    invoke-interface/range {v2 .. v12}, Landroid/bluetooth/IBluetoothAdvertise;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IIILandroid/bluetooth/le/IAdvertisingSetCallback;Landroid/content/AttributionSource;)V
    :try_end_10d
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_10d} :catch_111
    .catch Ljava/lang/SecurityException; {:try_start_10a .. :try_end_10d} :catch_10f

    .line 648
    nop

    .line 649
    return-void

    .line 645
    :catch_10f
    move-exception v0

    goto :goto_116

    .line 640
    :catch_111
    move-exception v0

    goto :goto_120

    .line 645
    .end local v18    # "isConnectable":Z
    .restart local v15    # "isConnectable":Z
    :catch_113
    move-exception v0

    move/from16 v18, v15

    .line 646
    .end local v15    # "isConnectable":Z
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v18    # "isConnectable":Z
    :goto_116
    iget-object v3, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    throw v0

    .line 640
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v18    # "isConnectable":Z
    .restart local v15    # "isConnectable":Z
    :catch_11c
    move-exception v0

    move/from16 v18, v15

    move v15, v3

    .line 641
    .end local v15    # "isConnectable":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18    # "isConnectable":Z
    :goto_120
    sget-object v3, Landroid/bluetooth/le/BluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v4, "Failed to start advertising set - "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    invoke-static {v14, v13, v15}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    .line 644
    return-void

    .line 624
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v18    # "isConnectable":Z
    .restart local v15    # "isConnectable":Z
    :cond_12b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback instance already associated with advertising"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    .end local v2    # "advertise":Landroid/bluetooth/IBluetoothAdvertise;
    .end local v11    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    :cond_133
    move/from16 v18, v15

    .line 611
    .end local v15    # "isConnectable":Z
    .restart local v18    # "isConnectable":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    .end local v18    # "isConnectable":Z
    .restart local v15    # "isConnectable":Z
    :cond_14e
    move/from16 v18, v15

    .line 599
    .end local v15    # "isConnectable":Z
    .restart local v18    # "isConnectable":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxExtendedAdvertisingEvents out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    .end local v18    # "isConnectable":Z
    .restart local v3    # "supportCodedPhy":Z
    .restart local v6    # "support2MPhy":Z
    .restart local v7    # "pphy":I
    .restart local v10    # "sphy":I
    .local v11, "maxData":I
    .restart local v15    # "isConnectable":Z
    :cond_169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Periodic advertising data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    .end local v17    # "hasFlags":Z
    .local v2, "hasFlags":Z
    :cond_171
    move/from16 v17, v2

    .end local v2    # "hasFlags":Z
    .restart local v17    # "hasFlags":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scan response data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    .end local v17    # "hasFlags":Z
    .restart local v2    # "hasFlags":Z
    :cond_17b
    move/from16 v17, v2

    .end local v2    # "hasFlags":Z
    .restart local v17    # "hasFlags":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Advertising data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    .end local v3    # "supportCodedPhy":Z
    .end local v6    # "support2MPhy":Z
    .end local v7    # "pphy":I
    .end local v10    # "sphy":I
    .end local v11    # "maxData":I
    .end local v15    # "isConnectable":Z
    .end local v16    # "isDiscoverable":Z
    .end local v17    # "hasFlags":Z
    :cond_185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;)V
    .registers 19
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "duration"    # I
    .param p7, "maxExtendedAdvertisingEvents"    # I
    .param p8, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 415
    new-instance v9, Landroid/os/Handler;

    .line 424
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 415
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    .line 425
    return-void
.end method

.method public whitelist startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V
    .registers 21
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "duration"    # I
    .param p7, "maxExtendedAdvertisingEvents"    # I
    .param p8, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p9, "handler"    # Landroid/os/Handler;

    .line 476
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/BluetoothGattServer;Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    .line 487
    return-void
.end method

.method public whitelist startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .registers 17
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 306
    new-instance v9, Landroid/os/Handler;

    .line 315
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 306
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    .line 316
    return-void
.end method

.method public whitelist startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V
    .registers 18
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "periodicParameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .param p5, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p6, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p7, "handler"    # Landroid/os/Handler;

    .line 358
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    .line 368
    return-void
.end method

.method public whitelist stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .line 255
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    monitor-enter v0

    .line 256
    if-eqz p1, :cond_1e

    .line 259
    :try_start_5
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 260
    .local v1, "wrapper":Landroid/bluetooth/le/AdvertisingSetCallback;
    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 262
    :cond_11
    invoke-virtual {p0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetCallback;)V

    .line 264
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    nop

    .end local v1    # "wrapper":Landroid/bluetooth/le/AdvertisingSetCallback;
    monitor-exit v0

    .line 266
    return-void

    .line 265
    :catchall_1c
    move-exception v1

    goto :goto_26

    .line 257
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .end local p1    # "callback":Landroid/bluetooth/le/AdvertiseCallback;
    throw v1

    .line 265
    .restart local p0    # "this":Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .restart local p1    # "callback":Landroid/bluetooth/le/AdvertiseCallback;
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_1c

    throw v1
.end method

.method public whitelist stopAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 659
    if-eqz p1, :cond_2c

    .line 663
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 664
    .local v0, "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    if-nez v0, :cond_d

    .line 665
    return-void

    .line 668
    :cond_d
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothAdvertise()Landroid/bluetooth/IBluetoothAdvertise;

    move-result-object v1

    .line 669
    .local v1, "advertise":Landroid/bluetooth/IBluetoothAdvertise;
    if-nez v1, :cond_1d

    .line 670
    sget-object v2, Landroid/bluetooth/le/BluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v3, "Bluetooth Advertise is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void

    .line 674
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v0, v2}, Landroid/bluetooth/IBluetoothAdvertise;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;Landroid/content/AttributionSource;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23

    .line 677
    goto :goto_2b

    .line 675
    :catch_23
    move-exception v2

    .line 676
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/le/BluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v4, "Failed to stop advertising - "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 678
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void

    .line 660
    .end local v0    # "wrapped":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .end local v1    # "advertise":Landroid/bluetooth/IBluetoothAdvertise;
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertisingSetCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 765
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    invoke-direct {v0, p0, p2, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;)V

    return-object v0
.end method

.method blacklist wrapOldCallback(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)Landroid/bluetooth/le/AdvertisingSetCallback;
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .line 216
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-object v0
.end method
