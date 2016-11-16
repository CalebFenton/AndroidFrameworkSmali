.class public Lsun/net/www/protocol/file/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    #@3
    return-void
.end method

.method private getHost(Ljava/net/URL;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 47
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 48
    const-string/jumbo v0, ""

    #@9
    .line 49
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected createFileURLConnection(Ljava/net/URL;Ljava/io/File;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 112
    new-instance v0, Lsun/net/www/protocol/file/FileURLConnection;

    #@2
    invoke-direct {v0, p1, p2}, Lsun/net/www/protocol/file/FileURLConnection;-><init>(Ljava/net/URL;Ljava/io/File;)V

    #@5
    return-object v0
.end method

.method protected hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 4
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 128
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 129
    .local v0, "s1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 130
    .local v1, "s2":Ljava/lang/String;
    const-string/jumbo v2, "localhost"

    #@c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    if-eqz v1, :cond_0

    #@14
    const-string/jumbo v2, ""

    #@17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 131
    :cond_0
    return v3

    #@1e
    .line 132
    :cond_1
    const-string/jumbo v2, "localhost"

    #@21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_3

    #@27
    if-eqz v0, :cond_2

    #@29
    const-string/jumbo v2, ""

    #@2c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_3

    #@32
    .line 133
    :cond_2
    return v3

    #@33
    .line 134
    :cond_3
    invoke-super {p0, p1, p2}, Ljava/net/URLStreamHandler;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    #@36
    move-result v2

    #@37
    return v2
.end method

.method public declared-synchronized openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 72
    const/4 v0, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/file/Handler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result-object v0

    #@6
    monitor-exit p0

    #@7
    return-object v0

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 9
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 77
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 78
    .local v2, "host":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@7
    const-string/jumbo v5, ""

    #@a
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v5

    #@e
    if-nez v5, :cond_0

    #@10
    const-string/jumbo v5, "~"

    #@13
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v5

    #@17
    if-nez v5, :cond_0

    #@19
    .line 79
    const-string/jumbo v5, "localhost"

    #@1c
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1f
    move-result v5

    #@20
    .line 78
    if-eqz v5, :cond_1

    #@22
    .line 80
    :cond_0
    new-instance v1, Ljava/io/File;

    #@24
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-static {v5}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2f
    .line 81
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0, p1, v1}, Lsun/net/www/protocol/file/Handler;->createFileURLConnection(Ljava/net/URL;Ljava/io/File;)Ljava/net/URLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result-object v5

    #@33
    monitor-exit p0

    #@34
    return-object v5

    #@35
    .line 91
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/net/URL;

    #@37
    const-string/jumbo v6, "ftp"

    #@3a
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    .line 92
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    if-nez v5, :cond_2

    #@4d
    const-string/jumbo v5, ""

    #@50
    .line 91
    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    invoke-direct {v3, v6, v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5b
    .line 93
    .local v3, "ru":Ljava/net/URL;
    if-eqz p2, :cond_3

    #@5d
    .line 94
    invoke-virtual {v3, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    move-result-object v4

    #@61
    .line 101
    .end local v3    # "ru":Ljava/net/URL;
    :goto_1
    if-nez v4, :cond_4

    #@63
    .line 102
    :try_start_2
    new-instance v5, Ljava/io/IOException;

    #@65
    new-instance v6, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v7, "Unable to connect to: "

    #@6d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    .line 103
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    #@74
    move-result-object v7

    #@75
    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v6

    #@79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v6

    #@7d
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@80
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@81
    .end local v2    # "host":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@82
    monitor-exit p0

    #@83
    throw v5

    #@84
    .line 92
    .restart local v2    # "host":Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v8, "#"

    #@8c
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@93
    move-result-object v8

    #@94
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v5

    #@98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    goto :goto_0

    #@9d
    .line 96
    .restart local v3    # "ru":Ljava/net/URL;
    :cond_3
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a0
    move-result-object v4

    #@a1
    .local v4, "uc":Ljava/net/URLConnection;
    goto :goto_1

    #@a2
    .line 98
    .end local v3    # "ru":Ljava/net/URL;
    .end local v4    # "uc":Ljava/net/URLConnection;
    :catch_0
    move-exception v0

    #@a3
    .line 99
    .local v0, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    #@a4
    .local v4, "uc":Ljava/net/URLConnection;
    goto :goto_1

    #@a5
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "uc":Ljava/net/URLConnection;
    :cond_4
    monitor-exit p0

    #@a6
    .line 105
    return-object v4
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 2
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    #@0
    .prologue
    .line 67
    sget-char v0, Ljava/io/File;->separatorChar:C

    #@2
    const/16 v1, 0x2f

    #@4
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-super {p0, p1, v0, p3, p4}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V

    #@b
    .line 53
    return-void
.end method
