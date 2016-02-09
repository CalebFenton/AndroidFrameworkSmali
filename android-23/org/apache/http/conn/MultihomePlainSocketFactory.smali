.class public final Lorg/apache/http/conn/MultihomePlainSocketFactory;
.super Ljava/lang/Object;
.source "MultihomePlainSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lorg/apache/http/conn/MultihomePlainSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    new-instance v0, Lorg/apache/http/conn/MultihomePlainSocketFactory;

    #@2
    invoke-direct {v0}, Lorg/apache/http/conn/MultihomePlainSocketFactory;-><init>()V

    #@5
    sput-object v0, Lorg/apache/http/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/MultihomePlainSocketFactory;

    #@7
    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    return-void
.end method

.method public static getSocketFactory()Lorg/apache/http/conn/MultihomePlainSocketFactory;
    .locals 1

    #@0
    .prologue
    .line 74
    sget-object v0, Lorg/apache/http/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/MultihomePlainSocketFactory;

    #@2
    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 13
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    if-nez p2, :cond_0

    #@2
    .line 111
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v12, "Target host may not be null."

    #@7
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v11

    #@b
    .line 113
    :cond_0
    if-nez p6, :cond_1

    #@d
    .line 114
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v12, "Parameters may not be null."

    #@12
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v11

    #@16
    .line 117
    :cond_1
    if-nez p1, :cond_2

    #@18
    .line 118
    invoke-virtual {p0}, Lorg/apache/http/conn/MultihomePlainSocketFactory;->createSocket()Ljava/net/Socket;

    #@1b
    move-result-object p1

    #@1c
    .line 120
    :cond_2
    if-nez p4, :cond_3

    #@1e
    if-lez p5, :cond_5

    #@20
    .line 123
    :cond_3
    if-gez p5, :cond_4

    #@22
    .line 124
    const/16 p5, 0x0

    #@24
    .line 127
    :cond_4
    new-instance v8, Ljava/net/InetSocketAddress;

    #@26
    move-object/from16 v0, p4

    #@28
    move/from16 v1, p5

    #@2a
    invoke-direct {v8, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@2d
    .line 128
    .local v8, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {p1, v8}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    #@30
    .line 131
    .end local v8    # "isa":Ljava/net/InetSocketAddress;
    :cond_5
    invoke-static/range {p6 .. p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    #@33
    move-result v10

    #@34
    .line 133
    .local v10, "timeout":I
    invoke-static {p2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    #@37
    move-result-object v7

    #@38
    .line 134
    .local v7, "inetadrs":[Ljava/net/InetAddress;
    new-instance v4, Ljava/util/ArrayList;

    #@3a
    array-length v11, v7

    #@3b
    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    #@3e
    .line 135
    .local v4, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@41
    move-result-object v11

    #@42
    invoke-interface {v4, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@45
    .line 136
    invoke-static {v4}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    #@48
    .line 138
    const/4 v9, 0x0

    #@49
    .line 139
    .local v9, "lastEx":Ljava/io/IOException;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4c
    move-result-object v3

    #@4d
    .end local v9    # "lastEx":Ljava/io/IOException;
    .local v3, "address$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@50
    move-result v11

    #@51
    if-eqz v11, :cond_6

    #@53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@56
    move-result-object v2

    #@57
    check-cast v2, Ljava/net/InetAddress;

    #@59
    .line 141
    .local v2, "address":Ljava/net/InetAddress;
    :try_start_0
    new-instance v11, Ljava/net/InetSocketAddress;

    #@5b
    move/from16 v0, p3

    #@5d
    invoke-direct {v11, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@60
    invoke-virtual {p1, v11, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 152
    .end local v2    # "address":Ljava/net/InetAddress;
    :cond_6
    if-eqz v9, :cond_7

    #@65
    .line 153
    throw v9

    #@66
    .line 145
    .restart local v2    # "address":Ljava/net/InetAddress;
    :catch_0
    move-exception v5

    #@67
    .line 147
    .local v5, "ex":Ljava/io/IOException;
    new-instance p1, Ljava/net/Socket;

    #@69
    .end local p1    # "sock":Ljava/net/Socket;
    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    #@6c
    .line 149
    .restart local p1    # "sock":Ljava/net/Socket;
    move-object v9, v5

    #@6d
    .local v9, "lastEx":Ljava/io/IOException;
    goto :goto_0

    #@6e
    .line 143
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v9    # "lastEx":Ljava/io/IOException;
    :catch_1
    move-exception v6

    #@6f
    .line 144
    .local v6, "ex":Ljava/net/SocketTimeoutException;
    throw v6

    #@70
    .line 155
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v6    # "ex":Ljava/net/SocketTimeoutException;
    :cond_7
    return-object p1
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/net/Socket;

    #@2
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    #@5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 204
    if-ne p1, p0, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 214
    const-class v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    if-nez p1, :cond_0

    #@2
    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Socket may not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 179
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    const-class v1, Ljava/net/Socket;

    #@11
    if-eq v0, v1, :cond_1

    #@13
    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    .line 181
    const-string/jumbo v1, "Socket not created by this factory."

    #@18
    .line 180
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 185
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v1, "Socket is closed."

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 189
    :cond_2
    const/4 v0, 0x0

    #@2c
    return v0
.end method
