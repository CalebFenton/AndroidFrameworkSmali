.class public Landroid/bluetooth/BluetoothGattService;
.super Ljava/lang/Object;
.source "BluetoothGattService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SERVICE_TYPE_PRIMARY:I = 0x0

.field public static final whitelist SERVICE_TYPE_SECONDARY:I = 0x1


# instance fields
.field private blacklist mAdvertisePreferred:Z

.field protected whitelist mCharacteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist mDevice:Landroid/bluetooth/BluetoothDevice;

.field protected blacklist mHandles:I

.field protected whitelist mIncludedServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mInstanceId:I

.field protected blacklist mServiceType:I

.field protected blacklist mUuid:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 155
    new-instance v0, Landroid/bluetooth/BluetoothGattService$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothGattService$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "serviceType"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 112
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 113
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    .line 114
    iput p3, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 115
    iput p4, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    .line 118
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 167
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    .line 171
    sget-object v0, Landroid/bluetooth/BluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    .line 172
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 173
    .local v1, "chrc":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setService(Landroid/bluetooth/BluetoothGattService;)V

    .line 174
    .end local v1    # "chrc":Landroid/bluetooth/BluetoothGattCharacteristic;
    goto :goto_2e

    .line 176
    :cond_3e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    .line 178
    sget-object v0, Landroid/bluetooth/BluetoothGattIncludedService;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 179
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 180
    .local v0, "inclSvcs":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattIncludedService;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattIncludedService;

    .line 181
    .local v2, "isvc":Landroid/bluetooth/BluetoothGattIncludedService;
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    new-instance v4, Landroid/bluetooth/BluetoothGattService;

    .line 183
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattIncludedService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattIncludedService;->getInstanceId()I

    move-result v6

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattIncludedService;->getType()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v4, v8, v5, v6, v7}, Landroid/bluetooth/BluetoothGattService;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)V

    .line 181
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v2    # "isvc":Landroid/bluetooth/BluetoothGattIncludedService;
    goto :goto_4f

    .line 185
    :cond_73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothGattService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattService;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;I)V
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "serviceType"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 98
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    .line 99
    iput v0, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 100
    iput p2, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    .line 103
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;II)V
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I
    .param p3, "serviceType"    # I

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 127
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    .line 128
    iput p2, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 129
    iput p3, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    .line 132
    return-void
.end method


# virtual methods
.method public whitelist addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 3
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 225
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setService(Landroid/bluetooth/BluetoothGattService;)V

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist addIncludedService(Landroid/bluetooth/BluetoothGattService;)V
    .registers 3
    .param p1, "includedService"    # Landroid/bluetooth/BluetoothGattService;

    .line 280
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method public whitelist addService(Landroid/bluetooth/BluetoothGattService;)Z
    .registers 3
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .line 213
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 341
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 342
    .local v1, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 343
    return-object v1

    .line 345
    .end local v1    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1d
    goto :goto_6

    .line 346
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 6
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I

    .line 236
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 237
    .local v1, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 238
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v2

    if-ne v2, p2, :cond_23

    .line 239
    return-object v1

    .line 241
    .end local v1    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_23
    goto :goto_6

    .line 242
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCharacteristics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    return-object v0
.end method

.method blacklist getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method blacklist getHandles()I
    .registers 2

    .line 261
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    return v0
.end method

.method public whitelist getIncludedServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getInstanceId()I
    .registers 2

    .line 301
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 306
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    return v0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .registers 2

    .line 289
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public blacklist isAdvertisePreferred()Z
    .registers 2

    .line 355
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->mAdvertisePreferred:Z

    return v0
.end method

.method public greylist-max-r setAdvertisePreferred(Z)V
    .registers 2
    .param p1, "advertisePreferred"    # Z

    .line 365
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothGattService;->mAdvertisePreferred:Z

    .line 366
    return-void
.end method

.method blacklist setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 202
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 203
    return-void
.end method

.method public blacklist setHandles(I)V
    .registers 2
    .param p1, "handles"    # I

    .line 271
    iput p1, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 272
    return-void
.end method

.method public greylist setInstanceId(I)V
    .registers 2
    .param p1, "instanceId"    # I

    .line 252
    iput p1, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 253
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 10
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 141
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 142
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    .line 147
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    .local v0, "includedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattIncludedService;>;"
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 149
    .local v2, "s":Landroid/bluetooth/BluetoothGattService;
    new-instance v3, Landroid/bluetooth/BluetoothGattIncludedService;

    .line 150
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v5

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/bluetooth/BluetoothGattIncludedService;-><init>(Ljava/util/UUID;II)V

    .line 149
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v2    # "s":Landroid/bluetooth/BluetoothGattService;
    goto :goto_2a

    .line 152
    :cond_4b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 153
    return-void
.end method
