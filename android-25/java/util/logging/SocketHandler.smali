.class public Ljava/util/logging/SocketHandler;
.super Ljava/util/logging/StreamHandler;
.source "SocketHandler.java"


# instance fields
.field private host:Ljava/lang/String;

.field private port:I

.field private portProperty:Ljava/lang/String;

.field private sock:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@3
    .line 110
    const/4 v1, 0x0

    #@4
    iput-boolean v1, p0, Ljava/util/logging/Handler;->sealed:Z

    #@6
    .line 111
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->configure()V

    #@9
    .line 114
    :try_start_0
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 119
    const/4 v1, 0x1

    #@d
    iput-boolean v1, p0, Ljava/util/logging/Handler;->sealed:Z

    #@f
    .line 108
    return-void

    #@10
    .line 115
    :catch_0
    move-exception v0

    #@11
    .line 116
    .local v0, "ix":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "SocketHandler: connect failed to "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    iget-object v3, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, ":"

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    iget v3, p0, Ljava/util/logging/SocketHandler;->port:I

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@39
    .line 117
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@3
    .line 138
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    #@6
    .line 139
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->configure()V

    #@9
    .line 140
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    #@c
    .line 141
    iput p2, p0, Ljava/util/logging/SocketHandler;->port:I

    #@e
    .line 142
    iput-object p1, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    #@10
    .line 143
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->connect()V

    #@13
    .line 137
    return-void
.end method

.method private configure()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 79
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@4
    move-result-object v3

    #@5
    .line 80
    .local v3, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 82
    .local v0, "cname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    const-string/jumbo v5, ".level"

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    sget-object v5, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    #@23
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {p0, v4}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    #@2a
    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    const-string/jumbo v5, ".filter"

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v4, v6}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {p0, v4}, Ljava/util/logging/Handler;->setFilter(Ljava/util/logging/Filter;)V

    #@45
    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    const-string/jumbo v5, ".formatter"

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    new-instance v5, Ljava/util/logging/XMLFormatter;

    #@5b
    invoke-direct {v5}, Ljava/util/logging/XMLFormatter;-><init>()V

    #@5e
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {p0, v4}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    #@65
    .line 86
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    const-string/jumbo v5, ".encoding"

    #@71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    const/4 v5, 0x0

    #@7a
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@81
    .line 95
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    const-string/jumbo v5, ".port"

    #@8d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v4

    #@95
    const/4 v5, 0x0

    #@96
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    #@99
    move-result v4

    #@9a
    iput v4, p0, Ljava/util/logging/SocketHandler;->port:I

    #@9c
    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v4

    #@a5
    const-string/jumbo v5, ".host"

    #@a8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v4

    #@ac
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v4

    #@b0
    invoke-virtual {v3, v4, v6}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b3
    move-result-object v4

    #@b4
    iput-object v4, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    #@b6
    .line 78
    return-void

    #@b7
    .line 87
    :catch_0
    move-exception v1

    #@b8
    .line 89
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    #@b9
    :try_start_1
    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@bc
    goto :goto_0

    #@bd
    .line 90
    :catch_1
    move-exception v2

    #@be
    .local v2, "ex2":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    iget v2, p0, Ljava/util/logging/SocketHandler;->port:I

    #@2
    if-nez v2, :cond_0

    #@4
    .line 149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "Bad port: "

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    iget v4, p0, Ljava/util/logging/SocketHandler;->port:I

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 151
    :cond_0
    iget-object v2, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    #@22
    if-nez v2, :cond_1

    #@24
    .line 152
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "Null host name: "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    iget-object v4, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v2

    #@40
    .line 155
    :cond_1
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    #@47
    move-result v2

    #@48
    if-nez v2, :cond_2

    #@4a
    .line 156
    new-instance v2, Ljava/io/IOException;

    #@4c
    const-string/jumbo v3, "Cleartext traffic not permitted"

    #@4f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@52
    throw v2

    #@53
    .line 160
    :cond_2
    new-instance v2, Ljava/net/Socket;

    #@55
    iget-object v3, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    #@57
    iget v4, p0, Ljava/util/logging/SocketHandler;->port:I

    #@59
    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    #@5c
    iput-object v2, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;

    #@5e
    .line 161
    iget-object v2, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;

    #@60
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@63
    move-result-object v1

    #@64
    .line 162
    .local v1, "out":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    #@66
    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@69
    .line 163
    .local v0, "bout":Ljava/io/BufferedOutputStream;
    invoke-virtual {p0, v0}, Ljava/util/logging/StreamHandler;->setOutputStream(Ljava/io/OutputStream;)V

    #@6c
    .line 146
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 173
    :try_start_0
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    #@4
    .line 174
    iget-object v1, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 176
    :try_start_1
    iget-object v1, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;

    #@a
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    .line 181
    :cond_0
    :goto_0
    const/4 v1, 0x0

    #@e
    :try_start_2
    iput-object v1, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 172
    return-void

    #@12
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1

    #@15
    .line 177
    :catch_0
    move-exception v0

    #@16
    .local v0, "ix":Ljava/io/IOException;
    goto :goto_0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 191
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/StreamHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 192
    return-void

    #@9
    .line 194
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    #@c
    .line 195
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 190
    return-void

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method
