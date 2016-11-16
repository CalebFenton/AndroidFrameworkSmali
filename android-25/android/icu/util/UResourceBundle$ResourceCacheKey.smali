.class final Landroid/icu/util/UResourceBundle$ResourceCacheKey;
.super Ljava/lang/Object;
.source "UResourceBundle.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/UResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceCacheKey"
.end annotation


# instance fields
.field private defaultLocale:Landroid/icu/util/ULocale;

.field private hashCodeCache:I

.field private searchName:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/icu/util/UResourceBundle$ResourceCacheKey;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "searchName"    # Ljava/lang/String;
    .param p2, "defaultLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->setKeyValues(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/UResourceBundle$ResourceCacheKey;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/util/UResourceBundle$ResourceCacheKey;-><init>()V

    #@3
    return-void
.end method

.method private declared-synchronized setKeyValues(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "searchName"    # Ljava/lang/String;
    .param p2, "defaultLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 427
    :try_start_0
    iput-object p1, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->searchName:Ljava/lang/String;

    #@3
    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    #@9
    .line 429
    iput-object p2, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    #@b
    .line 430
    if-eqz p2, :cond_0

    #@d
    .line 431
    iget v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    #@f
    invoke-virtual {p2}, Landroid/icu/util/ULocale;->hashCode()I

    #@12
    move-result v1

    #@13
    xor-int/2addr v0, v1

    #@14
    iput v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit p0

    #@17
    .line 426
    return-void

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 418
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 419
    :catch_0
    move-exception v0

    #@6
    .line 421
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    #@8
    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 378
    if-nez p1, :cond_0

    #@4
    .line 379
    return v6

    #@5
    .line 381
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 382
    return v7

    #@8
    .line 385
    :cond_1
    :try_start_0
    move-object v0, p1

    #@9
    check-cast v0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    #@b
    move-object v3, v0

    #@c
    .line 387
    .local v3, "otherEntry":Landroid/icu/util/UResourceBundle$ResourceCacheKey;
    iget v4, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    #@e
    iget v5, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    #@10
    if-eq v4, v5, :cond_2

    #@12
    .line 388
    return v6

    #@13
    .line 391
    :cond_2
    iget-object v4, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->searchName:Ljava/lang/String;

    #@15
    iget-object v5, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->searchName:Ljava/lang/String;

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_3

    #@1d
    .line 392
    return v6

    #@1e
    .line 395
    :cond_3
    iget-object v4, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    #@20
    if-nez v4, :cond_4

    #@22
    .line 396
    iget-object v4, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    #@24
    if-eqz v4, :cond_5

    #@26
    .line 397
    return v6

    #@27
    .line 400
    :cond_4
    iget-object v4, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    #@29
    iget-object v5, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    #@2b
    invoke-virtual {v4, v5}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    move-result v4

    #@2f
    if-nez v4, :cond_5

    #@31
    .line 401
    return v6

    #@32
    .line 404
    :cond_5
    return v7

    #@33
    .line 407
    .end local v3    # "otherEntry":Landroid/icu/util/UResourceBundle$ResourceCacheKey;
    :catch_0
    move-exception v1

    #@34
    .line 408
    .local v1, "e":Ljava/lang/ClassCastException;
    return v6

    #@35
    .line 405
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    #@36
    .line 406
    .local v2, "e":Ljava/lang/NullPointerException;
    return v6
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 413
    iget v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    #@2
    return v0
.end method
