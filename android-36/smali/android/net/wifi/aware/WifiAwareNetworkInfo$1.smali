.class Landroid/net/wifi/aware/WifiAwareNetworkInfo$1;
.super Ljava/lang/Object;
.source "WifiAwareNetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareNetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/WifiAwareNetworkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareNetworkInfo;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 160
    .local v0, "addr":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "interfaceName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 162
    .local v2, "port":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, "transportProtocol":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v4, "channelInfos":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/aware/WifiAwareChannelInfo;>;"
    sget-object v5, Landroid/net/wifi/aware/WifiAwareChannelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 167
    const/4 v5, 0x0

    .line 168
    .local v5, "ni":Ljava/net/NetworkInterface;
    if-eqz v1, :cond_27

    .line 170
    :try_start_1d
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6
    :try_end_21
    .catch Ljava/net/SocketException; {:try_start_1d .. :try_end_21} :catch_23
    .catch Ljava/net/UnknownHostException; {:try_start_1d .. :try_end_21} :catch_33

    move-object v5, v6

    .line 173
    goto :goto_27

    .line 171
    :catch_23
    move-exception v6

    .line 172
    .local v6, "e":Ljava/net/SocketException;
    :try_start_24
    invoke-virtual {v6}, Ljava/net/SocketException;->printStackTrace()V

    .line 175
    .end local v6    # "e":Ljava/net/SocketException;
    :cond_27
    :goto_27
    const/4 v6, 0x0

    invoke-static {v6, v0, v5}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;

    move-result-object v6
    :try_end_2c
    .catch Ljava/net/UnknownHostException; {:try_start_24 .. :try_end_2c} :catch_33

    .line 179
    .end local v5    # "ni":Ljava/net/NetworkInterface;
    .local v6, "ipv6Addr":Ljava/net/Inet6Address;
    nop

    .line 180
    new-instance v5, Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    invoke-direct {v5, v6, v2, v3, v4}, Landroid/net/wifi/aware/WifiAwareNetworkInfo;-><init>(Ljava/net/Inet6Address;IILjava/util/List;)V

    return-object v5

    .line 176
    .end local v6    # "ipv6Addr":Ljava/net/Inet6Address;
    :catch_33
    move-exception v5

    .line 177
    .local v5, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 178
    new-instance v6, Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    invoke-direct {v6}, Landroid/net/wifi/aware/WifiAwareNetworkInfo;-><init>()V

    return-object v6
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

    .line 156
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/aware/WifiAwareNetworkInfo;
    .registers 3
    .param p1, "size"    # I

    .line 186
    new-array v0, p1, [Landroid/net/wifi/aware/WifiAwareNetworkInfo;

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

    .line 156
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkInfo$1;->newArray(I)[Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    move-result-object p1

    return-object p1
.end method
