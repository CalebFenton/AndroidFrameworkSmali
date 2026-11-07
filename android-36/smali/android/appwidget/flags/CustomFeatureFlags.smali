.class public Landroid/appwidget/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/appwidget/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/appwidget/flags/FeatureFlags;",
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
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/appwidget/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/appwidget/flags/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/HashSet;

    const-string v12, "android.appwidget.flags.use_smaller_app_widget_system_radius"

    const-string v13, ""

    const-string v1, "android.appwidget.flags.draw_data_parcel"

    const-string v2, "android.appwidget.flags.engagement_metrics"

    const-string v3, "android.appwidget.flags.generated_previews"

    const-string v4, "android.appwidget.flags.not_keyguard_category"

    const-string v5, "android.appwidget.flags.remote_adapter_conversion"

    const-string v6, "android.appwidget.flags.remote_document_support"

    const-string v7, "android.appwidget.flags.remote_views_proto"

    const-string v8, "android.appwidget.flags.remove_app_widget_service_io_from_critical_path"

    const-string v9, "android.appwidget.flags.security_policy_interact_across_users"

    const-string v10, "android.appwidget.flags.support_resume_restore_after_reboot"

    const-string v11, "android.appwidget.flags.throttle_widget_updates"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/appwidget/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Landroid/appwidget/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 113
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist drawDataParcel()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.appwidget.flags.draw_data_parcel"

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist engagementMetrics()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.appwidget.flags.engagement_metrics"

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist generatedPreviews()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.appwidget.flags.generated_previews"

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    const-string v10, "android.appwidget.flags.throttle_widget_updates"

    const-string v11, "android.appwidget.flags.use_smaller_app_widget_system_radius"

    const-string v0, "android.appwidget.flags.draw_data_parcel"

    const-string v1, "android.appwidget.flags.engagement_metrics"

    const-string v2, "android.appwidget.flags.generated_previews"

    const-string v3, "android.appwidget.flags.not_keyguard_category"

    const-string v4, "android.appwidget.flags.remote_adapter_conversion"

    const-string v5, "android.appwidget.flags.remote_document_support"

    const-string v6, "android.appwidget.flags.remote_views_proto"

    const-string v7, "android.appwidget.flags.remove_app_widget_service_io_from_critical_path"

    const-string v8, "android.appwidget.flags.security_policy_interact_across_users"

    const-string v9, "android.appwidget.flags.support_resume_restore_after_reboot"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

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
            "Landroid/appwidget/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 117
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/appwidget/flags/FeatureFlags;>;"
    iget-object v0, p0, Landroid/appwidget/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Landroid/appwidget/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 105
    invoke-direct {p0}, Landroid/appwidget/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 106
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist notKeyguardCategory()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.appwidget.flags.not_keyguard_category"

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist remoteAdapterConversion()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.appwidget.flags.remote_adapter_conversion"

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist remoteDocumentSupport()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.appwidget.flags.remote_document_support"

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist remoteViewsProto()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.appwidget.flags.remote_views_proto"

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist removeAppWidgetServiceIoFromCriticalPath()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.appwidget.flags.remove_app_widget_service_io_from_critical_path"

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist securityPolicyInteractAcrossUsers()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.appwidget.flags.security_policy_interact_across_users"

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist supportResumeRestoreAfterReboot()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.appwidget.flags.support_resume_restore_after_reboot"

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist throttleWidgetUpdates()Z
    .registers 3

    .line 92
    new-instance v0, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.appwidget.flags.throttle_widget_updates"

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useSmallerAppWidgetSystemRadius()Z
    .registers 3

    .line 99
    new-instance v0, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/appwidget/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.appwidget.flags.use_smaller_app_widget_system_radius"

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
