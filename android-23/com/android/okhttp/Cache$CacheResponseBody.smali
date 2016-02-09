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
.field private final bodySource:Lcom/android/okhttp/okio/BufferedSource;

.field private final contentLength:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field private final snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Cache$CacheResponseBody;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "snapshot"    # Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentLength"    # Ljava/lang/String;

    #@0
    .prologue
    .line 677
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    #@3
    .line 679
    iput-object p1, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@5
    .line 680
    iput-object p2, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    #@7
    .line 681
    iput-object p3, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    #@9
    .line 683
    const/4 v1, 0x1

    #@a
    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/android/okhttp/okio/Source;

    #@d
    move-result-object v0

    #@e
    .line 684
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    new-instance v1, Lcom/android/okhttp/Cache$CacheResponseBody$1;

    #@10
    invoke-direct {v1, p0, v0, p1}, Lcom/android/okhttp/Cache$CacheResponseBody$1;-><init>(Lcom/android/okhttp/Cache$CacheResponseBody;Lcom/android/okhttp/okio/Source;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)V

    #@13
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@16
    move-result-object v1

    #@17
    iput-object v1, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->bodySource:Lcom/android/okhttp/okio/BufferedSource;

    #@19
    .line 678
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    #@8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-wide v2

    #@c
    :cond_0
    return-wide v2

    #@d
    .line 699
    :catch_0
    move-exception v0

    #@e
    .line 700
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide v2
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 693
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    #@7
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public source()Lcom/android/okhttp/okio/BufferedSource;
    .locals 1

    #@0
    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->bodySource:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    return-object v0
.end method
