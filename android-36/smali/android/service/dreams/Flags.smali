.class public final Landroid/service/dreams/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags; = null

.field public static final blacklist FLAG_ALLOW_DREAM_WHEN_POSTURED:Ljava/lang/String; = "android.service.dreams.allow_dream_when_postured"

.field public static final blacklist FLAG_CLEANUP_DREAM_SETTINGS_ON_UNINSTALL:Ljava/lang/String; = "android.service.dreams.cleanup_dream_settings_on_uninstall"

.field public static final blacklist FLAG_DISMISS_DREAM_ON_KEYGUARD_DISMISS:Ljava/lang/String; = "android.service.dreams.dismiss_dream_on_keyguard_dismiss"

.field public static final blacklist FLAG_DREAMS_V2:Ljava/lang/String; = "android.service.dreams.dreams_v2"

.field public static final blacklist FLAG_DREAM_HANDLES_BEING_OBSCURED:Ljava/lang/String; = "android.service.dreams.dream_handles_being_obscured"

.field public static final blacklist FLAG_DREAM_HANDLES_CONFIRM_KEYS:Ljava/lang/String; = "android.service.dreams.dream_handles_confirm_keys"

.field public static final blacklist FLAG_DREAM_OVERLAY_HOST:Ljava/lang/String; = "android.service.dreams.dream_overlay_host"

.field public static final blacklist FLAG_DREAM_WAKE_REDIRECT:Ljava/lang/String; = "android.service.dreams.dream_wake_redirect"

.field public static final blacklist FLAG_PUBLISH_PREVIEW_STATE_TO_OVERLAY:Ljava/lang/String; = "android.service.dreams.publish_preview_state_to_overlay"

.field public static final blacklist FLAG_START_AND_STOP_DOZING_IN_BACKGROUND:Ljava/lang/String; = "android.service.dreams.start_and_stop_dozing_in_background"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Landroid/service/dreams/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/service/dreams/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist allowDreamWhenPostured()Z
    .registers 1

    .line 32
    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->allowDreamWhenPostured()Z

    move-result v0

    return v0
.end method

.method public static greylist cleanupDreamSettingsOnUninstall()Z
    .registers 1

    .line 39
    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->cleanupDreamSettingsOnUninstall()Z

    move-result v0

    return v0
.end method

.method public static greylist dismissDreamOnKeyguardDismiss()Z
    .registers 1

    .line 46
    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->dismissDreamOnKeyguardDismiss()Z

    move-result v0

    return v0
.end method

.method public static greylist dreamHandlesBeingObscured()Z
    .registers 1

    .line 53
    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->dreamHandlesBeingObscured()Z

    move-result v0

    return v0
.end method

.method public static greylist dreamHandlesConfirmKeys()Z
    .registers 1

    .line 60
    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->dreamHandlesConfirmKeys()Z

    move-result v0

    return v0
.end method

.method public static greylist dreamOverlayHost()Z
    .registers 1

    .line 67
    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->dreamOverlayHost()Z

    move-result v0

    return v0
.end method

.method public static greylist dreamWakeRedirect()Z
    .registers 1

    .line 74
    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->dreamWakeRedirect()Z

    move-result v0

    return v0
.end method

.method public static greylist dreamsV2()Z
    .registers 1

    .line 81
    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->dreamsV2()Z

    move-result v0

    return v0
.end method

.method public static greylist publishPreviewStateToOverlay()Z
    .registers 1

    .line 88
    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->publishPreviewStateToOverlay()Z

    move-result v0

    return v0
.end method

.method public static greylist startAndStopDozingInBackground()Z
    .registers 1

    .line 95
    sget-object v0, Landroid/service/dreams/Flags;->FEATURE_FLAGS:Landroid/service/dreams/FeatureFlags;

    invoke-interface {v0}, Landroid/service/dreams/FeatureFlags;->startAndStopDozingInBackground()Z

    move-result v0

    return v0
.end method
