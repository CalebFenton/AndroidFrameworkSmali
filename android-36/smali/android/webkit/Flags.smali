.class public final Landroid/webkit/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/webkit/FeatureFlags; = null

.field public static final blacklist FLAG_DEPRECATE_START_SAFE_BROWSING:Ljava/lang/String; = "android.webkit.deprecate_start_safe_browsing"

.field public static final blacklist FLAG_FILE_SYSTEM_ACCESS:Ljava/lang/String; = "android.webkit.file_system_access"

.field public static final blacklist FLAG_MAINLINE_APIS:Ljava/lang/String; = "android.webkit.mainline_apis"

.field public static final blacklist FLAG_UPDATE_SERVICE_IPC_WRAPPER:Ljava/lang/String; = "android.webkit.update_service_ipc_wrapper"

.field public static final blacklist FLAG_UPDATE_SERVICE_V2:Ljava/lang/String; = "android.webkit.update_service_v2"

.field public static final blacklist FLAG_USER_AGENT_REDUCTION:Ljava/lang/String; = "android.webkit.user_agent_reduction"

.field public static final blacklist FLAG_USE_B_ENTRY_POINT:Ljava/lang/String; = "android.webkit.use_b_entry_point"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Landroid/webkit/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/webkit/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/webkit/Flags;->FEATURE_FLAGS:Landroid/webkit/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist deprecateStartSafeBrowsing()Z
    .registers 1

    .line 26
    sget-object v0, Landroid/webkit/Flags;->FEATURE_FLAGS:Landroid/webkit/FeatureFlags;

    invoke-interface {v0}, Landroid/webkit/FeatureFlags;->deprecateStartSafeBrowsing()Z

    move-result v0

    return v0
.end method

.method public static greylist fileSystemAccess()Z
    .registers 1

    .line 33
    sget-object v0, Landroid/webkit/Flags;->FEATURE_FLAGS:Landroid/webkit/FeatureFlags;

    invoke-interface {v0}, Landroid/webkit/FeatureFlags;->fileSystemAccess()Z

    move-result v0

    return v0
.end method

.method public static greylist mainlineApis()Z
    .registers 1

    .line 40
    sget-object v0, Landroid/webkit/Flags;->FEATURE_FLAGS:Landroid/webkit/FeatureFlags;

    invoke-interface {v0}, Landroid/webkit/FeatureFlags;->mainlineApis()Z

    move-result v0

    return v0
.end method

.method public static greylist updateServiceIpcWrapper()Z
    .registers 1

    .line 47
    sget-object v0, Landroid/webkit/Flags;->FEATURE_FLAGS:Landroid/webkit/FeatureFlags;

    invoke-interface {v0}, Landroid/webkit/FeatureFlags;->updateServiceIpcWrapper()Z

    move-result v0

    return v0
.end method

.method public static greylist updateServiceV2()Z
    .registers 1

    .line 54
    sget-object v0, Landroid/webkit/Flags;->FEATURE_FLAGS:Landroid/webkit/FeatureFlags;

    invoke-interface {v0}, Landroid/webkit/FeatureFlags;->updateServiceV2()Z

    move-result v0

    return v0
.end method

.method public static greylist useBEntryPoint()Z
    .registers 1

    .line 61
    sget-object v0, Landroid/webkit/Flags;->FEATURE_FLAGS:Landroid/webkit/FeatureFlags;

    invoke-interface {v0}, Landroid/webkit/FeatureFlags;->useBEntryPoint()Z

    move-result v0

    return v0
.end method

.method public static greylist userAgentReduction()Z
    .registers 1

    .line 68
    sget-object v0, Landroid/webkit/Flags;->FEATURE_FLAGS:Landroid/webkit/FeatureFlags;

    invoke-interface {v0}, Landroid/webkit/FeatureFlags;->userAgentReduction()Z

    move-result v0

    return v0
.end method
