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
.field private final forWebSocket:Z

.field private final responseCallback:Lcom/android/okhttp/Callback;

.field final synthetic this$0:Lcom/android/okhttp/Call;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;Z)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/okhttp/Call;
    .param p2, "responseCallback"    # Lcom/android/okhttp/Callback;
    .param p3, "forWebSocket"    # Z

    #@0
    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    #@2
    .line 136
    const-string/jumbo v0, "OkHttp %s"

    #@5
    const/4 v1, 0x1

    #@6
    new-array v1, v1, [Ljava/lang/Object;

    #@8
    iget-object v2, p1, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    #@a
    invoke-virtual {v2}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x0

    #@f
    aput-object v2, v1, v3

    #@11
    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@14
    .line 137
    iput-object p2, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    #@16
    .line 138
    iput-boolean p3, p0, Lcom/android/okhttp/Call$AsyncCall;->forWebSocket:Z

    #@18
    .line 135
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;ZLcom/android/okhttp/Call$AsyncCall;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/Call;
    .param p2, "responseCallback"    # Lcom/android/okhttp/Callback;
    .param p3, "forWebSocket"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/Call$AsyncCall;-><init>(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;Z)V

    #@3
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Call;->cancel()V

    #@5
    .line 153
    return-void
.end method

.method protected execute()V
    .locals 7

    #@0
    .prologue
    .line 162
    const/4 v2, 0x0

    #@1
    .line 164
    .local v2, "signalledCallback":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    #@3
    iget-boolean v4, p0, Lcom/android/okhttp/Call$AsyncCall;->forWebSocket:Z

    #@5
    invoke-static {v3, v4}, Lcom/android/okhttp/Call;->-wrap0(Lcom/android/okhttp/Call;Z)Lcom/android/okhttp/Response;

    #@8
    move-result-object v1

    #@9
    .line 165
    .local v1, "response":Lcom/android/okhttp/Response;
    iget-object v3, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    #@b
    iget-boolean v3, v3, Lcom/android/okhttp/Call;->canceled:Z

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 166
    const/4 v2, 0x1

    #@10
    .line 167
    iget-object v3, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    #@12
    iget-object v4, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    #@14
    iget-object v4, v4, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    #@16
    new-instance v5, Ljava/io/IOException;

    #@18
    const-string/jumbo v6, "Canceled"

    #@1b
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-interface {v3, v4, v5}, Lcom/android/okhttp/Callback;->onFailure(Lcom/android/okhttp/Request;Ljava/io/IOException;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 180
    :goto_0
    iget-object v3, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    #@23
    invoke-static {v3}, Lcom/android/okhttp/Call;->-get0(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call$AsyncCall;)V

    #@2e
    .line 161
    .end local v1    # "response":Lcom/android/okhttp/Response;
    :goto_1
    return-void

    #@2f
    .line 169
    .restart local v1    # "response":Lcom/android/okhttp/Response;
    :cond_0
    const/4 v2, 0x1

    #@30
    .line 170
    :try_start_1
    iget-object v3, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    #@32
    invoke-interface {v3, v1}, Lcom/android/okhttp/Callback;->onResponse(Lcom/android/okhttp/Response;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 172
    .end local v1    # "response":Lcom/android/okhttp/Response;
    :catch_0
    move-exception v0

    #@37
    .line 173
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    #@39
    .line 175
    :try_start_2
    sget-object v3, Lcom/android/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    #@3b
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@3d
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, "Callback failure for "

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    iget-object v6, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    #@4b
    invoke-static {v6}, Lcom/android/okhttp/Call;->-wrap1(Lcom/android/okhttp/Call;)Ljava/lang/String;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5a
    .line 180
    :goto_2
    iget-object v3, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    #@5c
    invoke-static {v3}, Lcom/android/okhttp/Call;->-get0(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call$AsyncCall;)V

    #@67
    goto :goto_1

    #@68
    .line 177
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/okhttp/Call$AsyncCall;->responseCallback:Lcom/android/okhttp/Callback;

    #@6a
    iget-object v4, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    #@6c
    iget-object v4, v4, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@6e
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    #@71
    move-result-object v4

    #@72
    invoke-interface {v3, v4, v0}, Lcom/android/okhttp/Callback;->onFailure(Lcom/android/okhttp/Request;Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@75
    goto :goto_2

    #@76
    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@77
    .line 180
    iget-object v4, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    #@79
    invoke-static {v4}, Lcom/android/okhttp/Call;->-get0(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Call$AsyncCall;)V

    #@84
    .line 179
    throw v3
.end method

.method get()Lcom/android/okhttp/Call;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    #@2
    return-object v0
.end method

.method host()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    #@2
    iget-object v0, v0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method request()Lcom/android/okhttp/Request;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    #@2
    iget-object v0, v0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    #@4
    return-object v0
.end method

.method tag()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/okhttp/Call$AsyncCall;->this$0:Lcom/android/okhttp/Call;

    #@2
    iget-object v0, v0, Lcom/android/okhttp/Call;->originalRequest:Lcom/android/okhttp/Request;

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->tag()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
