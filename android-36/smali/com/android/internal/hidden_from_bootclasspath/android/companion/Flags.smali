.class public final Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags; = null

.field public static final blacklist FLAG_ASSOCIATION_DEVICE_ICON:Ljava/lang/String; = "android.companion.association_device_icon"

.field public static final blacklist FLAG_ASSOCIATION_FAILURE_CODE:Ljava/lang/String; = "android.companion.association_failure_code"

.field public static final blacklist FLAG_ASSOCIATION_TAG:Ljava/lang/String; = "android.companion.association_tag"

.field public static final blacklist FLAG_DEVICE_PRESENCE:Ljava/lang/String; = "android.companion.device_presence"

.field public static final blacklist FLAG_NEW_ASSOCIATION_BUILDER:Ljava/lang/String; = "android.companion.new_association_builder"

.field public static final blacklist FLAG_ONGOING_PERM_SYNC:Ljava/lang/String; = "android.companion.ongoing_perm_sync"

.field public static final blacklist FLAG_PERM_SYNC_USER_CONSENT:Ljava/lang/String; = "android.companion.perm_sync_user_consent"

.field public static final blacklist FLAG_UNPAIR_ASSOCIATED_DEVICE:Ljava/lang/String; = "android.companion.unpair_associated_device"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 80
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist associationDeviceIcon()Z
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->associationDeviceIcon()Z

    move-result v0

    return v0
.end method

.method public static blacklist associationFailureCode()Z
    .registers 1

    .line 35
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->associationFailureCode()Z

    move-result v0

    return v0
.end method

.method public static blacklist associationTag()Z
    .registers 1

    .line 42
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->associationTag()Z

    move-result v0

    return v0
.end method

.method public static blacklist devicePresence()Z
    .registers 1

    .line 49
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->devicePresence()Z

    move-result v0

    return v0
.end method

.method public static blacklist newAssociationBuilder()Z
    .registers 1

    .line 56
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->newAssociationBuilder()Z

    move-result v0

    return v0
.end method

.method public static blacklist ongoingPermSync()Z
    .registers 1

    .line 63
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->ongoingPermSync()Z

    move-result v0

    return v0
.end method

.method public static blacklist permSyncUserConsent()Z
    .registers 1

    .line 70
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->permSyncUserConsent()Z

    move-result v0

    return v0
.end method

.method public static blacklist unpairAssociatedDevice()Z
    .registers 1

    .line 77
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/FeatureFlags;->unpairAssociatedDevice()Z

    move-result v0

    return v0
.end method
