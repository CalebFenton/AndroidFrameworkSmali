.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_TYPE_INFO_TO_WAKELOCK_TAG:Ljava/lang/String; = "android.app.job.add_type_info_to_wakelock_tag"

.field public static final blacklist FLAG_ENFORCE_MINIMUM_TIME_WINDOWS:Ljava/lang/String; = "android.app.job.enforce_minimum_time_windows"

.field public static final blacklist FLAG_GET_PENDING_JOB_REASONS_API:Ljava/lang/String; = "android.app.job.get_pending_job_reasons_api"

.field public static final blacklist FLAG_GET_PENDING_JOB_REASONS_HISTORY_API:Ljava/lang/String; = "android.app.job.get_pending_job_reasons_history_api"

.field public static final blacklist FLAG_HANDLE_ABANDONED_JOBS:Ljava/lang/String; = "android.app.job.handle_abandoned_jobs"

.field public static final blacklist FLAG_IGNORE_IMPORTANT_WHILE_FOREGROUND:Ljava/lang/String; = "android.app.job.ignore_important_while_foreground"

.field public static final blacklist FLAG_JOB_DEBUG_INFO_APIS:Ljava/lang/String; = "android.app.job.job_debug_info_apis"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addTypeInfoToWakelockTag()Z
    .registers 1

    .line 26
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;->addTypeInfoToWakelockTag()Z

    move-result v0

    return v0
.end method

.method public static blacklist enforceMinimumTimeWindows()Z
    .registers 1

    .line 33
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;->enforceMinimumTimeWindows()Z

    move-result v0

    return v0
.end method

.method public static blacklist getPendingJobReasonsApi()Z
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;->getPendingJobReasonsApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist getPendingJobReasonsHistoryApi()Z
    .registers 1

    .line 47
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;->getPendingJobReasonsHistoryApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist handleAbandonedJobs()Z
    .registers 1

    .line 54
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;->handleAbandonedJobs()Z

    move-result v0

    return v0
.end method

.method public static blacklist ignoreImportantWhileForeground()Z
    .registers 1

    .line 61
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;->ignoreImportantWhileForeground()Z

    move-result v0

    return v0
.end method

.method public static blacklist jobDebugInfoApis()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/FeatureFlags;->jobDebugInfoApis()Z

    move-result v0

    return v0
.end method
