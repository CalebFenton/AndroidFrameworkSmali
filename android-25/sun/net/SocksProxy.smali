.class public final Lsun/net/SocksProxy;
.super Ljava/net/Proxy;
.source "SocksProxy.java"


# instance fields
.field private final version:I


# direct methods
.method private constructor <init>(Ljava/net/SocketAddress;I)V
    .locals 1
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "version"    # I

    #@0
    .prologue
    .line 38
    sget-object v0, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@2
    invoke-direct {p0, v0, p1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    #@5
    .line 39
    iput p2, p0, Lsun/net/SocksProxy;->version:I

    #@7
    .line 37
    return-void
.end method

.method public static create(Ljava/net/SocketAddress;I)Lsun/net/SocksProxy;
    .locals 1
    .param p0, "addr"    # Ljava/net/SocketAddress;
    .param p1, "version"    # I

    #@0
    .prologue
    .line 43
    new-instance v0, Lsun/net/SocksProxy;

    #@2
    invoke-direct {v0, p0, p1}, Lsun/net/SocksProxy;-><init>(Ljava/net/SocketAddress;I)V

    #@5
    return-object v0
.end method


# virtual methods
.method public protocolVersion()I
    .locals 1

    #@0
    .prologue
    .line 47
    iget v0, p0, Lsun/net/SocksProxy;->version:I

    #@2
    return v0
.end method
