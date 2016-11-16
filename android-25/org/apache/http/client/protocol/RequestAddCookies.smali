.class public Lorg/apache/http/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    invoke-virtual {p0}, Lorg/apache/http/client/protocol/RequestAddCookies;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    #@d
    .line 79
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 26
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    if-nez p1, :cond_0

    #@2
    .line 86
    new-instance v23, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v24, "HTTP request may not be null"

    #@7
    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v23

    #@b
    .line 88
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 89
    new-instance v23, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v24, "HTTP context may not be null"

    #@12
    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v23

    #@16
    .line 94
    :cond_1
    const-string/jumbo v23, "http.cookie-store"

    #@19
    .line 93
    move-object/from16 v0, p2

    #@1b
    move-object/from16 v1, v23

    #@1d
    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@20
    move-result-object v8

    #@21
    check-cast v8, Lorg/apache/http/client/CookieStore;

    #@23
    .line 95
    .local v8, "cookieStore":Lorg/apache/http/client/CookieStore;
    if-nez v8, :cond_2

    #@25
    .line 96
    move-object/from16 v0, p0

    #@27
    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    #@29
    move-object/from16 v23, v0

    #@2b
    const-string/jumbo v24, "Cookie store not available in HTTP context"

    #@2e
    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    #@31
    .line 97
    return-void

    #@32
    .line 102
    :cond_2
    const-string/jumbo v23, "http.cookiespec-registry"

    #@35
    .line 101
    move-object/from16 v0, p2

    #@37
    move-object/from16 v1, v23

    #@39
    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@3c
    move-result-object v19

    #@3d
    check-cast v19, Lorg/apache/http/cookie/CookieSpecRegistry;

    #@3f
    .line 103
    .local v19, "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    if-nez v19, :cond_3

    #@41
    .line 104
    move-object/from16 v0, p0

    #@43
    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    #@45
    move-object/from16 v23, v0

    #@47
    const-string/jumbo v24, "CookieSpec registry not available in HTTP context"

    #@4a
    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    #@4d
    .line 105
    return-void

    #@4e
    .line 110
    :cond_3
    const-string/jumbo v23, "http.target_host"

    #@51
    .line 109
    move-object/from16 v0, p2

    #@53
    move-object/from16 v1, v23

    #@55
    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@58
    move-result-object v21

    #@59
    check-cast v21, Lorg/apache/http/HttpHost;

    #@5b
    .line 111
    .local v21, "targetHost":Lorg/apache/http/HttpHost;
    if-nez v21, :cond_4

    #@5d
    .line 112
    new-instance v23, Ljava/lang/IllegalStateException;

    #@5f
    const-string/jumbo v24, "Target host not specified in HTTP context"

    #@62
    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@65
    throw v23

    #@66
    .line 117
    :cond_4
    const-string/jumbo v23, "http.connection"

    #@69
    .line 116
    move-object/from16 v0, p2

    #@6b
    move-object/from16 v1, v23

    #@6d
    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@70
    move-result-object v3

    #@71
    check-cast v3, Lorg/apache/http/conn/ManagedClientConnection;

    #@73
    .line 118
    .local v3, "conn":Lorg/apache/http/conn/ManagedClientConnection;
    if-nez v3, :cond_5

    #@75
    .line 119
    new-instance v23, Ljava/lang/IllegalStateException;

    #@77
    const-string/jumbo v24, "Client connection not specified in HTTP context"

    #@7a
    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v23

    #@7e
    .line 122
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@81
    move-result-object v23

    #@82
    invoke-static/range {v23 .. v23}, Lorg/apache/http/client/params/HttpClientParams;->getCookiePolicy(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    #@85
    move-result-object v17

    #@86
    .line 123
    .local v17, "policy":Ljava/lang/String;
    move-object/from16 v0, p0

    #@88
    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    #@8a
    move-object/from16 v23, v0

    #@8c
    invoke-interface/range {v23 .. v23}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@8f
    move-result v23

    #@90
    if-eqz v23, :cond_6

    #@92
    .line 124
    move-object/from16 v0, p0

    #@94
    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    #@96
    move-object/from16 v23, v0

    #@98
    new-instance v24, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v25, "CookieSpec selected: "

    #@a0
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v24

    #@a4
    move-object/from16 v0, v24

    #@a6
    move-object/from16 v1, v17

    #@a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v24

    #@ac
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v24

    #@b0
    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@b3
    .line 128
    :cond_6
    move-object/from16 v0, p1

    #@b5
    instance-of v0, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    #@b7
    move/from16 v23, v0

    #@b9
    if-eqz v23, :cond_a

    #@bb
    move-object/from16 v23, p1

    #@bd
    .line 129
    check-cast v23, Lorg/apache/http/client/methods/HttpUriRequest;

    #@bf
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    #@c2
    move-result-object v20

    #@c3
    .line 139
    .local v20, "requestURI":Ljava/net/URI;
    :goto_0
    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    #@c6
    move-result-object v14

    #@c7
    .line 140
    .local v14, "hostName":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/HttpHost;->getPort()I

    #@ca
    move-result v18

    #@cb
    .line 141
    .local v18, "port":I
    if-gez v18, :cond_7

    #@cd
    .line 142
    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->getRemotePort()I

    #@d0
    move-result v18

    #@d1
    .line 145
    :cond_7
    new-instance v6, Lorg/apache/http/cookie/CookieOrigin;

    #@d3
    .line 148
    invoke-virtual/range {v20 .. v20}, Ljava/net/URI;->getPath()Ljava/lang/String;

    #@d6
    move-result-object v23

    #@d7
    .line 149
    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->isSecure()Z

    #@da
    move-result v24

    #@db
    .line 145
    move/from16 v0, v18

    #@dd
    move-object/from16 v1, v23

    #@df
    move/from16 v2, v24

    #@e1
    invoke-direct {v6, v14, v0, v1, v2}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@e4
    .line 152
    .local v6, "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@e7
    move-result-object v23

    #@e8
    move-object/from16 v0, v19

    #@ea
    move-object/from16 v1, v17

    #@ec
    move-object/from16 v2, v23

    #@ee
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->getCookieSpec(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;

    #@f1
    move-result-object v7

    #@f2
    .line 154
    .local v7, "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    new-instance v9, Ljava/util/ArrayList;

    #@f4
    invoke-interface {v8}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    #@f7
    move-result-object v23

    #@f8
    move-object/from16 v0, v23

    #@fa
    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@fd
    .line 156
    .local v9, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v15, Ljava/util/ArrayList;

    #@ff
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@102
    .line 157
    .local v15, "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@105
    move-result-object v5

    #@106
    .local v5, "cookie$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@109
    move-result v23

    #@10a
    if-eqz v23, :cond_b

    #@10c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10f
    move-result-object v4

    #@110
    check-cast v4, Lorg/apache/http/cookie/Cookie;

    #@112
    .line 158
    .local v4, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v7, v4, v6}, Lorg/apache/http/cookie/CookieSpec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    #@115
    move-result v23

    #@116
    if-eqz v23, :cond_8

    #@118
    .line 159
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    #@11c
    move-object/from16 v23, v0

    #@11e
    invoke-interface/range {v23 .. v23}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@121
    move-result v23

    #@122
    if-eqz v23, :cond_9

    #@124
    .line 160
    move-object/from16 v0, p0

    #@126
    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    #@128
    move-object/from16 v23, v0

    #@12a
    new-instance v24, Ljava/lang/StringBuilder;

    #@12c
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@12f
    const-string/jumbo v25, "Cookie "

    #@132
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v24

    #@136
    move-object/from16 v0, v24

    #@138
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v24

    #@13c
    const-string/jumbo v25, " match "

    #@13f
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v24

    #@143
    move-object/from16 v0, v24

    #@145
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v24

    #@149
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v24

    #@14d
    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@150
    .line 162
    :cond_9
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@153
    goto :goto_1

    #@154
    .line 132
    .end local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v5    # "cookie$iterator":Ljava/util/Iterator;
    .end local v6    # "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    .end local v7    # "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    .end local v9    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v14    # "hostName":Ljava/lang/String;
    .end local v15    # "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v18    # "port":I
    .end local v20    # "requestURI":Ljava/net/URI;
    :cond_a
    :try_start_0
    new-instance v20, Ljava/net/URI;

    #@156
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@159
    move-result-object v23

    #@15a
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    #@15d
    move-result-object v23

    #@15e
    move-object/from16 v0, v20

    #@160
    move-object/from16 v1, v23

    #@162
    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@165
    .restart local v20    # "requestURI":Ljava/net/URI;
    goto/16 :goto_0

    #@167
    .line 133
    .end local v20    # "requestURI":Ljava/net/URI;
    :catch_0
    move-exception v10

    #@168
    .line 134
    .local v10, "ex":Ljava/net/URISyntaxException;
    new-instance v23, Lorg/apache/http/ProtocolException;

    #@16a
    new-instance v24, Ljava/lang/StringBuilder;

    #@16c
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@16f
    const-string/jumbo v25, "Invalid request URI: "

    #@172
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v24

    #@176
    .line 135
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@179
    move-result-object v25

    #@17a
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    #@17d
    move-result-object v25

    #@17e
    .line 134
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v24

    #@182
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@185
    move-result-object v24

    #@186
    move-object/from16 v0, v23

    #@188
    move-object/from16 v1, v24

    #@18a
    invoke-direct {v0, v1, v10}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18d
    throw v23

    #@18e
    .line 166
    .end local v10    # "ex":Ljava/net/URISyntaxException;
    .restart local v5    # "cookie$iterator":Ljava/util/Iterator;
    .restart local v6    # "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    .restart local v7    # "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    .restart local v9    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v14    # "hostName":Ljava/lang/String;
    .restart local v15    # "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v18    # "port":I
    .restart local v20    # "requestURI":Ljava/net/URI;
    :cond_b
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    #@191
    move-result v23

    #@192
    if-nez v23, :cond_c

    #@194
    .line 167
    invoke-interface {v7, v15}, Lorg/apache/http/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    #@197
    move-result-object v13

    #@198
    .line 168
    .local v13, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19b
    move-result-object v12

    #@19c
    .local v12, "header$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@19f
    move-result v23

    #@1a0
    if-eqz v23, :cond_c

    #@1a2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a5
    move-result-object v11

    #@1a6
    check-cast v11, Lorg/apache/http/Header;

    #@1a8
    .line 169
    .local v11, "header":Lorg/apache/http/Header;
    move-object/from16 v0, p1

    #@1aa
    invoke-interface {v0, v11}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    #@1ad
    goto :goto_2

    #@1ae
    .line 173
    .end local v11    # "header":Lorg/apache/http/Header;
    .end local v12    # "header$iterator":Ljava/util/Iterator;
    .end local v13    # "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_c
    invoke-interface {v7}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    #@1b1
    move-result v22

    #@1b2
    .line 174
    .local v22, "ver":I
    if-lez v22, :cond_f

    #@1b4
    .line 175
    const/16 v16, 0x0

    #@1b6
    .line 176
    .local v16, "needVersionHeader":Z
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b9
    move-result-object v5

    #@1ba
    :cond_d
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1bd
    move-result v23

    #@1be
    if-eqz v23, :cond_e

    #@1c0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c3
    move-result-object v4

    #@1c4
    check-cast v4, Lorg/apache/http/cookie/Cookie;

    #@1c6
    .line 177
    .restart local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v4}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    #@1c9
    move-result v23

    #@1ca
    move/from16 v0, v22

    #@1cc
    move/from16 v1, v23

    #@1ce
    if-eq v0, v1, :cond_d

    #@1d0
    .line 178
    const/16 v16, 0x1

    #@1d2
    goto :goto_3

    #@1d3
    .line 182
    .end local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_e
    if-eqz v16, :cond_f

    #@1d5
    .line 183
    invoke-interface {v7}, Lorg/apache/http/cookie/CookieSpec;->getVersionHeader()Lorg/apache/http/Header;

    #@1d8
    move-result-object v11

    #@1d9
    .line 184
    .restart local v11    # "header":Lorg/apache/http/Header;
    if-eqz v11, :cond_f

    #@1db
    .line 186
    move-object/from16 v0, p1

    #@1dd
    invoke-interface {v0, v11}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    #@1e0
    .line 193
    .end local v11    # "header":Lorg/apache/http/Header;
    .end local v16    # "needVersionHeader":Z
    :cond_f
    const-string/jumbo v23, "http.cookie-spec"

    #@1e3
    move-object/from16 v0, p2

    #@1e5
    move-object/from16 v1, v23

    #@1e7
    invoke-interface {v0, v1, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@1ea
    .line 194
    const-string/jumbo v23, "http.cookie-origin"

    #@1ed
    move-object/from16 v0, p2

    #@1ef
    move-object/from16 v1, v23

    #@1f1
    invoke-interface {v0, v1, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@1f4
    .line 84
    return-void
.end method
