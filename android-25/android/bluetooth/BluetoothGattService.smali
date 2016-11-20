.class public Landroid/bluetooth/BluetoothGattService;
.super Ljava/lang/Object;
.source "BluetoothGattService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGattService$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICE_TYPE_PRIMARY:I = 0x0

.field public static final SERVICE_TYPE_SECONDARY:I = 0x1


# instance fields
.field private mAdvertisePreferred:Z

.field protected mCharacteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field protected mDevice:Landroid/bluetooth/BluetoothDevice;

.field protected mHandles:I

.field protected mIncludedServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field protected mInstanceId:I

.field protected mServiceType:I

.field protected mUuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 159
    new-instance v0, Landroid/bluetooth/BluetoothGattService$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/BluetoothGattService$1;-><init>()V

    #@5
    .line 158
    sput-object v0, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "serviceType"    # I

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    #@6
    .line 114
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@8
    .line 115
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    #@a
    .line 116
    iput p3, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    #@c
    .line 117
    iput p4, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    #@e
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    #@15
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@1c
    .line 113
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    const/4 v6, 0x0

    #@5
    iput v6, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    #@7
    .line 170
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@a
    move-result-object v6

    #@b
    check-cast v6, Landroid/os/ParcelUuid;

    #@d
    invoke-virtual {v6}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@10
    move-result-object v6

    #@11
    iput-object v6, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    #@13
    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v6

    #@17
    iput v6, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    #@19
    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v6

    #@1d
    iput v6, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    #@1f
    .line 174
    new-instance v6, Ljava/util/ArrayList;

    #@21
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v6, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    #@26
    .line 177
    sget-object v6, Landroid/bluetooth/BluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@2b
    move-result-object v2

    #@2c
    .line 178
    .local v2, "chrcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    if-eqz v2, :cond_0

    #@2e
    .line 179
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v1

    #@32
    .local v1, "chrc$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_0

    #@38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    #@3e
    .line 180
    .local v0, "chrc":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setService(Landroid/bluetooth/BluetoothGattService;)V

    #@41
    .line 181
    iget-object v6, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    #@43
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@46
    goto :goto_0

    #@47
    .line 185
    .end local v0    # "chrc":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "chrc$iterator":Ljava/util/Iterator;
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    #@49
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@4c
    iput-object v6, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@4e
    .line 188
    sget-object v6, Landroid/bluetooth/BluetoothGattIncludedService;->CREATOR:Landroid/os/Parcelable$Creator;

    #@50
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@53
    move-result-object v3

    #@54
    .line 189
    .local v3, "inclSvcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattIncludedService;>;"
    if-eqz v2, :cond_1

    #@56
    .line 190
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@59
    move-result-object v5

    #@5a
    .local v5, "isvc$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@5d
    move-result v6

    #@5e
    if-eqz v6, :cond_1

    #@60
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@63
    move-result-object v4

    #@64
    check-cast v4, Landroid/bluetooth/BluetoothGattIncludedService;

    #@66
    .line 191
    .local v4, "isvc":Landroid/bluetooth/BluetoothGattIncludedService;
    iget-object v6, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@68
    new-instance v7, Landroid/bluetooth/BluetoothGattService;

    #@6a
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattIncludedService;->getUuid()Ljava/util/UUID;

    #@6d
    move-result-object v8

    #@6e
    .line 192
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattIncludedService;->getInstanceId()I

    #@71
    move-result v9

    #@72
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattIncludedService;->getType()I

    #@75
    move-result v10

    #@76
    .line 191
    invoke-direct {v7, v11, v8, v9, v10}, Landroid/bluetooth/BluetoothGattService;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)V

    #@79
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7c
    goto :goto_1

    #@7d
    .line 169
    .end local v4    # "isvc":Landroid/bluetooth/BluetoothGattIncludedService;
    .end local v5    # "isvc$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothGattService;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattService;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;I)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "serviceType"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    iput v1, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    #@6
    .line 100
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@9
    .line 101
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    #@b
    .line 102
    iput v1, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    #@d
    .line 103
    iput p2, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    #@f
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    #@16
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@1d
    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;II)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I
    .param p3, "serviceType"    # I

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    #@6
    .line 127
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@9
    .line 128
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    #@b
    .line 129
    iput p2, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    #@d
    .line 130
    iput p3, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    #@f
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    #@16
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@1d
    .line 126
    return-void
