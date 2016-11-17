.class Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;
.super Ljava/lang/Object;
.source "WebViewUpdateServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/webkit/WebViewUpdateServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewUpdater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    }
.end annotation


# static fields
.field private static final WAIT_TIMEOUT_MS:I = 0x3e8


# instance fields
.field private NUMBER_OF_RELROS_UNKNOWN:I

.field private mAnyWebViewInstalled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

.field private mLock:Ljava/lang/Object;

.field private mMinimumVersionCode:I

.field private mNumRelroCreationsFinished:I

.field private mNumRelroCreationsStarted:I

.field private mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field private mWebViewPackageDirty:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemInterface"    # Lcom/android/server/webkit/SystemInterface;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 217
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    #@7
    .line 227
    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    #@9
    .line 228
    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    #@b
    .line 230
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    #@d
    .line 231
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    #@f
    .line 233
    const v0, 0x7fffffff

    #@12
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    #@14
    .line 236
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    #@17
    .line 238
    new-instance v0, Ljava/lang/Object;

    #@19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1c
    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    #@1e
    .line 220
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mContext:Landroid/content/Context;

    #@20
    .line 221
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@22
    .line 219
    return-void
.end method

.method private checkIfRelrosDoneLocked()V
    .locals 4

    #@0
    .prologue
    .line 538
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    #@2
    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    #@4
    if-ne v2, v3, :cond_0

    #@6
    .line 539
    iget-boolean v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 540
    const/4 v2, 0x0

    #@b
    iput-boolean v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    #@d
    .line 544
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    #@10
    move-result-object v1

    #@11
    .line 545
    .local v1, "newPackage":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 537
    .end local v1    # "newPackage":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    #@15
    .line 553
    :cond_1
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    #@17
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    #@1a
    goto :goto_0

    #@1b
    .line 546
    :catch_0
    move-exception v0

    #@1c
    .local v0, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    goto :goto_0
.end method

