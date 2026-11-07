.class public final Landroid/bluetooth/le/AdvertiseData$Builder;
.super Ljava/lang/Object;
.source "AdvertiseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIncludeDeviceName:Z

.field private blacklist mIncludeTxPowerLevel:Z

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

.field private final blacklist mTransportDiscoveryData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/TransportDiscoveryData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceUuids:Ljava/util/List;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceSolicitationUuids:Ljava/util/List;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mTransportDiscoveryData:Ljava/util/List;

    .line 256
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 257
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public whitelist addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;
    .registers 6
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerSpecificData"    # [B

    .line 336
    if-ltz p1, :cond_12

    .line 339
    if-eqz p2, :cond_a

    .line 342
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    return-object p0

    .line 340
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "manufacturerSpecificData is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid manufacturerId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;
    .registers 5
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B

    .line 299
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 302
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-object p0

    .line 300
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceDataUuid or serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addServiceSolicitationUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;
    .registers 4
    .param p1, "serviceSolicitationUuid"    # Landroid/os/ParcelUuid;

    .line 283
    if-eqz p1, :cond_8

    .line 286
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceSolicitationUuids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    return-object p0

    .line 284
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceSolicitationUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;
    .registers 4
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;

    .line 268
    if-eqz p1, :cond_8

    .line 271
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceUuids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-object p0

    .line 269
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addTransportDiscoveryData(Landroid/bluetooth/le/TransportDiscoveryData;)Landroid/bluetooth/le/AdvertiseData$Builder;
    .registers 4
    .param p1, "transportDiscoveryData"    # Landroid/bluetooth/le/TransportDiscoveryData;

    .line 316
    if-eqz p1, :cond_8

    .line 319
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mTransportDiscoveryData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    return-object p0

    .line 317
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transportDiscoveryData is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/bluetooth/le/AdvertiseData;
    .registers 10

    .line 363
    new-instance v0, Landroid/bluetooth/le/AdvertiseData;

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceUuids:Ljava/util/List;

    iget-object v2, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceSolicitationUuids:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mTransportDiscoveryData:Ljava/util/List;

    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mManufacturerSpecificData:Landroid/util/SparseArray;

    iget-object v5, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceData:Ljava/util/Map;

    iget-boolean v6, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mIncludeTxPowerLevel:Z

    iget-boolean v7, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mIncludeDeviceName:Z

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/bluetooth/le/AdvertiseData;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZLandroid/bluetooth/le/AdvertiseData-IA;)V

    return-object v0
.end method

.method public whitelist setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;
    .registers 2
    .param p1, "includeDeviceName"    # Z

    .line 357
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mIncludeDeviceName:Z

    .line 358
    return-object p0
.end method

.method public whitelist setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;
    .registers 2
    .param p1, "includeTxPowerLevel"    # Z

    .line 351
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mIncludeTxPowerLevel:Z

    .line 352
    return-object p0
.end method
