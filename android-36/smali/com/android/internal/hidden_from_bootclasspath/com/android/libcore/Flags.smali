.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags; = null

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

.field public static final blacklist FLAG_V_APIS:Ljava/lang/String; = "com.android.libcore.v_apis"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appinfo()Z
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;->appinfo()Z

    move-result v0

    return v0
.end method

.method public static blacklist hpkePublicApi()Z
    .registers 1

    .line 34
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;->hpkePublicApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist hpkeVApis()Z
    .registers 1

    .line 38
    nop

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist madviseApi()Z
    .registers 1

    .line 45
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;->madviseApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist nativeMetrics()Z
    .registers 1

    .line 49
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;->nativeMetrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist openjdk21Stringconcat()Z
    .registers 1

    .line 53
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;->openjdk21Stringconcat()Z

    move-result v0

    return v0
.end method

.method public static blacklist openjdk21V1Apis()Z
    .registers 1

    .line 57
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;->openjdk21V1Apis()Z

    move-result v0

    return v0
.end method

.method public static blacklist openjdk21V2Apis()Z
    .registers 1

    .line 61
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;->openjdk21V2Apis()Z

    move-result v0

    return v0
.end method

.method public static blacklist postCleanupApis()Z
    .registers 1

    .line 65
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;->postCleanupApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist readOnlyDynamicCodeLoad()Z
    .registers 1

    .line 69
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;->readOnlyDynamicCodeLoad()Z

    move-result v0

    return v0
.end method

.method public static blacklist vApis()Z
    .registers 1

    .line 73
    nop

    .line 74
    const/4 v0, 0x1

    return v0
.end method
