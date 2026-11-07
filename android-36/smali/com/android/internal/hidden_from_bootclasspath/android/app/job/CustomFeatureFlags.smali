.class public Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;",
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
            "Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashSet;

    const-string v7, "android.app.job.job_debug_info_apis"

    const-string v8, ""

    const-string v1, "android.app.job.add_type_info_to_wakelock_tag"

    const-string v2, "android.app.job.enforce_minimum_time_windows"

    const-string v3, "android.app.job.get_pending_job_reasons_api"

    const-string v4, "android.app.job.get_pending_job_reasons_history_api"

    const-string v5, "android.app.job.handle_abandoned_jobs"

    const-string v6, "android.app.job.ignore_important_while_foreground"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

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
.method public blacklist addTypeInfoToWakelockTag()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.app.job.add_type_info_to_wakelock_tag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforceMinimumTimeWindows()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.app.job.enforce_minimum_time_windows"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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
    const-string v5, "android.app.job.ignore_important_while_foreground"

    const-string v6, "android.app.job.job_debug_info_apis"

    const-string v0, "android.app.job.add_type_info_to_wakelock_tag"

    const-string v1, "android.app.job.enforce_minimum_time_windows"

    const-string v2, "android.app.job.get_pending_job_reasons_api"

    const-string v3, "android.app.job.get_pending_job_reasons_history_api"

    const-string v4, "android.app.job.handle_abandoned_jobs"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPendingJobReasonsApi()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.app.job.get_pending_job_reasons_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getPendingJobReasonsHistoryApi()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.app.job.get_pending_job_reasons_history_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 82
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist handleAbandonedJobs()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.app.job.handle_abandoned_jobs"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreImportantWhileForeground()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.app.job.ignore_important_while_foreground"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 70
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags;->isOptimizationEnabled()Z

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

.method public blacklist jobDebugInfoApis()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.app.job.job_debug_info_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
