.class public final Lsun/net/SocksProxy;
.super Ljava/net/Proxy;
.source "SocksProxy.java"


# instance fields
.field private final blacklist version:I


# direct methods
.method private constructor blacklist <init>(Ljava/net/SocketAddress;I)V
    .registers 4
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "version"    # I

    .line 38
    sget-object v0, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    invoke-direct {p0, v0, p1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 39
    iput p2, p0, Lsun/net/SocksProxy;->version:I

    .line 40
    return-void
.end method

.method public static blacklist create(Ljava/net/SocketAddress;I)Lsun/net/SocksProxy;
    .registers 3
    .param p0, "addr"    # Ljava/net/SocketAddress;
    .param p1, "version"    # I

    .line 43
    new-instance v0, Lsun/net/SocksProxy;

    invoke-direct {v0, p0, p1}, Lsun/net/SocksProxy;-><init>(Ljava/net/SocketAddress;I)V

    return-object v0
.end method


# virtual methods
.method public blacklist protocolVersion()I
    .registers 2

    .line 47
    iget v0, p0, Lsun/net/SocksProxy;->version:I

    return v0
.end method
