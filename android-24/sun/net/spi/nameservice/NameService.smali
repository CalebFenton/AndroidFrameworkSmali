.class public interface abstract Lsun/net/spi/nameservice/NameService;
.super Ljava/lang/Object;
.source "NameService.java"


# virtual methods
.method public abstract getHostByAddr([B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
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
