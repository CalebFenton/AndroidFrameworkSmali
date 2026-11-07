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
.field static final blacklist defStringVal:Ljava/lang/String; = "localhost|127.*|[::1]|0.0.0.0|[::0]"

.field static blacklist ftpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field static blacklist httpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field static blacklist httpsNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field static blacklist socksNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;


# instance fields
.field final blacklist defaultVal:Ljava/lang/String;

.field blacklist hostsSource:Ljava/lang/String;

.field blacklist pattern:Ljava/util/regex/Pattern;

.field final blacklist property:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 132
    new-instance v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const-string v1, "ftp.nonProxyHosts"

    const/4 v2, 0x0

    const-string v3, "localhost|127.*|[::1]|0.0.0.0|[::0]"

    invoke-direct {v0, v1, v2, v2, v3}, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->ftpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .line 133
    new-instance v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const-string v1, "http.nonProxyHosts"

    invoke-direct {v0, v1, v2, v2, v3}, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .line 134
    new-instance v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const-string v1, "socksNonProxyHosts"

    invoke-direct {v0, v1, v2, v2, v3}, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->socksNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .line 136
    new-instance v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const-string v1, "https.nonProxyHosts"

    invoke-direct {v0, v1, v2, v2, v3}, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpsNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 5
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "pattern"    # Ljava/util/regex/Pattern;
    .param p4, "d"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->property:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->pattern:Ljava/util/regex/Pattern;

    .line 142
    iput-object p4, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->defaultVal:Ljava/lang/String;

    .line 143
    return-void
.end method
