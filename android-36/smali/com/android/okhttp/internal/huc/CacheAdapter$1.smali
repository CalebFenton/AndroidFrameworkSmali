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
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/huc/CacheAdapter;

.field final synthetic blacklist val$request:Ljava/net/CacheRequest;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/huc/CacheAdapter;Ljava/net/CacheRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->this$0:Lcom/android/okhttp/internal/huc/CacheAdapter;

    iput-object p2, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist abort()V
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    invoke-virtual {p0}, Ljava/net/CacheRequest;->abort()V

    return-void
.end method

.method public blacklist body()Lcom/android/okhttp/okio/Sink;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    invoke-virtual {p0}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 66
    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method
