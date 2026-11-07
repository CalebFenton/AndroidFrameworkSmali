.class Landroid/net/RouteInfo$1;
.super Ljava/lang/Object;
.source "RouteInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/RouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/RouteInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/RouteInfo;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 647
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/IpPrefix;

    .line 649
    .local v2, "dest":Landroid/net/IpPrefix;
    const/4 v1, 0x0

    .line 650
    .local v1, "gateway":Ljava/net/InetAddress;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 652
    .local v7, "addr":[B
    :try_start_d
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_11
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_11} :catch_14

    move-object v1, v0

    .line 653
    :goto_12
    move-object v3, v1

    goto :goto_16

    :catch_14
    move-exception v0

    goto :goto_12

    .line 655
    .end local v1    # "gateway":Ljava/net/InetAddress;
    .local v3, "gateway":Ljava/net/InetAddress;
    :goto_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 656
    .local v4, "iface":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 657
    .local v5, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 659
    .local v6, "mtu":I
    new-instance v1, Landroid/net/RouteInfo;

    invoke-direct/range {v1 .. v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;II)V

    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 645
    invoke-virtual {p0, p1}, Landroid/net/RouteInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/RouteInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/RouteInfo;
    .registers 3
    .param p1, "size"    # I

    .line 663
    new-array v0, p1, [Landroid/net/RouteInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 645
    invoke-virtual {p0, p1}, Landroid/net/RouteInfo$1;->newArray(I)[Landroid/net/RouteInfo;

    move-result-object p1

    return-object p1
.end method
