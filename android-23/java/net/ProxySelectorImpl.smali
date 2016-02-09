.class final Ljava/net/ProxySelectorImpl;
.super Ljava/net/ProxySelector;
.source "ProxySelectorImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    #@3
    return-void
.end method

.method private getSystemPropertyInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 105
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 106
    .local v1, "string":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    .line 108
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 109
    :catch_0
    move-exception v0

    #@c
    .line 112
    :cond_0
    return p2
.end method

.method private isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "nonProxyHosts"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 121
    :cond_0
    const/4 v4, 0x0

    #@5
    return v4

    #@6
    .line 125
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 126
    .local v3, "patternBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@f
    move-result v4

    #@10
    if-ge v1, v4, :cond_2

    #@12
    .line 127
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    .line 128
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    #@19
    .line 136
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    .line 126
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 130
    :sswitch_0
    const-string/jumbo v4, "\\."

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    goto :goto_1

    #@26
    .line 133
    :sswitch_1
    const-string/jumbo v4, ".*"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_1

    #@2d
    .line 140
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 141
    .local v2, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@34
    move-result v4

    #@35
    return v4

    #@36
    .line 128
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method private lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;
    .locals 4
    .param p1, "hostKey"    # Ljava/lang/String;
    .param p2, "portKey"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/net/Proxy$Type;
    .param p4, "defaultPort"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 95
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 96
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 97
    :cond_0
    return-object v3

    #@e
    .line 100
    :cond_1
    invoke-direct {p0, p2, p4}, Ljava/net/ProxySelectorImpl;->getSystemPropertyInt(Ljava/lang/String;I)I

    #@11
    move-result v1

    #@12
    .line 101
    .local v1, "port":I
    new-instance v2, Ljava/net/Proxy;

    #@14
    invoke-static {v0, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, p3, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    #@1b
    return-object v2
.end method

.method private selectOneProxy(Ljava/net/URI;)Ljava/net/Proxy;
    .locals 9
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 36
    if-nez p1, :cond_0

    #@2
    .line 37
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v6, "uri == null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    .line 40
    .local v4, "scheme":Ljava/lang/String;
    if-nez v4, :cond_1

    #@11
    .line 41
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v6, "scheme == null"

    #@16
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v5

    #@1a
    .line 44
    :cond_1
    const/4 v2, -0x1

    #@1b
    .line 45
    .local v2, "port":I
    const/4 v3, 0x0

    #@1c
    .line 46
    .local v3, "proxy":Ljava/net/Proxy;
    const/4 v1, 0x0

    #@1d
    .line 47
    .local v1, "nonProxyHostsKey":Ljava/lang/String;
    const/4 v0, 0x1

    #@1e
    .line 48
    .local v0, "httpProxyOkay":Z
    const-string/jumbo v5, "http"

    #@21
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_2

    #@27
    .line 49
    const/16 v2, 0x50

    #@29
    .line 50
    const-string/jumbo v1, "http.nonProxyHosts"

    #@2c
    .line 51
    .local v1, "nonProxyHostsKey":Ljava/lang/String;
    const-string/jumbo v5, "http.proxyHost"

    #@2f
    const-string/jumbo v6, "http.proxyPort"

    #@32
    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@34
    invoke-direct {p0, v5, v6, v7, v2}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    #@37
    move-result-object v3

    #@38
    .line 66
    .end local v1    # "nonProxyHostsKey":Ljava/lang/String;
    .end local v3    # "proxy":Ljava/net/Proxy;
    :goto_0
    if-eqz v1, :cond_6

    #@3a
    .line 67
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-direct {p0, v5, v6}, Ljava/net/ProxySelectorImpl;->isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z

    #@45
    move-result v5

    #@46
    .line 66
    if-eqz v5, :cond_6

    #@48
    .line 68
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@4a
    return-object v5

    #@4b
    .line 52
    .local v1, "nonProxyHostsKey":Ljava/lang/String;
    .restart local v3    # "proxy":Ljava/net/Proxy;
    :cond_2
    const-string/jumbo v5, "https"

    #@4e
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@51
    move-result v5

    #@52
    if-eqz v5, :cond_3

    #@54
    .line 53
    const/16 v2, 0x1bb

    #@56
    .line 54
    const-string/jumbo v1, "https.nonProxyHosts"

    #@59
    .line 55
    .local v1, "nonProxyHostsKey":Ljava/lang/String;
    const-string/jumbo v5, "https.proxyHost"

    #@5c
    const-string/jumbo v6, "https.proxyPort"

    #@5f
    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@61
    invoke-direct {p0, v5, v6, v7, v2}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    #@64
    move-result-object v3

    #@65
    .local v3, "proxy":Ljava/net/Proxy;
    goto :goto_0

    #@66
    .line 56
    .local v1, "nonProxyHostsKey":Ljava/lang/String;
    .local v3, "proxy":Ljava/net/Proxy;
    :cond_3
    const-string/jumbo v5, "ftp"

    #@69
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6c
    move-result v5

    #@6d
    if-eqz v5, :cond_4

    #@6f
    .line 57
    const/16 v2, 0x50

    #@71
    .line 58
    const-string/jumbo v1, "ftp.nonProxyHosts"

    #@74
    .line 59
    .local v1, "nonProxyHostsKey":Ljava/lang/String;
    const-string/jumbo v5, "ftp.proxyHost"

    #@77
    const-string/jumbo v6, "ftp.proxyPort"

    #@7a
    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@7c
    invoke-direct {p0, v5, v6, v7, v2}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    #@7f
    move-result-object v3

    #@80
    .local v3, "proxy":Ljava/net/Proxy;
    goto :goto_0

    #@81
    .line 60
    .local v1, "nonProxyHostsKey":Ljava/lang/String;
    .local v3, "proxy":Ljava/net/Proxy;
    :cond_4
    const-string/jumbo v5, "socket"

    #@84
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@87
    move-result v5

    #@88
    if-eqz v5, :cond_5

    #@8a
    .line 61
    const/4 v0, 0x0

    #@8b
    goto :goto_0

    #@8c
    .line 63
    :cond_5
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@8e
    return-object v5

    #@8f
    .line 71
    .end local v1    # "nonProxyHostsKey":Ljava/lang/String;
    .end local v3    # "proxy":Ljava/net/Proxy;
    :cond_6
    if-eqz v3, :cond_7

    #@91
    .line 72
    return-object v3

    #@92
    .line 75
    :cond_7
    if-eqz v0, :cond_8

    #@94
    .line 76
    const-string/jumbo v5, "proxyHost"

    #@97
    const-string/jumbo v6, "proxyPort"

    #@9a
    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@9c
    invoke-direct {p0, v5, v6, v7, v2}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    #@9f
    move-result-object v3

    #@a0
    .line 77
    .local v3, "proxy":Ljava/net/Proxy;
    if-eqz v3, :cond_8

    #@a2
    .line 78
    return-object v3

    #@a3
    .line 82
    .end local v3    # "proxy":Ljava/net/Proxy;
    :cond_8
    const-string/jumbo v5, "socksProxyHost"

    #@a6
    const-string/jumbo v6, "socksProxyPort"

    #@a9
    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@ab
    const/16 v8, 0x438

    #@ad
    invoke-direct {p0, v5, v6, v7, v8}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    #@b0
    move-result-object v3

    #@b1
    .line 83
    .restart local v3    # "proxy":Ljava/net/Proxy;
    if-eqz v3, :cond_9

    #@b3
    .line 84
    return-object v3

    #@b4
    .line 87
    :cond_9
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@b6
    return-object v5
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "sa"    # Ljava/net/SocketAddress;
    .param p3, "ioe"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 26
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v0

    #@a
    .line 26
    :cond_1
    if-eqz p3, :cond_0

    #@c
    .line 25
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/net/ProxySelectorImpl;->selectOneProxy(Ljava/net/URI;)Ljava/net/Proxy;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
