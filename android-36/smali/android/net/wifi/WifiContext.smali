.class public Landroid/net/wifi/WifiContext;
.super Landroid/content/ContextWrapper;
.source "WifiContext.java"


# static fields
.field private static final blacklist ACTION_RESOURCES_APK:Ljava/lang/String; = "com.android.server.wifi.intent.action.SERVICE_WIFI_RESOURCES_APK"

.field private static final blacklist ACTION_WIFI_DIALOG_APK:Ljava/lang/String; = "com.android.server.wifi.intent.action.WIFI_DIALOG_APK"

.field private static final blacklist SERVICE_WIFI_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final blacklist TAG:Ljava/lang/String; = "WifiContext"


# instance fields
.field private blacklist mResourcesApkContext:Landroid/content/Context;

.field private blacklist mWifiAssetsFromApk:Landroid/content/res/AssetManager;

.field private blacklist mWifiDialogApkPkgName:Ljava/lang/String;

.field private blacklist mWifiOverlayApkPkgName:Ljava/lang/String;

.field private blacklist mWifiResourceCache:Landroid/net/wifi/util/WifiResourceCache;

.field private blacklist mWifiResourcesFromApk:Landroid/content/res/Resources;

.field private blacklist mWifiStringResourceWrapperSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/WifiStringResourceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWifiThemeFromApk:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "contextBase"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiStringResourceWrapperSparseArray:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/net/wifi/util/WifiResourceCache;

    invoke-direct {v0, p0}, Landroid/net/wifi/util/WifiResourceCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiResourceCache:Landroid/net/wifi/util/WifiResourceCache;

    .line 72
    return-void
.end method

