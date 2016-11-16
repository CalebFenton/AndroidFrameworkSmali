.class final Ljava/net/InetAddress$1;
.super Ljava/lang/Object;
.source "InetAddress.java"

# interfaces
.implements Lsun/net/spi/nameservice/NameService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getHostByAddr([B)Ljava/lang/String;
    .locals 1
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 239
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    #@2
    invoke-interface {v0, p1}, Ljava/net/InetAddressImpl;->getHostByAddr([B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
