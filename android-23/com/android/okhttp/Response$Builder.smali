.class public Lcom/android/okhttp/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lcom/android/okhttp/ResponseBody;

.field private cacheResponse:Lcom/android/okhttp/Response;

.field private code:I

.field private handshake:Lcom/android/okhttp/Handshake;

.field private headers:Lcom/android/okhttp/Headers$Builder;

.field private message:Ljava/lang/String;

.field private networkResponse:Lcom/android/okhttp/Response;

.field private priorResponse:Lcom/android/okhttp/Response;

.field private protocol:Lcom/android/okhttp/Protocol;

.field private request:Lcom/android/okhttp/Request;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/ResponseBody;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->body:Lcom/android/okhttp/ResponseBody;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->cacheResponse:Lcom/android/okhttp/Response;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/Response$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Handshake;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->handshake:Lcom/android/okhttp/Handshake;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Headers$Builder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/Response$Builder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->message:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->networkResponse:Lcom/android/okhttp/Response;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->priorResponse:Lcom/android/okhttp/Response;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Protocol;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->protocol:Lcom/android/okhttp/Protocol;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Request;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 224
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    #@6
    .line 234
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    #@8
    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@d
    .line 233
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 224
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    #@6
    .line 238
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get9(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    #@c
    .line 239
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get8(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Protocol;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->protocol:Lcom/android/okhttp/Protocol;

    #@12
    .line 240
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get2(Lcom/android/okhttp/Response;)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    #@18
    .line 241
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get5(Lcom/android/okhttp/Response;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->message:Ljava/lang/String;

    #@1e
    .line 242
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get3(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Handshake;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->handshake:Lcom/android/okhttp/Handshake;

    #@24
    .line 243
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get4(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Headers;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@2e
    .line 244
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get0(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->body:Lcom/android/okhttp/ResponseBody;

    #@34
    .line 245
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get6(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->networkResponse:Lcom/android/okhttp/Response;

    #@3a
    .line 246
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get1(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->cacheResponse:Lcom/android/okhttp/Response;

    #@40
    .line 247
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get7(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@43
    move-result-object v0

    #@44
    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->priorResponse:Lcom/android/okhttp/Response;

    #@46
    .line 237
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response$Builder;)V
    .locals 0
    .param p1, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Response$Builder;-><init>(Lcom/android/okhttp/Response;)V

    #@3
    return-void
.end method

.method private checkPriorResponse(Lcom/android/okhttp/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 340
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get0(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "priorResponse.body != null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 339
    :cond_0
    return-void
.end method

.method private checkSupportResponse(Ljava/lang/String;Lcom/android/okhttp/Response;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 322
    invoke-static {p2}, Lcom/android/okhttp/Response;->-get0(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, ".body != null"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 324
    :cond_0
    invoke-static {p2}, Lcom/android/okhttp/Response;->-get6(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@23
    move-result-object v0

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, ".networkResponse != null"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 326
    :cond_1
    invoke-static {p2}, Lcom/android/okhttp/Response;->-get1(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@43
    move-result-object v0

    #@44
    if-eqz v0, :cond_2

    #@46
    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@48
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    const-string/jumbo v2, ".cacheResponse != null"

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v0

    #@60
    .line 328
    :cond_2
    invoke-static {p2}, Lcom/android/okhttp/Response;->-get7(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@63
    move-result-object v0

    #@64
    if-eqz v0, :cond_3

    #@66
    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@68
    new-instance v1, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    const-string/jumbo v2, ".priorResponse != null"

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v0

    #@80
    .line 321
    :cond_3
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@5
    .line 290
    return-object p0
.end method

.method public body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;
    .locals 0
    .param p1, "body"    # Lcom/android/okhttp/ResponseBody;

    #@0
    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->body:Lcom/android/okhttp/ResponseBody;

    #@2
    .line 306
    return-object p0
.end method

.method public build()Lcom/android/okhttp/Response;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 346
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    #@3
    if-nez v0, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "request == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->protocol:Lcom/android/okhttp/Protocol;

    #@10
    if-nez v0, :cond_1

    #@12
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    const-string/jumbo v1, "protocol == null"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 348
    :cond_1
    iget v0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    #@1d
    if-gez v0, :cond_2

    #@1f
    new-instance v0, Ljava/lang/IllegalStateException;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "code < 0: "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget v2, p0, Lcom/android/okhttp/Response$Builder;->code:I

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 349
    :cond_2
    new-instance v0, Lcom/android/okhttp/Response;

    #@3d
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Response;-><init>(Lcom/android/okhttp/Response$Builder;Lcom/android/okhttp/Response;)V

    #@40
    return-object v0
.end method

.method public cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;
    .locals 1
    .param p1, "cacheResponse"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 316
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "cacheResponse"

    #@5
    invoke-direct {p0, v0, p1}, Lcom/android/okhttp/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/android/okhttp/Response;)V

    #@8
    .line 317
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->cacheResponse:Lcom/android/okhttp/Response;

    #@a
    .line 318
    return-object p0
.end method

.method public code(I)Lcom/android/okhttp/Response$Builder;
    .locals 0
    .param p1, "code"    # I

    #@0
    .prologue
    .line 261
    iput p1, p0, Lcom/android/okhttp/Response$Builder;->code:I

    #@2
    .line 262
    return-object p0
.end method

.method public handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;
    .locals 0
    .param p1, "handshake"    # Lcom/android/okhttp/Handshake;

    #@0
    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->handshake:Lcom/android/okhttp/Handshake;

    #@2
    .line 272
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@5
    .line 281
    return-object p0
.end method

.method public headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;
    .locals 1
    .param p1, "headers"    # Lcom/android/okhttp/Headers;

    #@0
    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@6
    .line 301
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->message:Ljava/lang/String;

    #@2
    .line 267
    return-object p0
.end method

.method public networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;
    .locals 1
    .param p1, "networkResponse"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 310
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "networkResponse"

    #@5
    invoke-direct {p0, v0, p1}, Lcom/android/okhttp/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/android/okhttp/Response;)V

    #@8
    .line 311
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->networkResponse:Lcom/android/okhttp/Response;

    #@a
    .line 312
    return-object p0
.end method

.method public priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;
    .locals 0
    .param p1, "priorResponse"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 334
    if-eqz p1, :cond_0

    #@2
    invoke-direct {p0, p1}, Lcom/android/okhttp/Response$Builder;->checkPriorResponse(Lcom/android/okhttp/Response;)V

    #@5
    .line 335
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->priorResponse:Lcom/android/okhttp/Response;

    #@7
    .line 336
    return-object p0
.end method

.method public protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;
    .locals 0
    .param p1, "protocol"    # Lcom/android/okhttp/Protocol;

    #@0
    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->protocol:Lcom/android/okhttp/Protocol;

    #@2
    .line 257
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@5
    .line 295
    return-object p0
.end method

.method public request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;
    .locals 0
    .param p1, "request"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    #@2
    .line 252
    return-object p0
.end method
