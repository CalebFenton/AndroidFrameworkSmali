.class Landroid/app/ConfigurationController;
.super Ljava/lang/Object;
.source "ConfigurationController.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ConfigurationController"


# instance fields
.field private final blacklist mActivityThread:Landroid/app/ActivityThreadInternal;

.field private blacklist mCompatConfiguration:Landroid/content/res/Configuration;

.field private blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mPendingConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mResourcesManager:Landroid/app/ResourcesManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThreadInternal;)V
    .registers 3
    .param p1, "activityThread"    # Landroid/app/ActivityThreadInternal;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 61
    iput-object p1, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    .line 62
    return-void
.end method

.method static blacklist createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 3
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "override"    # Landroid/content/res/Configuration;

    .line 309
    if-nez p1, :cond_3

    .line 310
    return-object p0

    .line 312
    :cond_3
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 313
    .local v0, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 314
    return-object v0
.end method

.method private blacklist handleConfigurationChangedInner(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .registers 13
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 171
    iget-object v0, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v0}, Landroid/app/ActivityThreadInternal;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 172
    .local v0, "systemTheme":Landroid/content/res/Resources$Theme;
    iget-object v1, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v1}, Landroid/app/ActivityThreadInternal;->getSystemUiContextNoCreate()Landroid/content/Context;

    move-result-object v1

    .line 174
    .local v1, "systemUiContext":Landroid/content/Context;
    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    goto :goto_19

    :cond_18
    move-object v3, v2

    .line 175
    .local v3, "systemUiTheme":Landroid/content/res/Resources$Theme;
    :goto_19
    iget-object v4, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v4

    .line 176
    :try_start_1c
    iget-object v5, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_32

    .line 177
    iget-object v5, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 178
    iget-object v5, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object p1, v5

    .line 179
    iget v5, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0, v5}, Landroid/app/ConfigurationController;->updateDefaultDensity(I)V

    .line 181
    :cond_30
    iput-object v2, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 184
    :cond_32
    if-nez p1, :cond_36

    .line 185
    monitor-exit v4

    return-void

    .line 193
    :cond_36
    iget-object v2, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    if-eqz v2, :cond_45

    iget-object v2, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_45

    const/4 v2, 0x1

    goto :goto_46

    :cond_45
    move v2, v5

    .line 199
    .local v2, "equivalent":Z
    :goto_46
    iget-object v6, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v6}, Landroid/app/ActivityThreadInternal;->getApplication()Landroid/app/Application;

    move-result-object v6

    .line 200
    .local v6, "app":Landroid/app/Application;
    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 201
    .local v7, "appResources":Landroid/content/res/Resources;
    iget-object v8, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v8, p1, p2}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 202
    invoke-virtual {v6}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/app/ConfigurationController;->updateLocaleListFromAppContext(Landroid/content/Context;)V

    .line 204
    iget-object v8, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v8, :cond_67

    .line 205
    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput-object v8, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    .line 207
    :cond_67
    iget-object v8, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v8

    if-nez v8, :cond_73

    if-nez p2, :cond_73

    .line 208
    monitor-exit v4

    return-void

    .line 211
    :cond_73
    iget-object v8, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v8

    .line 212
    .local v8, "configDiff":I
    invoke-virtual {p0}, Landroid/app/ConfigurationController;->applyCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    move-object p1, v9

    .line 213
    invoke-static {p1}, Landroid/graphics/HardwareRenderer;->sendDeviceConfigurationForDebugging(Landroid/content/res/Configuration;)V

    .line 215
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v9

    and-int/2addr v9, v8

    if-eqz v9, :cond_8b

    .line 216
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 219
    :cond_8b
    if-eqz v3, :cond_97

    .line 220
    invoke-virtual {v3}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v9

    and-int/2addr v9, v8

    if-eqz v9, :cond_97

    .line 221
    invoke-virtual {v3}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 223
    .end local v6    # "app":Landroid/app/Application;
    .end local v7    # "appResources":Landroid/content/res/Resources;
    :cond_97
    monitor-exit v4
    :try_end_98
    .catchall {:try_start_1c .. :try_end_98} :catchall_b9

    .line 225
    iget-object v4, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    .line 226
    invoke-interface {v4, v5}, Landroid/app/ActivityThreadInternal;->collectComponentCallbacks(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 228
    .local v4, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-static {v8}, Landroid/window/ConfigurationHelper;->freeTextLayoutCachesIfNeeded(I)V

    .line 230
    if-eqz v4, :cond_b8

    .line 231
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 232
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a8
    if-ge v6, v5, :cond_b8

    .line 233
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentCallbacks2;

    .line 234
    .local v7, "cb":Landroid/content/ComponentCallbacks2;
    if-nez v2, :cond_b5

    .line 235
    invoke-virtual {p0, v7, p1}, Landroid/app/ConfigurationController;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 232
    .end local v7    # "cb":Landroid/content/ComponentCallbacks2;
    :cond_b5
    add-int/lit8 v6, v6, 0x1

    goto :goto_a8

    .line 239
    .end local v5    # "size":I
    .end local v6    # "i":I
    :cond_b8
    return-void

    .line 223
    .end local v2    # "equivalent":Z
    .end local v4    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    .end local v8    # "configDiff":I
    :catchall_b9
    move-exception v2

    :try_start_ba
    monitor-exit v4
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    throw v2
.end method


# virtual methods
.method final blacklist applyCompatConfiguration()Landroid/content/res/Configuration;
    .registers 5

    .line 101
    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    .line 102
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 103
    .local v1, "displayDensity":I
    iget-object v2, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    if-nez v2, :cond_f

    .line 104
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 106
    :cond_f
    iget-object v2, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 107
    iget-object v2, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v3, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1, v3}, Landroid/app/ResourcesManager;->applyCompatConfiguration(ILandroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 108
    iget-object v0, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 110
    :cond_22
    return-object v0
.end method

.method blacklist getCompatConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method blacklist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method blacklist getCurDefaultDisplayDpi()I
    .registers 2

    .line 276
    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    return v0
.end method

.method blacklist getPendingConfiguration(Z)Landroid/content/res/Configuration;
    .registers 5
    .param p1, "clearPending"    # Z

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "outConfig":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 79
    :try_start_4
    iget-object v2, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_10

    .line 80
    iget-object v2, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v0, v2

    .line 81
    if-eqz p1, :cond_10

    .line 82
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 85
    :cond_10
    monitor-exit v1

    .line 86
    return-object v0

    .line 85
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v2
.end method

.method blacklist handleConfigurationChanged(Landroid/content/res/CompatibilityInfo;)V
    .registers 4
    .param p1, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 138
    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, p1}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 139
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->reportNewConfiguration(Landroid/content/res/Configuration;)V

    .line 140
    return-void
