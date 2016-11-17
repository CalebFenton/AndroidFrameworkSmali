.class final Landroid/net/wifi/p2p/WifiP2pGroupList$1;
.super Ljava/lang/Object;
.source "WifiP2pGroupList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pGroupList;
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
        "Landroid/net/wifi/p2p/WifiP2pGroupList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroupList;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 233
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@2
    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>()V

    #@5
    .line 235
    .local v1, "grpList":Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    .line 236
    .local v0, "deviceCount":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@c
    .line 237
    const/4 v3, 0x0

    #@d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@13
    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->add(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    #@16
    .line 236
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 239
    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 232
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroupList;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 243
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 242
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
