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
.field private body:Lcom/android/okhttp/RequestBody;

.field private headers:Lcom/android/okhttp/Headers$Builder;

.field private method:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field private url:Lcom/android/okhttp/HttpUrl;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/RequestBody;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/Headers$Builder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/Request$Builder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/HttpUrl;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 128
    const-string/jumbo v0, "GET"

    #@6
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    #@8
    .line 129
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    #@a
    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@f
    .line 127
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 133
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get4(Lcom/android/okhttp/Request;)Lcom/android/okhttp/HttpUrl;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    #@9
    .line 134
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get2(Lcom/android/okhttp/Request;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    #@f
    .line 135
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get0(Lcom/android/okhttp/Request;)Lcom/android/okhttp/RequestBody;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;

    #@15
    .line 136
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get3(Lcom/android/okhttp/Request;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    #@1b
    .line 137
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get1(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Headers;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@25
    .line 132
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Request$Builder;)V
    .locals 0
    .param p1, "request"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Request$Builder;-><init>(Lcom/android/okhttp/Request;)V

    #@3
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@5
    .line 195
    return-object p0
.end method

.method public build()Lcom/android/okhttp/Request;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 274
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    #@3
    if-nez v0, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "url == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 275
    :cond_0
    new-instance v0, Lcom/android/okhttp/Request;

    #@10
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Request;-><init>(Lcom/android/okhttp/Request$Builder;Lcom/android/okhttp/Request;)V

    #@13
    return-object v0
.end method

.method public cacheControl(Lcom/android/okhttp/CacheControl;)Lcom/android/okhttp/Request$Builder;
    .locals 2
    .param p1, "cacheControl"    # Lcom/android/okhttp/CacheControl;

    #@0
    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/android/okhttp/CacheControl;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 216
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    const-string/jumbo v1, "Cache-Control"

    #@d
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 217
    :cond_0
    const-string/jumbo v1, "Cache-Control"

    #@15
    invoke-virtual {p0, v1, v0}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public delete()Lcom/android/okhttp/Request$Builder;
    .locals 2

    #@0
    .prologue
    .line 237
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [B

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request$Builder;->delete(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public delete(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    #@0
    .prologue
    .line 233
    const-string/jumbo v0, "DELETE"

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public get()Lcom/android/okhttp/Request$Builder;
    .locals 2

    #@0
    .prologue
    .line 221
    const-string/jumbo v0, "GET"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public head()Lcom/android/okhttp/Request$Builder;
    .locals 2

    #@0
    .prologue
    .line 225
    const-string/jumbo v0, "HEAD"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@5
    .line 186
    return-object p0
.end method

.method public headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "headers"    # Lcom/android/okhttp/Headers;

    #@0
    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@6
    .line 206
    return-object p0
.end method

.method public method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lcom/android/okhttp/RequestBody;

    #@0
    .prologue
    .line 249
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "method == null || method.length() == 0"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 252
    :cond_1
    if-eqz p2, :cond_2

    #@13
    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_3

    #@19
    .line 255
    :cond_2
    if-nez p2, :cond_4

    #@1b
    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_4

    #@21
    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "method "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const-string/jumbo v2, " must have a request body."

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 253
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@44
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v2, "method "

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    const-string/jumbo v2, " must not have a request body."

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v0

    #@63
    .line 258
    :cond_4
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    #@65
    .line 259
    iput-object p2, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;

    #@67
    .line 260
    return-object p0
.end method

.method public patch(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    #@0
    .prologue
    .line 245
    const-string/jumbo v0, "PATCH"

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public post(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    #@0
    .prologue
    .line 229
    const-string/jumbo v0, "POST"

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public put(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    #@0
    .prologue
    .line 241
    const-string/jumbo v0, "PUT"

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@5
    .line 200
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/android/okhttp/Request$Builder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    #@2
    .line 270
    return-object p0
.end method

.method public url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;
    .locals 2
    .param p1, "url"    # Lcom/android/okhttp/HttpUrl;

    #@0
    .prologue
    .line 141
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "url == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 142
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    #@d
    .line 143
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 153
    if-nez p1, :cond_0

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "url == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 156
    :cond_0
    const-string/jumbo v3, "ws:"

    #@12
    move-object v0, p1

    #@13
    move v4, v2

    #@14
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v1, "http:"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object p1

    #@32
    .line 162
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    #@35
    move-result-object v6

    #@36
    .line 163
    .local v6, "parsed":Lcom/android/okhttp/HttpUrl;
    if-nez v6, :cond_3

    #@38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, "unexpected url: "

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@51
    throw v0

    #@52
    .line 158
    .end local v6    # "parsed":Lcom/android/okhttp/HttpUrl;
    :cond_2
    const-string/jumbo v3, "wss:"

    #@55
    move-object v0, p1

    #@56
    move v4, v2

    #@57
    move v5, v7

    #@58
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_1

    #@5e
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v1, "https:"

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object p1

    #@76
    goto :goto_0

    #@77
    .line 164
    .restart local v6    # "parsed":Lcom/android/okhttp/HttpUrl;
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    #@7a
    move-result-object v0

    #@7b
    return-object v0
.end method

.method public url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 174
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "url == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 175
    :cond_0
    invoke-static {p1}, Lcom/android/okhttp/HttpUrl;->get(Ljava/net/URL;)Lcom/android/okhttp/HttpUrl;

    #@e
    move-result-object v0

    #@f
    .line 176
    .local v0, "parsed":Lcom/android/okhttp/HttpUrl;
    if-nez v0, :cond_1

    #@11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "unexpected url: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 177
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    #@2e
    move-result-object v1

    #@2f
    return-object v1
.end method
