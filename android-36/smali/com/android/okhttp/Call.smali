.class public Lcom/android/okhttp/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Call$AsyncCall;,
        Lcom/android/okhttp/Call$ApplicationInterceptorChain;
    }
.end annotation


# instance fields
.field volatile greylist-max-o canceled:Z

.field private final greylist-max-o client:Lcom/android/okhttp/OkHttpClient;

.field greylist-max-o engine:Lcom/android/okhttp/internal/http/HttpEngine;

.field private greylist-max-o executed:Z

.field greylist-max-o originalRequest:Lcom/android/okhttp/Request;


# direct methods
.method protected constructor greylist-max-o <init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->copyWithDefaults()Lcom/android/okhttp/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    .line 52
    iput-object p2, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/Call;Z)Lcom/android/okhttp/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/android/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/android/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/Call;)Ljava/lang/String;
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/android/okhttp/Call;->toLoggableString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    return-object p0
.end method

.method private greylist-max-o getResponseWithInterceptorChain(Z)Lcom/android/okhttp/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/okhttp/Call$ApplicationInterceptorChain;-><init>(Lcom/android/okhttp/Call;ILcom/android/okhttp/Request;Z)V

    .line 207
    iget-object p0, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-interface {v0, p0}, Lcom/android/okhttp/Interceptor$Chain;->proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o toLoggableString()Ljava/lang/String;
    .registers 3

    .line 200
    iget-boolean v0, p0, Lcom/android/okhttp/Call;->canceled:Z

    if-eqz v0, :cond_7

    const-string v0, "canceled call"

    goto :goto_9

    :cond_7
    const-string v0, "call"

    .line 201
    :goto_9
    iget-object p0, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    const-string v1, "/..."

    invoke-virtual {p0, v1}, Lcom/android/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/android/okhttp/Call;->canceled:Z

    .line 125
    iget-object p0, p0, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->cancel()V

    :cond_a
    return-void
.end method

.method public greylist-max-o enqueue(Lcom/android/okhttp/Callback;)V
    .registers 3

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/Call;->enqueue(Lcom/android/okhttp/Callback;Z)V

    return-void
.end method

.method greylist-max-o enqueue(Lcom/android/okhttp/Callback;Z)V
    .registers 6

    .line 112
    monitor-enter p0

    .line 113
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z

    .line 115
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_19

    .line 116
    iget-object v0, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v0

    new-instance v1, Lcom/android/okhttp/Call$AsyncCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/okhttp/Call$AsyncCall;-><init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;ZLcom/android/okhttp/Call$1;)V

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Dispatcher;->enqueue(Lcom/android/okhttp/Call$AsyncCall;)V

    return-void

    :catchall_19
    move-exception p1

    goto :goto_23

    .line 113
    :cond_1b
    :try_start_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already Executed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_19

    throw p1
.end method

.method public greylist-max-o execute()Lcom/android/okhttp/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    monitor-enter p0

    .line 77
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z

    if-nez v0, :cond_38

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z

    .line 79
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_36

    .line 81
    :try_start_9
    iget-object v0, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/okhttp/Dispatcher;->executed(Lcom/android/okhttp/Call;)V

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/android/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/android/okhttp/Response;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_2b

    if-eqz v0, :cond_23

    .line 86
    iget-object v1, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call;)V

    return-object v0

    .line 83
    :cond_23
    :try_start_23
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    .line 86
    iget-object v1, p0, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call;)V

    .line 87
    throw v0

    :catchall_36
    move-exception v0

    goto :goto_40

    .line 77
    :cond_38
    :try_start_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_36

    throw v0
.end method

