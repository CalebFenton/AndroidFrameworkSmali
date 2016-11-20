.class Lcom/android/okhttp/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lcom/android/okhttp/internal/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/Cache;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Cache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/Cache;

    #@0
    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .locals 1
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/okhttp/Cache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .locals 1
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    #@2
    invoke-static {v0, p1}, Lcom/android/okhttp/Cache;->-wrap0(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove(Lcom/android/okhttp/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    #@2
    invoke-static {v0, p1}, Lcom/android/okhttp/Cache;->-wrap2(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Request;)V

    #@5
    .line 144
    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/Cache;->-wrap3(Lcom/android/okhttp/Cache;)V

    #@5
    .line 150
    return-void
.end method

.method public trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lcom/android/okhttp/internal/http/CacheStrategy;

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    #@2
    invoke-static {v0, p1}, Lcom/android/okhttp/Cache;->-wrap4(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    #@5
    .line 153
    return-void
.end method

.method public update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .locals 1
    .param p1, "cached"    # Lcom/android/okhttp/Response;
    .param p2, "network"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/okhttp/Cache;->-wrap5(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V

    #@5
    .line 147
    return-void
.end method
