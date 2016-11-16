.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field private static final EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

.field private static final EXCLLIST_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

.field private static final EXCL_REGEX:Ljava/lang/String; = "[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*"

.field public static final EXTRA_PROXY_INFO:Ljava/lang/String; = "android.intent.extra.PROXY_INFO"

.field private static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final HOSTNAME_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

.field private static final NAME_IP_REGEX:Ljava/lang/String; = "[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*"

.field public static final PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"

.field public static final PROXY_EXCLLIST_INVALID:I = 0x5

.field public static final PROXY_HOSTNAME_EMPTY:I = 0x1

.field public static final PROXY_HOSTNAME_INVALID:I = 0x2

.field public static final PROXY_PORT_EMPTY:I = 0x3

.field public static final PROXY_PORT_INVALID:I = 0x4

.field public static final PROXY_VALID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Proxy"

.field private static sConnectivityManager:Landroid/net/ConnectivityManager;

.field private static final sDefaultProxySelector:Ljava/net/ProxySelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 75
    const/4 v0, 0x0

    #@1
    sput-object v0, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    #@3
    .line 94
    const-string/jumbo v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    #@6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Landroid/net/Proxy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    #@c
    .line 95
    const-string/jumbo v0, "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

    #@f
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Landroid/net/Proxy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    #@15
    .line 96
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    #@1b
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final getDefaultHost()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 169
    const-string/jumbo v1, "http.proxyHost"

    #@3
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 170
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v1, 0x0

    #@e
    return-object v1

    #@f
    .line 171
    :cond_0
    return-object v0
.end method

.method public static final getDefaultPort()I
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 183
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    if-nez v1, :cond_0

    #@7
    return v2

    #@8
    .line 185
    :cond_0
    :try_start_0
    const-string/jumbo v1, "http.proxyPort"

    #@b
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 186
    :catch_0
    move-exception v0

    #@15
    .line 187
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v2
.end method

.method public static final getHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 134
    invoke-static {p0, v3}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    #@4
    move-result-object v1

    #@5
    .line 135
    .local v1, "proxy":Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@7
    if-ne v1, v2, :cond_0

    #@9
    return-object v3

    #@a
    .line 137
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/net/InetSocketAddress;

    #@10
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 138
    :catch_0
    move-exception v0

    #@16
    .line 139
    .local v0, "e":Ljava/lang/Exception;
    return-object v3
.end method

.method public static final getPort(Landroid/content/Context;)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 151
    const/4 v2, 0x0

    #@2
    invoke-static {p0, v2}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    #@5
    move-result-object v1

    #@6
    .line 152
    .local v1, "proxy":Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@8
    if-ne v1, v2, :cond_0

    #@a
    return v3

    #@b
    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Ljava/net/InetSocketAddress;

    #@11
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 155
    :catch_0
    move-exception v0

    #@17
    .line 156
    .local v0, "e":Ljava/lang/Exception;
    return v3
.end method

.method public static final getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 109
    const-string/jumbo v0, ""

    #@4
    .line 110
    .local v0, "host":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@6
    invoke-static {v0}, Landroid/net/Proxy;->isLocalHost(Ljava/lang/String;)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 120
    :cond_0
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@e
    return-object v4

    #@f
    .line 111
    :cond_1
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    #@12
    move-result-object v3

    #@13
    .line 112
    .local v3, "uri":Ljava/net/URI;
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    #@16
    move-result-object v2

    #@17
    .line 114
    .local v2, "proxySelector":Ljava/net/ProxySelector;
    invoke-virtual {v2, v3}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    #@1a
    move-result-object v1

    #@1b
    .line 116
    .local v1, "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@1e
    move-result v4

    #@1f
    if-lez v4, :cond_0

    #@21
    .line 117
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Ljava/net/Proxy;

    #@27
    return-object v4
.end method

.method private static final isLocalHost(Ljava/lang/String;)Z
    .locals 4
    .param p0, "host"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 192
    if-nez p0, :cond_0

    #@4
    .line 193
    return v2

    #@5
    .line 196
    :cond_0
    if-eqz p0, :cond_2

    #@7
    .line 197
    :try_start_0
    const-string/jumbo v1, "localhost"

    #@a
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 198
    return v3

    #@11
    .line 200
    :cond_1
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 201
    return v3

    #@1c
    .line 204
    :catch_0
    move-exception v0

    #@1d
    .line 206
    :cond_2
    return v2
.end method

