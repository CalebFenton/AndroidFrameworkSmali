.class Lcom/android/okhttp/internal/huc/JavaApiConverter$2;
.super Ljava/net/CacheResponse;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$body:Lcom/android/okhttp/ResponseBody;

.field final synthetic blacklist val$headers:Lcom/android/okhttp/Headers;

.field final synthetic blacklist val$response:Lcom/android/okhttp/Response;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseBody;)V
    .registers 4

    .line 343
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$headers:Lcom/android/okhttp/Headers;

    iput-object p2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$response:Lcom/android/okhttp/Response;

    iput-object p3, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$body:Lcom/android/okhttp/ResponseBody;

    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getBody()Ljava/io/InputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$body:Lcom/android/okhttp/ResponseBody;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 353
    :cond_6
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$headers:Lcom/android/okhttp/Headers;

    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$response:Lcom/android/okhttp/Response;

    invoke-static {p0}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
