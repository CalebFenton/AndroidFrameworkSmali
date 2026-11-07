.class public Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;",
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
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashSet;

    const-string v7, "android.view.contentprotection.flags.setting_ui_enabled"

    const-string v8, ""

    const-string v1, "android.view.contentprotection.flags.blocklist_update_enabled"

    const-string v2, "android.view.contentprotection.flags.create_accessibility_overlay_app_op_enabled"

    const-string v3, "android.view.contentprotection.flags.exported_settings_activity_enabled"

    const-string v4, "android.view.contentprotection.flags.manage_device_policy_enabled"

    const-string v5, "android.view.contentprotection.flags.parse_groups_config_enabled"

    const-string v6, "android.view.contentprotection.flags.rapid_clear_notifications_by_listener_app_op_enabled"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist blocklistUpdateEnabled()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.view.contentprotection.flags.blocklist_update_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist createAccessibilityOverlayAppOpEnabled()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.view.contentprotection.flags.create_accessibility_overlay_app_op_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist exportedSettingsActivityEnabled()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.view.contentprotection.flags.exported_settings_activity_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    const-string v5, "android.view.contentprotection.flags.rapid_clear_notifications_by_listener_app_op_enabled"

    const-string v6, "android.view.contentprotection.flags.setting_ui_enabled"

    const-string v0, "android.view.contentprotection.flags.blocklist_update_enabled"

    const-string v1, "android.view.contentprotection.flags.create_accessibility_overlay_app_op_enabled"

    const-string v2, "android.view.contentprotection.flags.exported_settings_activity_enabled"

    const-string v3, "android.view.contentprotection.flags.manage_device_policy_enabled"

    const-string v4, "android.view.contentprotection.flags.parse_groups_config_enabled"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 82
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 70
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 71
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist manageDevicePolicyEnabled()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.view.contentprotection.flags.manage_device_policy_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist parseGroupsConfigEnabled()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.view.contentprotection.flags.parse_groups_config_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rapidClearNotificationsByListenerAppOpEnabled()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.view.contentprotection.flags.rapid_clear_notifications_by_listener_app_op_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist settingUiEnabled()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.view.contentprotection.flags.setting_ui_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
