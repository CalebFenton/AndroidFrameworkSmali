.class Lcom/android/okhttp/Cache$CacheResponseBody;
.super Lcom/android/okhttp/ResponseBody;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final greylist-max-o bodySource:Lcom/android/okhttp/okio/BufferedSource;

.field private final greylist-max-o contentLength:Ljava/lang/String;

.field private final greylist-max-o contentType:Ljava/lang/String;

.field private final greylist-max-o snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 702
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    .line 703
    iput-object p1, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 704
    iput-object p2, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 705
    iput-object p3, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    const/4 p2, 0x1

    .line 707
    invoke-virtual {p1, p2}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/android/okhttp/okio/Source;

    move-result-object p2

    .line 708
    new-instance p3, Lcom/android/okhttp/Cache$CacheResponseBody$1;

    invoke-direct {p3, p0, p2, p1}, Lcom/android/okhttp/Cache$CacheResponseBody$1;-><init>(Lcom/android/okhttp/Cache$CacheResponseBody;Lcom/android/okhttp/okio/Source;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)V

    invoke-static {p3}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->bodySource:Lcom/android/okhttp/okio/BufferedSource;

    return-void
.end method

.method static synthetic blacklist access$500(Lcom/android/okhttp/Cache$CacheResponseBody;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .registers 1

    .line 695
    iget-object p0, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    return-object p0
.end method


# virtual methods
.method public greylist-max-o contentLength()J
    .registers 3

    const-wide/16 v0, -0x1

    .line 722
    :try_start_2
    iget-object p0, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz p0, :cond_a

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-wide v0
.end method

.method public greylist-max-o contentType()Lcom/android/okhttp/MediaType;
    .registers 1

    .line 717
    iget-object p0, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-o source()Lcom/android/okhttp/okio/BufferedSource;
    .registers 1

    .line 729
    iget-object p0, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->bodySource:Lcom/android/okhttp/okio/BufferedSource;

    return-object p0
.end method
