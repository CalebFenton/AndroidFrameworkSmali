.class public final Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags; = null

.field public static final blacklist FLAG_APPLY_PICTURE_PROFILES:Ljava/lang/String; = "android.media.tv.flags.apply_picture_profiles"

.field public static final blacklist FLAG_BROADCAST_VISIBILITY_TYPES:Ljava/lang/String; = "android.media.tv.flags.broadcast_visibility_types"

.field public static final blacklist FLAG_ENABLE_AD_SERVICE_FW:Ljava/lang/String; = "android.media.tv.flags.enable_ad_service_fw"

.field public static final blacklist FLAG_ENABLE_LE_AUDIO_BROADCAST_UI:Ljava/lang/String; = "android.media.tv.flags.enable_le_audio_broadcast_ui"

.field public static final blacklist FLAG_ENABLE_LE_AUDIO_UNICAST_UI:Ljava/lang/String; = "android.media.tv.flags.enable_le_audio_unicast_ui"

.field public static final blacklist FLAG_HDMI_CONTROL_COLLECT_PHYSICAL_ADDRESS:Ljava/lang/String; = "android.media.tv.flags.hdmi_control_collect_physical_address"

.field public static final blacklist FLAG_HDMI_CONTROL_ENHANCED_BEHAVIOR:Ljava/lang/String; = "android.media.tv.flags.hdmi_control_enhanced_behavior"

.field public static final blacklist FLAG_KIDS_MODE_TVDB_SHARING:Ljava/lang/String; = "android.media.tv.flags.kids_mode_tvdb_sharing"

.field public static final blacklist FLAG_MEDIACAS_UPDATE_CLIENT_PROFILE_PRIORITY:Ljava/lang/String; = "android.media.tv.flags.mediacas_update_client_profile_priority"

.field public static final blacklist FLAG_MEDIA_QUALITY_FW:Ljava/lang/String; = "android.media.tv.flags.media_quality_fw"

.field public static final blacklist FLAG_MEDIA_QUALITY_FW_BUGFIX:Ljava/lang/String; = "android.media.tv.flags.media_quality_fw_bugfix"

.field public static final blacklist FLAG_SET_RESOURCE_HOLDER_RETAIN:Ljava/lang/String; = "android.media.tv.flags.set_resource_holder_retain"

.field public static final blacklist FLAG_TIAF_V_APIS:Ljava/lang/String; = "android.media.tv.flags.tiaf_v_apis"

.field public static final blacklist FLAG_TIF_EXTENSION_STANDARDIZATION:Ljava/lang/String; = "android.media.tv.flags.tif_extension_standardization"

.field public static final blacklist FLAG_TIF_EXTENSION_STANDARDIZATION_BUGFIX:Ljava/lang/String; = "android.media.tv.flags.tif_extension_standardization_bugfix"

.field public static final blacklist FLAG_TIF_UNBIND_INACTIVE_TIS:Ljava/lang/String; = "android.media.tv.flags.tif_unbind_inactive_tis"

.field public static final blacklist FLAG_TUNER_W_APIS:Ljava/lang/String; = "android.media.tv.flags.tuner_w_apis"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist applyPictureProfiles()Z
    .registers 1

    .line 46
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->applyPictureProfiles()Z

    move-result v0

    return v0
.end method

.method public static blacklist broadcastVisibilityTypes()Z
    .registers 1

    .line 53
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->broadcastVisibilityTypes()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableAdServiceFw()Z
    .registers 1

    .line 60
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->enableAdServiceFw()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableLeAudioBroadcastUi()Z
    .registers 1

    .line 67
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->enableLeAudioBroadcastUi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableLeAudioUnicastUi()Z
    .registers 1

    .line 74
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->enableLeAudioUnicastUi()Z

    move-result v0

    return v0
.end method

.method public static blacklist hdmiControlCollectPhysicalAddress()Z
    .registers 1

    .line 81
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->hdmiControlCollectPhysicalAddress()Z

    move-result v0

    return v0
.end method

.method public static blacklist hdmiControlEnhancedBehavior()Z
    .registers 1

    .line 88
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->hdmiControlEnhancedBehavior()Z

    move-result v0

    return v0
.end method

.method public static blacklist kidsModeTvdbSharing()Z
    .registers 1

    .line 95
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->kidsModeTvdbSharing()Z

    move-result v0

    return v0
.end method

.method public static blacklist mediaQualityFw()Z
    .registers 1

    .line 102
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->mediaQualityFw()Z

    move-result v0

    return v0
.end method

.method public static blacklist mediaQualityFwBugfix()Z
    .registers 1

    .line 109
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->mediaQualityFwBugfix()Z

    move-result v0

    return v0
.end method

.method public static blacklist mediacasUpdateClientProfilePriority()Z
    .registers 1

    .line 116
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->mediacasUpdateClientProfilePriority()Z

    move-result v0

    return v0
.end method

.method public static blacklist setResourceHolderRetain()Z
    .registers 1

    .line 123
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->setResourceHolderRetain()Z

    move-result v0

    return v0
.end method

.method public static blacklist tiafVApis()Z
    .registers 1

    .line 130
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->tiafVApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist tifExtensionStandardization()Z
    .registers 1

    .line 137
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->tifExtensionStandardization()Z

    move-result v0

    return v0
.end method

.method public static blacklist tifExtensionStandardizationBugfix()Z
    .registers 1

    .line 144
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->tifExtensionStandardizationBugfix()Z

    move-result v0

    return v0
.end method

.method public static blacklist tifUnbindInactiveTis()Z
    .registers 1

    .line 151
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->tifUnbindInactiveTis()Z

    move-result v0

    return v0
.end method

.method public static blacklist tunerWApis()Z
    .registers 1

    .line 158
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/FeatureFlags;->tunerWApis()Z

    move-result v0

    return v0
.end method
