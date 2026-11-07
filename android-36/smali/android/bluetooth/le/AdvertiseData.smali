.class public final Landroid/bluetooth/le/AdvertiseData;
.super Ljava/lang/Object;
.source "AdvertiseData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/AdvertiseData$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/AdvertiseData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIncludeDeviceName:Z

.field private final blacklist mIncludeTxPowerLevel:Z

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
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 203
    new-instance v0, Landroid/bluetooth/le/AdvertiseData$1;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZ)V
    .registers 8
    .param p6, "includeTxPowerLevel"    # Z
    .param p7, "includeDeviceName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/TransportDiscoveryData;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;ZZ)V"
        }
    .end annotation

    .line 63
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p3, "transportDiscoveryData":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/TransportDiscoveryData;>;"
    .local p4, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p5, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    .line 65
    iput-object p2, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceSolicitationUuids:Ljava/util/List;

    .line 66
    iput-object p3, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:Ljava/util/List;

    .line 67
    iput-object p4, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 68
    iput-object p5, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    .line 69
    iput-boolean p6, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    .line 70
    iput-boolean p7, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZLandroid/bluetooth/le/AdvertiseData-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/bluetooth/le/AdvertiseData;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 138
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 139
    return v0

    .line 141
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_56

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_56

    .line 144
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/bluetooth/le/AdvertiseData;

    .line 145
    .local v2, "other":Landroid/bluetooth/le/AdvertiseData;
    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    iget-object v4, v2, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceSolicitationUuids:Ljava/util/List;

    iget-object v4, v2, Landroid/bluetooth/le/AdvertiseData;->mServiceSolicitationUuids:Ljava/util/List;

    .line 146
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:Ljava/util/List;

    iget-object v4, v2, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:Ljava/util/List;

    .line 147
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    iget-object v4, v2, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 148
    invoke-static {v3, v4}, Landroid/bluetooth/le/BluetoothLeUtils;->equals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    iget-object v4, v2, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    .line 150
    invoke-static {v3, v4}, Landroid/bluetooth/le/BluetoothLeUtils;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    iget-boolean v4, v2, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    if-ne v3, v4, :cond_54

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    iget-boolean v4, v2, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    if-ne v3, v4, :cond_54

    goto :goto_55

    :cond_54
    move v0, v1

    .line 145
    :goto_55
    return v0

    .line 142
    .end local v2    # "other":Landroid/bluetooth/le/AdvertiseData;
    :cond_56
    :goto_56
    return v1
.end method

.method public whitelist getIncludeDeviceName()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    return v0
.end method

.method public whitelist getIncludeTxPowerLevel()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    return v0
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

    .line 104
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

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

    .line 109
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

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

    .line 87
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceSolicitationUuids:Ljava/util/List;

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

    .line 78
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTransportDiscoveryData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/TransportDiscoveryData;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:Ljava/util/List;

    if-nez v0, :cond_9

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 96
    :cond_9
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 125
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceSolicitationUuids:Ljava/util/List;

    iget-object v2, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    iget-boolean v5, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    .line 131
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    .line 132
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 125
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertiseData [mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceSolicitationUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceSolicitationUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransportDiscoveryData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 164
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    .line 166
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIncludeTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIncludeDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 181
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 182
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceSolicitationUuids:Ljava/util/List;

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceSolicitationUuids:Ljava/util/List;

    .line 183
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/ParcelUuid;

    .line 182
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 186
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 189
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_35
    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 191
    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 194
    .end local v0    # "i":I
    :cond_54
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 196
    .local v1, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 197
    iget-object v2, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 198
    .end local v1    # "uuid":Landroid/os/ParcelUuid;
    goto :goto_67

    .line 199
    :cond_82
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 200
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 201
    return-void
.end method
