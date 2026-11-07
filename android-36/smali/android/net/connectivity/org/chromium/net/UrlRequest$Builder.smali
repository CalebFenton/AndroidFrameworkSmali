.class public abstract Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
.super Ljava/lang/Object;
.source "UrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/UrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# static fields
.field public static final blacklist REQUEST_PRIORITY_HIGHEST:I = 0x4

.field public static final blacklist REQUEST_PRIORITY_IDLE:I = 0x0

.field public static final blacklist REQUEST_PRIORITY_LOW:I = 0x2

.field public static final blacklist REQUEST_PRIORITY_LOWEST:I = 0x1

.field public static final blacklist REQUEST_PRIORITY_MEDIUM:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
.end method

.method public blacklist addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .param p1, "annotation"    # Ljava/lang/Object;

    .line 115
    return-object p0
.end method

.method public abstract blacklist allowDirectExecutor()Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
.end method

.method public blacklist bindToNetwork(J)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 3
    .param p1, "networkHandle"    # J

    .line 130
    return-object p0
.end method

.method public abstract blacklist build()Landroid/net/connectivity/org/chromium/net/UrlRequest;
.end method

.method public abstract blacklist disableCache()Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
.end method

.method public abstract blacklist setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
.end method

.method public abstract blacklist setPriority(I)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
.end method

.method public blacklist setRawCompressionDictionary([BLjava/nio/ByteBuffer;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 4
    .param p1, "dictionarySha256Hash"    # [B
    .param p2, "dictionary"    # Ljava/nio/ByteBuffer;
    .param p3, "dictionaryId"    # Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public blacklist setRequestFinishedListener(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;

    .line 183
    return-object p0
.end method

.method public blacklist setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .param p1, "tag"    # I

    .line 150
    return-object p0
.end method

.method public blacklist setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .param p1, "uid"    # I

    .line 168
    return-object p0
.end method

.method public abstract blacklist setUploadDataProvider(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
.end method
