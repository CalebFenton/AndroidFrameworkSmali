.class public final Lcom/android/okhttp/CacheControl$Builder;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field greylist-max-o maxAgeSeconds:I

.field greylist-max-o maxStaleSeconds:I

.field greylist-max-o minFreshSeconds:I

.field greylist-max-o noCache:Z

.field greylist-max-o noStore:Z

.field greylist-max-o noTransform:Z

.field greylist-max-o onlyIfCached:Z


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 278
    iput v0, p0, Lcom/android/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    .line 279
    iput v0, p0, Lcom/android/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    .line 280
    iput v0, p0, Lcom/android/okhttp/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public greylist-max-o build()Lcom/android/okhttp/CacheControl;
    .registers 3

    .line 366
    new-instance v0, Lcom/android/okhttp/CacheControl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/CacheControl;-><init>(Lcom/android/okhttp/CacheControl$Builder;Lcom/android/okhttp/CacheControl$1;)V

    return-object v0
.end method

.method public greylist-max-o maxAge(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;
    .registers 5

    if-ltz p1, :cond_16

    int-to-long v0, p1

    .line 306
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_12

    const p1, 0x7fffffff

    goto :goto_13

    :cond_12
    long-to-int p1, p1

    .line 309
    :goto_13
    iput p1, p0, Lcom/android/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    return-object p0

    .line 305
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maxAge < 0: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;
    .registers 5

    if-ltz p1, :cond_16

    int-to-long v0, p1

    .line 324
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_12

    const p1, 0x7fffffff

    goto :goto_13

    :cond_12
    long-to-int p1, p1

    .line 327
    :goto_13
    iput p1, p0, Lcom/android/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    return-object p0

    .line 323
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maxStale < 0: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o minFresh(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;
    .registers 5

    if-ltz p1, :cond_16

    int-to-long v0, p1

    .line 343
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_12

    const p1, 0x7fffffff

    goto :goto_13

    :cond_12
    long-to-int p1, p1

    .line 346
    :goto_13
    iput p1, p0, Lcom/android/okhttp/CacheControl$Builder;->minFreshSeconds:I

    return-object p0

    .line 342
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minFresh < 0: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o noCache()Lcom/android/okhttp/CacheControl$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->noCache:Z

    return-object p0
.end method

.method public greylist-max-o noStore()Lcom/android/okhttp/CacheControl$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->noStore:Z

    return-object p0
.end method

.method public greylist-max-o noTransform()Lcom/android/okhttp/CacheControl$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->noTransform:Z

    return-object p0
.end method

.method public greylist-max-o onlyIfCached()Lcom/android/okhttp/CacheControl$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 355
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->onlyIfCached:Z

    return-object p0
.end method