.method public static final setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    .locals 5
    .param p0, "p"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 238
    const/4 v1, 0x0

    #@1
    .line 239
    .local v1, "host":Ljava/lang/String;
    const/4 v3, 0x0

    #@2
    .line 240
    .local v3, "port":Ljava/lang/String;
    const/4 v0, 0x0

    #@3
    .line 241
    .local v0, "exclList":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@5
    .line 242
    .local v2, "pacFileUrl":Landroid/net/Uri;
    if-eqz p0, :cond_0

    #@7
    .line 243
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 244
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPort()I

    #@e
    move-result v4

    #@f
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 245
    .local v3, "port":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 246
    .local v0, "exclList":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@1a
    move-result-object v2

    #@1b
    .line 248
    .end local v0    # "exclList":Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    .end local v3    # "port":Ljava/lang/String;
    :cond_0
    invoke-static {v1, v3, v0, v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    #@1e
    .line 237
    return-void
.end method

.method public static final setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "exclList"    # Ljava/lang/String;
    .param p3, "pacFileUrl"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 254
    if-eqz p2, :cond_0

    #@2
    const-string/jumbo v0, ","

    #@5
    const-string/jumbo v1, "|"

    #@8
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@b
    move-result-object p2

    #@c
    .line 256
    :cond_0
    if-eqz p0, :cond_1

    #@e
    .line 257
    const-string/jumbo v0, "http.proxyHost"

    #@11
    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14
    .line 258
    const-string/jumbo v0, "https.proxyHost"

    #@17
    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    .line 263
    :goto_0
    if-eqz p1, :cond_2

    #@1c
    .line 264
    const-string/jumbo v0, "http.proxyPort"

    #@1f
    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@22
    .line 265
    const-string/jumbo v0, "https.proxyPort"

    #@25
    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@28
    .line 270
    :goto_1
    if-eqz p2, :cond_3

    #@2a
    .line 271
    const-string/jumbo v0, "http.nonProxyHosts"

    #@2d
    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@30
    .line 272
    const-string/jumbo v0, "https.nonProxyHosts"

    #@33
    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@36
    .line 277
    :goto_2
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@38
    invoke-virtual {v0, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_4

    #@3e
    .line 278
    new-instance v0, Landroid/net/PacProxySelector;

    #@40
    invoke-direct {v0}, Landroid/net/PacProxySelector;-><init>()V

    #@43
    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    #@46
    .line 253
    :goto_3
    return-void

    #@47
    .line 260
    :cond_1
    const-string/jumbo v0, "http.proxyHost"

    #@4a
    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4d
    .line 261
    const-string/jumbo v0, "https.proxyHost"

    #@50
    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    #@53
    goto :goto_0

    #@54
    .line 267
    :cond_2
    const-string/jumbo v0, "http.proxyPort"

    #@57
    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5a
    .line 268
    const-string/jumbo v0, "https.proxyPort"

    #@5d
    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    #@60
    goto :goto_1

    #@61
    .line 274
    :cond_3
    const-string/jumbo v0, "http.nonProxyHosts"

    #@64
    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    #@67
    .line 275
    const-string/jumbo v0, "https.nonProxyHosts"

    #@6a
    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6d
    goto :goto_2

    #@6e
    .line 280
    :cond_4
    sget-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    #@70
    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    #@73
    goto :goto_3
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "exclList"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x0

    #@2
    .line 214
    sget-object v4, Landroid/net/Proxy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    #@4
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@7
    move-result-object v2

    #@8
    .line 215
    .local v2, "match":Ljava/util/regex/Matcher;
    sget-object v4, Landroid/net/Proxy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    #@a
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@d
    move-result-object v1

    #@e
    .line 217
    .local v1, "listMatch":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_0

    #@14
    const/4 v4, 0x2

    #@15
    return v4

    #@16
    .line 219
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_1

    #@1c
    const/4 v4, 0x5

    #@1d
    return v4

    #@1e
    .line 221
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@21
    move-result v4

    #@22
    if-lez v4, :cond_2

    #@24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@27
    move-result v4

    #@28
    if-nez v4, :cond_2

    #@2a
    const/4 v4, 0x3

    #@2b
    return v4

    #@2c
    .line 223
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2f
    move-result v4

    #@30
    if-lez v4, :cond_5

    #@32
    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@35
    move-result v4

    #@36
    if-nez v4, :cond_3

    #@38
    const/4 v4, 0x1

    #@39
    return v4

    #@3a
    .line 225
    :cond_3
    const/4 v3, -0x1

    #@3b
    .line 227
    .local v3, "portVal":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    move-result v3

    #@3f
    .line 231
    if-lez v3, :cond_4

    #@41
    const v4, 0xffff

    #@44
    if-le v3, v4, :cond_5

    #@46
    :cond_4
    return v6

    #@47
    .line 228
    :catch_0
    move-exception v0

    #@48
    .line 229
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return v6

    #@49
    .line 233
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v3    # "portVal":I
    :cond_5
    return v5
.end method
