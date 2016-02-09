.class final Lcom/android/okhttp/internal/huc/JavaApiConverter$2;
.super Ljava/net/CacheResponse;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Lcom/android/okhttp/ResponseBody;

.field final synthetic val$headers:Lcom/android/okhttp/Headers;

.field final synthetic val$response:Lcom/android/okhttp/Response;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseBody;)V
    .locals 0
    .param p1, "val$headers"    # Lcom/android/okhttp/Headers;
    .param p2, "val$response"    # Lcom/android/okhttp/Response;
    .param p3, "val$body"    # Lcom/android/okhttp/ResponseBody;

    #@0
    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$headers:Lcom/android/okhttp/Headers;

    #@2
    iput-object p2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$response:Lcom/android/okhttp/Response;

    #@4
    iput-object p3, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$body:Lcom/android/okhttp/ResponseBody;

    #@6
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 350
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$body:Lcom/android/okhttp/ResponseBody;

    #@3
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$body:Lcom/android/okhttp/ResponseBody;

    #@8
    invoke-virtual {v0}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$headers:Lcom/android/okhttp/Headers;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;->val$response:Lcom/android/okhttp/Response;

    #@4
    invoke-static {v1}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method
