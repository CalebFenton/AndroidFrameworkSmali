.class public Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "CronetHttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;
    }
.end annotation


# static fields
.field private static final blacklist CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCronetEngine:Landroid/net/connectivity/org/chromium/net/CronetEngine;

.field private blacklist mException:Ljava/io/IOException;

.field private blacklist mHasResponseHeadersOrCompleted:Z

.field private blacklist mInputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;

.field private final blacklist mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

.field private blacklist mOnRedirectCalled:Z

.field private blacklist mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

.field private blacklist mRequest:Landroid/net/connectivity/org/chromium/net/UrlRequest;

.field private final blacklist mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mResponseHeadersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mResponseHeadersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mResponseInfo:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

.field private blacklist mTrafficStatsTag:I

.field private blacklist mTrafficStatsTagSet:Z

.field private blacklist mTrafficStatsUid:I

.field private blacklist mTrafficStatsUidSet:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInputStream(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mInputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageLoop(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputStream(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequest(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mRequest:Landroid/net/connectivity/org/chromium/net/UrlRequest;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmException(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Ljava/io/IOException;)V
    .registers 2

    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mException:Ljava/io/IOException;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasResponseHeadersOrCompleted(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mHasResponseHeadersOrCompleted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOnRedirectCalled(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOnRedirectCalled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResponseInfo(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const-class v0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/URL;Landroid/net/connectivity/org/chromium/net/CronetEngine;)V
    .registers 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "cronetEngine"    # Landroid/net/connectivity/org/chromium/net/CronetEngine;

    .line 64
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 65
    nop

    .line 66
    const-string v0, "CronetHttpURLConnection#CronetHttpURLConnection"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 67
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_a
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/CronetEngine;

    .line 68
    new-instance v1, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;-><init>()V

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    .line 69
    new-instance v1, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;

    invoke-direct {v1, p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;-><init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)V

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mInputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_27

    .line 71
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 72
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_26
    return-void

    .line 65
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_27
    move-exception v1

    if-eqz v0, :cond_32

    :try_start_2a
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    throw v1
.end method

.method static synthetic blacklist access$000(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Ljava/net/URL;
    .registers 2
    .param p0, "x0"    # Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    .line 41
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->url:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic blacklist access$100(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    .line 41
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->instanceFollowRedirects:Z

    return v0
.end method

.method static synthetic blacklist access$202(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Ljava/net/URL;)Ljava/net/URL;
    .registers 2
    .param p0, "x0"    # Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;
    .param p1, "x1"    # Ljava/net/URL;

    .line 41
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->url:Ljava/net/URL;

    return-object p1
.end method

.method static synthetic blacklist access$300(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    .line 41
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->instanceFollowRedirects:Z

    return v0
.end method

.method private blacklist checkHasResponseHeaders()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mHasResponseHeadersOrCompleted:Z

    if-eqz v0, :cond_18

    .line 665
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mException:Ljava/io/IOException;

    if-nez v0, :cond_15

    .line 667
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    if-eqz v0, :cond_d

    .line 670
    return-void

    .line 668
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Response info is null when there is no exception."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_15
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mException:Ljava/io/IOException;

    throw v0

    .line 664
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No response."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkTrafficStatsTag()Z
    .registers 4

    .line 317
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mTrafficStatsTagSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 318
    return v1

    .line 321
    :cond_6
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    .line 322
    .local v0, "tag":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    .line 323
    iput v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mTrafficStatsTag:I

    .line 324
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mTrafficStatsTagSet:Z

    .line 327
    :cond_11
    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mTrafficStatsTagSet:Z

    return v1
.end method

.method private blacklist checkTrafficStatsUid()Z
    .registers 4

    .line 331
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mTrafficStatsUidSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 332
    return v1

    .line 336
    :cond_6
    nop

    .line 340
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsUid()I

    move-result v0

    .line 341
    .local v0, "uid":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_12

    .line 342
    iput v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mTrafficStatsUid:I

    .line 343
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mTrafficStatsUidSet:Z

    .line 346
    :cond_12
    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mTrafficStatsUidSet:Z

    return v1
.end method

.method private blacklist findRequestProperty(Ljava/lang/String;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 521
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 522
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 523
    return v0

    .line 520
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 526
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getAllHeaders()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersMap:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 697
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersMap:Ljava/util/Map;

    return-object v0

    .line 699
    :cond_7
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 700
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 701
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 703
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 705
    :cond_3e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_16

    .line 708
    :cond_55
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersMap:Ljava/util/Map;

    .line 709
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersMap:Ljava/util/Map;

    return-object v1
.end method

.method private blacklist getAllHeadersAsList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 713
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 714
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersList:Ljava/util/List;

    return-object v0

    .line 716
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersList:Ljava/util/List;

    .line 717
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 719
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Content-Encoding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 720
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersList:Ljava/util/List;

    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3c
    goto :goto_18

    .line 724
    :cond_3d
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersList:Ljava/util/List;

    .line 725
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersList:Ljava/util/List;

    return-object v0
.end method

.method private blacklist getHeaderFieldEntry(I)Ljava/util/Map$Entry;
    .registers 5
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 675
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getResponse()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_17

    .line 678
    nop

    .line 679
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v1

    .line 680
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_10

    .line 681
    return-object v0

    .line 683
    :cond_10
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 676
    .end local v1    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_17
    move-exception v1

    .line 677
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method private blacklist getResponse()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    const-string v0, "CronetHttpURLConnection#getResponse"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 639
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    if-eqz v1, :cond_14

    .line 640
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->checkReceivedEnoughContent()V

    .line 647
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->close()V

    .line 649
    :cond_14
    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mHasResponseHeadersOrCompleted:Z

    if-nez v1, :cond_20

    .line 650
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->startRequest()V

    .line 652
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->loop()V

    .line 654
    :cond_20
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->checkHasResponseHeaders()V
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_29

    .line 655
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 656
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_28
    return-void

    .line 638
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_29
    move-exception v1

    if-eqz v0, :cond_34

    :try_start_2c
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_34
    :goto_34
    throw v1
.end method

.method private blacklist getStreamingModeContentLength()J
    .registers 7

    .line 248
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->fixedContentLength:I

    int-to-long v0, v0

    .line 249
    .local v0, "contentLength":J
    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->fixedContentLengthLong:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    .line 250
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->fixedContentLengthLong:J

    .line 253
    :cond_d
    return-wide v0
.end method

.method private blacklist isChunkedUpload()Z
    .registers 2

    .line 691
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->chunkLength:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private final blacklist setRequestPropertyInternal(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "overwrite"    # Z

    .line 379
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->connected:Z

    if-nez v0, :cond_3b

    .line 383
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->findRequestProperty(Ljava/lang/String;)I

    move-result v0

    .line 384
    .local v0, "index":I
    if-ltz v0, :cond_31

    .line 385
    if-eqz p3, :cond_12

    .line 386
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_31

    .line 390
    :cond_12
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add multiple headers of the same key, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". crbug.com/432719."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_31
    :goto_31
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    return-void

    .line 380
    .end local v0    # "index":I
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot modify request property after connection is made."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist startRequest()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    const-string v0, "Content-Type"

    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->connected:Z

    if-eqz v1, :cond_7

    .line 259
    return-void

    .line 261
    :cond_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->connectRequested()Z

    move-result v1

    if-nez v1, :cond_14

    .line 263
    return-void

    .line 265
    :cond_14
    const-string v1, "CronetHttpURLConnection#startRequest"

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1

    .line 266
    .local v1, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_1a
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/CronetEngine;

    .line 269
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;

    invoke-direct {v4, p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;-><init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)V

    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    .line 268
    invoke-virtual {v2, v3, v4, v5}, Landroid/net/connectivity/org/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 272
    .local v2, "requestBuilder":Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    iget-boolean v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->doOutput:Z

    if-eqz v3, :cond_88

    .line 273
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->method:Ljava/lang/String;

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 274
    const-string v3, "POST"

    iput-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->method:Ljava/lang/String;

    .line 276
    :cond_43
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_df

    const-string v4, "Content-Length"

    if-eqz v3, :cond_72

    .line 277
    :try_start_49
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    .line 278
    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->getUploadDataProvider()Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    move-result-object v3

    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    .line 277
    invoke-virtual {v2, v3, v5}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setUploadDataProvider(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 279
    invoke-virtual {p0, v4}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7d

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->isChunkedUpload()Z

    move-result v3

    if-nez v3, :cond_7d

    .line 280
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    .line 282
    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->getUploadDataProvider()Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/UploadDataProvider;->getLength()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {p0, v4, v3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 285
    :cond_72
    invoke-virtual {p0, v4}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7d

    .line 286
    const-string v3, "0"

    invoke-virtual {p0, v4, v3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_7d
    :goto_7d
    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_88

    .line 291
    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_88
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 295
    .local v3, "requestHeader":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 296
    nop

    .end local v3    # "requestHeader":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_8e

    .line 297
    :cond_a7
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 298
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->disableCache()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 301
    :cond_b0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 302
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->checkTrafficStatsTag()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 303
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mTrafficStatsTag:I

    invoke-virtual {v2, v0}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 305
    :cond_c0
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->checkTrafficStatsUid()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 306
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mTrafficStatsUid:I

    invoke-virtual {v2, v0}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    .line 309
    :cond_cb
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->build()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mRequest:Landroid/net/connectivity/org/chromium/net/UrlRequest;

    .line 311
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mRequest:Landroid/net/connectivity/org/chromium/net/UrlRequest;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlRequest;->start()V

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->connected:Z
    :try_end_d9
    .catchall {:try_start_49 .. :try_end_d9} :catchall_df

    .line 313
    .end local v2    # "requestBuilder":Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    if-eqz v1, :cond_de

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 314
    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_de
    return-void

    .line 265
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_df
    move-exception v0

    if-eqz v1, :cond_ea

    :try_start_e2
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_e6

    goto :goto_ea

    :catchall_e6
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ea
    :goto_ea
    throw v0
.end method


# virtual methods
.method public final whitelist test-api addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 369
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->setRequestPropertyInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 370
    return-void
.end method

.method public whitelist test-api connect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 88
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->startRequest()V

    .line 89
    return-void
.end method

.method public whitelist test-api disconnect()V
    .registers 2

    .line 98
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->connected:Z

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mRequest:Landroid/net/connectivity/org/chromium/net/UrlRequest;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlRequest;->cancel()V

    .line 101
    :cond_9
    return-void
.end method

.method public whitelist test-api getErrorStream()Ljava/io/InputStream;
    .registers 4

    .line 356
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getResponse()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_13

    .line 359
    nop

    .line 360
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_12

    .line 361
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mInputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;

    return-object v0

    .line 363
    :cond_12
    return-object v0

    .line 357
    :catch_13
    move-exception v1

    .line 358
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method public final whitelist test-api getHeaderField(I)Ljava/lang/String;
    .registers 4
    .param p1, "pos"    # I

    .line 167
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getHeaderFieldEntry(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 168
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_8

    .line 169
    const/4 v1, 0x0

    return-object v1

    .line 171
    :cond_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public final whitelist test-api getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getResponse()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_23

    .line 139
    nop

    .line 140
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getAllHeaders()Ljava/util/Map;

    move-result-object v1

    .line 141
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 142
    return-object v0

    .line 144
    :cond_10
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 145
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 137
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catch_23
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method public final whitelist test-api getHeaderFieldKey(I)Ljava/lang/String;
    .registers 4
    .param p1, "pos"    # I

    .line 154
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getHeaderFieldEntry(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 155
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_8

    .line 156
    const/4 v1, 0x0

    return-object v1

    .line 158
    :cond_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public whitelist test-api getHeaderFields()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 121
    :try_start_0
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getResponse()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_9

    .line 124
    nop

    .line 125
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getAllHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 122
    :catch_9
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getResponse()V

    .line 186
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->instanceFollowRedirects:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOnRedirectCalled:Z

    if-nez v0, :cond_c

    goto :goto_14

    .line 187
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot read response body of a redirect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_14
    :goto_14
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_21

    .line 194
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mInputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;

    return-object v0

    .line 192
    :cond_21
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getMoreData(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    const-string v0, "CronetHttpURLConnection#getMoreData"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 462
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mRequest:Landroid/net/connectivity/org/chromium/net/UrlRequest;

    invoke-virtual {v1, p1}, Landroid/net/connectivity/org/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    .line 463
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getReadTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->loop(I)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_1a

    .line 464
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 465
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_19
    return-void

    .line 461
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_1a
    move-exception v1

    if-eqz v0, :cond_25

    :try_start_1d
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_25
    :goto_25
    throw v1
.end method

.method public whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    if-nez v0, :cond_6c

    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->doOutput:Z

    if-eqz v0, :cond_6c

    .line 204
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->connected:Z

    if-nez v0, :cond_64

    .line 208
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->isChunkedUpload()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 209
    new-instance v0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;

    iget v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->chunkLength:I

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;-><init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;ILandroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    .line 211
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->startRequest()V

    goto :goto_6c

    .line 213
    :cond_21
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getStreamingModeContentLength()J

    move-result-wide v0

    .line 214
    .local v0, "fixedStreamingModeContentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_38

    .line 215
    new-instance v2, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;-><init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;JLandroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;)V

    iput-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    .line 219
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->startRequest()V

    goto :goto_6c

    .line 224
    :cond_38
    sget-object v2, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 225
    sget-object v2, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->TAG:Ljava/lang/String;

    const-string v3, "Outputstream is being buffered in memory."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_48
    const-string v2, "Content-Length"

    invoke-virtual {p0, v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "length":Ljava/lang/String;
    if-nez v2, :cond_58

    .line 229
    new-instance v3, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-direct {v3, p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;-><init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)V

    iput-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    goto :goto_6c

    .line 231
    :cond_58
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 232
    .local v3, "lengthParsed":J
    new-instance v5, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-direct {v5, p0, v3, v4}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;-><init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;J)V

    iput-object v5, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    goto :goto_6c

    .line 205
    .end local v0    # "fixedStreamingModeContentLength":J
    .end local v2    # "length":Ljava/lang/String;
    .end local v3    # "lengthParsed":J
    :cond_64
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Cannot write to OutputStream after receiving response."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_6c
    :goto_6c
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    return-object v0
.end method

.method public whitelist test-api getRequestProperties()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 406
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->connected:Z

    if-nez v0, :cond_4a

    .line 410
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 412
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 413
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 417
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_11

    .line 415
    .restart local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Should not have multiple values."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 422
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 407
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request headers after connection is set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 431
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->findRequestProperty(Ljava/lang/String;)I

    move-result v0

    .line 432
    .local v0, "index":I
    if-ltz v0, :cond_13

    .line 433
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 435
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getResponse()V

    .line 114
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getResponse()V

    .line 107
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setConnectTimeout(I)V
    .registers 4
    .param p1, "timeout"    # I

    .line 451
    sget-object v0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->TAG:Ljava/lang/String;

    const-string v1, "setConnectTimeout is not supported by CronetHttpURLConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method public final whitelist test-api setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 375
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->setRequestPropertyInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 376
    return-void
.end method

.method public blacklist setTrafficStatsTag(I)V
    .registers 4
    .param p1, "tag"    # I

    .line 484
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->connected:Z

    if-nez v0, :cond_a

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mTrafficStatsTagSet:Z

    .line 489
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mTrafficStatsTag:I

    .line 490
    return-void

    .line 485
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot modify traffic stats tag after connection is made."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setTrafficStatsUid(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 507
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->connected:Z

    if-nez v0, :cond_a

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mTrafficStatsUidSet:Z

    .line 512
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->mTrafficStatsUid:I

    .line 513
    return-void

    .line 508
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot modify traffic stats UID after connection is made."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api usingProxy()Z
    .registers 2

    .line 442
    const/4 v0, 0x0

    return v0
.end method
