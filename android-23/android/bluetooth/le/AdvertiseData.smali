.class public final Landroid/bluetooth/le/AdvertiseData;
.super Ljava/lang/Object;
.source "AdvertiseData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/AdvertiseData$Builder;,
        Landroid/bluetooth/le/AdvertiseData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/AdvertiseData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIncludeDeviceName:Z

.field private final mIncludeTxPowerLevel:Z

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 176
    new-instance v0, Landroid/bluetooth/le/AdvertiseData$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseData$1;-><init>()V

    #@5
    .line 175
    sput-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZ)V
    .locals 0
    .param p4, "includeTxPowerLevel"    # Z
    .param p5, "includeDeviceName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;ZZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 51
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p3, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    #@5
    .line 57
    iput-object p2, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    #@7
    .line 58
    iput-object p3, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    #@9
    .line 59
    iput-boolean p4, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    #@b
    .line 60
    iput-boolean p5, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    #@d
    .line 55
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZLandroid/bluetooth/le/AdvertiseData;)V
    .locals 0
    .param p1, "serviceUuids"    # Ljava/util/List;
    .param p2, "manufacturerData"    # Landroid/util/SparseArray;
    .param p3, "serviceData"    # Ljava/util/Map;
    .param p4, "includeTxPowerLevel"    # Z
    .param p5, "includeDeviceName"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/bluetooth/le/AdvertiseData;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZ)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 139
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 114
    if-ne p0, p1, :cond_0

    #@4
    .line 115
    return v1

    #@5
    .line 117
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    .line 118
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 120
    check-cast v0, Landroid/bluetooth/le/AdvertiseData;

    #@15
    .line 121
    .local v0, "other":Landroid/bluetooth/le/AdvertiseData;
    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    #@17
    iget-object v4, v0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    #@19
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_4

    #@1f
    .line 122
    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    #@21
    iget-object v4, v0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    #@23
    invoke-static {v3, v4}, Landroid/bluetooth/le/BluetoothLeUtils;->equals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    #@26
    move-result v3

    #@27
    .line 121
    if-eqz v3, :cond_4

    #@29
    .line 123
    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    #@2b
    iget-object v4, v0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    #@2d
    invoke-static {v3, v4}, Landroid/bluetooth/le/BluetoothLeUtils;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    #@30
    move-result v3

    #@31
    .line 121
    if-eqz v3, :cond_4

    #@33
    .line 124
    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    #@35
    iget-boolean v4, v0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    #@37
    if-ne v3, v4, :cond_4

    #@39
    .line 125
    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    #@3b
    iget-boolean v4, v0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    #@3d
    if-ne v3, v4, :cond_3

    #@3f
    .line 121
    :goto_0
    return v1

    #@40
    :cond_3
    move v1, v2

    #@41
    .line 125
    goto :goto_0

    #@42
    :cond_4
    move v1, v2

    #@43
    .line 121
    goto :goto_0
.end method

.method public getIncludeDeviceName()Z
    .locals 1

    #@0
    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    #@2
    return v0
.end method

.method public getIncludeTxPowerLevel()Z
    .locals 1

    #@0
    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    #@2
    return v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 105
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    #@f
    const/4 v2, 0x2

    #@10
    aput-object v1, v0, v2

    #@12
    .line 106
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    #@14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    #@1d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@20
    move-result-object v1

    #@21
    const/4 v2, 0x4

    #@22
    aput-object v1, v0, v2

    #@24
    .line 105
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@27
    move-result v0

    #@28
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "AdvertiseData [mServiceUuids="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", mManufacturerSpecificData="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 131
    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    #@1b
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 131
    const-string/jumbo v1, ", mServiceData="

    #@26
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 132
    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    #@2c
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 133
    const-string/jumbo v1, ", mIncludeTxPowerLevel="

    #@37
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 133
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    #@3d
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 133
    const-string/jumbo v1, ", mIncludeDeviceName="

    #@44
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 134
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    #@4a
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 134
    const-string/jumbo v1, "]"

    #@51
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 144
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    #@4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@7
    .line 147
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@c
    move-result v4

    #@d
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 148
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@16
    move-result v4

    #@17
    if-ge v1, v4, :cond_1

    #@19
    .line 149
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@1e
    move-result v4

    #@1f
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 150
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, [B

    #@2a
    .line 151
    .local v0, "data":[B
    if-nez v0, :cond_0

    #@2c
    .line 152
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 148
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 154
    :cond_0
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 155
    array-length v4, v0

    #@36
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@3c
    goto :goto_1

    #@3d
    .line 159
    .end local v0    # "data":[B
    :cond_1
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    #@3f
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@42
    move-result v4

    #@43
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 160
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    #@48
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@4b
    move-result-object v4

    #@4c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4f
    move-result-object v3

    #@50
    .local v3, "uuid$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@53
    move-result v4

    #@54
    if-eqz v4, :cond_3

    #@56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@59
    move-result-object v2

    #@5a
    check-cast v2, Landroid/os/ParcelUuid;

    #@5c
    .line 161
    .local v2, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5f
    .line 162
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    #@61
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    move-result-object v0

    #@65
    check-cast v0, [B

    #@67
    .line 163
    .restart local v0    # "data":[B
    if-nez v0, :cond_2

    #@69
    .line 164
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@6c
    goto :goto_2

    #@6d
    .line 166
    :cond_2
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@70
    .line 167
    array-length v4, v0

    #@71
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@74
    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@77
    goto :goto_2

    #@78
    .line 171
    .end local v0    # "data":[B
    .end local v2    # "uuid":Landroid/os/ParcelUuid;
    :cond_3
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    #@7b
    move-result v4

    #@7c
    if-eqz v4, :cond_4

    #@7e
    move v4, v5

    #@7f
    :goto_3
    int-to-byte v4, v4

    #@80
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    #@83
    .line 172
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    #@86
    move-result v4

    #@87
    if-eqz v4, :cond_5

    #@89
    :goto_4
    int-to-byte v4, v5

    #@8a
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    #@8d
    .line 143
    return-void

    #@8e
    :cond_4
    move v4, v6

    #@8f
    .line 171
    goto :goto_3

    #@90
    :cond_5
    move v5, v6

    #@91
    .line 172
    goto :goto_4
.end method