.end method

.method blacklist handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 128
    const-string v0, "configChanged"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 130
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 131
    return-void
.end method

.method blacklist handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .registers 6
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 150
    invoke-static {}, Landroid/app/servertransaction/ClientTransactionListenerController;->getInstance()Landroid/app/servertransaction/ClientTransactionListenerController;

    move-result-object v0

    .line 151
    .local v0, "controller":Landroid/app/servertransaction/ClientTransactionListenerController;
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 152
    .local v1, "contextToUpdate":Landroid/content/Context;
    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPreChanged(Landroid/content/Context;)V

    .line 154
    :try_start_b
    invoke-direct {p0, p1, p2}, Landroid/app/ConfigurationController;->handleConfigurationChangedInner(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_13

    .line 156
    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPostChanged(Landroid/content/Context;)V

    .line 157
    nop

    .line 158
    return-void

    .line 156
    :catchall_13
    move-exception v2

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPostChanged(Landroid/content/Context;)V

    .line 157
    throw v2
.end method

.method blacklist performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "cb"    # Landroid/content/ComponentCallbacks2;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    instance-of v1, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_c

    .line 252
    move-object v1, p1

    check-cast v1, Landroid/view/ContextThemeWrapper;

    .line 253
    .local v1, "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 259
    .end local v1    # "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    :cond_c
    invoke-static {p2, v0}, Landroid/app/ConfigurationController;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 261
    .local v1, "configToReport":Landroid/content/res/Configuration;
    invoke-interface {p1, v1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 262
    return-void
.end method

.method blacklist setCompatConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 91
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 92
    return-void
.end method

.method blacklist setConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 115
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    .line 116
    return-void
.end method

.method blacklist updateDefaultDensity(I)V
    .registers 3
    .param p1, "densityDpi"    # I

    .line 266
    iget-object v0, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v0}, Landroid/app/ActivityThreadInternal;->isInDensityCompatMode()Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    if-eq p1, v0, :cond_13

    .line 269
    sput p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 270
    invoke-static {p1}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 272
    :cond_13
    return-void
.end method

.method blacklist updateLocaleListFromAppContext(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 286
    .local v0, "bestLocale":Ljava/util/Locale;
    iget-object v1, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v1}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 287
    .local v1, "newLocaleList":Landroid/os/LocaleList;
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v2

    .line 288
    .local v2, "newLocaleListSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v2, :cond_33

    .line 289
    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 290
    invoke-static {v1, v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 291
    return-void

    .line 288
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 298
    .end local v3    # "i":I
    :cond_33
    new-instance v3, Landroid/os/LocaleList;

    invoke-direct {v3, v0, v1}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    invoke-static {v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 299
    return-void
.end method

.method blacklist updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 66
    iget-object v0, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-object v1, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_13

    .line 71
    :cond_10
    monitor-exit v0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_13
    :goto_13
    iput-object p1, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 69
    iget-object v1, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    monitor-exit v0

    return-object v1

    .line 71
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method
