.class public final Landroid/net/vcn/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/net/vcn/FeatureFlags; = null

.field public static final blacklist FLAG_MAINLINE_VCN_MODULE_API:Ljava/lang/String; = "android.net.vcn.mainline_vcn_module_api"

.field public static final blacklist FLAG_SAFE_MODE_CONFIG:Ljava/lang/String; = "android.net.vcn.safe_mode_config"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/net/vcn/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/net/vcn/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/net/vcn/Flags;->FEATURE_FLAGS:Landroid/net/vcn/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist mainlineVcnModuleApi()Z
    .registers 1

    .line 16
    sget-object v0, Landroid/net/vcn/Flags;->FEATURE_FLAGS:Landroid/net/vcn/FeatureFlags;

    invoke-interface {v0}, Landroid/net/vcn/FeatureFlags;->mainlineVcnModuleApi()Z

    move-result v0

    return v0
.end method

.method public static greylist safeModeConfig()Z
    .registers 1

    .line 23
    sget-object v0, Landroid/net/vcn/Flags;->FEATURE_FLAGS:Landroid/net/vcn/FeatureFlags;

    invoke-interface {v0}, Landroid/net/vcn/FeatureFlags;->safeModeConfig()Z

    move-result v0

    return v0
.end method
