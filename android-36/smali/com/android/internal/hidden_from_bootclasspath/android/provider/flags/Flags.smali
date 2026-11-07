.class public final Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags; = null

.field public static final blacklist FLAG_DEVICE_CONFIG_WRITABLE_NAMESPACES_API:Ljava/lang/String; = "android.provider.flags.device_config_writable_namespaces_api"

.field public static final blacklist FLAG_DUMP_IMPROVEMENTS:Ljava/lang/String; = "android.provider.flags.dump_improvements"

.field public static final blacklist FLAG_MMD_DEVICE_CONFIG:Ljava/lang/String; = "android.provider.flags.mmd_device_config"

.field public static final blacklist FLAG_NEW_STORAGE_PUBLIC_API:Ljava/lang/String; = "android.provider.flags.new_storage_public_api"

.field public static final blacklist FLAG_NEW_STORAGE_WRITER_SYSTEM_API:Ljava/lang/String; = "android.provider.flags.new_storage_writer_system_api"

.field public static final blacklist FLAG_STAGE_FLAGS_FOR_BUILD:Ljava/lang/String; = "android.provider.flags.stage_flags_for_build"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deviceConfigWritableNamespacesApi()Z
    .registers 1

    .line 20
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;->deviceConfigWritableNamespacesApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist dumpImprovements()Z
    .registers 1

    .line 24
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;->dumpImprovements()Z

    move-result v0

    return v0
.end method

.method public static blacklist mmdDeviceConfig()Z
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;->mmdDeviceConfig()Z

    move-result v0

    return v0
.end method

.method public static blacklist newStoragePublicApi()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;->newStoragePublicApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist newStorageWriterSystemApi()Z
    .registers 1

    .line 36
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;->newStorageWriterSystemApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist stageFlagsForBuild()Z
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;->stageFlagsForBuild()Z

    move-result v0

    return v0
.end method
