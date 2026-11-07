.class public final Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlags; = null

.field public static final blacklist FLAG_XR_MANIFEST_ENTRIES:Ljava/lang/String; = "android.xr.xr_manifest_entries"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist xrManifestEntries()Z
    .registers 1

    .line 10
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/FeatureFlags;->xrManifestEntries()Z

    move-result v0

    return v0
.end method
