.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ALLOW_FOREGROUND_ACTIVITIES_IN_ON_SHOW:Ljava/lang/String; = "android.service.voice.flags.allow_foreground_activities_in_on_show"

.field public static final blacklist FLAG_ALLOW_HOTWORD_BUMP_EGRESS:Ljava/lang/String; = "android.service.voice.flags.allow_hotword_bump_egress"

.field public static final blacklist FLAG_ALLOW_TRAINING_DATA_EGRESS_FROM_HDS:Ljava/lang/String; = "android.service.voice.flags.allow_training_data_egress_from_hds"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist allowForegroundActivitiesInOnShow()Z
    .registers 1

    .line 18
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/FeatureFlags;->allowForegroundActivitiesInOnShow()Z

    move-result v0

    return v0
.end method

.method public static blacklist allowHotwordBumpEgress()Z
    .registers 1

    .line 25
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/FeatureFlags;->allowHotwordBumpEgress()Z

    move-result v0

    return v0
.end method

.method public static blacklist allowTrainingDataEgressFromHds()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/FeatureFlags;->allowTrainingDataEgressFromHds()Z

    move-result v0

    return v0
.end method
