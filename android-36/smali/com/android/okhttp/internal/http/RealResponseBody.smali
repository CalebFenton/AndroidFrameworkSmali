.class public final Lcom/android/okhttp/internal/http/RealResponseBody;
.super Lcom/android/okhttp/ResponseBody;
.source "RealResponseBody.java"


# instance fields
.field private final blacklist headers:Lcom/android/okhttp/Headers;

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->headers:Lcom/android/okhttp/Headers;

    .line 33
    iput-object p2, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->source:Lcom/android/okhttp/okio/BufferedSource;

    return-void
.end method


# virtual methods
.method public blacklist contentLength()J
    .registers 3

    .line 42
    iget-object p0, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->headers:Lcom/android/okhttp/Headers;

    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist contentType()Lcom/android/okhttp/MediaType;
    .registers 2

    .line 37
    iget-object p0, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->headers:Lcom/android/okhttp/Headers;

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 38
    invoke-static {p0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist source()Lcom/android/okhttp/okio/BufferedSource;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->source:Lcom/android/okhttp/okio/BufferedSource;

    return-object p0
.end method
