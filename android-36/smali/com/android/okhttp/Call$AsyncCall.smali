.class final Lcom/android/okhttp/Call$AsyncCall;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# instance fields
.field private final greylist-max-o forWebSocket:Z

.field private final greylist-max-o responseCallback:Lcom/android/okhttp/Callback;

.field final synthetic blacklist this$0:Lcom/android/okhttp/Call;


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    .line 145
    iget-object p1, p1, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "OkHttp %s"

    invoke-direct {p0, v0, p1}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iput-object p2, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    .line 147
    iput-boolean p3, p0, Lcom/android/okhttp/Call$AsyncCall;->forWebSocket:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;ZLcom/android/okhttp/Call$1;)V
    .registers 5

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/Call$AsyncCall;-><init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;Z)V

    return-void
.end method


# virtual methods
.method greylist-max-o cancel()V
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    invoke-virtual {p0}, Lcom/android/okhttp/Call;->cancel()V

    return-void
.end method

.method protected greylist-max-o execute()V
    .registers 6

    const/4 v0, 0x0

    .line 173
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-boolean v2, p0, Lcom/android/okhttp/Call$AsyncCall;->forWebSocket:Z

    # invokes: Lcom/android/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/android/okhttp/Response;
    invoke-static {v1, v2}, Lcom/android/okhttp/Call;->access$100(Lcom/android/okhttp/Call;Z)Lcom/android/okhttp/Response;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-boolean v0, v2, Lcom/android/okhttp/Call;->canceled:Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_38
    .catchall {:try_start_1 .. :try_end_d} :catchall_21

    const/4 v2, 0x1

    if-eqz v0, :cond_25

    .line 176
    :try_start_10
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    iget-object v1, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v1, v1, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Lcom/android/okhttp/Callback;->onFailure(Lcom/android/okhttp/Request;Ljava/io/IOException;)V

    goto :goto_2a

    :catchall_21
    move-exception v0

    goto :goto_7c

    :catch_23
    move-exception v0

    goto :goto_3b

    .line 179
    :cond_25
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    invoke-interface {v0, v1}, Lcom/android/okhttp/Callback;->onResponse(Lcom/android/okhttp/Response;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2a} :catch_23
    .catchall {:try_start_10 .. :try_end_2a} :catchall_21

    .line 190
    :goto_2a
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    # getter for: Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;
    invoke-static {v0}, Lcom/android/okhttp/Call;->access$300(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call$AsyncCall;)V

    return-void

    :catch_38
    move-exception v1

    move v2, v0

    move-object v0, v1

    :goto_3b
    if-eqz v2, :cond_5c

    .line 184
    :try_start_3d
    sget-object v1, Lcom/android/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    # invokes: Lcom/android/okhttp/Call;->toLoggableString()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/okhttp/Call;->access$200(Lcom/android/okhttp/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6e

    .line 186
    :cond_5c
    iget-object v1, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object v2, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-nez v2, :cond_65

    iget-object v1, v1, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    goto :goto_69

    :cond_65
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v1

    .line 187
    :goto_69
    iget-object v2, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    invoke-interface {v2, v1, v0}, Lcom/android/okhttp/Callback;->onFailure(Lcom/android/okhttp/Request;Ljava/io/IOException;)V
    :try_end_6e
    .catchall {:try_start_3d .. :try_end_6e} :catchall_21

    .line 190
    :goto_6e
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    # getter for: Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;
    invoke-static {v0}, Lcom/android/okhttp/Call;->access$300(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call$AsyncCall;)V

    return-void

    :goto_7c
    iget-object v1, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    # getter for: Lcom/android/okhttp/Call;->client:Lcom/android/okhttp/OkHttpClient;
    invoke-static {v1}, Lcom/android/okhttp/Call;->access$300(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call$AsyncCall;)V

    .line 191
    throw v0
.end method

.method greylist-max-o get()Lcom/android/okhttp/Call;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    return-object p0
.end method

.method greylist-max-o host()Ljava/lang/String;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object p0, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method greylist-max-o request()Lcom/android/okhttp/Request;
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object p0, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    return-object p0
.end method

.method greylist-max-o tag()Ljava/lang/Object;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    iget-object p0, p0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
