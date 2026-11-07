.class public final Lcom/android/okhttp/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Response$Builder;
    }
.end annotation


# instance fields
.field private final greylist-max-o body:Lcom/android/okhttp/ResponseBody;

.field private volatile greylist-max-o cacheControl:Lcom/android/okhttp/CacheControl;

.field private greylist-max-o cacheResponse:Lcom/android/okhttp/Response;

.field private final greylist code:I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final greylist-max-o handshake:Lcom/android/okhttp/Handshake;

.field private final greylist headers:Lcom/android/okhttp/Headers;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final greylist message:Ljava/lang/String;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private greylist networkResponse:Lcom/android/okhttp/Response;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final greylist-max-o priorResponse:Lcom/android/okhttp/Response;

.field private final greylist protocol:Lcom/android/okhttp/Protocol;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final greylist-max-o request:Lcom/android/okhttp/Request;


# direct methods
.method private constructor greylist-max-o <init>(Lcom/android/okhttp/Response$Builder;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    # getter for: Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$000(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    .line 59
    # getter for: Lcom/android/okhttp/Response$Builder;->protocol:Lcom/android/okhttp/Protocol;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$100(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->protocol:Lcom/android/okhttp/Protocol;

    .line 60
    # getter for: Lcom/android/okhttp/Response$Builder;->code:I
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$200(Lcom/android/okhttp/Response$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/Response;->code:I

    .line 61
    # getter for: Lcom/android/okhttp/Response$Builder;->message:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$300(Lcom/android/okhttp/Response$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->message:Ljava/lang/String;

    .line 62
    # getter for: Lcom/android/okhttp/Response$Builder;->handshake:Lcom/android/okhttp/Handshake;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$400(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->handshake:Lcom/android/okhttp/Handshake;

    .line 63
    # getter for: Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$500(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    .line 64
    # getter for: Lcom/android/okhttp/Response$Builder;->body:Lcom/android/okhttp/ResponseBody;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$600(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/ResponseBody;

    .line 65
    # getter for: Lcom/android/okhttp/Response$Builder;->networkResponse:Lcom/android/okhttp/Response;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$700(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;

    .line 66
    # getter for: Lcom/android/okhttp/Response$Builder;->cacheResponse:Lcom/android/okhttp/Response;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$800(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;

    .line 67
    # getter for: Lcom/android/okhttp/Response$Builder;->priorResponse:Lcom/android/okhttp/Response;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$900(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/Response$Builder;Lcom/android/okhttp/Response$1;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1}, Lcom/android/okhttp/Response;-><init>(Lcom/android/okhttp/Response$Builder;)V

    return-void
.end method

.method static synthetic blacklist access$1100(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    return-object p0
.end method

.method static synthetic blacklist access$1200(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Protocol;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/okhttp/Response;->protocol:Lcom/android/okhttp/Protocol;

    return-object p0
.end method

.method static synthetic blacklist access$1300(Lcom/android/okhttp/Response;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/android/okhttp/Response;->code:I

    return p0
.end method

.method static synthetic blacklist access$1400(Lcom/android/okhttp/Response;)Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/okhttp/Response;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$1500(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Handshake;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/okhttp/Response;->handshake:Lcom/android/okhttp/Handshake;

    return-object p0
.end method

.method static synthetic blacklist access$1600(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Headers;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    return-object p0
.end method

.method static synthetic blacklist access$1700(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/ResponseBody;

    return-object p0
.end method

.method static synthetic blacklist access$1800(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;

    return-object p0
.end method

.method static synthetic blacklist access$1900(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;

    return-object p0
.end method

.method static synthetic blacklist access$2000(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;

    return-object p0
.end method


# virtual methods
.method public greylist-max-o body()Lcom/android/okhttp/ResponseBody;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/ResponseBody;

    return-object p0
.end method

.method public greylist-max-o cacheControl()Lcom/android/okhttp/CacheControl;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/android/okhttp/Response;->cacheControl:Lcom/android/okhttp/CacheControl;

    if-eqz v0, :cond_5

    return-object v0

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    invoke-static {v0}, Lcom/android/okhttp/CacheControl;->parse(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->cacheControl:Lcom/android/okhttp/CacheControl;

    return-object v0
.end method

.method public greylist-max-o cacheResponse()Lcom/android/okhttp/Response;
    .registers 1

    .line 175
    iget-object p0, p0, Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;

    return-object p0
.end method

.method public greylist-max-o challenges()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Challenge;",
            ">;"
        }
    .end annotation

    .line 197
    iget v0, p0, Lcom/android/okhttp/Response;->code:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_9

    .line 198
    const-string v0, "WWW-Authenticate"

    goto :goto_f

    :cond_9
    const/16 v1, 0x197

    if-ne v0, v1, :cond_18

    .line 200
    const-string v0, "Proxy-Authenticate"

    .line 204
    :goto_f
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/okhttp/internal/http/OkHeaders;->parseChallenges(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 202
    :cond_18
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public greylist-max-o code()I
    .registers 1

    .line 95
    iget p0, p0, Lcom/android/okhttp/Response;->code:I

    return p0
.end method

.method public greylist-max-o handshake()Lcom/android/okhttp/Handshake;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/okhttp/Response;->handshake:Lcom/android/okhttp/Handshake;

    return-object p0
.end method

.method public greylist-max-o header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 128
    iget-object p0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    return-object p2
.end method

.method public greylist-max-o headers()Lcom/android/okhttp/Headers;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

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

    .line 120
    iget-object p0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o isRedirect()Z
    .registers 2

    .line 146
    iget p0, p0, Lcom/android/okhttp/Response;->code:I

    const/16 v0, 0x133

    if-eq p0, v0, :cond_f

    const/16 v0, 0x134

    if-eq p0, v0, :cond_f

    packed-switch p0, :pswitch_data_12

    const/4 p0, 0x0

    return p0

    :cond_f
    :pswitch_f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x12c
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public greylist-max-o isSuccessful()Z
    .registers 2

    .line 103
    iget p0, p0, Lcom/android/okhttp/Response;->code:I

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_c

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o message()Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/okhttp/Response;->message:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o networkResponse()Lcom/android/okhttp/Response;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;

    return-object p0
.end method

.method public greylist-max-o newBuilder()Lcom/android/okhttp/Response$Builder;
    .registers 3

    .line 141
    new-instance v0, Lcom/android/okhttp/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Response$Builder;-><init>(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response$1;)V

    return-object v0
.end method

.method public greylist-max-o priorResponse()Lcom/android/okhttp/Response;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;

    return-object p0
.end method

.method public greylist-max-o protocol()Lcom/android/okhttp/Protocol;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/okhttp/Response;->protocol:Lcom/android/okhttp/Protocol;

    return-object p0
.end method

.method public greylist-max-o request()Lcom/android/okhttp/Request;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/Response;->protocol:Lcom/android/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/okhttp/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    .line 224
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
