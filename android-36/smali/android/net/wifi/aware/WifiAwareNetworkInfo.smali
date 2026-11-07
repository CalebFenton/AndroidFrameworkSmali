.class public final Landroid/net/wifi/aware/WifiAwareNetworkInfo;
.super Ljava/lang/Object;
.source "WifiAwareNetworkInfo.java"

# interfaces
.implements Landroid/net/TransportInfo;
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/WifiAwareNetworkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChannelInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/aware/WifiAwareChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIpv6Addr:Ljava/net/Inet6Address;

.field private final blacklist mPort:I

.field private final blacklist mTransportProtocol:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 155
    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareNetworkInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mChannelInfos:Ljava/util/List;

    .line 64
    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/aware/WifiAwareNetworkInfo;)V
    .registers 3
    .param p1, "source"    # Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-eqz p1, :cond_8

    iget-object v0, p1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    .line 85
    if-eqz p1, :cond_10

    iget v0, p1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    .line 86
    if-eqz p1, :cond_18

    iget v0, p1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    goto :goto_19

    :cond_18
    const/4 v0, -0x1

    :goto_19
    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    .line 87
    if-eqz p1, :cond_20

    iget-object v0, p1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mChannelInfos:Ljava/util/List;

    goto :goto_24

    :cond_20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_24
    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mChannelInfos:Ljava/util/List;

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/Inet6Address;)V
    .registers 3
    .param p1, "ipv6Addr"    # Ljava/net/Inet6Address;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mChannelInfos:Ljava/util/List;

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/Inet6Address;IILjava/util/List;)V
    .registers 5
    .param p1, "ipv6Addr"    # Ljava/net/Inet6Address;
    .param p2, "port"    # I
    .param p3, "transportProtocol"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Inet6Address;",
            "II",
            "Ljava/util/List<",
            "Landroid/net/wifi/aware/WifiAwareChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p4, "channelInfos":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/aware/WifiAwareChannelInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    .line 78
    iput p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    .line 79
    iput p3, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    .line 80
    iput-object p4, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mChannelInfos:Ljava/util/List;

    .line 81
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 205
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 206
    return v0

    .line 209
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 210
    return v2

    .line 213
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    .line 214
    .local v1, "lhs":Landroid/net/wifi/aware/WifiAwareNetworkInfo;
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    iget-object v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mChannelInfos:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mChannelInfos:Ljava/util/List;

    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 214
    :goto_2f
    return v0
.end method

.method public whitelist getChannelInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/aware/WifiAwareChannelInfo;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mChannelInfos:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPeerIpv6Addr()Ljava/net/Inet6Address;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    return-object v0
.end method

.method public whitelist getPort()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    return v0
.end method

.method public whitelist getTransportProtocol()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 222
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mChannelInfos:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AwareNetworkInfo: IPv6="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    const-string v1, ", transportProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    const-string v1, ", channelInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mChannelInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 148
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopedInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    .line 149
    .local v0, "ni":Ljava/net/NetworkInterface;
    if-nez v0, :cond_13

    const/4 v1, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mChannelInfos:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 153
    return-void
.end method