.method private blacklist getApkPkgNameForAction(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 111
    const/high16 v0, 0x100000

    if-eqz p2, :cond_12

    .line 112
    invoke-virtual {p0}, Landroid/net/wifi/WifiContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_1f

    .line 117
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_12
    invoke-virtual {p0}, Landroid/net/wifi/WifiContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 121
    .restart local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got resolveInfos for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WifiContext"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v1, Landroid/net/wifi/WifiContext$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/wifi/WifiContext$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 127
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 128
    const/4 v1, 0x0

    return-object v1

    .line 131
    :cond_51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_8f

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found > 1 APK that can resolve "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Landroid/net/wifi/WifiContext$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/net/wifi/WifiContext$$ExternalSyntheticLambda1;-><init>()V

    .line 135
    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 136
    const-string v4, ", "

    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_8f
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 141
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v2
.end method

.method static synthetic blacklist lambda$getApkPkgNameForAction$0(Landroid/content/pm/ResolveInfo;)Z
    .registers 2
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;

    .line 125
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/net/wifi/util/Environment;->isAppInWifiApex(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$getApkPkgNameForAction$1(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;

    .line 135
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public whitelist getAssets()Landroid/content/res/AssetManager;
    .registers 3

    .line 165
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiAssetsFromApk:Landroid/content/res/AssetManager;

    if-nez v0, :cond_10

    .line 166
    invoke-virtual {p0}, Landroid/net/wifi/WifiContext;->getResourcesApkContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    .local v0, "resourcesApkContext":Landroid/content/Context;
    if-eqz v0, :cond_10

    .line 168
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiContext;->mWifiAssetsFromApk:Landroid/content/res/AssetManager;

    .line 171
    .end local v0    # "resourcesApkContext":Landroid/content/Context;
    :cond_10
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiAssetsFromApk:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public blacklist getResourceCache()Landroid/net/wifi/util/WifiResourceCache;
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiResourceCache:Landroid/net/wifi/util/WifiResourceCache;

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 3

    .line 179
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiResourcesFromApk:Landroid/content/res/Resources;

    if-nez v0, :cond_10

    .line 180
    invoke-virtual {p0}, Landroid/net/wifi/WifiContext;->getResourcesApkContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    .local v0, "resourcesApkContext":Landroid/content/Context;
    if-eqz v0, :cond_10

    .line 182
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiContext;->mWifiResourcesFromApk:Landroid/content/res/Resources;

    .line 185
    .end local v0    # "resourcesApkContext":Landroid/content/Context;
    :cond_10
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiResourcesFromApk:Landroid/content/res/Resources;

    return-object v0
.end method

.method public blacklist getResourcesApkContext()Landroid/content/Context;
    .registers 4

    .line 146
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mResourcesApkContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 147
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mResourcesApkContext:Landroid/content/Context;

    return-object v0

    .line 150
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/net/wifi/WifiContext;->getWifiOverlayApkPkgName()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 152
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiContext;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiContext;->mResourcesApkContext:Landroid/content/Context;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_14} :catch_15

    .line 156
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_14
    goto :goto_1d

    .line 154
    :catch_15
    move-exception v0

    .line 155
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "WifiContext"

    const-string v2, "Failed to load resources"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1d
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mResourcesApkContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getServiceWifiPackageName()Ljava/lang/String;
    .registers 2

    .line 208
    const-string v0, "android"

    return-object v0
.end method

.method public blacklist getStringResourceWrapper(II)Landroid/net/wifi/WifiStringResourceWrapper;
    .registers 5
    .param p1, "subId"    # I
    .param p2, "carrierId"    # I

    .line 228
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiStringResourceWrapperSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 229
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiStringResourceWrapperSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiStringResourceWrapper;

    return-object v0

    .line 231
    :cond_11
    new-instance v0, Landroid/net/wifi/WifiStringResourceWrapper;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/wifi/WifiStringResourceWrapper;-><init>(Landroid/net/wifi/WifiContext;II)V

    .line 232
    .local v0, "wrapper":Landroid/net/wifi/WifiStringResourceWrapper;
    iget-object v1, p0, Landroid/net/wifi/WifiContext;->mWifiStringResourceWrapperSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 233
    return-object v0
.end method

.method public whitelist getTheme()Landroid/content/res/Resources$Theme;
    .registers 3

    .line 193
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiThemeFromApk:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_10

    .line 194
    invoke-virtual {p0}, Landroid/net/wifi/WifiContext;->getResourcesApkContext()Landroid/content/Context;

    move-result-object v0

    .line 195
    .local v0, "resourcesApkContext":Landroid/content/Context;
    if-eqz v0, :cond_10

    .line 196
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiContext;->mWifiThemeFromApk:Landroid/content/res/Resources$Theme;

    .line 199
    .end local v0    # "resourcesApkContext":Landroid/content/Context;
    :cond_10
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiThemeFromApk:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public blacklist getWifiDialogApkPkgName()Ljava/lang/String;
    .registers 4

    .line 92
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiDialogApkPkgName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiDialogApkPkgName:Ljava/lang/String;

    return-object v0

    .line 95
    :cond_7
    nop

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 95
    const-string v1, "com.android.server.wifi.intent.action.WIFI_DIALOG_APK"

    invoke-direct {p0, v1, v0}, Landroid/net/wifi/WifiContext;->getApkPkgNameForAction(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiDialogApkPkgName:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiDialogApkPkgName:Ljava/lang/String;

    const-string v1, "WifiContext"

    if-nez v0, :cond_2a

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v2, "Attempted to fetch WifiDialog apk before it is loaded!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found Wifi Dialog APK at: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/wifi/WifiContext;->mWifiDialogApkPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiDialogApkPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getWifiOverlayApkPkgName()Ljava/lang/String;
    .registers 5

    .line 76
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiOverlayApkPkgName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 77
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiOverlayApkPkgName:Ljava/lang/String;

    return-object v0

    .line 79
    :cond_7
    const-string v0, "com.android.server.wifi.intent.action.SERVICE_WIFI_RESOURCES_APK"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiContext;->getApkPkgNameForAction(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiOverlayApkPkgName:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiOverlayApkPkgName:Ljava/lang/String;

    const-string v2, "WifiContext"

    if-nez v0, :cond_21

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v3, "Attempted to fetch resources before Wifi Resources APK is loaded!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    return-object v1

    .line 86
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found Wifi Resources APK at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiContext;->mWifiOverlayApkPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiOverlayApkPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist resetResourceCache()V
    .registers 2

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiOverlayApkPkgName:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiAssetsFromApk:Landroid/content/res/AssetManager;

    .line 217
    iput-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiResourcesFromApk:Landroid/content/res/Resources;

    .line 218
    iput-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiThemeFromApk:Landroid/content/res/Resources$Theme;

    .line 219
    iput-object v0, p0, Landroid/net/wifi/WifiContext;->mResourcesApkContext:Landroid/content/Context;

    .line 220
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiStringResourceWrapperSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 221
    iget-object v0, p0, Landroid/net/wifi/WifiContext;->mWifiResourceCache:Landroid/net/wifi/util/WifiResourceCache;

    invoke-virtual {v0}, Landroid/net/wifi/util/WifiResourceCache;->reset()V

    .line 222
    return-void
.end method
