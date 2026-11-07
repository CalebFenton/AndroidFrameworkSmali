.class public final Landroid/provider/x/android/provider/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/provider/x/android/provider/flags/FeatureFlags; = null

.field public static final blacklist FLAG_DEVICE_CONFIG_WRITABLE_NAMESPACES_API:Ljava/lang/String; = "android.provider.flags.device_config_writable_namespaces_api"

.field public static final blacklist FLAG_DUMP_IMPROVEMENTS:Ljava/lang/String; = "android.provider.flags.dump_improvements"

.field public static final blacklist FLAG_ENABLE_IMMEDIATE_CLEAR_OVERRIDE_BUGFIX:Ljava/lang/String; = "android.provider.flags.enable_immediate_clear_override_bugfix"

.field public static final blacklist FLAG_FLAG_MANAGER_UNIT_TEST_FLAG:Ljava/lang/String; = "android.provider.flags.flag_manager_unit_test_flag"

.field public static final blacklist FLAG_MMD_DEVICE_CONFIG:Ljava/lang/String; = "android.provider.flags.mmd_device_config"

.field public static final blacklist FLAG_NEW_STORAGE_PUBLIC_API:Ljava/lang/String; = "android.provider.flags.new_storage_public_api"

.field public static final blacklist FLAG_NEW_STORAGE_WRITER_SYSTEM_API:Ljava/lang/String; = "android.provider.flags.new_storage_writer_system_api"

.field public static final blacklist FLAG_READ_PLATFORM_FROM_PLATFORM_API:Ljava/lang/String; = "android.provider.flags.read_platform_from_platform_api"

.field public static final blacklist FLAG_STAGE_FLAGS_FOR_BUILD:Ljava/lang/String; = "android.provider.flags.stage_flags_for_build"

.field public static final blacklist FLAG_USE_PROTO_INPUT_STREAM:Ljava/lang/String; = "android.provider.flags.use_proto_input_stream"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Landroid/provider/x/android/provider/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/provider/x/android/provider/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/provider/x/android/provider/flags/Flags;->FEATURE_FLAGS:Landroid/provider/x/android/provider/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deviceConfigWritableNamespacesApi()Z
    .registers 1

    .line 32
    sget-object v0, Landroid/provider/x/android/provider/flags/Flags;->FEATURE_FLAGS:Landroid/provider/x/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/provider/x/android/provider/flags/FeatureFlags;->deviceConfigWritableNamespacesApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist dumpImprovements()Z
    .registers 1

    .line 39
    sget-object v0, Landroid/provider/x/android/provider/flags/Flags;->FEATURE_FLAGS:Landroid/provider/x/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/provider/x/android/provider/flags/FeatureFlags;->dumpImprovements()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableImmediateClearOverrideBugfix()Z
    .registers 1

    .line 46
    sget-object v0, Landroid/provider/x/android/provider/flags/Flags;->FEATURE_FLAGS:Landroid/provider/x/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/provider/x/android/provider/flags/FeatureFlags;->enableImmediateClearOverrideBugfix()Z

    move-result v0

    return v0
.end method

.method public static blacklist flagManagerUnitTestFlag()Z
    .registers 1

    .line 53
    sget-object v0, Landroid/provider/x/android/provider/flags/Flags;->FEATURE_FLAGS:Landroid/provider/x/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/provider/x/android/provider/flags/FeatureFlags;->flagManagerUnitTestFlag()Z

    move-result v0

    return v0
.end method

.method public static blacklist mmdDeviceConfig()Z
    .registers 1

    .line 60
    sget-object v0, Landroid/provider/x/android/provider/flags/Flags;->FEATURE_FLAGS:Landroid/provider/x/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/provider/x/android/provider/flags/FeatureFlags;->mmdDeviceConfig()Z

    move-result v0

    return v0
.end method

.method public static blacklist newStoragePublicApi()Z
    .registers 1

    .line 67
    sget-object v0, Landroid/provider/x/android/provider/flags/Flags;->FEATURE_FLAGS:Landroid/provider/x/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/provider/x/android/provider/flags/FeatureFlags;->newStoragePublicApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist newStorageWriterSystemApi()Z
    .registers 1

    .line 74
    sget-object v0, Landroid/provider/x/android/provider/flags/Flags;->FEATURE_FLAGS:Landroid/provider/x/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/provider/x/android/provider/flags/FeatureFlags;->newStorageWriterSystemApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist readPlatformFromPlatformApi()Z
    .registers 1

    .line 81
    sget-object v0, Landroid/provider/x/android/provider/flags/Flags;->FEATURE_FLAGS:Landroid/provider/x/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/provider/x/android/provider/flags/FeatureFlags;->readPlatformFromPlatformApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist stageFlagsForBuild()Z
    .registers 1

    .line 88
    sget-object v0, Landroid/provider/x/android/provider/flags/Flags;->FEATURE_FLAGS:Landroid/provider/x/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/provider/x/android/provider/flags/FeatureFlags;->stageFlagsForBuild()Z

    move-result v0

    return v0
.end method

.method public static blacklist useProtoInputStream()Z
    .registers 1

    .line 95
    sget-object v0, Landroid/provider/x/android/provider/flags/Flags;->FEATURE_FLAGS:Landroid/provider/x/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/provider/x/android/provider/flags/FeatureFlags;->useProtoInputStream()Z

    move-result v0

    return v0
.end method
