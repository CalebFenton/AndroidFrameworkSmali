.class public final Lcom/android/art/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/art/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ALWAYS_ENABLE_PROFILE_CODE:Ljava/lang/String; = "com.android.art.flags.always_enable_profile_code"

.field public static final blacklist FLAG_ART_SERVICE_V3:Ljava/lang/String; = "com.android.art.flags.art_service_v3"

.field public static final blacklist FLAG_EXECUTABLE_METHOD_FILE_OFFSETS:Ljava/lang/String; = "com.android.art.flags.executable_method_file_offsets"

.field public static final blacklist FLAG_EXECUTABLE_METHOD_FILE_OFFSETS_V2:Ljava/lang/String; = "com.android.art.flags.executable_method_file_offsets_v2"

.field public static final blacklist FLAG_FAST_BASELINE_COMPILER:Ljava/lang/String; = "com.android.art.flags.fast_baseline_compiler"

.field public static final blacklist FLAG_TEST:Ljava/lang/String; = "com.android.art.flags.test"

.field public static final blacklist FLAG_USE_GENERATIONAL_CMC:Ljava/lang/String; = "com.android.art.flags.use_generational_cmc"

.field public static final blacklist FLAG_VIRTUAL_THREAD_IMPL_V1:Ljava/lang/String; = "com.android.art.flags.virtual_thread_impl_v1"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 80
    new-instance v0, Lcom/android/art/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/art/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/art/flags/Flags;->FEATURE_FLAGS:Lcom/android/art/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist alwaysEnableProfileCode()Z
    .registers 1

    .line 28
    sget-object v0, Lcom/android/art/flags/Flags;->FEATURE_FLAGS:Lcom/android/art/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/art/flags/FeatureFlags;->alwaysEnableProfileCode()Z

    move-result v0

    return v0
.end method

.method public static greylist artServiceV3()Z
    .registers 1

    .line 35
    sget-object v0, Lcom/android/art/flags/Flags;->FEATURE_FLAGS:Lcom/android/art/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/art/flags/FeatureFlags;->artServiceV3()Z

    move-result v0

    return v0
.end method

.method public static greylist executableMethodFileOffsets()Z
    .registers 1

    .line 42
    sget-object v0, Lcom/android/art/flags/Flags;->FEATURE_FLAGS:Lcom/android/art/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/art/flags/FeatureFlags;->executableMethodFileOffsets()Z

    move-result v0

    return v0
.end method

.method public static greylist executableMethodFileOffsetsV2()Z
    .registers 1

    .line 49
    sget-object v0, Lcom/android/art/flags/Flags;->FEATURE_FLAGS:Lcom/android/art/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/art/flags/FeatureFlags;->executableMethodFileOffsetsV2()Z

    move-result v0

    return v0
.end method

.method public static greylist fastBaselineCompiler()Z
    .registers 1

    .line 56
    sget-object v0, Lcom/android/art/flags/Flags;->FEATURE_FLAGS:Lcom/android/art/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/art/flags/FeatureFlags;->fastBaselineCompiler()Z

    move-result v0

    return v0
.end method

.method public static greylist test()Z
    .registers 1

    .line 63
    sget-object v0, Lcom/android/art/flags/Flags;->FEATURE_FLAGS:Lcom/android/art/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/art/flags/FeatureFlags;->test()Z

    move-result v0

    return v0
.end method

.method public static greylist useGenerationalCmc()Z
    .registers 1

    .line 70
    sget-object v0, Lcom/android/art/flags/Flags;->FEATURE_FLAGS:Lcom/android/art/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/art/flags/FeatureFlags;->useGenerationalCmc()Z

    move-result v0

    return v0
.end method

.method public static greylist virtualThreadImplV1()Z
    .registers 1

    .line 77
    sget-object v0, Lcom/android/art/flags/Flags;->FEATURE_FLAGS:Lcom/android/art/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/art/flags/FeatureFlags;->virtualThreadImplV1()Z

    move-result v0

    return v0
.end method
