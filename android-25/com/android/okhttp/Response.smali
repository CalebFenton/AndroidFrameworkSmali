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
.field private final body:Lcom/android/okhttp/ResponseBody;

.field private volatile cacheControl:Lcom/android/okhttp/CacheControl;

.field private cacheResponse:Lcom/android/okhttp/Response;

.field private final code:I

.field private final handshake:Lcom/android/okhttp/Handshake;

.field private final headers:Lcom/android/okhttp/Headers;

.field private final message:Ljava/lang/String;

.field private networkResponse:Lcom/android/okhttp/Response;

.field private final priorResponse:Lcom/android/okhttp/Response;

.field private final protocol:Lcom/android/okhttp/Protocol;

.field private final request:Lcom/android/okhttp/Request;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/ResponseBody;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/Response;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/Response;->code:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Handshake;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response;->handshake:Lcom/android/okhttp/Handshake;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Headers;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/Response;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response;->message:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Protocol;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response;->protocol:Lcom/android/okhttp/Protocol;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    #@2
    return-object v0
.end method

.method private constructor <init>(Lcom/android/okhttp/Response$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/okhttp/Response$Builder;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get9(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Request;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    #@9
    .line 52
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get8(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Protocol;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/okhttp/Response;->protocol:Lcom/android/okhttp/Protocol;

    #@f
    .line 53
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get2(Lcom/android/okhttp/Response$Builder;)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Lcom/android/okhttp/Response;->code:I

    #@15
    .line 54
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get5(Lcom/android/okhttp/Response$Builder;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/okhttp/Response;->message:Ljava/lang/String;

    #@1b
    .line 55
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get3(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Handshake;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/okhttp/Response;->handshake:Lcom/android/okhttp/Handshake;

    #@21
    .line 56
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get4(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Headers$Builder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    #@2b
    .line 57
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get0(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/ResponseBody;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/ResponseBody;

    #@31
    .line 58
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get6(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;

    #@37
    .line 59
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get1(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;

    #@3d
    .line 60
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get7(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;

    #@43
    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Response$Builder;Lcom/android/okhttp/Response;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/okhttp/Response$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Response;-><init>(Lcom/android/okhttp/Response$Builder;)V

    #@3
    return-void
.end method


# virtual methods
.method public body()Lcom/android/okhttp/ResponseBody;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/ResponseBody;

    #@2
    return-object v0
.end method

.method public cacheControl()Lcom/android/okhttp/CacheControl;
    .locals 2

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/okhttp/Response;->cacheControl:Lcom/android/okhttp/CacheControl;

    #@2
    .line 206
    .local v0, "result":Lcom/android/okhttp/CacheControl;
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "result":Lcom/android/okhttp/CacheControl;
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "result":Lcom/android/okhttp/CacheControl;
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    #@7
    invoke-static {v1}, Lcom/android/okhttp/CacheControl;->parse(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/CacheControl;

    #@a
    move-result-object v0

    #@b
    .end local v0    # "result":Lcom/android/okhttp/CacheControl;
    iput-object v0, p0, Lcom/android/okhttp/Response;->cacheControl:Lcom/android/okhttp/CacheControl;

    #@d
    goto :goto_0
.end method

.method public cacheResponse()Lcom/android/okhttp/Response;
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;

    #@2
    return-object v0
.end method

.method public challenges()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Challenge;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 190
    iget v1, p0, Lcom/android/okhttp/Response;->code:I

    #@2
    const/16 v2, 0x191

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 191
    const-string/jumbo v0, "WWW-Authenticate"

    #@9
    .line 197
    .local v0, "responseField":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@c
    move-result-object v1

    #@d
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/http/OkHeaders;->parseChallenges(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 192
    .end local v0    # "responseField":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/android/okhttp/Response;->code:I

    #@14
    const/16 v2, 0x197

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 193
    const-string/jumbo v0, "Proxy-Authenticate"

    #@1b
    .restart local v0    # "responseField":Ljava/lang/String;
    goto :goto_0

    #@1c
    .line 195
    .end local v0    # "responseField":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method

.method public code()I
    .locals 1

    #@0
    .prologue
    .line 88
    iget v0, p0, Lcom/android/okhttp/Response;->code:I

    #@2
    return v0
.end method

.method public handshake()Lcom/android/okhttp/Handshake;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/okhttp/Response;->handshake:Lcom/android/okhttp/Handshake;

    #@2
    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 117
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 122
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    #@9
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    #@a
    goto :goto_0
.end method

.method public headers()Lcom/android/okhttp/Headers;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    #@2
    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isRedirect()Z
    .locals 1

    #@0
    .prologue
    .line 139
    iget v0, p0, Lcom/android/okhttp/Response;->code:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 148
    :pswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 146
    :pswitch_1
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 139
    nop

    #@a
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isSuccessful()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 96
    iget v1, p0, Lcom/android/okhttp/Response;->code:I

    #@3
    const/16 v2, 0xc8

    #@5
    if-lt v1, v2, :cond_0

    #@7
    iget v1, p0, Lcom/android/okhttp/Response;->code:I

    #@9
    const/16 v2, 0x12c

    #@b
    if-ge v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/okhttp/Response;->message:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public networkResponse()Lcom/android/okhttp/Response;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;

    #@2
    return-object v0
.end method

.method public newBuilder()Lcom/android/okhttp/Response$Builder;
    .locals 2

    #@0
    .prologue
    .line 134
    new-instance v0, Lcom/android/okhttp/Response$Builder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Response$Builder;-><init>(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response$Builder;)V

    #@6
    return-object v0
.end method

.method public priorResponse()Lcom/android/okhttp/Response;
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;

    #@2
    return-object v0
.end method

.method public protocol()Lcom/android/okhttp/Protocol;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/okhttp/Response;->protocol:Lcom/android/okhttp/Protocol;

    #@2
    return-object v0
.end method

.method public request()Lcom/android/okhttp/Request;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Response{protocol="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 211
    iget-object v1, p0, Lcom/android/okhttp/Response;->protocol:Lcom/android/okhttp/Protocol;

    #@e
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 212
    const-string/jumbo v1, ", code="

    #@15
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 213
    iget v1, p0, Lcom/android/okhttp/Response;->code:I

    #@1b
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 214
    const-string/jumbo v1, ", message="

    #@22
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 215
    iget-object v1, p0, Lcom/android/okhttp/Response;->message:Ljava/lang/String;

    #@28
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 216
    const-string/jumbo v1, ", url="

    #@2f
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 217
    iget-object v1, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    #@35
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 218
    const/16 v1, 0x7d

    #@3f
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0
.end method
