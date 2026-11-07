.class public final Landroid/adpf/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/adpf/FeatureFlags; = null

.field public static final blacklist FLAG_ADPF_VIEWROOTIMPL_ACTION_DOWN_BOOST:Ljava/lang/String; = "android.adpf.adpf_viewrootimpl_action_down_boost"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Landroid/adpf/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/adpf/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/adpf/Flags;->FEATURE_FLAGS:Landroid/adpf/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist adpfViewrootimplActionDownBoost()Z
    .registers 1

    .line 14
    sget-object v0, Landroid/adpf/Flags;->FEATURE_FLAGS:Landroid/adpf/FeatureFlags;

    invoke-interface {v0}, Landroid/adpf/FeatureFlags;->adpfViewrootimplActionDownBoost()Z

    move-result v0

    return v0
.end method
