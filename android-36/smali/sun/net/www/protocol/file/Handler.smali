.class public Lsun/net/www/protocol/file/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method

.method private blacklist getHost(Ljava/net/URL;)Ljava/lang/String;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .line 46
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 48
    const-string v0, ""

    .line 49
    :cond_8
    return-object v0
.end method


# virtual methods
.method protected blacklist createFileURLConnection(Ljava/net/URL;Ljava/io/File;)Ljava/net/URLConnection;
    .registers 4
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;

    .line 112
    new-instance v0, Lsun/net/www/protocol/file/FileURLConnection;

    invoke-direct {v0, p1, p2}, Lsun/net/www/protocol/file/FileURLConnection;-><init>(Ljava/net/URL;Ljava/io/File;)V

    return-object v0
.end method

.method protected whitelist test-api hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 9
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .line 128
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "s1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "s2":Ljava/lang/String;
    const-string v2, "localhost"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v3, :cond_1c

    if-eqz v1, :cond_1b

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 131
    :cond_1b
    return v5

    .line 132
    :cond_1c
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    if-eqz v0, :cond_2a

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 133
    :cond_2a
    return v5

    .line 134
    :cond_2b
    invoke-super {p0, p1, p2}, Ljava/net/URLStreamHandler;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v2

    return v2
.end method

.method public declared-synchronized whitelist test-api openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 72
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/file/Handler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 72
    .end local p0    # "this":Lsun/net/www/protocol/file/Handler;
    .end local p1    # "u":Ljava/net/URL;
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized whitelist test-api openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 9
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_8b

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "localhost"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_9e

    if-eqz v1, :cond_20

    goto :goto_8b

    .line 91
    :cond_20
    :try_start_20
    new-instance v1, Ljava/net/URL;

    const-string v2, "ftp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3a

    const-string v4, ""

    goto :goto_51

    .end local p0    # "this":Lsun/net/www/protocol/file/Handler;
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v1, "ru":Ljava/net/URL;
    if-eqz p2, :cond_63

    .line 94
    invoke-virtual {v1, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    .local v2, "uc":Ljava/net/URLConnection;
    goto :goto_67

    .line 96
    .end local v2    # "uc":Ljava/net/URLConnection;
    :cond_63
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_67} :catch_68
    .catchall {:try_start_20 .. :try_end_67} :catchall_9e

    .line 100
    .restart local v2    # "uc":Ljava/net/URLConnection;
    :goto_67
    goto :goto_6a

    .line 98
    .end local v1    # "ru":Ljava/net/URL;
    .end local v2    # "uc":Ljava/net/URLConnection;
    :catch_68
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 101
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "uc":Ljava/net/URLConnection;
    :goto_6a
    if-eqz v2, :cond_6e

    .line 105
    monitor-exit p0

    return-object v2

    .line 102
    .restart local p0    # "this":Lsun/net/www/protocol/file/Handler;
    :cond_6e
    :try_start_6e
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to connect to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 103
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    .end local v2    # "uc":Ljava/net/URLConnection;
    .end local p0    # "this":Lsun/net/www/protocol/file/Handler;
    :cond_8b
    :goto_8b
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0, p1, v1}, Lsun/net/www/protocol/file/Handler;->createFileURLConnection(Ljava/net/URL;Ljava/io/File;)Ljava/net/URLConnection;

    move-result-object v2
    :try_end_9c
    .catchall {:try_start_6e .. :try_end_9c} :catchall_9e

    monitor-exit p0

    return-object v2

    .line 76
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local p1    # "u":Ljava/net/URL;
    .end local p2    # "p":Ljava/net/Proxy;
    :catchall_9e
    move-exception p1

    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw p1
.end method

.method protected whitelist test-api parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .registers 7
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    .line 67
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3, p4}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V

    .line 68
    return-void
.end method
