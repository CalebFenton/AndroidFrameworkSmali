.class final Landroid/net/wifi/p2p/WifiP2pGroup$1;
.super Ljava/lang/Object;
.source "WifiP2pGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pGroup;
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
        "Landroid/net/wifi/p2p/WifiP2pGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 314
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@4
    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    #@7
    .line 315
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    #@e
    .line 316
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@14
    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@17
    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@1a
    move-result v3

    #@1b
    if-ne v3, v4, :cond_0

    #@1d
    move v3, v4

    #@1e
    :goto_0
    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    #@21
    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    .line 319
    .local v0, "clientCount":I
    const/4 v2, 0x0

    #@26
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    #@28
    .line 320
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2e
    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@31
    .line 319
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_1

    #@34
    .line 317
    .end local v0    # "clientCount":I
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    #@35
    goto :goto_0

    #@36
    .line 322
    .restart local v0    # "clientCount":I
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->setPassphrase(Ljava/lang/String;)V

    #@3d
    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    #@44
    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v3

    #@48
    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    #@4b
    .line 325
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 313
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 329
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pGroup;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 328
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroup;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
