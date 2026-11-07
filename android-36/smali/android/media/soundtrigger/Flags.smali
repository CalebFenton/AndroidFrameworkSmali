.class public final Landroid/media/soundtrigger/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/media/soundtrigger/FeatureFlags; = null

.field public static final blacklist FLAG_DETECTION_SERVICE_PAUSED_RESUMED_API:Ljava/lang/String; = "android.media.soundtrigger.detection_service_paused_resumed_api"

.field public static final blacklist FLAG_GENERIC_MODEL_API:Ljava/lang/String; = "android.media.soundtrigger.generic_model_api"

.field public static final blacklist FLAG_MANAGER_API:Ljava/lang/String; = "android.media.soundtrigger.manager_api"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/media/soundtrigger/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/media/soundtrigger/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/media/soundtrigger/Flags;->FEATURE_FLAGS:Landroid/media/soundtrigger/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist detectionServicePausedResumedApi()Z
    .registers 1

    .line 18
    sget-object v0, Landroid/media/soundtrigger/Flags;->FEATURE_FLAGS:Landroid/media/soundtrigger/FeatureFlags;

    invoke-interface {v0}, Landroid/media/soundtrigger/FeatureFlags;->detectionServicePausedResumedApi()Z

    move-result v0

    return v0
.end method

.method public static greylist genericModelApi()Z
    .registers 1

    .line 25
    sget-object v0, Landroid/media/soundtrigger/Flags;->FEATURE_FLAGS:Landroid/media/soundtrigger/FeatureFlags;

    invoke-interface {v0}, Landroid/media/soundtrigger/FeatureFlags;->genericModelApi()Z

    move-result v0

    return v0
.end method

.method public static greylist managerApi()Z
    .registers 1

    .line 32
    sget-object v0, Landroid/media/soundtrigger/Flags;->FEATURE_FLAGS:Landroid/media/soundtrigger/FeatureFlags;

    invoke-interface {v0}, Landroid/media/soundtrigger/FeatureFlags;->managerApi()Z

    move-result v0

    return v0
.end method
