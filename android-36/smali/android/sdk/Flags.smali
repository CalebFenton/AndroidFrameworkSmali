.class public final Landroid/sdk/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/sdk/FeatureFlags; = null

.field public static final blacklist FLAG_MAJOR_MINOR_VERSIONING_SCHEME:Ljava/lang/String; = "android.sdk.major_minor_versioning_scheme"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Landroid/sdk/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/sdk/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/sdk/Flags;->FEATURE_FLAGS:Landroid/sdk/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist majorMinorVersioningScheme()Z
    .registers 1

    .line 14
    sget-object v0, Landroid/sdk/Flags;->FEATURE_FLAGS:Landroid/sdk/FeatureFlags;

    invoke-interface {v0}, Landroid/sdk/FeatureFlags;->majorMinorVersioningScheme()Z

    move-result v0

    return v0
.end method
