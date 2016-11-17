.class interface abstract Ljava/net/InetAddressImpl;
.super Ljava/lang/Object;
.source "InetAddressImpl.java"


# virtual methods
.method public abstract anyLocalAddress()Ljava/net/InetAddress;
.end method

.method public abstract clearAddressCache()V
.end method

.method public abstract getHostByAddr([B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract isReachable(Ljava/net/InetAddress;ILjava/net/NetworkInterface;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract loopbackAddresses()[Ljava/net/InetAddress;
.end method
