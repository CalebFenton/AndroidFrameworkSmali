.class interface abstract Ljava/net/InetAddressImpl;
.super Ljava/lang/Object;
.source "InetAddressImpl.java"


# virtual methods
.method public abstract greylist-max-o anyLocalAddress()Ljava/net/InetAddress;
.end method

.method public abstract greylist-max-o clearAddressCache()V
.end method

.method public abstract greylist-max-o getHostByAddr([B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o isReachable(Ljava/net/InetAddress;ILjava/net/NetworkInterface;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o loopbackAddresses()[Ljava/net/InetAddress;
.end method
