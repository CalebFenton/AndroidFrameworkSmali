.class final Landroid/net/wifi/p2p/WifiP2pDevice$1;
.super Ljava/lang/Object;
.source "WifiP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/p2p/WifiP2pDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 364
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    #@5
    .line 365
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@b
    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@11
    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    #@17
    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    #@1d
    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v1

    #@21
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    #@23
    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    #@29
    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v1

    #@2d
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    #@2f
    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v1

    #@33
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    #@35
    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v1

    #@39
    const/4 v2, 0x1

    #@3a
    if-ne v1, v2, :cond_0

    #@3c
    .line 374
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@44
    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@46
    .line 376
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 363
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 380
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 379
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pDevice;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