.end method


# virtual methods
.method public addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 234
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setService(Landroid/bluetooth/BluetoothGattService;)V

    #@8
    .line 235
    const/4 v0, 0x1

    #@9
    return v0
.end method

.method public addIncludedService(Landroid/bluetooth/BluetoothGattService;)V
    .locals 1
    .param p1, "includedService"    # Landroid/bluetooth/BluetoothGattService;

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 281
    return-void
.end method

.method public addService(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 1
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 222
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 139
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    #@0
    .prologue
    .line 349
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "characteristic$iterator":Ljava/util/Iterator;
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
    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    #@12
    .line 350
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 351
    return-object v0

    #@1d
    .line 353
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    const/4 v2, 0x0

    #@1e
    return-object v2
.end method

.method getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I

    #@0
    .prologue
    .line 243
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "characteristic$iterator":Ljava/util/Iterator;
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
    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    #@12
    .line 244
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 245
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    #@1f
    move-result v2

    #@20
    if-ne v2, p2, :cond_0

    #@22
    .line 246
    return-object v0

    #@23
    .line 248
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    const/4 v2, 0x0

    #@24
    return-object v2
.end method

.method public getCharacteristics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    #@2
    return-object v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@2
    return-object v0
.end method

.method getHandles()I
    .locals 1

    #@0
    .prologue
    .line 265
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    #@2
    return v0
.end method

.method public getIncludedServices()Ljava/util/List;
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
    .line 321
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    #@0
    .prologue
    .line 304
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 311
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    #@2
    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    #@2
    return-object v0
.end method

.method public isAdvertisePreferred()Z
    .locals 1

    #@0
    .prologue
    .line 361
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->mAdvertisePreferred:Z

    #@2
    return v0
.end method

.method public setAdvertisePreferred(Z)V
    .locals 0
    .param p1, "advertisePreferred"    # Z

    #@0
    .prologue
    .line 369
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothGattService;->mAdvertisePreferred:Z

    #@2
    .line 368
    return-void
.end method

.method setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    #@0
    .prologue
    .line 210
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@2
    .line 209
    return-void
.end method

.method public setHandles(I)V
    .locals 0
    .param p1, "handles"    # I

    #@0
    .prologue
    .line 274
    iput p1, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    #@2
    .line 273
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0
    .param p1, "instanceId"    # I

    #@0
    .prologue
    .line 257
    iput p1, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    #@2
    .line 256
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 144
    new-instance v3, Landroid/os/ParcelUuid;

    #@2
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    #@4
    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@7
    const/4 v4, 0x0

    #@8
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@b
    .line 145
    iget v3, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    #@d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 146
    iget v3, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    #@12
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 147
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    #@17
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1a
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    #@1c
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@1e
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@21
    move-result v3

    #@22
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@25
    .line 151
    .local v0, "includedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattIncludedService;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@27
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v2

    #@2b
    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_0

    #@31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    #@37
    .line 152
    .local v1, "s":Landroid/bluetooth/BluetoothGattService;
    new-instance v3, Landroid/bluetooth/BluetoothGattIncludedService;

    #@39
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@3c
    move-result-object v4

    #@3d
    .line 153
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@40
    move-result v5

    #@41
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@44
    move-result v6

    #@45
    .line 152
    invoke-direct {v3, v4, v5, v6}, Landroid/bluetooth/BluetoothGattIncludedService;-><init>(Ljava/util/UUID;II)V

    #@48
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4b
    goto :goto_0

    #@4c
    .line 155
    .end local v1    # "s":Landroid/bluetooth/BluetoothGattService;
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@4f
    .line 143
    return-void
.end method
