.class final Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;
.super Ljava/lang/Object;
.source "WifiP2pWfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pWfdInfo;
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
        "Landroid/net/wifi/p2p/WifiP2pWfdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 188
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    #@5
    .line 189
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@8
    .line 190
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 187
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 194
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 193
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
