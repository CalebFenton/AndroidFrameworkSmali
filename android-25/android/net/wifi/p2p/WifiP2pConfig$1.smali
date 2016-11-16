.class final Landroid/net/wifi/p2p/WifiP2pConfig$1;
.super Ljava/lang/Object;
.source "WifiP2pConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pConfig;
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
        "Landroid/net/wifi/p2p/WifiP2pConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 144
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #@5
    .line 145
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@b
    .line 146
    const/4 v1, 0x0

    #@c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/net/wifi/WpsInfo;

    #@12
    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@14
    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v1

    #@18
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    #@1a
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    #@20
    .line 149
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 143
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 153
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pConfig;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 152
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfig$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pConfig;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
