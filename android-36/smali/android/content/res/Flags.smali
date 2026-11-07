.class public final Landroid/content/res/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/content/res/FeatureFlags; = null

.field public static final blacklist FLAG_ALWAYS_FALSE:Ljava/lang/String; = "android.content.res.always_false"

.field public static final blacklist FLAG_ASSET_FILE_DESCRIPTOR_FRRO:Ljava/lang/String; = "android.content.res.asset_file_descriptor_frro"

.field public static final blacklist FLAG_DEFAULT_LOCALE:Ljava/lang/String; = "android.content.res.default_locale"

.field public static final blacklist FLAG_DIMENSION_FRRO:Ljava/lang/String; = "android.content.res.dimension_frro"

.field public static final blacklist FLAG_FONT_SCALE_CONVERTER_PUBLIC:Ljava/lang/String; = "android.content.res.font_scale_converter_public"

.field public static final blacklist FLAG_HANDLE_ALL_CONFIG_CHANGES:Ljava/lang/String; = "android.content.res.handle_all_config_changes"

.field public static final blacklist FLAG_LAYOUT_READWRITE_FLAGS:Ljava/lang/String; = "android.content.res.layout_readwrite_flags"

.field public static final blacklist FLAG_MANIFEST_FLAGGING:Ljava/lang/String; = "android.content.res.manifest_flagging"

.field public static final blacklist FLAG_NINE_PATCH_FRRO:Ljava/lang/String; = "android.content.res.nine_patch_frro"

.field public static final blacklist FLAG_REGISTER_RESOURCE_PATHS:Ljava/lang/String; = "android.content.res.register_resource_paths"

.field public static final blacklist FLAG_RESOURCES_MINOR_VERSION_SUPPORT:Ljava/lang/String; = "android.content.res.resources_minor_version_support"

.field public static final blacklist FLAG_RRO_CONSTRAINTS:Ljava/lang/String; = "android.content.res.rro_constraints"

.field public static final blacklist FLAG_RRO_CONTROL_FOR_ANDROID_NO_OVERLAYABLE:Ljava/lang/String; = "android.content.res.rro_control_for_android_no_overlayable"

.field public static final blacklist FLAG_SELF_TARGETING_ANDROID_RESOURCE_FRRO:Ljava/lang/String; = "android.content.res.self_targeting_android_resource_frro"

.field public static final blacklist FLAG_SYSTEM_CONTEXT_HANDLE_APP_INFO_CHANGED:Ljava/lang/String; = "android.content.res.system_context_handle_app_info_changed"

.field public static final blacklist FLAG_USE_NEW_ACONFIG_STORAGE:Ljava/lang/String; = "android.content.res.use_new_aconfig_storage"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 152
    new-instance v0, Landroid/content/res/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/content/res/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist alwaysFalse()Z
    .registers 1

    .line 44
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->alwaysFalse()Z

    move-result v0

    return v0
.end method

.method public static greylist assetFileDescriptorFrro()Z
    .registers 1

    .line 51
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->assetFileDescriptorFrro()Z

    move-result v0

    return v0
.end method

.method public static greylist defaultLocale()Z
    .registers 1

    .line 58
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->defaultLocale()Z

    move-result v0

    return v0
.end method

.method public static greylist dimensionFrro()Z
    .registers 1

    .line 65
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->dimensionFrro()Z

    move-result v0

    return v0
.end method

.method public static greylist fontScaleConverterPublic()Z
    .registers 1

    .line 72
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->fontScaleConverterPublic()Z

    move-result v0

    return v0
.end method

.method public static greylist handleAllConfigChanges()Z
    .registers 1

    .line 79
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->handleAllConfigChanges()Z

    move-result v0

    return v0
.end method

.method public static greylist layoutReadwriteFlags()Z
    .registers 1

    .line 86
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->layoutReadwriteFlags()Z

    move-result v0

    return v0
.end method

.method public static greylist manifestFlagging()Z
    .registers 1

    .line 93
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->manifestFlagging()Z

    move-result v0

    return v0
.end method

.method public static greylist ninePatchFrro()Z
    .registers 1

    .line 100
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->ninePatchFrro()Z

    move-result v0

    return v0
.end method

.method public static greylist registerResourcePaths()Z
    .registers 1

    .line 107
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->registerResourcePaths()Z

    move-result v0

    return v0
.end method

.method public static greylist resourcesMinorVersionSupport()Z
    .registers 1

    .line 114
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->resourcesMinorVersionSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist rroConstraints()Z
    .registers 1

    .line 121
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->rroConstraints()Z

    move-result v0

    return v0
.end method

.method public static greylist rroControlForAndroidNoOverlayable()Z
    .registers 1

    .line 128
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->rroControlForAndroidNoOverlayable()Z

    move-result v0

    return v0
.end method

.method public static greylist selfTargetingAndroidResourceFrro()Z
    .registers 1

    .line 135
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->selfTargetingAndroidResourceFrro()Z

    move-result v0

    return v0
.end method

.method public static greylist systemContextHandleAppInfoChanged()Z
    .registers 1

    .line 142
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->systemContextHandleAppInfoChanged()Z

    move-result v0

    return v0
.end method

.method public static greylist useNewAconfigStorage()Z
    .registers 1

    .line 149
    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->useNewAconfigStorage()Z

    move-result v0

    return v0
.end method
