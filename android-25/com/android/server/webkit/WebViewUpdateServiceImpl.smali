.class public Lcom/android/server/webkit/WebViewUpdateServiceImpl;
.super Ljava/lang/Object;
.source "WebViewUpdateServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field private mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isEnabledPackage(Landroid/content/pm/PackageInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isInstalledPackage(Landroid/content/pm/PackageInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z
    .locals 1
    .param p0, "provider"    # Landroid/webkit/WebViewProviderInfo;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "systemInterface"    # Lcom/android/server/webkit/SystemInterface;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const-class v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    #@8
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemInterface"    # Lcom/android/server/webkit/SystemInterface;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    #@5
    .line 49
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@7
    .line 50
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    #@9
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    #@b
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@d
    invoke-direct {v0, v1, v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;-><init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V

    #@10
    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    #@12
    .line 47
    return-void
.end method

.method private existsValidNonFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Z
    .locals 7
    .param p1, "providers"    # [Landroid/webkit/WebViewProviderInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 67
    array-length v5, p1

    #@2
    move v3, v4

    #@3
    :goto_0
    if-ge v3, v5, :cond_2

    #@5
    aget-object v2, p1, v3

    #@7
    .line 68
    .local v2, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v6, v2, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    #@9
    if-eqz v6, :cond_0

    #@b
    iget-boolean v6, v2, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    #@d
    if-eqz v6, :cond_1

    #@f
    .line 67
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@11
    goto :goto_0

    #@12
    .line 70
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@14
    invoke-interface {v6, v2}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    #@17
    move-result-object v1

    #@18
    .line 71
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isInstalledPackage(Landroid/content/pm/PackageInfo;)Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_0

    #@1e
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isEnabledPackage(Landroid/content/pm/PackageInfo;)Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_0

    #@24
    .line 72
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    #@26
    invoke-virtual {v6, v2, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result v6

    #@2a
    .line 71
    if-eqz v6, :cond_0

    #@2c
    .line 73
    const/4 v3, 0x1

    #@2d
    return v3

    #@2e
    .line 80
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_2
    return v4

    #@2f
    .line 75
    .restart local v2    # "provider":Landroid/webkit/WebViewProviderInfo;
    :catch_0
    move-exception v0

    #@30
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private static getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;
    .locals 4
    .param p0, "webviewPackages"    # [Landroid/webkit/WebViewProviderInfo;

    #@0
    .prologue
    .line 193
    const/4 v1, 0x0

    #@1
    array-length v2, p0

    #@2
    :goto_0
    if-ge v1, v2, :cond_1

    #@4
    aget-object v0, p0, v1

    #@6
    .line 194
    .local v0, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v3, v0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 195
    return-object v0

    #@b
    .line 193
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 198
    .end local v0    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_1
    const/4 v1, 0x0

    #@f
    return-object v1
.end method

.method private static isEnabledPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@4
    return v0
.end method

.method private static isInstalledPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 665
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5
    const/high16 v2, 0x800000

    #@7
    and-int/2addr v1, v2

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 666
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@e
    and-int/lit8 v1, v1, 0x1

    #@10
    if-nez v1, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    .line 665
    :cond_0
    return v0
.end method

.method private static providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z
    .locals 10
    .param p0, "provider"    # Landroid/webkit/WebViewProviderInfo;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "systemInterface"    # Lcom/android/server/webkit/SystemInterface;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 630
    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 631
    return v9

    #@9
    .line 636
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Ljava/lang/String;

    #@b
    if-eqz v4, :cond_1

    #@d
    iget-object v4, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Ljava/lang/String;

    #@f
    array-length v4, v4

    #@10
    if-nez v4, :cond_2

    #@12
    .line 637
    :cond_1
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@14
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@17
    move-result v4

    #@18
    return v4

    #@19
    .line 639
    :cond_2
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@1b
    .line 640
    .local v1, "packageSignatures":[Landroid/content/pm/Signature;
    array-length v4, v1

    #@1c
    if-eq v4, v9, :cond_3

    #@1e
    .line 641
    return v5

    #@1f
    .line 643
    :cond_3
    aget-object v4, v1, v5

    #@21
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    #@24
    move-result-object v0

    #@25
    .line 645
    .local v0, "packageSignature":[B
    iget-object v6, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Ljava/lang/String;

    #@27
    array-length v7, v6

    #@28
    move v4, v5

    #@29
    :goto_0
    if-ge v4, v7, :cond_5

    #@2b
    aget-object v2, v6, v4

    #@2d
    .line 646
    .local v2, "signature":Ljava/lang/String;
    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@30
    move-result-object v3

    #@31
    .line 647
    .local v3, "validSignature":[B
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@34
    move-result v8

    #@35
    if-eqz v8, :cond_4

    #@37
    .line 648
    return v9

    #@38
    .line 645
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 650
    .end local v2    # "signature":Ljava/lang/String;
    .end local v3    # "validSignature":[B
    :cond_5
    return v5
.end method

.method private updateFallbackState([Landroid/webkit/WebViewProviderInfo;Z)V
    .locals 8
    .param p1, "webviewProviders"    # [Landroid/webkit/WebViewProviderInfo;
    .param p2, "isBoot"    # Z

    #@0
    .prologue
    .line 160
    invoke-static {p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;

    #@3
    move-result-object v2

    #@4
    .line 161
    .local v2, "fallbackProvider":Landroid/webkit/WebViewProviderInfo;
    if-nez v2, :cond_0

    #@6
    return-void

    #@7
    .line 162
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->existsValidNonFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Z

    #@a
    move-result v1

    #@b
    .line 164
    .local v1, "existsValidNonFallbackProvider":Z
    const/4 v3, 0x0

    #@c
    .line 167
    .local v3, "isFallbackEnabled":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@e
    invoke-interface {v4, v2}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    #@11
    move-result-object v4

    #@12
    .line 166
    invoke-static {v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isEnabledPackage(Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v3

    #@16
    .line 173
    .local v3, "isFallbackEnabled":Z
    if-eqz v1, :cond_3

    #@18
    .line 176
    if-nez v3, :cond_1

    #@1a
    .line 173
    if-eqz p2, :cond_3

    #@1c
    .line 177
    :cond_1
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@1e
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    #@20
    .line 178
    iget-object v6, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    #@22
    .line 177
    invoke-interface {v4, v5, v6}, Lcom/android/server/webkit/SystemInterface;->uninstallAndDisablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;)V

    #@25
    .line 157
    :cond_2
    :goto_0
    return-void

    #@26
    .line 168
    .local v3, "isFallbackEnabled":Z
    :catch_0
    move-exception v0

    #@27
    .line 170
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void

    #@28
    .line 179
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v3, "isFallbackEnabled":Z
    :cond_3
    if-nez v1, :cond_2

    #@2a
    .line 182
    if-eqz v3, :cond_4

    #@2c
    .line 179
    if-eqz p2, :cond_2

    #@2e
    .line 184
    :cond_4
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@30
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    #@32
    .line 185
    iget-object v6, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    #@34
    const/4 v7, 0x1

    #@35
    .line 184
    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/webkit/SystemInterface;->enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V

    #@38
    goto :goto_0
.end method

.method private updateFallbackStateOnBoot()V
    .locals 2

    #@0
    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@2
    invoke-interface {v1}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    return-void

    #@9
    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@b
    invoke-interface {v1}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    #@e
    move-result-object v0

    #@f
    .line 129
    .local v0, "webviewProviders":[Landroid/webkit/WebViewProviderInfo;
    const/4 v1, 0x1

    #@10
    invoke-direct {p0, v0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackState([Landroid/webkit/WebViewProviderInfo;Z)V

    #@13
    .line 125
    return-void
.end method

.method private updateFallbackStateOnPackageChange(Ljava/lang/String;I)V
    .locals 7
    .param p1, "changedPackage"    # Ljava/lang/String;
    .param p2, "changedState"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 138
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@3
    invoke-interface {v3}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    return-void

    #@a
    .line 140
    :cond_0
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@c
    invoke-interface {v3}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    #@f
    move-result-object v2

    #@10
    .line 144
    .local v2, "webviewProviders":[Landroid/webkit/WebViewProviderInfo;
    const/4 v0, 0x0

    #@11
    .line 145
    .local v0, "changedPackageAvailableByDefault":Z
    array-length v5, v2

    #@12
    move v3, v4

    #@13
    :goto_0
    if-ge v3, v5, :cond_1

    #@15
    aget-object v1, v2, v3

    #@17
    .line 146
    .local v1, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v6, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    #@19
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_2

    #@1f
    .line 147
    iget-boolean v3, v1, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 148
    const/4 v0, 0x1

    #@24
    .line 153
    .end local v1    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_1
    if-nez v0, :cond_3

    #@26
    return-void

    #@27
    .line 145
    .restart local v1    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 154
    .end local v1    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_3
    invoke-direct {p0, v2, v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackState([Landroid/webkit/WebViewProviderInfo;Z)V

    #@2d
    .line 137
    return-void
.end method


# virtual methods
.method changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "newProvider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method enableFallbackLogic(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/server/webkit/SystemInterface;->enableFallbackLogic(Z)V

    #@5
    .line 121
    return-void
.end method

.method getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    #@2
    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->getCurrentWebViewPackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    #@2
    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->getValidAndInstalledWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@2
    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method handleNewUser(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@2
    invoke-interface {v2}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    return-void

    #@9
    .line 89
    :cond_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@b
    invoke-interface {v2}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    #@e
    move-result-object v1

    #@f
    .line 90
    .local v1, "webviewProviders":[Landroid/webkit/WebViewProviderInfo;
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;

    #@12
    move-result-object v0

    #@13
    .line 91
    .local v0, "fallbackProvider":Landroid/webkit/WebViewProviderInfo;
    if-nez v0, :cond_1

    #@15
    return-void

    #@16
    .line 93
    :cond_1
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@18
    iget-object v4, v0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    #@1a
    .line 94
    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->existsValidNonFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    const/4 v2, 0x0

    #@21
    .line 93
    :goto_0
    invoke-interface {v3, v4, v2, p1}, Lcom/android/server/webkit/SystemInterface;->enablePackageForUser(Ljava/lang/String;ZI)V

    #@24
    .line 86
    return-void

    #@25
    .line 94
    :cond_2
    const/4 v2, 0x1

    #@26
    goto :goto_0
.end method

.method isFallbackPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 202
    if-eqz p1, :cond_1

    #@3
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@5
    invoke-interface {v3}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 204
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    #@d
    invoke-interface {v3}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    #@10
    move-result-object v1

    #@11
    .line 205
    .local v1, "webviewPackages":[Landroid/webkit/WebViewProviderInfo;
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;

    #@14
    move-result-object v0

    #@15
    .line 206
    .local v0, "fallbackProvider":Landroid/webkit/WebViewProviderInfo;
    if-eqz v0, :cond_0

    #@17
    .line 207
    iget-object v2, v0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    #@19
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    .line 206
    :cond_0
    return v2

    #@1e
    .line 202
    .end local v0    # "fallbackProvider":Landroid/webkit/WebViewProviderInfo;
    .end local v1    # "webviewPackages":[Landroid/webkit/WebViewProviderInfo;
    :cond_1
    return v2
.end method

.method notifyRelroCreationCompleted()V
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    #@2
    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->notifyRelroCreationCompleted()V

    #@5
    .line 97
    return-void
.end method

.method packageStateChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changedState"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackStateOnPackageChange(Ljava/lang/String;I)V

    #@3
    .line 58
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->packageStateChanged(Ljava/lang/String;I)V

    #@8
    .line 53
    return-void
.end method

.method prepareWebViewInSystemServer()V
    .locals 1

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackStateOnBoot()V

    #@3
    .line 63
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    #@5
    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->prepareWebViewInSystemServer()V

    #@8
    .line 61
    return-void
.end method

.method waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    #@2
    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
