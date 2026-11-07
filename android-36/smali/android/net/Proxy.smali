.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field public static final greylist EXTRA_PROXY_INFO:Ljava/lang/String; = "android.intent.extra.PROXY_INFO"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Proxy"

.field private static greylist-max-o sConnectivityManager:Landroid/net/ConnectivityManager;

.field private static final greylist-max-o sDefaultProxySelector:Ljava/net/ProxySelector;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    const/4 v0, 0x0

    sput-object v0, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 71
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    .line 72
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getDefaultHost()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    const-string/jumbo v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    return-object v1

    .line 150
    :cond_f
    return-object v0
.end method

.method public static final whitelist getDefaultPort()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 165
    :cond_8
    :try_start_8
    const-string/jumbo v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_14

    return v0

    .line 166
    :catch_14
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v1
.end method

.method public static final whitelist getHost(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 112
    .local v1, "proxy":Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_a

    return-object v0

    .line 114
    :cond_a
    :try_start_a
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    return-object v0

    .line 115
    :catch_15
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static final whitelist getPort(Landroid/content/Context;)I
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    .line 130
    .local v0, "proxy":Ljava/net/Proxy;
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    const/4 v2, -0x1

    if-ne v0, v1, :cond_b

    return v2

    .line 132
    :cond_b
    :try_start_b
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    return v1

    .line 133
    :catch_16
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    return v2
.end method

.method public static final greylist getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 85
    const-string v0, ""

    .line 86
    .local v0, "host":Ljava/lang/String;
    if-eqz p1, :cond_24

    invoke-static {v0}, Landroid/net/Proxy;->isLocalHost(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 87
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 88
    .local v1, "uri":Ljava/net/URI;
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    .line 90
    .local v2, "proxySelector":Ljava/net/ProxySelector;
    invoke-virtual {v2, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v3

    .line 92
    .local v3, "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_24

    .line 93
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Proxy;

    return-object v4

    .line 96
    .end local v1    # "uri":Ljava/net/URI;
    .end local v2    # "proxySelector":Ljava/net/ProxySelector;
    .end local v3    # "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    :cond_24
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v1
.end method

.method private static final greylist-max-o isLocalHost(Ljava/lang/String;)Z
    .registers 4
    .param p0, "host"    # Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 173
    return v0

    .line 176
    :cond_4
    if-eqz p0, :cond_1e

    .line 177
    :try_start_6
    const-string/jumbo v1, "localhost"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    .line 178
    return v2

    .line 180
    :cond_11
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_19} :catch_1c

    if-eqz v1, :cond_1e

    .line 181
    return v2

    .line 184
    :catch_1c
    move-exception v1

    goto :goto_1f

    .line 185
    :cond_1e
    nop

    .line 186
    :goto_1f
    return v0
.end method

.method public static blacklist setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V
    .registers 6
    .param p0, "p"    # Landroid/net/ProxyInfo;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x0

    .line 206
    .local v1, "port":Ljava/lang/String;
    const/4 v2, 0x0

    .line 207
    .local v2, "exclList":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 208
    .local v3, "pacFileUrl":Landroid/net/Uri;
    if-eqz p0, :cond_1f

    .line 209
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    .line 214
    :cond_1f
    invoke-static {v0, v1, v2, v3}, Landroid/net/Proxy;->setHttpProxyConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    return-void
.end method

.method public static blacklist setHttpProxyConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "exclList"    # Ljava/lang/String;
    .param p3, "pacFileUrl"    # Landroid/net/Uri;

    .line 220
    if-eqz p2, :cond_b

    const-string v0, ","

    const-string/jumbo v1, "|"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 222
    :cond_b
    const-string/jumbo v0, "https.proxyHost"

    const-string/jumbo v1, "http.proxyHost"

    if-eqz p0, :cond_1a

    .line 223
    invoke-static {v1, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_20

    .line 226
    :cond_1a
    invoke-static {v1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    :goto_20
    const-string/jumbo v0, "https.proxyPort"

    const-string/jumbo v1, "http.proxyPort"

    if-eqz p1, :cond_2f

    .line 230
    invoke-static {v1, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_35

    .line 233
    :cond_2f
    invoke-static {v1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    :goto_35
    const-string/jumbo v0, "https.nonProxyHosts"

    const-string/jumbo v1, "http.nonProxyHosts"

    if-eqz p2, :cond_44

    .line 237
    invoke-static {v1, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4a

    .line 240
    :cond_44
    invoke-static {v1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    :goto_4a
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 244
    new-instance v0, Landroid/net/PacProxySelector;

    invoke-direct {v0}, Landroid/net/PacProxySelector;-><init>()V

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    goto :goto_60

    .line 246
    :cond_5b
    sget-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 248
    :goto_60
    return-void
.end method

.method public static greylist-max-r setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    .registers 1
    .param p0, "p"    # Landroid/net/ProxyInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    invoke-static {p0}, Landroid/net/Proxy;->setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V

    .line 194
    return-void
.end method
