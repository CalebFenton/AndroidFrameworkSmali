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
.field private greylist-max-o body:Lcom/android/okhttp/ResponseBody;

.field private greylist-max-o cacheResponse:Lcom/android/okhttp/Response;

.field private greylist-max-o code:I

.field private greylist-max-o handshake:Lcom/android/okhttp/Handshake;

.field private greylist-max-o headers:Lcom/android/okhttp/Headers$Builder;

.field private greylist-max-o message:Ljava/lang/String;

.field private greylist-max-o networkResponse:Lcom/android/okhttp/Response;

.field private greylist-max-o priorResponse:Lcom/android/okhttp/Response;

.field private greylist-max-o protocol:Lcom/android/okhttp/Protocol;

.field private greylist-max-o request:Lcom/android/okhttp/Request;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 234
    iput v0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    .line 244
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    return-void
.end method

.method private constructor greylist-max-o <init>(Lcom/android/okhttp/Response;)V
    .registers 3

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 234
    iput v0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    .line 248
    # getter for: Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1100(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    .line 249
    # getter for: Lcom/android/okhttp/Response;->protocol:Lcom/android/okhttp/Protocol;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1200(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->protocol:Lcom/android/okhttp/Protocol;

    .line 250
    # getter for: Lcom/android/okhttp/Response;->code:I
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1300(Lcom/android/okhttp/Response;)I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    .line 251
    # getter for: Lcom/android/okhttp/Response;->message:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1400(Lcom/android/okhttp/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->message:Ljava/lang/String;

    .line 252
    # getter for: Lcom/android/okhttp/Response;->handshake:Lcom/android/okhttp/Handshake;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1500(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->handshake:Lcom/android/okhttp/Handshake;

    .line 253
    # getter for: Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1600(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 254
    # getter for: Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/ResponseBody;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1700(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->body:Lcom/android/okhttp/ResponseBody;

    .line 255
    # getter for: Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1800(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->networkResponse:Lcom/android/okhttp/Response;

    .line 256
    # getter for: Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1900(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->cacheResponse:Lcom/android/okhttp/Response;

    .line 257
    # getter for: Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$2000(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->priorResponse:Lcom/android/okhttp/Response;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response$1;)V
    .registers 3

    .line 231
    invoke-direct {p0, p1}, Lcom/android/okhttp/Response$Builder;-><init>(Lcom/android/okhttp/Response;)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Request;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    return-object p0
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Protocol;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/okhttp/Response$Builder;->protocol:Lcom/android/okhttp/Protocol;

    return-object p0
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/Response$Builder;)I
    .registers 1

    .line 231
    iget p0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    return p0
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/Response$Builder;)Ljava/lang/String;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/okhttp/Response$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Handshake;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/okhttp/Response$Builder;->handshake:Lcom/android/okhttp/Handshake;

    return-object p0
.end method

.method static synthetic blacklist access$500(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Headers$Builder;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    return-object p0
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/ResponseBody;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/okhttp/Response$Builder;->body:Lcom/android/okhttp/ResponseBody;

    return-object p0
.end method

.method static synthetic blacklist access$700(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/okhttp/Response$Builder;->networkResponse:Lcom/android/okhttp/Response;

    return-object p0
.end method

.method static synthetic blacklist access$800(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/okhttp/Response$Builder;->cacheResponse:Lcom/android/okhttp/Response;

    return-object p0
.end method

.method static synthetic blacklist access$900(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/okhttp/Response$Builder;->priorResponse:Lcom/android/okhttp/Response;

    return-object p0
.end method

.method private greylist-max-o checkPriorResponse(Lcom/android/okhttp/Response;)V
    .registers 2

    .line 350
    # getter for: Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/ResponseBody;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1700(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 351
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "priorResponse.body != null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o checkSupportResponse(Ljava/lang/String;Lcom/android/okhttp/Response;)V
    .registers 3

    .line 332
    # getter for: Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/ResponseBody;
    invoke-static {p2}, Lcom/android/okhttp/Response;->access$1700(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;

    move-result-object p0

    if-nez p0, :cond_5e

    .line 334
    # getter for: Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;
    invoke-static {p2}, Lcom/android/okhttp/Response;->access$1800(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object p0

    if-nez p0, :cond_47

    .line 336
    # getter for: Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;
    invoke-static {p2}, Lcom/android/okhttp/Response;->access$1900(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object p0

    if-nez p0, :cond_30

    .line 338
    # getter for: Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;
    invoke-static {p2}, Lcom/android/okhttp/Response;->access$2000(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object p0

    if-nez p0, :cond_19

    return-void

    .line 339
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 335
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 333
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public greylist-max-o addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    return-object p0
.end method

.method public greylist-max-o body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;
    .registers 2

    .line 315
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->body:Lcom/android/okhttp/ResponseBody;

    return-object p0
.end method

.method public greylist-max-o build()Lcom/android/okhttp/Response;
    .registers 4

    .line 356
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    if-eqz v0, :cond_34

    .line 357
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->protocol:Lcom/android/okhttp/Protocol;

    if-eqz v0, :cond_2c

    .line 358
    iget v0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    if-ltz v0, :cond_13

    .line 359
    new-instance v0, Lcom/android/okhttp/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Response;-><init>(Lcom/android/okhttp/Response$Builder;Lcom/android/okhttp/Response$1;)V

    return-object v0

    .line 358
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "protocol == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 356
    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "request == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;
    .registers 3

    if-eqz p1, :cond_7

    .line 326
    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lcom/android/okhttp/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/android/okhttp/Response;)V

    .line 327
    :cond_7
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->cacheResponse:Lcom/android/okhttp/Response;

    return-object p0
.end method

.method public greylist-max-o code(I)Lcom/android/okhttp/Response$Builder;
    .registers 2

    .line 271
    iput p1, p0, Lcom/android/okhttp/Response$Builder;->code:I

    return-object p0
.end method

.method public greylist-max-o handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;
    .registers 2

    .line 281
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->handshake:Lcom/android/okhttp/Handshake;

    return-object p0
.end method

.method public greylist-max-o header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    return-object p0
.end method

.method public greylist-max-o headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;
    .registers 2

    .line 310
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    return-object p0
.end method

.method public greylist-max-o message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;
    .registers 3

    if-eqz p1, :cond_7

    .line 320
    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lcom/android/okhttp/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/android/okhttp/Response;)V

    .line 321
    :cond_7
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->networkResponse:Lcom/android/okhttp/Response;

    return-object p0
.end method

.method public greylist-max-o priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;
    .registers 2

    if-eqz p1, :cond_5

    .line 344
    invoke-direct {p0, p1}, Lcom/android/okhttp/Response$Builder;->checkPriorResponse(Lcom/android/okhttp/Response;)V

    .line 345
    :cond_5
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->priorResponse:Lcom/android/okhttp/Response;

    return-object p0
.end method

.method public greylist-max-o protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->protocol:Lcom/android/okhttp/Protocol;

    return-object p0
.end method

.method public greylist-max-o removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .registers 3

    .line 304
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    return-object p0
.end method

.method public greylist-max-o request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    return-object p0
.end method
