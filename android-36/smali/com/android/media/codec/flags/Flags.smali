.class public final Lcom/android/media/codec/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/media/codec/flags/FeatureFlags; = null

.field public static final blacklist FLAG_AIDL_HAL:Ljava/lang/String; = "com.android.media.codec.flags.aidl_hal"

.field public static final blacklist FLAG_CODEC_IMPORTANCE:Ljava/lang/String; = "com.android.media.codec.flags.codec_importance"

.field public static final blacklist FLAG_LARGE_AUDIO_FRAME:Ljava/lang/String; = "com.android.media.codec.flags.large_audio_frame"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/android/media/codec/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/media/codec/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/media/codec/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/codec/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist aidlHal()Z
    .registers 1

    .line 18
    sget-object v0, Lcom/android/media/codec/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/codec/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/codec/flags/FeatureFlags;->aidlHal()Z

    move-result v0

    return v0
.end method

.method public static greylist codecImportance()Z
    .registers 1

    .line 25
    sget-object v0, Lcom/android/media/codec/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/codec/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/codec/flags/FeatureFlags;->codecImportance()Z

    move-result v0

    return v0
.end method

.method public static greylist largeAudioFrame()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/media/codec/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/codec/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/codec/flags/FeatureFlags;->largeAudioFrame()Z

    move-result v0

    return v0
.end method
