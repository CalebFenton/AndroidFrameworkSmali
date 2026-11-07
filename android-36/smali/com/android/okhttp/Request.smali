.class public final Lcom/android/okhttp/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Request$Builder;
    }
.end annotation


# instance fields
.field private final greylist-max-o body:Lcom/android/okhttp/RequestBody;

.field private volatile greylist-max-o cacheControl:Lcom/android/okhttp/CacheControl;

.field private final greylist headers:Lcom/android/okhttp/Headers;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private volatile greylist-max-o javaNetUri:Ljava/net/URI;

.field private volatile greylist-max-o javaNetUrl:Ljava/net/URL;

.field private final greylist method:Ljava/lang/String;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final greylist-max-o tag:Ljava/lang/Object;

.field private final greylist url:Lcom/android/okhttp/HttpUrl;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>(Lcom/android/okhttp/Request$Builder;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    # getter for: Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$000(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    .line 46
    # getter for: Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$100(Lcom/android/okhttp/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    .line 47
    # getter for: Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$200(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    .line 48
    # getter for: Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$300(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;

    .line 49
    # getter for: Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$400(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    # getter for: Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$400(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2b

    :cond_2a
    move-object p1, p0

    :goto_2b
    iput-object p1, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/Request$Builder;Lcom/android/okhttp/Request$1;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Lcom/android/okhttp/Request;-><init>(Lcom/android/okhttp/Request$Builder;)V

    return-void
.end method

.method static synthetic blacklist access$1000(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Headers;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    return-object p0
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/Request;)Lcom/android/okhttp/HttpUrl;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    return-object p0
.end method

.method static synthetic blacklist access$700(Lcom/android/okhttp/Request;)Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$800(Lcom/android/okhttp/Request;)Lcom/android/okhttp/RequestBody;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;

    return-object p0
.end method

.method static synthetic blacklist access$900(Lcom/android/okhttp/Request;)Ljava/lang/Object;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public greylist-max-o body()Lcom/android/okhttp/RequestBody;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;

    return-object p0
.end method

.method public greylist-max-o cacheControl()Lcom/android/okhttp/CacheControl;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/okhttp/Request;->cacheControl:Lcom/android/okhttp/CacheControl;

    if-eqz v0, :cond_5

    return-object v0

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    invoke-static {v0}, Lcom/android/okhttp/CacheControl;->parse(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->cacheControl:Lcom/android/okhttp/CacheControl;

    return-object v0
.end method

.method public greylist-max-o header(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o headers()Lcom/android/okhttp/Headers;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    return-object p0
.end method

.method public greylist-max-o headers(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o httpUrl()Lcom/android/okhttp/HttpUrl;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    return-object p0
.end method

.method public greylist-max-o isHttps()Z
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->isHttps()Z

    move-result p0

    return p0
.end method

.method public greylist-max-o method()Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o newBuilder()Lcom/android/okhttp/Request$Builder;
    .registers 3

    .line 99
    new-instance v0, Lcom/android/okhttp/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Request$Builder;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Request$1;)V

    return-object v0
.end method

.method public greylist-max-o tag()Ljava/lang/Object;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    if-eq v1, p0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o uri()Ljava/net/URI;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Request;->javaNetUri:Ljava/net/URI;

    if-eqz v0, :cond_5

    return-object v0

    .line 64
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->javaNetUri:Ljava/net/URI;
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception p0

    .line 66
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o url()Ljava/net/URL;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/okhttp/Request;->javaNetUrl:Ljava/net/URL;

    if-eqz v0, :cond_5

    return-object v0

    .line 58
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->url()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->javaNetUrl:Ljava/net/URL;

    return-object v0
.end method

.method public greylist-max-o urlString()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
