.class public final Lcom/android/libcore/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/libcore/FeatureFlags; = null

.field public static final blacklist FLAG_APPINFO:Ljava/lang/String; = "com.android.libcore.appinfo"

.field public static final blacklist FLAG_HPKE_PUBLIC_API:Ljava/lang/String; = "com.android.libcore.hpke_public_api"

.field public static final blacklist FLAG_HPKE_V_APIS:Ljava/lang/String; = "com.android.libcore.hpke_v_apis"

.field public static final blacklist FLAG_MADVISE_API:Ljava/lang/String; = "com.android.libcore.madvise_api"

.field public static final blacklist FLAG_NATIVE_METRICS:Ljava/lang/String; = "com.android.libcore.native_metrics"

.field public static final blacklist FLAG_OPENJDK21_STRINGCONCAT:Ljava/lang/String; = "com.android.libcore.openjdk21_stringconcat"

.field public static final blacklist FLAG_OPENJDK_21_V1_APIS:Ljava/lang/String; = "com.android.libcore.openjdk_21_v1_apis"

.field public static final blacklist FLAG_OPENJDK_21_V2_APIS:Ljava/lang/String; = "com.android.libcore.openjdk_21_v2_apis"

.field public static final blacklist FLAG_POST_CLEANUP_APIS:Ljava/lang/String; = "com.android.libcore.post_cleanup_apis"

.field public static final blacklist FLAG_READ_ONLY_DYNAMIC_CODE_LOAD:Ljava/lang/String; = "com.android.libcore.read_only_dynamic_code_load"

.field public static final blacklist FLAG_SCHEDULE_AT_FIXED_RATE_NEW_BEHAVIOR:Ljava/lang/String; = "com.android.libcore.schedule_at_fixed_rate_new_behavior"

.field public static final blacklist FLAG_V_APIS:Ljava/lang/String; = "com.android.libcore.v_apis"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 116
    new-instance v0, Lcom/android/libcore/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/libcore/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/libcore/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist appinfo()Z
    .registers 1

    .line 36
    sget-object v0, Lcom/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/libcore/FeatureFlags;->appinfo()Z

    move-result v0

    return v0
.end method

.method public static greylist hpkePublicApi()Z
    .registers 1

    .line 43
    sget-object v0, Lcom/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/libcore/FeatureFlags;->hpkePublicApi()Z

    move-result v0

    return v0
.end method

.method public static greylist hpkeVApis()Z
    .registers 1

    .line 50
    sget-object v0, Lcom/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/libcore/FeatureFlags;->hpkeVApis()Z

    move-result v0

    return v0
.end method

.method public static greylist madviseApi()Z
    .registers 1

    .line 57
    sget-object v0, Lcom/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/libcore/FeatureFlags;->madviseApi()Z

    move-result v0

    return v0
.end method

.method public static greylist nativeMetrics()Z
    .registers 1

    .line 64
    sget-object v0, Lcom/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/libcore/FeatureFlags;->nativeMetrics()Z

    move-result v0

    return v0
.end method

.method public static greylist openjdk21Stringconcat()Z
    .registers 1

    .line 71
    sget-object v0, Lcom/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/libcore/FeatureFlags;->openjdk21Stringconcat()Z

    move-result v0

    return v0
.end method

.method public static greylist openjdk21V1Apis()Z
    .registers 1

    .line 78
    sget-object v0, Lcom/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/libcore/FeatureFlags;->openjdk21V1Apis()Z

    move-result v0

    return v0
.end method

.method public static greylist openjdk21V2Apis()Z
    .registers 1

    .line 85
    sget-object v0, Lcom/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/libcore/FeatureFlags;->openjdk21V2Apis()Z

    move-result v0

    return v0
.end method

.method public static greylist postCleanupApis()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/libcore/FeatureFlags;->postCleanupApis()Z

    move-result v0

    return v0
.end method

.method public static greylist readOnlyDynamicCodeLoad()Z
    .registers 1

    .line 99
    sget-object v0, Lcom/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/libcore/FeatureFlags;->readOnlyDynamicCodeLoad()Z

    move-result v0

    return v0
.end method

.method public static greylist scheduleAtFixedRateNewBehavior()Z
    .registers 1

    .line 106
    sget-object v0, Lcom/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/libcore/FeatureFlags;->scheduleAtFixedRateNewBehavior()Z

    move-result v0

    return v0
.end method

.method public static greylist vApis()Z
    .registers 1

    .line 113
    sget-object v0, Lcom/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/libcore/FeatureFlags;->vApis()Z

    move-result v0

    return v0
.end method
