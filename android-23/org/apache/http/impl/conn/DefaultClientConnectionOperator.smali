.class public Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionOperator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 78
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    #@2
    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    #@5
    sput-object v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    #@7
    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 2
    .param p1, "schemes"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    if-nez p1, :cond_0

    #@5
    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 92
    const-string/jumbo v1, "Scheme registry must not be null."

    #@a
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 94
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@10
    .line 89
    return-void
.end method


# virtual methods
.method public createConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 1

    #@0
    .prologue
    .line 100
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnection;

    #@2
    invoke-direct {v0}, Lorg/apache/http/impl/conn/DefaultClientConnection;-><init>()V

    #@5
    return-object v0
.end method

.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 20
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "local"    # Ljava/net/InetAddress;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p5, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    if-nez p1, :cond_0

    #@2
    .line 113
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    .line 114
    const-string/jumbo v6, "Connection must not be null."

    #@7
    .line 113
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 116
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 117
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@f
    .line 118
    const-string/jumbo v6, "Target host must not be null."

    #@12
    .line 117
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v5

    #@16
    .line 122
    :cond_1
    if-nez p5, :cond_2

    #@18
    .line 123
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@1a
    .line 124
    const-string/jumbo v6, "Parameters must not be null."

    #@1d
    .line 123
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v5

    #@21
    .line 126
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_3

    #@27
    .line 127
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@29
    .line 128
    const-string/jumbo v6, "Connection must not be open."

    #@2c
    .line 127
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v5

    #@30
    .line 131
    :cond_3
    move-object/from16 v0, p0

    #@32
    iget-object v5, v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@34
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    #@3b
    move-result-object v18

    #@3c
    .line 132
    .local v18, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    #@3f
    move-result-object v19

    #@40
    .line 135
    .local v19, "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object/from16 v0, v19

    #@42
    instance-of v5, v0, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    #@44
    if-eqz v5, :cond_7

    #@46
    .line 136
    sget-object v3, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    #@48
    .local v3, "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object/from16 v16, v19

    #@4a
    .line 137
    check-cast v16, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    #@4c
    .line 142
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-static {v5}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    #@53
    move-result-object v10

    #@54
    .line 144
    .local v10, "addresses":[Ljava/net/InetAddress;
    const/4 v15, 0x0

    #@55
    .local v15, "i":I
    :goto_1
    array-length v5, v10

    #@56
    if-ge v15, v5, :cond_6

    #@58
    .line 145
    invoke-interface {v3}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    #@5b
    move-result-object v4

    #@5c
    .line 146
    .local v4, "sock":Ljava/net/Socket;
    move-object/from16 v0, p1

    #@5e
    move-object/from16 v1, p2

    #@60
    invoke-interface {v0, v4, v1}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    #@63
    .line 150
    :try_start_0
    aget-object v5, v10, v15

    #@65
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    .line 151
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    #@6c
    move-result v6

    #@6d
    move-object/from16 v0, v18

    #@6f
    invoke-virtual {v0, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    #@72
    move-result v6

    #@73
    .line 152
    const/4 v8, 0x0

    #@74
    move-object/from16 v7, p3

    #@76
    move-object/from16 v9, p5

    #@78
    .line 149
    invoke-interface/range {v3 .. v9}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    #@7b
    move-result-object v12

    #@7c
    .line 153
    .local v12, "connsock":Ljava/net/Socket;
    if-eq v4, v12, :cond_4

    #@7e
    .line 154
    move-object v4, v12

    #@7f
    .line 155
    move-object/from16 v0, p1

    #@81
    move-object/from16 v1, p2

    #@83
    invoke-interface {v0, v4, v1}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    #@86
    .line 168
    :cond_4
    move-object/from16 v0, p0

    #@88
    move-object/from16 v1, p4

    #@8a
    move-object/from16 v2, p5

    #@8c
    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    #@8f
    .line 169
    if-eqz v16, :cond_8

    #@91
    .line 171
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    #@94
    move-result-object v5

    #@95
    .line 172
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    #@98
    move-result v6

    #@99
    move-object/from16 v0, v18

    #@9b
    invoke-virtual {v0, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    #@9e
    move-result v6

    #@9f
    .line 173
    const/4 v7, 0x1

    #@a0
    .line 170
    move-object/from16 v0, v16

    #@a2
    invoke-interface {v0, v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    #@a5
    move-result-object v17

    #@a6
    .line 174
    .local v17, "layeredsock":Ljava/net/Socket;
    move-object/from16 v0, v17

    #@a8
    if-eq v0, v4, :cond_5

    #@aa
    .line 175
    move-object/from16 v0, p1

    #@ac
    move-object/from16 v1, v17

    #@ae
    move-object/from16 v2, p2

    #@b0
    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    #@b3
    .line 177
    :cond_5
    move-object/from16 v0, v19

    #@b5
    move-object/from16 v1, v17

    #@b7
    invoke-interface {v0, v1}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    #@ba
    move-result v5

    #@bb
    move-object/from16 v0, p1

    #@bd
    move-object/from16 v1, p5

    #@bf
    invoke-interface {v0, v5, v1}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    #@c2
    .line 110
    .end local v4    # "sock":Ljava/net/Socket;
    .end local v12    # "connsock":Ljava/net/Socket;
    .end local v17    # "layeredsock":Ljava/net/Socket;
    :cond_6
    :goto_2
    return-void

    #@c3
    .line 139
    .end local v3    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v10    # "addresses":[Ljava/net/InetAddress;
    .end local v15    # "i":I
    :cond_7
    move-object/from16 v3, v19

    #@c5
    .line 140
    .restart local v3    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    const/16 v16, 0x0

    #@c7
    .local v16, "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    goto :goto_0

    #@c8
    .line 179
    .end local v16    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    .restart local v4    # "sock":Ljava/net/Socket;
    .restart local v10    # "addresses":[Ljava/net/InetAddress;
    .restart local v12    # "connsock":Ljava/net/Socket;
    .restart local v15    # "i":I
    :cond_8
    move-object/from16 v0, v19

    #@ca
    invoke-interface {v0, v4}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    #@cd
    move-result v5

    #@ce
    move-object/from16 v0, p1

    #@d0
    move-object/from16 v1, p5

    #@d2
    invoke-interface {v0, v5, v1}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    #@d5
    goto :goto_2

    #@d6
    .line 184
    .end local v12    # "connsock":Ljava/net/Socket;
    :catch_0
    move-exception v13

    #@d7
    .line 185
    .local v13, "ex":Ljava/net/SocketException;
    array-length v5, v10

    #@d8
    add-int/lit8 v5, v5, -0x1

    #@da
    if-ne v15, v5, :cond_a

    #@dc
    .line 187
    instance-of v5, v13, Ljava/net/ConnectException;

    #@de
    if-eqz v5, :cond_9

    #@e0
    move-object v11, v13

    #@e1
    .line 188
    check-cast v11, Ljava/net/ConnectException;

    #@e3
    .line 193
    .local v11, "cause":Ljava/net/ConnectException;
    :goto_3
    new-instance v5, Lorg/apache/http/conn/HttpHostConnectException;

    #@e5
    move-object/from16 v0, p2

    #@e7
    invoke-direct {v5, v0, v11}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    #@ea
    throw v5

    #@eb
    .line 196
    .end local v11    # "cause":Ljava/net/ConnectException;
    .end local v13    # "ex":Ljava/net/SocketException;
    :catch_1
    move-exception v14

    #@ec
    .line 197
    .local v14, "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    array-length v5, v10

    #@ed
    add-int/lit8 v5, v5, -0x1

    #@ef
    if-ne v15, v5, :cond_a

    #@f1
    .line 198
    throw v14

    #@f2
    .line 190
    .end local v14    # "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    .restart local v13    # "ex":Ljava/net/SocketException;
    :cond_9
    new-instance v11, Ljava/net/ConnectException;

    #@f4
    invoke-virtual {v13}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    #@f7
    move-result-object v5

    #@f8
    invoke-direct {v11, v5}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    #@fb
    .line 191
    .restart local v11    # "cause":Ljava/net/ConnectException;
    invoke-virtual {v11, v13}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@fe
    goto :goto_3

    #@ff
    .line 144
    .end local v11    # "cause":Ljava/net/ConnectException;
    .end local v13    # "ex":Ljava/net/SocketException;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    #@101
    goto/16 :goto_1
.end method

.method protected prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 269
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z

    #@4
    move-result v2

    #@5
    invoke-virtual {p1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    #@8
    .line 270
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    #@b
    move-result v2

    #@c
    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    #@f
    .line 272
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getLinger(Lorg/apache/http/params/HttpParams;)I

    #@12
    move-result v0

    #@13
    .line 273
    .local v0, "linger":I
    if-ltz v0, :cond_1

    #@15
    .line 274
    if-lez v0, :cond_0

    #@17
    const/4 v1, 0x1

    #@18
    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    #@1b
    .line 264
    :cond_1
    return-void
.end method

.method public updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 8
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 213
    if-nez p1, :cond_0

    #@2
    .line 214
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    .line 215
    const-string/jumbo v5, "Connection must not be null."

    #@7
    .line 214
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 217
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 218
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@f
    .line 219
    const-string/jumbo v5, "Target host must not be null."

    #@12
    .line 218
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 222
    :cond_1
    if-nez p4, :cond_2

    #@18
    .line 223
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1a
    .line 224
    const-string/jumbo v5, "Parameters must not be null."

    #@1d
    .line 223
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v4

    #@21
    .line 226
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    #@24
    move-result v4

    #@25
    if-nez v4, :cond_3

    #@27
    .line 227
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@29
    .line 228
    const-string/jumbo v5, "Connection must be open."

    #@2c
    .line 227
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v4

    #@30
    .line 231
    :cond_3
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@32
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    #@39
    move-result-object v2

    #@3a
    .line 232
    .local v2, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    #@3d
    move-result-object v4

    #@3e
    instance-of v4, v4, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    #@40
    if-nez v4, :cond_4

    #@42
    .line 233
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@44
    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v6, "Target scheme ("

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getName()Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    .line 235
    const-string/jumbo v6, ") must have layered socket factory."

    #@5b
    .line 234
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    .line 233
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@66
    throw v4

    #@67
    .line 238
    :cond_4
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    #@6a
    move-result-object v1

    #@6b
    check-cast v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    #@6d
    .line 242
    .local v1, "lsf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    #@78
    move-result v6

    #@79
    invoke-virtual {v2, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    #@7c
    move-result v6

    #@7d
    const/4 v7, 0x1

    #@7e
    .line 241
    invoke-interface {v1, v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    #@81
    move-result-object v3

    #@82
    .line 246
    .local v3, "sock":Ljava/net/Socket;
    invoke-virtual {p0, v3, p3, p4}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    #@85
    .line 247
    invoke-interface {v1, v3}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    #@88
    move-result v4

    #@89
    invoke-interface {p1, v3, p2, v4, p4}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    #@8c
    .line 210
    return-void

    #@8d
    .line 243
    .end local v3    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v0

    #@8e
    .line 244
    .local v0, "ex":Ljava/net/ConnectException;
    new-instance v4, Lorg/apache/http/conn/HttpHostConnectException;

    #@90
    invoke-direct {v4, p2, v0}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    #@93
    throw v4
.end method
