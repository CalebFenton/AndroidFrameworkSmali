.class public Landroid/app/usage/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/app/usage/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/usage/FeatureFlags;",
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
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/usage/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/app/usage/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    const-string v8, "android.app.usage.user_interaction_type_api"

    const-string v9, ""

    const-string v1, "android.app.usage.disable_idle_check"

    const-string v2, "android.app.usage.filter_based_event_query_api"

    const-string v3, "android.app.usage.get_app_art_managed_bytes"

    const-string v4, "android.app.usage.get_app_bytes_by_data_type_api"

    const-string v5, "android.app.usage.report_usage_stats_permission"

    const-string v6, "android.app.usage.use_dedicated_handler_thread"

    const-string v7, "android.app.usage.use_parceled_list"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/usage/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Landroid/app/usage/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist disableIdleCheck()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.app.usage.disable_idle_check"

    invoke-virtual {p0, v1, v0}, Landroid/app/usage/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist filterBasedEventQueryApi()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.app.usage.filter_based_event_query_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/usage/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist getAppArtManagedBytes()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.app.usage.get_app_art_managed_bytes"

    invoke-virtual {p0, v1, v0}, Landroid/app/usage/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist getAppBytesByDataTypeApi()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.app.usage.get_app_bytes_by_data_type_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/usage/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    const-string v6, "android.app.usage.use_parceled_list"

    const-string v7, "android.app.usage.user_interaction_type_api"

    const-string v0, "android.app.usage.disable_idle_check"

    const-string v1, "android.app.usage.filter_based_event_query_api"

    const-string v2, "android.app.usage.get_app_art_managed_bytes"

    const-string v3, "android.app.usage.get_app_bytes_by_data_type_api"

    const-string v4, "android.app.usage.report_usage_stats_permission"

    const-string v5, "android.app.usage.use_dedicated_handler_thread"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

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
            "Landroid/app/usage/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 89
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/app/usage/FeatureFlags;>;"
    iget-object v0, p0, Landroid/app/usage/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Landroid/app/usage/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 77
    invoke-direct {p0}, Landroid/app/usage/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 78
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist reportUsageStatsPermission()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.app.usage.report_usage_stats_permission"

    invoke-virtual {p0, v1, v0}, Landroid/app/usage/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useDedicatedHandlerThread()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.app.usage.use_dedicated_handler_thread"

    invoke-virtual {p0, v1, v0}, Landroid/app/usage/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useParceledList()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.app.usage.use_parceled_list"

    invoke-virtual {p0, v1, v0}, Landroid/app/usage/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist userInteractionTypeApi()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/app/usage/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.app.usage.user_interaction_type_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/usage/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
