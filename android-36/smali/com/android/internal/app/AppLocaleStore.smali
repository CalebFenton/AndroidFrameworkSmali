.class public Lcom/android/internal/app/AppLocaleStore;
.super Ljava/lang/Object;
.source "AppLocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/android/internal/app/AppLocaleStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist filterNotMatchingLocale(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 114
    .local p0, "appSupportedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    .local p1, "assetLocale":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;)V

    .line 115
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda1;-><init>()V

    .line 116
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 114
    return-object v0
.end method

.method public static blacklist getAppSupportedLocales(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "localeConfig":Landroid/app/LocaleConfig;
    sget-object v1, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->UNKNOWN_FAILURE:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 43
    .local v1, "localeStatus":Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 44
    .local v2, "appSupportedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    invoke-static {p0, p1}, Lcom/android/internal/app/AppLocaleStore;->getAssetLocales(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    .line 47
    .local v3, "assetLocale":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    const/4 v4, 0x0

    :try_start_d
    new-instance v5, Landroid/app/LocaleConfig;

    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/LocaleConfig;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_16} :catch_18

    move-object v0, v5

    .line 50
    goto :goto_3b

    .line 48
    :catch_18
    move-exception v5

    .line 49
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not found the package name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3b
    if-eqz v0, :cond_c0

    .line 53
    invoke-virtual {v0}, Landroid/app/LocaleConfig;->getStatus()I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_ae

    .line 54
    invoke-virtual {v0}, Landroid/app/LocaleConfig;->getSupportedLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 55
    .local v5, "packageLocaleList":Landroid/os/LocaleList;
    invoke-static {p0, p1}, Lcom/android/internal/app/AppLocaleStore;->hasInstallerInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_56

    .line 56
    invoke-static {p0, p1}, Lcom/android/internal/app/AppLocaleStore;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_56

    move v4, v6

    goto :goto_57

    :cond_56
    nop

    .line 58
    .local v4, "shouldFilterNotMatchingLocale":Z
    :goto_57
    sget-object v6, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filterNonMatchingLocale. , shouldFilterNotMatchingLocale: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", assetLocale size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 60
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", packageLocaleList size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 61
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8c
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v7

    if-ge v6, v7, :cond_9c

    .line 64
    invoke-virtual {v5, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v6, v6, 0x1

    goto :goto_8c

    .line 66
    .end local v6    # "i":I
    :cond_9c
    if-eqz v4, :cond_a2

    .line 67
    invoke-static {v2, v3}, Lcom/android/internal/app/AppLocaleStore;->filterNotMatchingLocale(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v2

    .line 70
    :cond_a2
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_ab

    .line 71
    sget-object v1, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_LOCAL_CONFIG:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    goto :goto_ad

    .line 73
    :cond_ab
    sget-object v1, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->NO_SUPPORTED_LANGUAGE_IN_APP:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 75
    .end local v4    # "shouldFilterNotMatchingLocale":Z
    .end local v5    # "packageLocaleList":Landroid/os/LocaleList;
    :cond_ad
    :goto_ad
    goto :goto_c0

    :cond_ae
    invoke-virtual {v0}, Landroid/app/LocaleConfig;->getStatus()I

    move-result v4

    if-ne v4, v6, :cond_ad

    .line 76
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_be

    .line 77
    sget-object v1, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_ASSET:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 78
    move-object v2, v3

    goto :goto_c0

    .line 80
    :cond_be
    sget-object v1, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->ASSET_LOCALE_IS_EMPTY:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 84
    :cond_c0
    :goto_c0
    sget-object v4, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAppSupportedLocales(). package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", appSupportedLocales:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 86
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v4, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;

    invoke-direct {v4, v1, v2}, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;-><init>(Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;Ljava/util/HashSet;)V

    return-object v4
.end method

.method private static blacklist getAssetLocales(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 93
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 94
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 95
    const/high16 v2, 0x20000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getNonSystemLocales()[Ljava/lang/String;

    move-result-object v2
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_1e} :catch_71

    .line 97
    .local v2, "locales":[Ljava/lang/String;
    const-string v3, "["

    if-nez v2, :cond_3f

    .line 98
    :try_start_22
    sget-object v4, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] locales are null."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 99
    :cond_3f
    array-length v4, v2

    if-gtz v4, :cond_5f

    .line 100
    sget-object v4, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] locales length is 0."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 102
    :cond_5f
    array-length v3, v2

    const/4 v4, 0x0

    :goto_61
    if-ge v4, v3, :cond_70

    aget-object v5, v2, v4

    .line 103
    .local v5, "language":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_6c} :catch_71

    .line 102
    nop

    .end local v5    # "language":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    .line 108
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "locales":[Ljava/lang/String;
    :cond_70
    :goto_70
    goto :goto_94

    .line 106
    :catch_71
    move-exception v1

    .line 107
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not found the package name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_94
    return-object v0
.end method

.method private static blacklist hasInstallerInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v1
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_d

    .line 135
    .local v1, "installSourceInfo":Landroid/content/pm/InstallSourceInfo;
    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    .line 136
    .end local v1    # "installSourceInfo":Landroid/content/pm/InstallSourceInfo;
    :catch_d
    move-exception v1

    .line 137
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installer info not found for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private static blacklist isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 147
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_12

    return v0

    .line 148
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_12
    move-exception v1

    .line 149
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application info not found for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method static synthetic blacklist lambda$filterNotMatchingLocale$0(Ljava/util/HashSet;Ljava/util/Locale;)Z
    .registers 3
    .param p0, "assetLocale"    # Ljava/util/HashSet;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 115
    invoke-static {p1, p0}, Lcom/android/internal/app/AppLocaleStore;->matchLanguageInSet(Ljava/util/Locale;Ljava/util/HashSet;)Z

    move-result v0

    return v0
.end method

.method private static blacklist matchLanguageInSet(Ljava/util/Locale;Ljava/util/HashSet;)Z
    .registers 6
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;)Z"
        }
    .end annotation

    .line 120
    .local p1, "localesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 121
    return v1

    .line 123
    :cond_8
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 124
    .local v2, "l":Ljava/util/Locale;
    invoke-static {v2, p0}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 125
    return v1

    .line 127
    .end local v2    # "l":Ljava/util/Locale;
    :cond_1f
    goto :goto_c

    .line 128
    :cond_20
    const/4 v0, 0x0

    return v0
.end method
