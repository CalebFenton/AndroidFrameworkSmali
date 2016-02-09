.class public Landroid/net/wifi/p2p/WifiP2pDeviceList;
.super Ljava/lang/Object;
.source "WifiP2pDeviceList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pDeviceList$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDeviceList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 201
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList$1;-><init>()V

    #@5
    .line 200
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@a
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 5
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v2, Ljava/util/HashMap;

    #@5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@a
    .line 44
    if-eqz p1, :cond_0

    #@c
    .line 45
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "d$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@20
    .line 46
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@22
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@24
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@26
    invoke-direct {v4, v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@29
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    goto :goto_0

    #@2d
    .line 43
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "d$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v2, Ljava/util/HashMap;

    #@5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@a
    .line 53
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@1a
    .line 54
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 55
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@20
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@22
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@24
    invoke-direct {v4, v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@27
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    goto :goto_0

    #@2b
    .line 52
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    return-void
.end method

.method private validateDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 61
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Null device"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 62
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "Empty deviceAddress"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 60
    :cond_1
    return-void
.end method

.method private validateDeviceAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Empty deviceAddress"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 76
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@c
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@f
    .line 77
    const/4 v0, 0x1

    #@10
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 188
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->validateDeviceAddress(Ljava/lang/String;)V

    #@3
    .line 134
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@b
    return-object v0
.end method

.method public getDeviceList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public isGroupOwner(Ljava/lang/String;)Z
    .locals 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->validateDeviceAddress(Ljava/lang/String;)V

    #@3
    .line 171
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@b
    .line 172
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v0, :cond_0

    #@d
    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Device not found "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 175
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    #@2a
    move-result v1

    #@2b
    return v1
.end method

.method public remove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->validateDeviceAddress(Ljava/lang/String;)V

    #@3
    .line 151
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@b
    return-object v0
.end method

.method public remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->validateDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@3
    .line 140
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@5
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public remove(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z
    .locals 4
    .param p1, "list"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@0
    .prologue
    .line 156
    const/4 v2, 0x0

    #@1
    .line 157
    .local v2, "ret":Z
    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@3
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v3

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "d$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@17
    .line 158
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    const/4 v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 160
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 179
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 180
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@7
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@1b
    .line 181
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string/jumbo v3, "\n"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@25
    goto :goto_0

    #@26
    .line 183
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    return-object v3
.end method

.method public update(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@3
    .line 88
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@5
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@d
    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    #@f
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    #@11
    .line 86
    return-void
.end method

.method public updateGroupCapability(Ljava/lang/String;I)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "groupCapab"    # I

    #@0
    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->validateDeviceAddress(Ljava/lang/String;)V

    #@3
    .line 112
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@b
    .line 113
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    #@d
    .line 114
    iput p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    #@f
    .line 110
    :cond_0
    return-void
.end method

.method public updateStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "status"    # I

    #@0
    .prologue
    .line 120
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->validateDeviceAddress(Ljava/lang/String;)V

    #@3
    .line 121
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@b
    .line 122
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    #@d
    .line 123
    iput p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    #@f
    .line 119
    :cond_0
    return-void
.end method

.method public updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->validateDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@3
    .line 94
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@5
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@d
    .line 95
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    #@f
    .line 96
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@11
    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@13
    .line 97
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    #@15
    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    #@17
    .line 98
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    #@19
    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    #@1b
    .line 99
    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    #@1d
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    #@1f
    .line 100
    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    #@21
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    #@23
    .line 101
    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    #@25
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    #@27
    .line 102
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@29
    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@2b
    .line 103
    return-void

    #@2c
    .line 106
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@2e
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@30
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 92
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 193
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    #@5
    move-result v2

    #@6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 194
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    #@b
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@1f
    .line 195
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@22
    goto :goto_0

    #@23
    .line 192
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    return-void
.end method
