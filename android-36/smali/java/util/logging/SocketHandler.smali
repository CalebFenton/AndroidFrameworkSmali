.class public Ljava/util/logging/SocketHandler;
.super Ljava/util/logging/StreamHandler;
.source "SocketHandler.java"


# instance fields
.field private greylist-max-o host:Ljava/lang/String;

.field private greylist-max-o port:I

.field private greylist-max-o sock:Ljava/net/Socket;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/SocketHandler;->sealed:Z

    .line 124
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->configure()V

    .line 127
    :try_start_9
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->connect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_11

    .line 131
    nop

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/SocketHandler;->sealed:Z

    .line 133
    return-void

    .line 128
    :catch_11
    move-exception v0

    .line 129
    .local v0, "ix":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketHandler: connect failed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/logging/SocketHandler;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/SocketHandler;->sealed:Z

    .line 152
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->configure()V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/SocketHandler;->sealed:Z

    .line 154
    iput p2, p0, Ljava/util/logging/SocketHandler;->port:I

    .line 155
    iput-object p1, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->connect()V

    .line 157
    return-void
.end method

.method private greylist-max-o configure()V
    .registers 6

    .line 92
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 93
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "cname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/SocketHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".filter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/SocketHandler;->setFilter(Ljava/util/logging/Filter;)V

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".formatter"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/logging/XMLFormatter;

    invoke-direct {v4}, Ljava/util/logging/XMLFormatter;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/SocketHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 99
    :try_start_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".encoding"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/SocketHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7c} :catch_7d

    .line 107
    goto :goto_83

    .line 100
    :catch_7d
    move-exception v2

    .line 102
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_7e
    invoke-virtual {p0, v3}, Ljava/util/logging/SocketHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    .line 106
    goto :goto_83

    .line 103
    :catch_82
    move-exception v4

    .line 108
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".port"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljava/util/logging/SocketHandler;->port:I

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".host"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    .line 110
    return-void
.end method

.method private greylist-max-o connect()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget v0, p0, Ljava/util/logging/SocketHandler;->port:I

    if-eqz v0, :cond_4f

    .line 164
    iget-object v0, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 169
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 174
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    iget v2, p0, Ljava/util/logging/SocketHandler;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;

    .line 175
    iget-object v0, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 176
    .local v0, "out":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 177
    .local v1, "bout":Ljava/io/BufferedOutputStream;
    invoke-virtual {p0, v1}, Ljava/util/logging/SocketHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 178
    return-void

    .line 170
    .end local v0    # "out":Ljava/io/OutputStream;
    .end local v1    # "bout":Ljava/io/BufferedOutputStream;
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cleartext traffic not permitted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null host name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/logging/SocketHandler;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 188
    :try_start_1
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 189
    iget-object v0, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14

    if-eqz v0, :cond_f

    .line 191
    :try_start_8
    iget-object v0, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_e
    .catchall {:try_start_8 .. :try_end_d} :catchall_14

    .line 194
    goto :goto_f

    .line 192
    .end local p0    # "this":Ljava/util/logging/SocketHandler;
    :catch_e
    move-exception v0

    .line 196
    :cond_f
    :goto_f
    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_14

    .line 197
    monitor-exit p0

    return-void

    .line 187
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public declared-synchronized whitelist test-api publish(Ljava/util/logging/LogRecord;)V
    .registers 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    monitor-enter p0

    .line 207
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/logging/SocketHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    if-nez v0, :cond_9

    .line 208
    monitor-exit p0

    return-void

    .line 210
    :cond_9
    :try_start_9
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 211
    invoke-virtual {p0}, Ljava/util/logging/SocketHandler;->flush()V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    .line 212
    monitor-exit p0

    return-void

    .line 206
    .end local p0    # "this":Ljava/util/logging/SocketHandler;
    .end local p1    # "record":Ljava/util/logging/LogRecord;
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method
