.class public Landroid/bluetooth/BluetoothGattService;
.super Ljava/lang/Object;
.source "BluetoothGattService.java"


# static fields
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
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "serviceType"    # I

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    #@6
    .line 111
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@8
    .line 112
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    #@a
    .line 113
    iput p3, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    #@c
    .line 114
    iput p4, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    #@e
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    #@15
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@1c
    .line 110
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
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 64
    iput v1, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    #@6
    .line 97
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@9
    .line 98
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    #@b
    .line 99
    iput v1, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    #@d
    .line 100
    iput p2, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    #@f
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    #@16
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@1d
    .line 96
    return-void
.end method


# virtual methods
.method public addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 148
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setService(Landroid/bluetooth/BluetoothGattService;)V

    #@8
    .line 149
    const/4 v0, 0x1

    #@9
    return v0
.end method

.method addIncludedService(Landroid/bluetooth/BluetoothGattService;)V
    .locals 1
    .param p1, "includedService"    # Landroid/bluetooth/BluetoothGattService;

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 195
    return-void
.end method

.method public addService(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 1
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 136
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    #@0
    .prologue
    .line 263
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
    .line 264
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
    .line 265
    return-object v0

    #@1d
    .line 267
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
    .line 157
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
    .line 158
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
    .line 159
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    #@1f
    move-result v2

    #@20
    if-ne v2, p2, :cond_0

    #@22
    .line 160
    return-object v0

    #@23
    .line 162
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
    .line 244
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    #@2
    return-object v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    #@2
    return-object v0
.end method

.method getHandles()I
    .locals 1

    #@0
    .prologue
    .line 179
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
    .line 235
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    #@0
    .prologue
    .line 218
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 225
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    #@2
    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    #@2
    return-object v0
.end method

.method public isAdvertisePreferred()Z
    .locals 1

    #@0
    .prologue
    .line 275
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->mAdvertisePreferred:Z

    #@2
    return v0
.end method

.method public setAdvertisePreferred(Z)V
    .locals 0
    .param p1, "advertisePreferred"    # Z

    #@0
    .prologue
    .line 283
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothGattService;->mAdvertisePreferred:Z

    #@2
    .line 282
    return-void
.end method

.method public setHandles(I)V
    .locals 0
    .param p1, "handles"    # I

    #@0
    .prologue
    .line 188
    iput p1, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    #@2
    .line 187
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0
    .param p1, "instanceId"    # I

    #@0
    .prologue
    .line 171
    iput p1, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    #@2
    .line 170
    return-void
.end method