.method greylist-max-o getResponse(Lcom/android/okhttp/Request;Z)Lcom/android/okhttp/Response;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    .line 259
    invoke-virtual {v0}, Lcom/android/okhttp/RequestBody;->contentType()Lcom/android/okhttp/MediaType;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 261
    const-string v4, "Content-Type"

    invoke-virtual {v3}, Lcom/android/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 264
    :cond_1b
    invoke-virtual {v0}, Lcom/android/okhttp/RequestBody;->contentLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    .line 265
    const-string v5, "Transfer-Encoding"

    const-string v6, "Content-Length"

    if-eqz v0, :cond_34

    .line 266
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 267
    invoke-virtual {v2, v5}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_3c

    .line 269
    :cond_34
    const-string v0, "chunked"

    invoke-virtual {v2, v5, v0}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 270
    invoke-virtual {v2, v6}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 273
    :goto_3c
    invoke-virtual {v2}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v0

    move-object v4, v0

    goto :goto_44

    :cond_42
    move-object/from16 v4, p1

    .line 277
    :goto_44
    new-instance v2, Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v3, v1, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    iput-object v2, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    const/4 v2, 0x0

    move v3, v2

    .line 281
    :goto_56
    iget-boolean v0, v1, Lcom/android/okhttp/Call;->canceled:Z

    if-nez v0, :cond_100

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 288
    :try_start_5c
    iget-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 289
    iget-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_66
    .catch Lcom/android/okhttp/internal/http/RequestException; {:try_start_5c .. :try_end_66} :catch_cd
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_5c .. :try_end_66} :catch_cb
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_66} :catch_c9
    .catchall {:try_start_5c .. :try_end_66} :catchall_c6

    .line 323
    iget-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v19

    .line 324
    iget-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/android/okhttp/Request;

    move-result-object v13

    if-nez v13, :cond_7c

    if-nez p2, :cond_7b

    .line 328
    iget-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    :cond_7b
    return-object v19

    .line 333
    :cond_7c
    iget-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x14

    if-gt v3, v5, :cond_ac

    .line 340
    iget-object v5, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v13}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/android/okhttp/HttpUrl;)Z

    move-result v5

    if-nez v5, :cond_9a

    .line 341
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    move-object/from16 v17, v4

    goto :goto_9c

    :cond_9a
    move-object/from16 v17, v0

    .line 346
    :goto_9c
    new-instance v11, Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v12, v1, Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    move/from16 v16, p2

    invoke-direct/range {v11 .. v19}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    iput-object v11, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    goto :goto_56

    .line 336
    :cond_ac
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 337
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_c6
    move-exception v0

    move v2, v5

    goto :goto_f4

    :catch_c9
    move-exception v0

    goto :goto_cf

    :catch_cb
    move-exception v0

    goto :goto_de

    :catch_cd
    move-exception v0

    goto :goto_ef

    .line 306
    :goto_cf
    :try_start_cf
    iget-object v6, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v6, v0, v4}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v4
    :try_end_d5
    .catchall {:try_start_cf .. :try_end_d5} :catchall_c6

    if-eqz v4, :cond_dd

    .line 309
    :try_start_d7
    iput-object v4, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_d9
    .catchall {:try_start_d7 .. :try_end_d9} :catchall_db

    goto/16 :goto_56

    :catchall_db
    move-exception v0

    goto :goto_f4

    .line 314
    :cond_dd
    :try_start_dd
    throw v0

    .line 296
    :goto_de
    iget-object v4, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Lcom/android/okhttp/internal/http/RouteException;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v4
    :try_end_e4
    .catchall {:try_start_dd .. :try_end_e4} :catchall_c6

    if-eqz v4, :cond_ea

    .line 299
    :try_start_e6
    iput-object v4, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_e8
    .catchall {:try_start_e6 .. :try_end_e8} :catchall_db

    goto/16 :goto_56

    .line 303
    :cond_ea
    :try_start_ea
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 293
    :goto_ef
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_c6

    :goto_f4
    if-eqz v2, :cond_ff

    .line 318
    iget-object v1, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 321
    :cond_ff
    throw v0

    .line 282
    :cond_100
    iget-object v0, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 283
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o isCanceled()Z
    .registers 1

    .line 137
    iget-boolean p0, p0, Lcom/android/okhttp/Call;->canceled:Z

    return p0
.end method

.method public declared-synchronized greylist-max-o isExecuted()Z
    .registers 2

    monitor-enter p0

    .line 133
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/Call;->executed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method greylist-max-o tag()Ljava/lang/Object;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
