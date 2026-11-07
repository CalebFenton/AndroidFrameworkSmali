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
.field final synthetic blacklist this$0:Lcom/android/okhttp/Cache;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/Cache;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object p0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/Cache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method public blacklist put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object p0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    # invokes: Lcom/android/okhttp/Cache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    invoke-static {p0, p1}, Lcom/android/okhttp/Cache;->access$000(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    move-result-object p0

    return-object p0
.end method

.method public blacklist remove(Lcom/android/okhttp/Request;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object p0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    # invokes: Lcom/android/okhttp/Cache;->remove(Lcom/android/okhttp/Request;)V
    invoke-static {p0, p1}, Lcom/android/okhttp/Cache;->access$100(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Request;)V

    return-void
.end method

.method public blacklist trackConditionalCacheHit()V
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    # invokes: Lcom/android/okhttp/Cache;->trackConditionalCacheHit()V
    invoke-static {p0}, Lcom/android/okhttp/Cache;->access$300(Lcom/android/okhttp/Cache;)V

    return-void
.end method

.method public blacklist trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .registers 2

    .line 157
    iget-object p0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    # invokes: Lcom/android/okhttp/Cache;->trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V
    invoke-static {p0, p1}, Lcom/android/okhttp/Cache;->access$400(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    return-void
.end method

.method public blacklist update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object p0, p0, Lcom/android/okhttp/Cache$1;->this$0:Lcom/android/okhttp/Cache;

    # invokes: Lcom/android/okhttp/Cache;->update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/Cache;->access$200(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V

    return-void
.end method
