.class Lcom/android/okhttp/internal/huc/CacheAdapter$1;
.super Ljava/lang/Object;
.source "CacheAdapter.java"

# interfaces
.implements Lcom/android/okhttp/internal/http/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/CacheAdapter;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/huc/CacheAdapter;

.field final synthetic val$request:Ljava/net/CacheRequest;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/huc/CacheAdapter;Ljava/net/CacheRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/huc/CacheAdapter;
    .param p2, "val$request"    # Ljava/net/CacheRequest;

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->this$0:Lcom/android/okhttp/internal/huc/CacheAdapter;

    #@2
    iput-object p2, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    #@2
    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    #@5
    .line 67
    return-void
.end method

.method public body()Lcom/android/okhttp/okio/Sink;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 63
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    #@3
    invoke-virtual {v2}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    #@6
    move-result-object v0

    #@7
    .line 64
    .local v0, "body":Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    #@9
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;

    #@c
    move-result-object v1

    #@d
    :cond_0
    return-object v1
.end method
