.class public Lcom/android/okhttp/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o body:Lcom/android/okhttp/RequestBody;

.field private greylist-max-o headers:Lcom/android/okhttp/Headers$Builder;

.field private greylist-max-o method:Ljava/lang/String;

.field private greylist-max-o tag:Ljava/lang/Object;

.field private greylist-max-o url:Lcom/android/okhttp/HttpUrl;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-string v0, "GET"

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    return-void
.end method

.method private constructor greylist-max-o <init>(Lcom/android/okhttp/Request;)V
    .registers 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    # getter for: Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$600(Lcom/android/okhttp/Request;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    .line 142
    # getter for: Lcom/android/okhttp/Request;->method:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$700(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 143
    # getter for: Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$800(Lcom/android/okhttp/Request;)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;

    .line 144
    # getter for: Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$900(Lcom/android/okhttp/Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    .line 145
    # getter for: Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$1000(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Request$1;)V
    .registers 3

    .line 128
    invoke-direct {p0, p1}, Lcom/android/okhttp/Request$Builder;-><init>(Lcom/android/okhttp/Request;)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/HttpUrl;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    return-object p0
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/Request$Builder;)Ljava/lang/String;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/Headers$Builder;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    return-object p0
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/RequestBody;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;

    return-object p0
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public greylist-max-o addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    return-object p0
.end method

.method public greylist-max-o build()Lcom/android/okhttp/Request;
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    if-eqz v0, :cond_b

    .line 286
    new-instance v0, Lcom/android/okhttp/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Request;-><init>(Lcom/android/okhttp/Request$Builder;Lcom/android/okhttp/Request$1;)V

    return-object v0

    .line 285
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o cacheControl(Lcom/android/okhttp/CacheControl;)Lcom/android/okhttp/Request$Builder;
    .registers 4

    .line 226
    invoke-virtual {p1}, Lcom/android/okhttp/CacheControl;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Cache-Control"

    if-eqz v0, :cond_11

    invoke-virtual {p0, v1}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    return-object p0

    .line 228
    :cond_11
    invoke-virtual {p0, v1, p1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o delete()Lcom/android/okhttp/Request$Builder;
    .registers 3

    const/4 v0, 0x0

    .line 248
    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request$Builder;->delete(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o delete(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 3

    .line 244
    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o get()Lcom/android/okhttp/Request$Builder;
    .registers 3

    .line 232
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o head()Lcom/android/okhttp/Request$Builder;
    .registers 3

    .line 236
    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    return-object p0
.end method

.method public greylist-max-o headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;
    .registers 2

    .line 216
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    return-object p0
.end method

.method public greylist-max-o method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 5

    if-eqz p1, :cond_55

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_55

    .line 263
    const-string v0, "method "

    if-eqz p2, :cond_2d

    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2d

    .line 264
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    :goto_2d
    if-nez p2, :cond_50

    .line 266
    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_50

    .line 267
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 269
    :cond_50
    :goto_50
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 270
    iput-object p2, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;

    return-object p0

    .line 261
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "method == null || method.length() == 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o patch(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 3

    .line 256
    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o post(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 3

    .line 240
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o put(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 3

    .line 252
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    return-object p0
.end method

.method public greylist-max-o tag(Ljava/lang/Object;)Lcom/android/okhttp/Request$Builder;
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public greylist-max-o url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;
    .registers 2

    if-eqz p1, :cond_5

    .line 150
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    return-object p0

    .line 149
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "url == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .registers 8

    if-eqz p1, :cond_6c

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    const-string v3, "ws:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4a

    :cond_26
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    const-string v3, "wss:"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4a

    :cond_49
    move-object p1, v0

    .line 170
    :goto_4a
    invoke-static {p1}, Lcom/android/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    return-object p0

    .line 171
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "url == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;
    .registers 4

    if-eqz p1, :cond_24

    .line 183
    invoke-static {p1}, Lcom/android/okhttp/HttpUrl;->get(Ljava/net/URL;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    return-object p0

    .line 184
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "url == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
