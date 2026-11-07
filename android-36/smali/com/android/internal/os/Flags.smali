.class public final Lcom/android/internal/os/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/os/FeatureFlags; = null

.field public static final blacklist FLAG_APPLICATION_SHARED_MEMORY_ENABLED:Ljava/lang/String; = "com.android.internal.os.application_shared_memory_enabled"

.field public static final blacklist FLAG_DEBUG_STORE_ENABLED:Ljava/lang/String; = "com.android.internal.os.debug_store_enabled"

.field public static final blacklist FLAG_ENABLE_APACHE_HTTP_LEGACY_PRELOAD:Ljava/lang/String; = "com.android.internal.os.enable_apache_http_legacy_preload"

.field public static final blacklist FLAG_ENABLE_MEDIA_AND_LOCATION_PRELOAD:Ljava/lang/String; = "com.android.internal.os.enable_media_and_location_preload"

.field public static final blacklist FLAG_RAVENWOOD_FLAG_RO_1:Ljava/lang/String; = "com.android.internal.os.ravenwood_flag_ro_1"

.field public static final blacklist FLAG_RAVENWOOD_FLAG_RO_2:Ljava/lang/String; = "com.android.internal.os.ravenwood_flag_ro_2"

.field public static final blacklist FLAG_RAVENWOOD_FLAG_RW_1:Ljava/lang/String; = "com.android.internal.os.ravenwood_flag_rw_1"

.field public static final blacklist FLAG_RAVENWOOD_FLAG_RW_2:Ljava/lang/String; = "com.android.internal.os.ravenwood_flag_rw_2"

.field public static final blacklist FLAG_USE_TRANSACTION_CODES_FOR_UNKNOWN_METHODS:Ljava/lang/String; = "com.android.internal.os.use_transaction_codes_for_unknown_methods"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Lcom/android/internal/os/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/os/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/os/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist applicationSharedMemoryEnabled()Z
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/os/FeatureFlags;->applicationSharedMemoryEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist debugStoreEnabled()Z
    .registers 1

    .line 37
    sget-object v0, Lcom/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/os/FeatureFlags;->debugStoreEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist enableApacheHttpLegacyPreload()Z
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/os/FeatureFlags;->enableApacheHttpLegacyPreload()Z

    move-result v0

    return v0
.end method

.method public static greylist enableMediaAndLocationPreload()Z
    .registers 1

    .line 51
    sget-object v0, Lcom/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/os/FeatureFlags;->enableMediaAndLocationPreload()Z

    move-result v0

    return v0
.end method

.method public static greylist ravenwoodFlagRo1()Z
    .registers 1

    .line 58
    sget-object v0, Lcom/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/os/FeatureFlags;->ravenwoodFlagRo1()Z

    move-result v0

    return v0
.end method

.method public static greylist ravenwoodFlagRo2()Z
    .registers 1

    .line 65
    sget-object v0, Lcom/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/os/FeatureFlags;->ravenwoodFlagRo2()Z

    move-result v0

    return v0
.end method

.method public static greylist ravenwoodFlagRw1()Z
    .registers 1

    .line 72
    sget-object v0, Lcom/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/os/FeatureFlags;->ravenwoodFlagRw1()Z

    move-result v0

    return v0
.end method

.method public static greylist ravenwoodFlagRw2()Z
    .registers 1

    .line 79
    sget-object v0, Lcom/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/os/FeatureFlags;->ravenwoodFlagRw2()Z

    move-result v0

    return v0
.end method

.method public static greylist useTransactionCodesForUnknownMethods()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/os/Flags;->FEATURE_FLAGS:Lcom/android/internal/os/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/os/FeatureFlags;->useTransactionCodesForUnknownMethods()Z

    move-result v0

    return v0
.end method
