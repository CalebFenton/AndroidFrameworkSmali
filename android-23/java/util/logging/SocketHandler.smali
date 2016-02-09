.class public Ljava/util/logging/SocketHandler;
.super Ljava/util/logging/StreamHandler;
.source "SocketHandler.java"


# static fields
.field private static final DEFAULT_FORMATTER:Ljava/lang/String; = "java.util.logging.XMLFormatter"

.field private static final DEFAULT_LEVEL:Ljava/lang/String; = "ALL"


# instance fields
.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 77
    const-string/jumbo v0, "ALL"

    #@4
    const-string/jumbo v1, "java.util.logging.XMLFormatter"

    #@7
    invoke-direct {p0, v0, v2, v1, v2}, Ljava/util/logging/StreamHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 78
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@d
    move-result-object v0

    #@e
    .line 79
    const-string/jumbo v1, "java.util.logging.SocketHandler.host"

    #@11
    .line 78
    invoke-virtual {v0, v1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 79
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@18
    move-result-object v1

    #@19
    .line 81
    const-string/jumbo v2, "java.util.logging.SocketHandler.port"

    #@1c
    .line 79
    invoke-virtual {v1, v2}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 78
    invoke-direct {p0, v0, v1}, Ljava/util/logging/SocketHandler;->initSocket(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 99
    const-string/jumbo v0, "ALL"

    #@4
    const-string/jumbo v1, "java.util.logging.XMLFormatter"

    #@7
    invoke-direct {p0, v0, v2, v1, v2}, Ljava/util/logging/StreamHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 100
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-direct {p0, p1, v0}, Ljava/util/logging/SocketHandler;->initSocket(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 98
    return-void
.end method

.method private initSocket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 107
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v4, "host == null || host.isEmpty()"

    #@d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 112
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parsePositiveInt(Ljava/lang/String;)I

    #@14
    move-result v2

    #@15
    .line 114
    .local v2, "p":I
    if-nez v2, :cond_2

    #@17
    .line 115
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "Illegal port argument "

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 117
    .end local v2    # "p":I
    :catch_0
    move-exception v1

    #@32
    .line 118
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@34
    new-instance v4, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v5, "Illegal port argument "

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v3

    #@4c
    .line 122
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "p":I
    :cond_2
    :try_start_1
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    #@4f
    move-result v3

    #@50
    if-nez v3, :cond_3

    #@52
    .line 123
    new-instance v3, Ljava/io/IOException;

    #@54
    const-string/jumbo v4, "Cleartext traffic not permitted"

    #@57
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@5b
    .line 126
    :catch_1
    move-exception v0

    #@5c
    .line 127
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/util/logging/SocketHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    #@5f
    move-result-object v3

    #@60
    const-string/jumbo v4, "Failed to establish the network connection"

    #@63
    .line 128
    const/4 v5, 0x4

    #@64
    .line 127
    invoke-virtual {v3, v4, v0, v5}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    #@67
    .line 129
    throw v0

    #@68
    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-instance v3, Ljava/net/Socket;

    #@6a
    invoke-direct {v3, p1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    #@6d
    iput-object v3, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@6f
    .line 131
    new-instance v3, Ljava/io/BufferedOutputStream;

    #@71
    iget-object v4, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    #@73
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@76
    move-result-object v4

    #@77
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@7a
    invoke-super {p0, v3}, Ljava/util/logging/StreamHandler;->internalSetOutputStream(Ljava/io/OutputStream;)V

    #@7d
    .line 104
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    #@0
    .prologue
    .line 140
    :try_start_0
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    #@3
    .line 141
    iget-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 142
    iget-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    #@9
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    #@c
    .line 143
    const/4 v1, 0x0

    #@d
    iput-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 138
    :cond_0
    :goto_0
    return-void

    #@10
    .line 145
    :catch_0
    move-exception v0

    #@11
    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/logging/SocketHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, "Exception occurred when closing the socket handler"

    #@18
    .line 147
    const/4 v3, 0x3

    #@19
    .line 146
    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    #@1c
    goto :goto_0
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 0
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 159
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    #@3
    .line 160
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->flush()V

    #@6
    .line 158
    return-void
.end method