.method private findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 437
    invoke-direct {p0, v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->getValidWebViewPackagesAndInfos(Z)[Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    #@4
    move-result-object v1

    #@5
    .line 439
    .local v1, "providers":[Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@7
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mContext:Landroid/content/Context;

    #@9
    invoke-interface {v3, v5}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 442
    .local v2, "userChosenProvider":Ljava/lang/String;
    array-length v5, v1

    #@e
    move v3, v4

    #@f
    :goto_0
    if-ge v3, v5, :cond_1

    #@11
    aget-object v0, v1, v3

    #@13
    .line 443
    .local v0, "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    #@15
    iget-object v6, v6, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    #@17
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_0

    #@1d
    .line 444
    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    #@1f
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap1(Landroid/content/pm/PackageInfo;)Z

    #@22
    move-result v6

    #@23
    .line 443
    if-eqz v6, :cond_0

    #@25
    .line 445
    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    #@27
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap0(Landroid/content/pm/PackageInfo;)Z

    #@2a
    move-result v6

    #@2b
    .line 443
    if-eqz v6, :cond_0

    #@2d
    .line 446
    iget-object v3, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    #@2f
    return-object v3

    #@30
    .line 442
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@32
    goto :goto_0

    #@33
    .line 453
    .end local v0    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    :cond_1
    array-length v5, v1

    #@34
    move v3, v4

    #@35
    :goto_1
    if-ge v3, v5, :cond_3

    #@37
    aget-object v0, v1, v3

    #@39
    .line 454
    .restart local v0    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    #@3b
    iget-boolean v6, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    #@3d
    if-eqz v6, :cond_2

    #@3f
    .line 455
    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    #@41
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap1(Landroid/content/pm/PackageInfo;)Z

    #@44
    move-result v6

    #@45
    .line 454
    if-eqz v6, :cond_2

    #@47
    .line 456
    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    #@49
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap0(Landroid/content/pm/PackageInfo;)Z

    #@4c
    move-result v6

    #@4d
    .line 454
    if-eqz v6, :cond_2

    #@4f
    .line 457
    iget-object v3, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    #@51
    return-object v3

    #@52
    .line 453
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@54
    goto :goto_1

    #@55
    .line 463
    .end local v0    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    :cond_3
    array-length v5, v1

    #@56
    move v3, v4

    #@57
    :goto_2
    if-ge v3, v5, :cond_5

    #@59
    aget-object v0, v1, v3

    #@5b
    .line 464
    .restart local v0    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    #@5d
    iget-boolean v6, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    #@5f
    if-eqz v6, :cond_4

    #@61
    .line 465
    iget-object v3, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    #@63
    return-object v3

    #@64
    .line 463
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@66
    goto :goto_2

    #@67
    .line 469
    .end local v0    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    :cond_5
    iput-boolean v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    #@69
    .line 470
    new-instance v3, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    #@6b
    .line 471
    const-string/jumbo v4, "Could not find a loadable WebView package"

    #@6e
    .line 470
    invoke-direct {v3, v4}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    #@71
    throw v3
.end method

.method private getMinimumVersionCode()I
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 606
    iget v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    #@3
    if-lez v4, :cond_0

    #@5
    .line 607
    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    #@7
    return v3

    #@8
    .line 610
    :cond_0
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@a
    invoke-interface {v4}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    #@d
    move-result-object v4

    #@e
    array-length v5, v4

    #@f
    :goto_0
    if-ge v3, v5, :cond_4

    #@11
    aget-object v1, v4, v3

    #@13
    .line 611
    .local v1, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v6, v1, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    #@15
    if-eqz v6, :cond_1

    #@17
    iget-boolean v6, v1, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    #@19
    if-eqz v6, :cond_2

    #@1b
    .line 610
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 614
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@20
    iget-object v7, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    #@22
    invoke-interface {v6, v7}, Lcom/android/server/webkit/SystemInterface;->getFactoryPackageVersion(Ljava/lang/String;)I

    #@25
    move-result v2

    #@26
    .line 615
    .local v2, "versionCode":I
    iget v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    #@28
    if-ltz v6, :cond_3

    #@2a
    iget v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    #@2c
    if-ge v2, v6, :cond_1

    #@2e
    .line 616
    :cond_3
    iput v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    goto :goto_1

    #@31
    .line 618
    .end local v2    # "versionCode":I
    :catch_0
    move-exception v0

    #@32
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    #@33
    .line 624
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_4
    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    #@35
    return v3
.end method

.method private getValidWebViewPackagesAndInfos(Z)[Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    .locals 7
    .param p1, "onlyInstalled"    # Z

    #@0
    .prologue
    .line 387
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@2
    invoke-interface {v5}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    #@5
    move-result-object v0

    #@6
    .line 388
    .local v0, "allProviders":[Landroid/webkit/WebViewProviderInfo;
    new-instance v4, Ljava/util/ArrayList;

    #@8
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 389
    .local v4, "providers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;>;"
    const/4 v2, 0x0

    #@c
    .local v2, "n":I
    :goto_0
    array-length v5, v0

    #@d
    if-ge v2, v5, :cond_2

    #@f
    .line 392
    :try_start_0
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@11
    aget-object v6, v0, v2

    #@13
    invoke-interface {v5, v6}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    #@16
    move-result-object v3

    #@17
    .line 393
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_0

    #@19
    invoke-static {v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap1(Landroid/content/pm/PackageInfo;)Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_1

    #@1f
    .line 394
    :cond_0
    aget-object v5, v0, v2

    #@21
    invoke-virtual {p0, v5, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z

    #@24
    move-result v5

    #@25
    .line 393
    if-eqz v5, :cond_1

    #@27
    .line 395
    new-instance v5, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    #@29
    aget-object v6, v0, v2

    #@2b
    invoke-direct {v5, v6, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;-><init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V

    #@2e
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 389
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 401
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@37
    move-result v5

    #@38
    new-array v5, v5, [Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    #@3a
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3d
    move-result-object v5

    #@3e
    check-cast v5, [Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    #@40
    return-object v5

    #@41
    .line 397
    :catch_0
    move-exception v1

    #@42
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .locals 3
    .param p1, "newPackage"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 366
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    #@6
    .line 367
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    #@8
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    #@a
    if-ne v0, v2, :cond_0

    #@c
    .line 368
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    #@e
    .line 373
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    #@10
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    #@12
    .line 374
    const/4 v0, 0x0

    #@13
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    #@15
    .line 376
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@17
    invoke-interface {v0, p1}, Lcom/android/server/webkit/SystemInterface;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    #@1a
    move-result v0

    #@1b
    .line 375
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    #@1d
    .line 379
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->checkIfRelrosDoneLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :goto_0
    monitor-exit v1

    #@21
    .line 364
    return-void

    #@22
    .line 381
    :cond_0
    const/4 v0, 0x1

    #@23
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 365
    :catchall_0
    move-exception v0

    #@27
    monitor-exit v1

    #@28
    throw v0
.end method

.method private static versionCodeGE(II)Z
    .locals 3
    .param p0, "versionCode1"    # I
    .param p1, "versionCode2"    # I

    #@0
    .prologue
    const v2, 0x186a0

    #@3
    .line 575
    div-int v0, p0, v2

    #@5
    .line 576
    .local v0, "v1":I
    div-int v1, p1, v2

    #@7
    .line 578
    .local v1, "v2":I
    if-lt v0, v1, :cond_0

    #@9
    const/4 v2, 0x1

    #@a
    :goto_0
    return v2

    #@b
    :cond_0
    const/4 v2, 0x0

    #@c
    goto :goto_0
.end method

.method private webViewIsReadyLocked()Z
    .locals 2

    #@0
    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 530
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    #@6
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 534
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    #@c
    .line 529
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method


# virtual methods
.method public changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "newProviderName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 326
    const/4 v2, 0x0

    #@1
    .line 327
    .local v2, "oldPackage":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    #@2
    .line 328
    .local v1, "newPackage":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    #@3
    .line 329
    .local v3, "providerChanged":Z
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v5

    #@6
    .line 330
    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    #@8
    .line 331
    .local v2, "oldPackage":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@a
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mContext:Landroid/content/Context;

    #@c
    invoke-interface {v4, v6, p1}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 334
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    #@12
    move-result-object v1

    #@13
    .line 335
    .local v1, "newPackage":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2

    #@15
    .line 336
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@17
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@19
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_3

    #@1f
    const/4 v3, 0x0

    #@20
    .line 346
    :goto_0
    if-eqz v3, :cond_0

    #@22
    .line 347
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    :cond_0
    monitor-exit v5

    #@26
    .line 351
    if-eqz v3, :cond_1

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 352
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@2c
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@2e
    invoke-interface {v4, v5}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    #@31
    .line 357
    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@33
    return-object v4

    #@34
    .line 335
    :cond_2
    const/4 v3, 0x1

    #@35
    goto :goto_0

    #@36
    .line 336
    :cond_3
    const/4 v3, 0x1

    #@37
    goto :goto_0

    #@38
    .line 337
    .end local v1    # "newPackage":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@39
    .line 338
    .local v0, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :try_start_3
    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    new-instance v6, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v7, "Tried to change WebView provider but failed to fetch WebView package "

    #@45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v6

    #@51
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 343
    const-string/jumbo v4, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@57
    monitor-exit v5

    #@58
    return-object v4

    #@59
    .line 329
    .end local v0    # "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    .end local v2    # "oldPackage":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v4

    #@5a
    monitor-exit v5

    #@5b
    throw v4
.end method

.method public getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 517
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v0, :cond_0

    #@8
    monitor-exit v1

    #@9
    .line 519
    return-object v2

    #@a
    .line 520
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    #@c
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    .line 517
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public getValidAndInstalledWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 4

    #@0
    .prologue
    .line 409
    const/4 v3, 0x1

    #@1
    invoke-direct {p0, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->getValidWebViewPackagesAndInfos(Z)[Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    #@4
    move-result-object v2

    #@5
    .line 411
    .local v2, "providersAndPackageInfos":[Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    array-length v3, v2

    #@6
    new-array v1, v3, [Landroid/webkit/WebViewProviderInfo;

    #@8
    .line 412
    .local v1, "providers":[Landroid/webkit/WebViewProviderInfo;
    const/4 v0, 0x0

    #@9
    .local v0, "n":I
    :goto_0
    array-length v3, v2

    #@a
    if-ge v0, v3, :cond_0

    #@c
    .line 413
    aget-object v3, v2, v0

    #@e
    iget-object v3, v3, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    #@10
    aput-object v3, v1, v0

    #@12
    .line 412
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 415
    :cond_0
    return-object v1
.end method

.method public isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "configInfo"    # Landroid/webkit/WebViewProviderInfo;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 586
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    #@3
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->getMinimumVersionCode()I

    #@6
    move-result v1

    #@7
    invoke-static {v0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->versionCodeGE(II)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 587
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@f
    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 592
    :cond_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@17
    invoke-static {p1, p2, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap2(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 593
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1f
    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 594
    const/4 v0, 0x1

    #@26
    return v0

    #@27
    .line 590
    :cond_1
    return v2

    #@28
    .line 596
    :cond_2
    return v2
.end method

.method public notifyRelroCreationCompleted()V
    .locals 2

    #@0
    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 476
    :try_start_0
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    #@9
    .line 477
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->checkIfRelrosDoneLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 474
    return-void

    #@e
    .line 475
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public packageStateChanged(Ljava/lang/String;I)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changedState"    # I

    #@0
    .prologue
    .line 241
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@2
    invoke-interface {v7}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    #@5
    move-result-object v8

    #@6
    const/4 v7, 0x0

    #@7
    array-length v9, v8

    #@8
    :goto_0
    if-ge v7, v9, :cond_8

    #@a
    aget-object v3, v8, v7

    #@c
    .line 242
    .local v3, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v6, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    #@e
    .line 244
    .local v6, "webviewPackage":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v10

    #@12
    if-eqz v10, :cond_7

    #@14
    .line 245
    const/4 v5, 0x0

    #@15
    .line 246
    .local v5, "updateWebView":Z
    const/4 v4, 0x0

    #@16
    .line 247
    .local v4, "removedOrChangedOldPackage":Z
    const/4 v2, 0x0

    #@17
    .line 248
    .local v2, "oldProviderName":Ljava/lang/String;
    const/4 v1, 0x0

    #@18
    .line 249
    .local v1, "newPackage":Landroid/content/pm/PackageInfo;
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    #@1a
    monitor-enter v8

    #@1b
    .line 251
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    #@1e
    move-result-object v1

    #@1f
    .line 252
    .local v1, "newPackage":Landroid/content/pm/PackageInfo;
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    #@21
    if-eqz v7, :cond_1

    #@23
    .line 253
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    #@25
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@27
    .line 254
    .local v2, "oldProviderName":Ljava/lang/String;
    if-nez p2, :cond_0

    #@29
    .line 255
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@2b
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result v7

    #@2f
    .line 254
    if-eqz v7, :cond_0

    #@31
    monitor-exit v8

    #@32
    .line 259
    return-void

    #@33
    .line 261
    :cond_0
    :try_start_1
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@35
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_1

    #@3b
    .line 262
    iget-wide v10, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    #@3d
    .line 263
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    #@3f
    iget-wide v12, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_1
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    .line 262
    cmp-long v7, v10, v12

    #@43
    if-nez v7, :cond_1

    #@45
    monitor-exit v8

    #@46
    .line 265
    return-void

    #@47
    .line 272
    .end local v2    # "oldProviderName":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v7, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    #@49
    iget-object v9, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@4b
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v7

    #@4f
    if-nez v7, :cond_4

    #@51
    .line 273
    iget-object v7, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    #@53
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v7

    #@57
    .line 272
    if-nez v7, :cond_4

    #@59
    .line 274
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    #@5b
    if-nez v7, :cond_5

    #@5d
    const/4 v5, 0x1

    #@5e
    .line 278
    :goto_1
    iget-object v7, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    #@60
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v4

    #@64
    .line 279
    .local v4, "removedOrChangedOldPackage":Z
    if-eqz v5, :cond_2

    #@66
    .line 280
    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_2
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    .end local v1    # "newPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "removedOrChangedOldPackage":Z
    :cond_2
    :goto_2
    monitor-exit v8

    #@6a
    .line 287
    if-eqz v5, :cond_3

    #@6c
    if-eqz v4, :cond_6

    #@6e
    .line 295
    :cond_3
    :goto_3
    return-void

    #@6f
    .line 272
    .restart local v1    # "newPackage":Landroid/content/pm/PackageInfo;
    .local v4, "removedOrChangedOldPackage":Z
    :cond_4
    const/4 v5, 0x1

    #@70
    goto :goto_1

    #@71
    .line 274
    :cond_5
    const/4 v5, 0x0

    #@72
    goto :goto_1

    #@73
    .line 282
    .end local v1    # "newPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "removedOrChangedOldPackage":Z
    :catch_0
    move-exception v0

    #@74
    .line 283
    .local v0, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :try_start_3
    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    new-instance v9, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v10, "Could not find valid WebView package to create relro with "

    #@80
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v9

    #@84
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v9

    #@8c
    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8f
    goto :goto_2

    #@90
    .line 249
    .end local v0    # "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :catchall_0
    move-exception v7

    #@91
    monitor-exit v8

    #@92
    throw v7

    #@93
    .line 288
    :cond_6
    if-eqz v2, :cond_3

    #@95
    .line 293
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@97
    invoke-interface {v7, v2}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    #@9a
    goto :goto_3

    #@9b
    .line 241
    .end local v5    # "updateWebView":Z
    :cond_7
    add-int/lit8 v7, v7, 0x1

    #@9d
    goto/16 :goto_0

    #@9f
    .line 240
    .end local v3    # "provider":Landroid/webkit/WebViewProviderInfo;
    .end local v6    # "webviewPackage":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public prepareWebViewInSystemServer()V
    .locals 5

    #@0
    .prologue
    .line 302
    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 303
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    #@9
    .line 309
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@b
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mContext:Landroid/content/Context;

    #@d
    .line 310
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    #@f
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@11
    .line 309
    invoke-interface {v1, v3, v4}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V

    #@14
    .line 311
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    #@16
    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    :try_start_2
    monitor-exit v2

    #@1a
    .line 300
    :goto_0
    return-void

    #@1b
    .line 302
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    .line 313
    :catch_0
    move-exception v0

    #@1f
    .line 315
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, "error preparing webview provider from system server"

    #@26
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    goto :goto_0
.end method

.method public waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 18

    #@0
    .prologue
    .line 482
    const/4 v5, 0x0

    #@1
    .line 483
    .local v5, "webViewPackage":Landroid/content/pm/PackageInfo;
    const-wide/32 v2, 0xf4240

    #@4
    .line 484
    .local v2, "NS_PER_MS":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@7
    move-result-wide v12

    #@8
    const-wide/32 v14, 0xf4240

    #@b
    div-long/2addr v12, v14

    #@c
    const-wide/16 v14, 0x3e8

    #@e
    add-long v8, v12, v14

    #@10
    .line 485
    .local v8, "timeoutTimeMs":J
    const/4 v10, 0x0

    #@11
    .line 486
    .local v10, "webViewReady":Z
    const/4 v11, 0x0

    #@12
    .line 487
    .local v11, "webViewStatus":I
    move-object/from16 v0, p0

    #@14
    iget-object v13, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v13

    #@17
    .line 488
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->webViewIsReadyLocked()Z

    #@1a
    move-result v10

    #@1b
    .line 489
    .local v10, "webViewReady":Z
    :goto_0
    if-nez v10, :cond_0

    #@1d
    .line 490
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@20
    move-result-wide v14

    #@21
    const-wide/32 v16, 0xf4240

    #@24
    div-long v6, v14, v16

    #@26
    .line 491
    .local v6, "timeNowMs":J
    cmp-long v12, v6, v8

    #@28
    if-ltz v12, :cond_2

    #@2a
    .line 498
    .end local v6    # "timeNowMs":J
    :cond_0
    move-object/from16 v0, p0

    #@2c
    iget-object v5, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 499
    .local v5, "webViewPackage":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_3

    #@30
    :goto_1
    monitor-exit v13

    #@31
    .line 512
    if-nez v10, :cond_1

    #@33
    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    #@36
    move-result-object v12

    #@37
    const-string/jumbo v13, "creating relro file timed out"

    #@3a
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 513
    :cond_1
    new-instance v12, Landroid/webkit/WebViewProviderResponse;

    #@3f
    invoke-direct {v12, v5, v11}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    #@42
    return-object v12

    #@43
    .line 493
    .local v5, "webViewPackage":Landroid/content/pm/PackageInfo;
    .restart local v6    # "timeNowMs":J
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@45
    iget-object v12, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    #@47
    sub-long v14, v8, v6

    #@49
    invoke-virtual {v12, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    .line 495
    :goto_2
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->webViewIsReadyLocked()Z

    #@4f
    move-result v10

    #@50
    goto :goto_0

    #@51
    .line 500
    .end local v6    # "timeNowMs":J
    .local v5, "webViewPackage":Landroid/content/pm/PackageInfo;
    :cond_3
    move-object/from16 v0, p0

    #@53
    iget-boolean v12, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    #@55
    if-nez v12, :cond_4

    #@57
    .line 501
    const/4 v11, 0x4

    #@58
    goto :goto_1

    #@59
    .line 505
    :cond_4
    const/4 v11, 0x3

    #@5a
    .line 506
    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    #@5d
    move-result-object v12

    #@5e
    new-instance v14, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v15, "Timed out waiting for relro creation, relros started "

    #@66
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v14

    #@6a
    .line 507
    move-object/from16 v0, p0

    #@6c
    iget v15, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    #@6e
    .line 506
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v14

    #@72
    .line 508
    const-string/jumbo v15, " relros finished "

    #@75
    .line 506
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v14

    #@79
    .line 508
    move-object/from16 v0, p0

    #@7b
    iget v15, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    #@7d
    .line 506
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v14

    #@81
    .line 509
    const-string/jumbo v15, " package dirty? "

    #@84
    .line 506
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v14

    #@88
    .line 509
    move-object/from16 v0, p0

    #@8a
    iget-boolean v15, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    #@8c
    .line 506
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v14

    #@90
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v14

    #@94
    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@97
    goto :goto_1

    #@98
    .line 487
    .end local v5    # "webViewPackage":Landroid/content/pm/PackageInfo;
    .end local v10    # "webViewReady":Z
    :catchall_0
    move-exception v12

    #@99
    monitor-exit v13

    #@9a
    throw v12

    #@9b
    .line 494
    .local v5, "webViewPackage":Landroid/content/pm/PackageInfo;
    .restart local v6    # "timeNowMs":J
    .restart local v10    # "webViewReady":Z
    :catch_0
    move-exception v4

    #@9c
    .local v4, "e":Ljava/lang/InterruptedException;
    goto :goto_2
.end method
