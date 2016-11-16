.class Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
.super Ljava/lang/Object;
.source "DefaultProxySelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/spi/DefaultProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NonProxyInfo"
.end annotation


# static fields
.field static final defStringVal:Ljava/lang/String; = "localhost|127.*|[::1]|0.0.0.0|[::0]"

.field static ftpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field static httpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field static httpsNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;


# instance fields
.field final defaultVal:Ljava/lang/String;

.field hostsPool:Lsun/misc/RegexpPool;

.field hostsSource:Ljava/lang/String;

.field final property:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 107
    new-instance v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@3
    const-string/jumbo v1, "ftp.nonProxyHosts"

    #@6
    const-string/jumbo v2, "localhost|127.*|[::1]|0.0.0.0|[::0]"

    #@9
    invoke-direct {v0, v1, v3, v3, v2}, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lsun/misc/RegexpPool;Ljava/lang/String;)V

    #@c
    sput-object v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->ftpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@e
    .line 108
    new-instance v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@10
    const-string/jumbo v1, "http.nonProxyHosts"

    #@13
    const-string/jumbo v2, "localhost|127.*|[::1]|0.0.0.0|[::0]"

    #@16
    invoke-direct {v0, v1, v3, v3, v2}, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lsun/misc/RegexpPool;Ljava/lang/String;)V

    #@19
    sput-object v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@1b
    .line 109
    new-instance v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@1d
    const-string/jumbo v1, "https.nonProxyHosts"

    #@20
    const-string/jumbo v2, "localhost|127.*|[::1]|0.0.0.0|[::0]"

    #@23
    invoke-direct {v0, v1, v3, v3, v2}, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lsun/misc/RegexpPool;Ljava/lang/String;)V

    #@26
    sput-object v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpsNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@28
    .line 98
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lsun/misc/RegexpPool;Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "pool"    # Lsun/misc/RegexpPool;
    .param p4, "d"    # Ljava/lang/String;

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 112
    iput-object p1, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->property:Ljava/lang/String;

    #@5
    .line 113
    iput-object p2, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    #@7
    .line 114
    iput-object p3, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsPool:Lsun/misc/RegexpPool;

    #@9
    .line 115
    iput-object p4, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->defaultVal:Ljava/lang/String;

    #@b
    .line 111
    return-void
.end method
