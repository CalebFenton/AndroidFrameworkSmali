.class public Lcom/android/server/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/server/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/server/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v1, Ljava/util/HashSet;

    const-string v15, "com.android.server.flags.trace_battery_changed_broadcast_event"

    const-string v16, ""

    const-string v2, "com.android.server.flags.certpininstaller_removal"

    const-string v3, "com.android.server.flags.consolidate_battery_change_events"

    const-string v4, "com.android.server.flags.datetime_notifications"

    const-string v5, "com.android.server.flags.disable_system_compaction"

    const-string v6, "com.android.server.flags.early_data_manager_init"

    const-string v7, "com.android.server.flags.enable_odp_feature_guard"

    const-string v8, "com.android.server.flags.modifier_shortcut_manager_multiuser"

    const-string v9, "com.android.server.flags.new_bugreport_keyboard_shortcut"

    const-string v10, "com.android.server.flags.optional_background_install_control"

    const-string v11, "com.android.server.flags.pin_global_quota"

    const-string v12, "com.android.server.flags.pin_webview"

    const-string v13, "com.android.server.flags.pkg_targeted_battery_changed_not_sticky"

    const-string v14, "com.android.server.flags.rate_limit_battery_changed_broadcast"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 127
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist certpininstallerRemoval()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.server.flags.certpininstaller_removal"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist consolidateBatteryChangeEvents()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.server.flags.consolidate_battery_change_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist datetimeNotifications()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.server.flags.datetime_notifications"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disableSystemCompaction()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.server.flags.disable_system_compaction"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist earlyDataManagerInit()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.flags.early_data_manager_init"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableOdpFeatureGuard()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.server.flags.enable_odp_feature_guard"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    const-string v12, "com.android.server.flags.rate_limit_battery_changed_broadcast"

    const-string v13, "com.android.server.flags.trace_battery_changed_broadcast_event"

    const-string v0, "com.android.server.flags.certpininstaller_removal"

    const-string v1, "com.android.server.flags.consolidate_battery_change_events"

    const-string v2, "com.android.server.flags.datetime_notifications"

    const-string v3, "com.android.server.flags.disable_system_compaction"

    const-string v4, "com.android.server.flags.early_data_manager_init"

    const-string v5, "com.android.server.flags.enable_odp_feature_guard"

    const-string v6, "com.android.server.flags.modifier_shortcut_manager_multiuser"

    const-string v7, "com.android.server.flags.new_bugreport_keyboard_shortcut"

    const-string v8, "com.android.server.flags.optional_background_install_control"

    const-string v9, "com.android.server.flags.pin_global_quota"

    const-string v10, "com.android.server.flags.pin_webview"

    const-string v11, "com.android.server.flags.pkg_targeted_battery_changed_not_sticky"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 131
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/server/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/server/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 119
    invoke-direct {p0}, Lcom/android/server/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 120
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist modifierShortcutManagerMultiuser()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.server.flags.modifier_shortcut_manager_multiuser"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist newBugreportKeyboardShortcut()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.server.flags.new_bugreport_keyboard_shortcut"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist optionalBackgroundInstallControl()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.server.flags.optional_background_install_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist pinGlobalQuota()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.flags.pin_global_quota"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist pinWebview()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.server.flags.pin_webview"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist pkgTargetedBatteryChangedNotSticky()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.server.flags.pkg_targeted_battery_changed_not_sticky"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist rateLimitBatteryChangedBroadcast()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.server.flags.rate_limit_battery_changed_broadcast"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist traceBatteryChangedBroadcastEvent()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.server.flags.trace_battery_changed_broadcast_event"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
