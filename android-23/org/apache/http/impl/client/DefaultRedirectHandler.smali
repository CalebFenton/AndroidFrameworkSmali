.class public Lorg/apache/http/impl/client/DefaultRedirectHandler;
.super Ljava/lang/Object;
.source "DefaultRedirectHandler.java"

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRedirectHandler;->log:Lorg/apache/commons/logging/Log;

    #@d
    .line 76
    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 15
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    if-nez p1, :cond_0

    #@2
    .line 102
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v13, "HTTP response may not be null"

    #@7
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v12

    #@b
    .line 105
    :cond_0
    const-string/jumbo v12, "location"

    #@e
    move-object/from16 v0, p1

    #@10
    invoke-interface {v0, v12}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@13
    move-result-object v4

    #@14
    .line 106
    .local v4, "locationHeader":Lorg/apache/http/Header;
    if-nez v4, :cond_1

    #@16
    .line 108
    new-instance v12, Lorg/apache/http/ProtocolException;

    #@18
    .line 109
    new-instance v13, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v14, "Received redirect response "

    #@20
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v13

    #@24
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@27
    move-result-object v14

    #@28
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v13

    #@2c
    .line 110
    const-string/jumbo v14, " but no location header"

    #@2f
    .line 109
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v13

    #@33
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v13

    #@37
    .line 108
    invoke-direct {v12, v13}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v12

    #@3b
    .line 112
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    .line 113
    .local v3, "location":Ljava/lang/String;
    iget-object v12, p0, Lorg/apache/http/impl/client/DefaultRedirectHandler;->log:Lorg/apache/commons/logging/Log;

    #@41
    invoke-interface {v12}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@44
    move-result v12

    #@45
    if-eqz v12, :cond_2

    #@47
    .line 114
    iget-object v12, p0, Lorg/apache/http/impl/client/DefaultRedirectHandler;->log:Lorg/apache/commons/logging/Log;

    #@49
    new-instance v13, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v14, "Redirect requested to location \'"

    #@51
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v13

    #@55
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v13

    #@59
    const-string/jumbo v14, "\'"

    #@5c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v13

    #@60
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v13

    #@64
    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@67
    .line 119
    :cond_2
    :try_start_0
    new-instance v11, Ljava/net/URI;

    #@69
    invoke-direct {v11, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@6c
    .line 124
    .local v11, "uri":Ljava/net/URI;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    #@6f
    move-result-object v5

    #@70
    .line 127
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    invoke-virtual {v11}, Ljava/net/URI;->isAbsolute()Z

    #@73
    move-result v12

    #@74
    if-nez v12, :cond_5

    #@76
    .line 128
    const-string/jumbo v12, "http.protocol.reject-relative-redirect"

    #@79
    invoke-interface {v5, v12}, Lorg/apache/http/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    #@7c
    move-result v12

    #@7d
    if-eqz v12, :cond_3

    #@7f
    .line 129
    new-instance v12, Lorg/apache/http/ProtocolException;

    #@81
    new-instance v13, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v14, "Relative redirect location \'"

    #@89
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v13

    #@8d
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v13

    #@91
    .line 130
    const-string/jumbo v14, "\' not allowed"

    #@94
    .line 129
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v13

    #@98
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v13

    #@9c
    invoke-direct {v12, v13}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v12

    #@a0
    .line 120
    .end local v5    # "params":Lorg/apache/http/params/HttpParams;
    .end local v11    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v2

    #@a1
    .line 121
    .local v2, "ex":Ljava/net/URISyntaxException;
    new-instance v12, Lorg/apache/http/ProtocolException;

    #@a3
    new-instance v13, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v14, "Invalid redirect URI: "

    #@ab
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v13

    #@af
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v13

    #@b3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v13

    #@b7
    invoke-direct {v12, v13, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ba
    throw v12

    #@bb
    .line 134
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    .restart local v5    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v11    # "uri":Ljava/net/URI;
    :cond_3
    const-string/jumbo v12, "http.target_host"

    #@be
    .line 133
    move-object/from16 v0, p2

    #@c0
    invoke-interface {v0, v12}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@c3
    move-result-object v10

    #@c4
    check-cast v10, Lorg/apache/http/HttpHost;

    #@c6
    .line 135
    .local v10, "target":Lorg/apache/http/HttpHost;
    if-nez v10, :cond_4

    #@c8
    .line 136
    new-instance v12, Ljava/lang/IllegalStateException;

    #@ca
    const-string/jumbo v13, "Target host not available in the HTTP context"

    #@cd
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d0
    throw v12

    #@d1
    .line 141
    :cond_4
    const-string/jumbo v12, "http.request"

    #@d4
    .line 140
    move-object/from16 v0, p2

    #@d6
    invoke-interface {v0, v12}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@d9
    move-result-object v8

    #@da
    check-cast v8, Lorg/apache/http/HttpRequest;

    #@dc
    .line 144
    .local v8, "request":Lorg/apache/http/HttpRequest;
    :try_start_1
    new-instance v9, Ljava/net/URI;

    #@de
    invoke-interface {v8}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@e1
    move-result-object v12

    #@e2
    invoke-interface {v12}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    #@e5
    move-result-object v12

    #@e6
    invoke-direct {v9, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@e9
    .line 145
    .local v9, "requestURI":Ljava/net/URI;
    const/4 v12, 0x1

    #@ea
    invoke-static {v9, v10, v12}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    #@ed
    move-result-object v1

    #@ee
    .line 146
    .local v1, "absoluteRequestURI":Ljava/net/URI;
    invoke-static {v1, v11}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    #@f1
    move-result-object v11

    #@f2
    .line 152
    .end local v1    # "absoluteRequestURI":Ljava/net/URI;
    .end local v8    # "request":Lorg/apache/http/HttpRequest;
    .end local v9    # "requestURI":Ljava/net/URI;
    .end local v10    # "target":Lorg/apache/http/HttpHost;
    :cond_5
    const-string/jumbo v12, "http.protocol.allow-circular-redirects"

    #@f5
    invoke-interface {v5, v12}, Lorg/apache/http/params/HttpParams;->isParameterFalse(Ljava/lang/String;)Z

    #@f8
    move-result v12

    #@f9
    if-eqz v12, :cond_9

    #@fb
    .line 155
    const-string/jumbo v12, "http.protocol.redirect-locations"

    #@fe
    .line 154
    move-object/from16 v0, p2

    #@100
    invoke-interface {v0, v12}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@103
    move-result-object v6

    #@104
    check-cast v6, Lorg/apache/http/impl/client/RedirectLocations;

    #@106
    .line 157
    .local v6, "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    if-nez v6, :cond_6

    #@108
    .line 158
    new-instance v6, Lorg/apache/http/impl/client/RedirectLocations;

    #@10a
    .end local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    invoke-direct {v6}, Lorg/apache/http/impl/client/RedirectLocations;-><init>()V

    #@10d
    .line 159
    .restart local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    const-string/jumbo v12, "http.protocol.redirect-locations"

    #@110
    move-object/from16 v0, p2

    #@112
    invoke-interface {v0, v12, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@115
    .line 163
    :cond_6
    invoke-virtual {v11}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    #@118
    move-result-object v12

    #@119
    if-eqz v12, :cond_7

    #@11b
    .line 165
    :try_start_2
    new-instance v10, Lorg/apache/http/HttpHost;

    #@11d
    .line 166
    invoke-virtual {v11}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@120
    move-result-object v12

    #@121
    .line 167
    invoke-virtual {v11}, Ljava/net/URI;->getPort()I

    #@124
    move-result v13

    #@125
    .line 168
    invoke-virtual {v11}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@128
    move-result-object v14

    #@129
    .line 165
    invoke-direct {v10, v12, v13, v14}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@12c
    .line 169
    .restart local v10    # "target":Lorg/apache/http/HttpHost;
    const/4 v12, 0x1

    #@12d
    invoke-static {v11, v10, v12}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    #@130
    move-result-object v7

    #@131
    .line 177
    .end local v10    # "target":Lorg/apache/http/HttpHost;
    .local v7, "redirectURI":Ljava/net/URI;
    :goto_0
    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/RedirectLocations;->contains(Ljava/net/URI;)Z

    #@134
    move-result v12

    #@135
    if-eqz v12, :cond_8

    #@137
    .line 178
    new-instance v12, Lorg/apache/http/client/CircularRedirectException;

    #@139
    new-instance v13, Ljava/lang/StringBuilder;

    #@13b
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@13e
    const-string/jumbo v14, "Circular redirect to \'"

    #@141
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v13

    #@145
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v13

    #@149
    .line 179
    const-string/jumbo v14, "\'"

    #@14c
    .line 178
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v13

    #@150
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@153
    move-result-object v13

    #@154
    invoke-direct {v12, v13}, Lorg/apache/http/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    #@157
    throw v12

    #@158
    .line 147
    .end local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    .end local v7    # "redirectURI":Ljava/net/URI;
    .restart local v8    # "request":Lorg/apache/http/HttpRequest;
    .restart local v10    # "target":Lorg/apache/http/HttpHost;
    :catch_1
    move-exception v2

    #@159
    .line 148
    .restart local v2    # "ex":Ljava/net/URISyntaxException;
    new-instance v12, Lorg/apache/http/ProtocolException;

    #@15b
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    #@15e
    move-result-object v13

    #@15f
    invoke-direct {v12, v13, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@162
    throw v12

    #@163
    .line 170
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    .end local v8    # "request":Lorg/apache/http/HttpRequest;
    .end local v10    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    :catch_2
    move-exception v2

    #@164
    .line 171
    .restart local v2    # "ex":Ljava/net/URISyntaxException;
    new-instance v12, Lorg/apache/http/ProtocolException;

    #@166
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    #@169
    move-result-object v13

    #@16a
    invoke-direct {v12, v13, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16d
    throw v12

    #@16e
    .line 174
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    :cond_7
    move-object v7, v11

    #@16f
    .restart local v7    # "redirectURI":Ljava/net/URI;
    goto :goto_0

    #@170
    .line 181
    :cond_8
    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/RedirectLocations;->add(Ljava/net/URI;)V

    #@173
    .line 185
    .end local v6    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    .end local v7    # "redirectURI":Ljava/net/URI;
    :cond_9
    return-object v11
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    #@0
    .prologue
    .line 83
    if-nez p1, :cond_0

    #@2
    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "HTTP response may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 86
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@12
    move-result v0

    #@13
    .line 87
    .local v0, "statusCode":I
    packed-switch v0, :pswitch_data_0

    #@16
    .line 94
    :pswitch_0
    const/4 v1, 0x0

    #@17
    return v1

    #@18
    .line 92
    :pswitch_1
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 87
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
