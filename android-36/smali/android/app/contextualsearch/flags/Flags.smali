.class public final Landroid/app/contextualsearch/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/app/contextualsearch/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CONTEXTUAL_SEARCH_PREVENT_SELF_CAPTURE:Ljava/lang/String; = "android.app.contextualsearch.flags.contextual_search_prevent_self_capture"

.field public static final blacklist FLAG_ENABLE_SERVICE:Ljava/lang/String; = "android.app.contextualsearch.flags.enable_service"

.field public static final blacklist FLAG_ENABLE_TOKEN_REFRESH:Ljava/lang/String; = "android.app.contextualsearch.flags.enable_token_refresh"

.field public static final blacklist FLAG_INCLUDE_AUDIO_PLAYING_STATUS:Ljava/lang/String; = "android.app.contextualsearch.flags.include_audio_playing_status"

.field public static final blacklist FLAG_MULTI_WINDOW_SCREEN_CONTEXT:Ljava/lang/String; = "android.app.contextualsearch.flags.multi_window_screen_context"

.field public static final blacklist FLAG_REPORT_SECURE_SURFACES_IN_ASSIST_STRUCTURE:Ljava/lang/String; = "android.app.contextualsearch.flags.report_secure_surfaces_in_assist_structure"

.field public static final blacklist FLAG_SELF_INVOCATION:Ljava/lang/String; = "android.app.contextualsearch.flags.self_invocation"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Landroid/app/contextualsearch/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Landroid/app/contextualsearch/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist contextualSearchPreventSelfCapture()Z
    .registers 1

    .line 26
    sget-object v0, Landroid/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Landroid/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/contextualsearch/flags/FeatureFlags;->contextualSearchPreventSelfCapture()Z

    move-result v0

    return v0
.end method

.method public static greylist enableService()Z
    .registers 1

    .line 33
    sget-object v0, Landroid/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Landroid/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/contextualsearch/flags/FeatureFlags;->enableService()Z

    move-result v0

    return v0
.end method

.method public static greylist enableTokenRefresh()Z
    .registers 1

    .line 40
    sget-object v0, Landroid/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Landroid/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/contextualsearch/flags/FeatureFlags;->enableTokenRefresh()Z

    move-result v0

    return v0
.end method

.method public static greylist includeAudioPlayingStatus()Z
    .registers 1

    .line 47
    sget-object v0, Landroid/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Landroid/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/contextualsearch/flags/FeatureFlags;->includeAudioPlayingStatus()Z

    move-result v0

    return v0
.end method

.method public static greylist multiWindowScreenContext()Z
    .registers 1

    .line 54
    sget-object v0, Landroid/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Landroid/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/contextualsearch/flags/FeatureFlags;->multiWindowScreenContext()Z

    move-result v0

    return v0
.end method

.method public static greylist reportSecureSurfacesInAssistStructure()Z
    .registers 1

    .line 61
    sget-object v0, Landroid/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Landroid/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/contextualsearch/flags/FeatureFlags;->reportSecureSurfacesInAssistStructure()Z

    move-result v0

    return v0
.end method

.method public static greylist selfInvocation()Z
    .registers 1

    .line 68
    sget-object v0, Landroid/app/contextualsearch/flags/Flags;->FEATURE_FLAGS:Landroid/app/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/app/contextualsearch/flags/FeatureFlags;->selfInvocation()Z

    move-result v0

    return v0
.end method
