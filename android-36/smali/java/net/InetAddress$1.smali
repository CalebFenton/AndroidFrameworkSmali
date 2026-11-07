.class Ljava/net/InetAddress$1;
.super Ljava/lang/Object;
.source "InetAddress.java"

# interfaces
.implements Lsun/net/spi/nameservice/NameService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getHostByAddr([B)Ljava/lang/String;
    .registers 3
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 286
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p1}, Ljava/net/InetAddressImpl;->getHostByAddr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 282
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p1, p2}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
