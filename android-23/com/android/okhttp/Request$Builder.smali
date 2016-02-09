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

.field private url:Ljava/net/URL;

.field private urlString:Ljava/lang/String;


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

.method static synthetic -get4(Lcom/android/okhttp/Request$Builder;)Ljava/net/URL;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Ljava/net/URL;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/Request$Builder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->urlString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 133
    const-string/jumbo v0, "GET"

    #@6
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    #@8
    .line 134
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    #@a
    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@f
    .line 132
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 138
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get5(Lcom/android/okhttp/Request;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->urlString:Ljava/lang/String;

    #@9
    .line 139
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get4(Lcom/android/okhttp/Request;)Ljava/net/URL;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Ljava/net/URL;

    #@f
    .line 140
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get2(Lcom/android/okhttp/Request;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    #@15
    .line 141
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get0(Lcom/android/okhttp/Request;)Lcom/android/okhttp/RequestBody;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;

    #@1b
    .line 142
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get3(Lcom/android/okhttp/Request;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    #@21
    .line 143
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get1(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Headers;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@2b
    .line 137
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
    .line 174
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@5
    .line 175
    return-object p0
.end method

.method public build()Lcom/android/okhttp/Request;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 254
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->urlString:Ljava/lang/String;

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
    .line 255
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
    .line 195
    invoke-virtual {p1}, Lcom/android/okhttp/CacheControl;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 196
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
    .line 197
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
    .line 217
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
    .line 213
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
    .line 201
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
    .line 205
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
    .line 165
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@5
    .line 166
    return-object p0
.end method

.method public headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "headers"    # Lcom/android/okhttp/Headers;

    #@0
    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@6
    .line 186
    return-object p0
.end method

.method public method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lcom/android/okhttp/RequestBody;

    #@0
    .prologue
    .line 229
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 230
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "method == null || method.length() == 0"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 232
    :cond_1
    if-eqz p2, :cond_2

    #@13
    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_3

    #@19
    .line 235
    :cond_2
    if-nez p2, :cond_4

    #@1b
    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_4

    #@21
    .line 236
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
    .line 233
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
    .line 238
    :cond_4
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    #@65
    .line 239
    iput-object p2, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;

    #@67
    .line 240
    return-object p0
.end method

.method public patch(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    #@0
    .prologue
    .line 225
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
    .line 209
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
    .line 221
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
    .line 179
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@5
    .line 180
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/android/okhttp/Request$Builder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    #@2
    .line 250
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 147
    if-nez p1, :cond_0

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "url == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 148
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->urlString:Ljava/lang/String;

    #@e
    .line 149
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Ljava/net/URL;

    #@10
    .line 150
    return-object p0
.end method

.method public url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 154
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
    .line 155
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->url:Ljava/net/URL;

    #@d
    .line 156
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->urlString:Ljava/lang/String;

    #@13
    .line 157
    return-object p0
.end method
