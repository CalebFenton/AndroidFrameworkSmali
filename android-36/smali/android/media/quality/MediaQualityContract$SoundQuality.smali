.class public final Landroid/media/quality/MediaQualityContract$SoundQuality;
.super Ljava/lang/Object;
.source "MediaQualityContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/MediaQualityContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoundQuality"
.end annotation


# static fields
.field public static final whitelist PARAMETER_AUTO_VOLUME_CONTROL:Ljava/lang/String; = "auto_volume_control"

.field public static final whitelist PARAMETER_BALANCE:Ljava/lang/String; = "balance"

.field public static final whitelist PARAMETER_BASS:Ljava/lang/String; = "bass"

.field public static final whitelist PARAMETER_DIALOGUE_ENHANCER:Ljava/lang/String; = "dialogue_enhancer"

.field public static final whitelist PARAMETER_DIGITAL_OUTPUT_DELAY_MILLIS:Ljava/lang/String; = "digital_output_delay_millis"

.field public static final whitelist PARAMETER_DIGITAL_OUTPUT_MODE:Ljava/lang/String; = "digital_output_mode"

.field public static final blacklist PARAMETER_DOLBY_AUDIO_PROCESSING:Ljava/lang/String; = "dolby_audio_processing"

.field public static final whitelist PARAMETER_DOLBY_AUDIO_PROCESSING_DOLBY_ATMOS:Ljava/lang/String; = "dolby_audio_processing_dolby_atmos"

.field public static final whitelist PARAMETER_DOLBY_AUDIO_PROCESSING_SOUND_MODE:Ljava/lang/String; = "dolby_audio_processing_sound_mode"

.field public static final whitelist PARAMETER_DOLBY_AUDIO_PROCESSING_SURROUND_VIRTUALIZER:Ljava/lang/String; = "dolby_audio_processing_surround_virtualizer"

.field public static final whitelist PARAMETER_DOLBY_AUDIO_PROCESSING_VOLUME_LEVELER:Ljava/lang/String; = "dolby_audio_processing_volume_leveler"

.field public static final whitelist PARAMETER_DOWN_MIX_MODE:Ljava/lang/String; = "down_mix_mode"

.field public static final whitelist PARAMETER_DTS_DRC:Ljava/lang/String; = "dts_drc"

.field public static final blacklist PARAMETER_DTS_VIRTUAL_X:Ljava/lang/String; = "dts_virtual_x"

.field public static final whitelist PARAMETER_DTS_VIRTUAL_X_DEFINITION:Ljava/lang/String; = "dts_virtual_x_definition"

.field public static final whitelist PARAMETER_DTS_VIRTUAL_X_DIALOG_CLARITY:Ljava/lang/String; = "dts_virtual_x_dialog_clarity"

.field public static final whitelist PARAMETER_DTS_VIRTUAL_X_HEIGHT:Ljava/lang/String; = "dts_virtual_x_height"

.field public static final whitelist PARAMETER_DTS_VIRTUAL_X_LIMITER:Ljava/lang/String; = "dts_virtual_x_limiter"

.field public static final whitelist PARAMETER_DTS_VIRTUAL_X_TBHDX:Ljava/lang/String; = "dts_virtual_x_tbhdx"

.field public static final whitelist PARAMETER_DTS_VIRTUAL_X_TRU_SURROUND_X:Ljava/lang/String; = "dts_virtual_x_tru_surround_x"

.field public static final whitelist PARAMETER_DTS_VIRTUAL_X_TRU_VOLUME_HD:Ljava/lang/String; = "dts_virtual_x_tru_volume_hd"

.field public static final whitelist PARAMETER_EARC:Ljava/lang/String; = "earc"

.field public static final blacklist PARAMETER_EQUALIZER_DETAIL:Ljava/lang/String; = "equalizer_detail"

.field public static final blacklist PARAMETER_SOUND_STYLE:Ljava/lang/String; = "sound_style"

.field public static final whitelist PARAMETER_SPEAKERS:Ljava/lang/String; = "speakers"

.field public static final whitelist PARAMETER_SPEAKERS_DELAY_MILLIS:Ljava/lang/String; = "speakers_delay_millis"

.field public static final whitelist PARAMETER_SURROUND_SOUND:Ljava/lang/String; = "surround_sound"

.field public static final whitelist PARAMETER_TREBLE:Ljava/lang/String; = "treble"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    return-void
.end method
