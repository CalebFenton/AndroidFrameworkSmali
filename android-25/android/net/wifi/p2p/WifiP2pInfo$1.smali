.class final Landroid/net/wifi/p2p/WifiP2pInfo$1;
.super Ljava/lang/Object;
.source "WifiP2pInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pInfo;
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
        "Landroid/net/wifi/p2p/WifiP2pInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 83
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pInfo;

    #@4
    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>()V

    #@7
    .line 84
    .local v1, "info":Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@a
    move-result v2

    #@b
    if-ne v2, v3, :cond_2

    #@d
    move v2, v3

    #@e
    :goto_0
    iput-boolean v2, v1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    #@10
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@13
    move-result v2

    #@14
    if-ne v2, v3, :cond_0

    #@16
    move v4, v3

    #@17
    :cond_0
    iput-boolean v4, v1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    #@19
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@1c
    move-result v2

    #@1d
    if-ne v2, v3, :cond_1

    #@1f
    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@22
    move-result-object v2

    #@23
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@26
    move-result-object v2

    #@27
    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 91
    :cond_1
    :goto_1
    return-object v1

    #@2a
    :cond_2
    move v2, v4

    #@2b
    .line 84
    goto :goto_0

    #@2c
    .line 89
    :catch_0
    move-exception v0

    #@2d
    .local v0, "e":Ljava/net/UnknownHostException;
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 82
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 95
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 94
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pInfo$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
