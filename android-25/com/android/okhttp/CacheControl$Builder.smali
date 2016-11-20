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
.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 275
    iput v0, p0, Lcom/android/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    #@6
    .line 276
    iput v0, p0, Lcom/android/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    #@8
    .line 277
    iput v0, p0, Lcom/android/okhttp/CacheControl$Builder;->minFreshSeconds:I

    #@a
    .line 272
    return-void
.end method


# virtual methods
.method public build()Lcom/android/okhttp/CacheControl;
    .locals 2

    #@0
    .prologue
    .line 363
    new-instance v0, Lcom/android/okhttp/CacheControl;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/CacheControl;-><init>(Lcom/android/okhttp/CacheControl$Builder;Lcom/android/okhttp/CacheControl;)V

    #@6
    return-object v0
.end method

.method public maxAge(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;
    .locals 5
    .param p1, "maxAge"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 302
    if-gez p1, :cond_0

    #@2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "maxAge < 0: "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 303
    :cond_0
    int-to-long v2, p1

    #@1d
    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    #@20
    move-result-wide v0

    #@21
    .line 304
    .local v0, "maxAgeSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    #@24
    cmp-long v2, v0, v2

    #@26
    if-lez v2, :cond_1

    #@28
    .line 305
    const v2, 0x7fffffff

    #@2b
    .line 304
    :goto_0
    iput v2, p0, Lcom/android/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    #@2d
    .line 307
    return-object p0

    #@2e
    .line 306
    :cond_1
    long-to-int v2, v0

    #@2f
    goto :goto_0
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;
    .locals 5
    .param p1, "maxStale"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 320
    if-gez p1, :cond_0

    #@2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "maxStale < 0: "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 321
    :cond_0
    int-to-long v2, p1

    #@1d
    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    #@20
    move-result-wide v0

    #@21
    .line 322
    .local v0, "maxStaleSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    #@24
    cmp-long v2, v0, v2

    #@26
    if-lez v2, :cond_1

    #@28
    .line 323
    const v2, 0x7fffffff

    #@2b
    .line 322
    :goto_0
    iput v2, p0, Lcom/android/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    #@2d
    .line 325
    return-object p0

    #@2e
    .line 324
    :cond_1
    long-to-int v2, v0

    #@2f
    goto :goto_0
.end method

.method public minFresh(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;
    .locals 5
    .param p1, "minFresh"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 339
    if-gez p1, :cond_0

    #@2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "minFresh < 0: "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 340
    :cond_0
    int-to-long v2, p1

    #@1d
    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    #@20
    move-result-wide v0

    #@21
    .line 341
    .local v0, "minFreshSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    #@24
    cmp-long v2, v0, v2

    #@26
    if-lez v2, :cond_1

    #@28
    .line 342
    const v2, 0x7fffffff

    #@2b
    .line 341
    :goto_0
    iput v2, p0, Lcom/android/okhttp/CacheControl$Builder;->minFreshSeconds:I

    #@2d
    .line 344
    return-object p0

    #@2e
    .line 343
    :cond_1
    long-to-int v2, v0

    #@2f
    goto :goto_0
.end method

.method public noCache()Lcom/android/okhttp/CacheControl$Builder;
    .locals 1

    #@0
    .prologue
    .line 283
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->noCache:Z

    #@3
    .line 284
    return-object p0
.end method

.method public noStore()Lcom/android/okhttp/CacheControl$Builder;
    .locals 1

    #@0
    .prologue
    .line 289
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->noStore:Z

    #@3
    .line 290
    return-object p0
.end method

.method public noTransform()Lcom/android/okhttp/CacheControl$Builder;
    .locals 1

    #@0
    .prologue
    .line 358
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->noTransform:Z

    #@3
    .line 359
    return-object p0
.end method

.method public onlyIfCached()Lcom/android/okhttp/CacheControl$Builder;
    .locals 1

    #@0
    .prologue
    .line 352
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->onlyIfCached:Z

    #@3
    .line 353
    return-object p0
.end method
