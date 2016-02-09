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

.field private loaderRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private searchName:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/icu/util/UResourceBundle$ResourceCacheKey;Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "root"    # Ljava/lang/ClassLoader;
    .param p2, "searchName"    # Ljava/lang/String;
    .param p3, "defaultLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->setKeyValues(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 388
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

.method private declared-synchronized setKeyValues(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "root"    # Ljava/lang/ClassLoader;
    .param p2, "searchName"    # Ljava/lang/String;
    .param p3, "defaultLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 451
    :try_start_0
    iput-object p2, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->searchName:Ljava/lang/String;

    #@3
    .line 452
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    #@9
    .line 453
    iput-object p3, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    #@b
    .line 454
    if-eqz p3, :cond_0

    #@d
    .line 455
    iget v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    #@f
    invoke-virtual {p3}, Landroid/icu/util/ULocale;->hashCode()I

    #@12
    move-result v1

    #@13
    xor-int/2addr v0, v1

    #@14
    iput v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    #@16
    .line 457
    :cond_0
    if-nez p1, :cond_1

    #@18
    .line 458
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->loaderRef:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :goto_0
    monitor-exit p0

    #@1c
    .line 450
    return-void

    #@1d
    .line 460
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/ref/SoftReference;

    #@1f
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@22
    iput-object v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->loaderRef:Ljava/lang/ref/SoftReference;

    #@24
    .line 461
    iget v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    #@26
    invoke-virtual {p1}, Ljava/lang/ClassLoader;->hashCode()I

    #@29
    move-result v1

    #@2a
    xor-int/2addr v0, v1

    #@2b
    iput v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit p0

    #@30
    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 441
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 442
    :catch_0
    move-exception v0

    #@6
    .line 444
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
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 395
    if-nez p1, :cond_0

    #@4
    .line 396
    return v5

    #@5
    .line 398
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 399
    return v4

    #@8
    .line 402
    :cond_1
    :try_start_0
    move-object v0, p1

    #@9
    check-cast v0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    #@b
    move-object v3, v0

    #@c
    .line 404
    .local v3, "otherEntry":Landroid/icu/util/UResourceBundle$ResourceCacheKey;
    iget v6, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    #@e
    iget v7, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    #@10
    if-eq v6, v7, :cond_2

    #@12
    .line 405
    return v5

    #@13
    .line 408
    :cond_2
    iget-object v6, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->searchName:Ljava/lang/String;

    #@15
    iget-object v7, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->searchName:Ljava/lang/String;

    #@17
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_3

    #@1d
    .line 409
    return v5

    #@1e
    .line 412
    :cond_3
    iget-object v6, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    #@20
    if-nez v6, :cond_4

    #@22
    .line 413
    iget-object v6, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    #@24
    if-eqz v6, :cond_5

    #@26
    .line 414
    return v5

    #@27
    .line 417
    :cond_4
    iget-object v6, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    #@29
    iget-object v7, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    #@2b
    invoke-virtual {v6, v7}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v6

    #@2f
    if-nez v6, :cond_5

    #@31
    .line 418
    return v5

    #@32
    .line 422
    :cond_5
    iget-object v6, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->loaderRef:Ljava/lang/ref/SoftReference;

    #@34
    if-nez v6, :cond_7

    #@36
    .line 423
    iget-object v6, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->loaderRef:Ljava/lang/ref/SoftReference;

    #@38
    if-nez v6, :cond_6

    #@3a
    :goto_0
    return v4

    #@3b
    :cond_6
    move v4, v5

    #@3c
    goto :goto_0

    #@3d
    .line 425
    :cond_7
    iget-object v6, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->loaderRef:Ljava/lang/ref/SoftReference;

    #@3f
    if-eqz v6, :cond_8

    #@41
    .line 426
    iget-object v6, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->loaderRef:Ljava/lang/ref/SoftReference;

    #@43
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@46
    move-result-object v6

    #@47
    iget-object v7, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->loaderRef:Ljava/lang/ref/SoftReference;

    #@49
    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    move-result-object v7

    #@4d
    if-ne v6, v7, :cond_8

    #@4f
    move v5, v4

    #@50
    .line 425
    :cond_8
    return v5

    #@51
    .line 430
    .end local v3    # "otherEntry":Landroid/icu/util/UResourceBundle$ResourceCacheKey;
    :catch_0
    move-exception v1

    #@52
    .line 431
    .local v1, "e":Ljava/lang/ClassCastException;
    return v5

    #@53
    .line 428
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    #@54
    .line 429
    .local v2, "e":Ljava/lang/NullPointerException;
    return v5
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 436
    iget v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    #@2
    return v0
.end method
