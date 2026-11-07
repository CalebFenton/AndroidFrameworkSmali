.class public final Landroid/media/MediaFormat;
.super Ljava/lang/Object;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFormat$UnprefixedKeySet;,
        Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;,
        Landroid/media/MediaFormat$FilteredMappedKeySet;,
        Landroid/media/MediaFormat$Type;,
        Landroid/media/MediaFormat$QpOffsetRect;,
        Landroid/media/MediaFormat$SecurityModelFlag;,
        Landroid/media/MediaFormat$ColorRange;,
        Landroid/media/MediaFormat$ColorTransfer;,
        Landroid/media/MediaFormat$ColorStandard;,
        Landroid/media/MediaFormat$PictureType;,
        Landroid/media/MediaFormat$VideoEncodingStatisticsLevel;
    }
.end annotation


# static fields
.field public static final whitelist COLOR_RANGE_FULL:I = 0x1

.field public static final whitelist COLOR_RANGE_LIMITED:I = 0x2

.field public static final whitelist COLOR_STANDARD_BT2020:I = 0x6

.field public static final whitelist COLOR_STANDARD_BT601_NTSC:I = 0x4

.field public static final whitelist COLOR_STANDARD_BT601_PAL:I = 0x2

.field public static final whitelist COLOR_STANDARD_BT709:I = 0x1

.field public static final whitelist COLOR_TRANSFER_HLG:I = 0x7

.field public static final whitelist COLOR_TRANSFER_LINEAR:I = 0x1

.field public static final whitelist COLOR_TRANSFER_SDR_VIDEO:I = 0x3

.field public static final whitelist COLOR_TRANSFER_ST2084:I = 0x6

.field public static final whitelist FLAG_SECURITY_MODEL_MEMORY_SAFE:I = 0x2

.field public static final whitelist FLAG_SECURITY_MODEL_SANDBOXED:I = 0x1

.field public static final blacklist FLAG_SECURITY_MODEL_TRUSTED_CONTENT_ONLY:I = 0x4

.field public static final whitelist KEY_AAC_DRC_ALBUM_MODE:Ljava/lang/String; = "aac-drc-album-mode"

.field public static final whitelist KEY_AAC_DRC_ATTENUATION_FACTOR:Ljava/lang/String; = "aac-drc-cut-level"

.field public static final whitelist KEY_AAC_DRC_BOOST_FACTOR:Ljava/lang/String; = "aac-drc-boost-level"

.field public static final whitelist KEY_AAC_DRC_EFFECT_TYPE:Ljava/lang/String; = "aac-drc-effect-type"

.field public static final whitelist KEY_AAC_DRC_HEAVY_COMPRESSION:Ljava/lang/String; = "aac-drc-heavy-compression"

.field public static final whitelist KEY_AAC_DRC_OUTPUT_LOUDNESS:Ljava/lang/String; = "aac-drc-output-loudness"

.field public static final whitelist KEY_AAC_DRC_TARGET_REFERENCE_LEVEL:Ljava/lang/String; = "aac-target-ref-level"

.field public static final whitelist KEY_AAC_ENCODED_TARGET_LEVEL:Ljava/lang/String; = "aac-encoded-target-level"

.field public static final whitelist KEY_AAC_MAX_OUTPUT_CHANNEL_COUNT:Ljava/lang/String; = "aac-max-output-channel_count"

.field public static final whitelist KEY_AAC_PROFILE:Ljava/lang/String; = "aac-profile"

.field public static final whitelist KEY_AAC_SBR_MODE:Ljava/lang/String; = "aac-sbr-mode"

.field public static final whitelist KEY_ALLOW_FRAME_DROP:Ljava/lang/String; = "allow-frame-drop"

.field public static final blacklist KEY_AUDIO_HW_SYNC:Ljava/lang/String; = "audio-hw-sync"

.field public static final whitelist KEY_AUDIO_SESSION_ID:Ljava/lang/String; = "audio-session-id"

.field public static final whitelist KEY_BITRATE_MODE:Ljava/lang/String; = "bitrate-mode"

.field public static final whitelist KEY_BIT_RATE:Ljava/lang/String; = "bitrate"

.field public static final whitelist KEY_BUFFER_BATCH_MAX_OUTPUT_SIZE:Ljava/lang/String; = "buffer-batch-max-output-size"

.field public static final whitelist KEY_BUFFER_BATCH_THRESHOLD_OUTPUT_SIZE:Ljava/lang/String; = "buffer-batch-threshold-output-size"

.field public static final whitelist KEY_CAPTION_SERVICE_NUMBER:Ljava/lang/String; = "caption-service-number"

.field public static final whitelist KEY_CAPTURE_RATE:Ljava/lang/String; = "capture-rate"

.field public static final blacklist KEY_CA_PRIVATE_DATA:Ljava/lang/String; = "ca-private-data"

.field public static final greylist-max-o KEY_CA_SESSION_ID:Ljava/lang/String; = "ca-session-id"

.field public static final greylist-max-o KEY_CA_SYSTEM_ID:Ljava/lang/String; = "ca-system-id"

.field public static final whitelist KEY_CHANNEL_COUNT:Ljava/lang/String; = "channel-count"

.field public static final whitelist KEY_CHANNEL_MASK:Ljava/lang/String; = "channel-mask"

.field public static final whitelist KEY_CODECS_STRING:Ljava/lang/String; = "codecs-string"

.field public static final whitelist KEY_COLOR_FORMAT:Ljava/lang/String; = "color-format"

.field public static final whitelist KEY_COLOR_RANGE:Ljava/lang/String; = "color-range"

.field public static final whitelist KEY_COLOR_STANDARD:Ljava/lang/String; = "color-standard"

.field public static final whitelist KEY_COLOR_TRANSFER:Ljava/lang/String; = "color-transfer"

.field public static final whitelist KEY_COLOR_TRANSFER_REQUEST:Ljava/lang/String; = "color-transfer-request"

.field public static final whitelist KEY_COMPLEXITY:Ljava/lang/String; = "complexity"

.field public static final whitelist KEY_CREATE_INPUT_SURFACE_SUSPENDED:Ljava/lang/String; = "create-input-buffers-suspended"

.field public static final whitelist KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field public static final whitelist KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field public static final whitelist KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field public static final whitelist KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field public static final whitelist KEY_DURATION:Ljava/lang/String; = "durationUs"

.field public static final whitelist KEY_ENCODER_DELAY:Ljava/lang/String; = "encoder-delay"

.field public static final whitelist KEY_ENCODER_PADDING:Ljava/lang/String; = "encoder-padding"

.field public static final greylist-max-o KEY_FEATURE_:Ljava/lang/String; = "feature-"

.field public static final whitelist KEY_FLAC_COMPRESSION_LEVEL:Ljava/lang/String; = "flac-compression-level"

.field public static final whitelist KEY_FRAME_RATE:Ljava/lang/String; = "frame-rate"

.field public static final whitelist KEY_GRID_COLUMNS:Ljava/lang/String; = "grid-cols"

.field public static final whitelist KEY_GRID_ROWS:Ljava/lang/String; = "grid-rows"

.field public static final whitelist KEY_HAPTIC_CHANNEL_COUNT:Ljava/lang/String; = "haptic-channel-count"

.field public static final whitelist KEY_HARDWARE_AV_SYNC_ID:Ljava/lang/String; = "hw-av-sync-id"

.field public static final whitelist KEY_HDR10_PLUS_INFO:Ljava/lang/String; = "hdr10-plus-info"

.field public static final whitelist KEY_HDR_STATIC_INFO:Ljava/lang/String; = "hdr-static-info"

.field public static final whitelist KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final whitelist KEY_IMPORTANCE:Ljava/lang/String; = "importance"

.field public static final whitelist KEY_INTRA_REFRESH_PERIOD:Ljava/lang/String; = "intra-refresh-period"

.field public static final whitelist KEY_IS_ADTS:Ljava/lang/String; = "is-adts"

.field public static final whitelist KEY_IS_AUTOSELECT:Ljava/lang/String; = "is-autoselect"

.field public static final whitelist KEY_IS_DEFAULT:Ljava/lang/String; = "is-default"

.field public static final whitelist KEY_IS_FORCED_SUBTITLE:Ljava/lang/String; = "is-forced-subtitle"

.field public static final greylist-max-o KEY_IS_TIMED_TEXT:Ljava/lang/String; = "is-timed-text"

.field public static final whitelist KEY_I_FRAME_INTERVAL:Ljava/lang/String; = "i-frame-interval"

.field public static final whitelist KEY_LANGUAGE:Ljava/lang/String; = "language"

.field public static final whitelist KEY_LATENCY:Ljava/lang/String; = "latency"

.field public static final whitelist KEY_LEVEL:Ljava/lang/String; = "level"

.field public static final whitelist KEY_LOW_LATENCY:Ljava/lang/String; = "low-latency"

.field public static final greylist-max-o KEY_MAX_BIT_RATE:Ljava/lang/String; = "max-bitrate"

.field public static final whitelist KEY_MAX_B_FRAMES:Ljava/lang/String; = "max-bframes"

.field public static final whitelist KEY_MAX_FPS_TO_ENCODER:Ljava/lang/String; = "max-fps-to-encoder"

.field public static final whitelist KEY_MAX_HEIGHT:Ljava/lang/String; = "max-height"

.field public static final whitelist KEY_MAX_INPUT_SIZE:Ljava/lang/String; = "max-input-size"

.field public static final whitelist KEY_MAX_OUTPUT_CHANNEL_COUNT:Ljava/lang/String; = "max-output-channel-count"

.field public static final whitelist KEY_MAX_PTS_GAP_TO_ENCODER:Ljava/lang/String; = "max-pts-gap-to-encoder"

.field public static final whitelist KEY_MAX_WIDTH:Ljava/lang/String; = "max-width"

.field public static final whitelist KEY_MIME:Ljava/lang/String; = "mime"

.field public static final whitelist KEY_MPEGH_COMPATIBLE_SETS:Ljava/lang/String; = "mpegh-compatible-sets"

.field public static final whitelist KEY_MPEGH_PROFILE_LEVEL_INDICATION:Ljava/lang/String; = "mpegh-profile-level-indication"

.field public static final whitelist KEY_MPEGH_REFERENCE_CHANNEL_LAYOUT:Ljava/lang/String; = "mpegh-reference-channel-layout"

.field public static final blacklist KEY_NUM_SLOTS:Ljava/lang/String; = "num-slots"

.field public static final whitelist KEY_OPERATING_RATE:Ljava/lang/String; = "operating-rate"

.field public static final whitelist KEY_OUTPUT_REORDER_DEPTH:Ljava/lang/String; = "output-reorder-depth"

.field public static final whitelist KEY_PCM_ENCODING:Ljava/lang/String; = "pcm-encoding"

.field public static final whitelist KEY_PICTURE_PROFILE_ID:Ljava/lang/String; = "picture-profile-id"

.field public static final whitelist KEY_PICTURE_PROFILE_INSTANCE:Ljava/lang/String; = "picture-profile-instance"

.field public static final whitelist KEY_PICTURE_TYPE:Ljava/lang/String; = "picture-type"

.field public static final whitelist KEY_PIXEL_ASPECT_RATIO_HEIGHT:Ljava/lang/String; = "sar-height"

.field public static final whitelist KEY_PIXEL_ASPECT_RATIO_WIDTH:Ljava/lang/String; = "sar-width"

.field public static final whitelist KEY_PREPEND_HEADER_TO_SYNC_FRAMES:Ljava/lang/String; = "prepend-sps-pps-to-idr-frames"

.field public static final whitelist KEY_PRIORITY:Ljava/lang/String; = "priority"

.field public static final whitelist KEY_PROFILE:Ljava/lang/String; = "profile"

.field public static final whitelist KEY_PUSH_BLANK_BUFFERS_ON_STOP:Ljava/lang/String; = "push-blank-buffers-on-shutdown"

.field public static final whitelist KEY_QUALITY:Ljava/lang/String; = "quality"

.field public static final whitelist KEY_REPEAT_PREVIOUS_FRAME_AFTER:Ljava/lang/String; = "repeat-previous-frame-after"

.field public static final whitelist KEY_ROTATION:Ljava/lang/String; = "rotation-degrees"

.field public static final whitelist KEY_SAMPLE_RATE:Ljava/lang/String; = "sample-rate"

.field public static final whitelist KEY_SECURITY_MODEL:Ljava/lang/String; = "security-model"

.field public static final whitelist KEY_SLICE_HEIGHT:Ljava/lang/String; = "slice-height"

.field public static final whitelist KEY_SLOW_MOTION_MARKERS:Ljava/lang/String; = "slow-motion-markers"

.field public static final whitelist KEY_STRIDE:Ljava/lang/String; = "stride"

.field public static final whitelist KEY_TEMPORAL_LAYERING:Ljava/lang/String; = "ts-schema"

.field public static final whitelist KEY_TILE_HEIGHT:Ljava/lang/String; = "tile-height"

.field public static final whitelist KEY_TILE_WIDTH:Ljava/lang/String; = "tile-width"

.field public static final whitelist KEY_TRACK_ID:Ljava/lang/String; = "track-id"

.field public static final whitelist KEY_VIDEO_ENCODING_STATISTICS_LEVEL:Ljava/lang/String; = "video-encoding-statistics-level"

.field public static final whitelist KEY_VIDEO_QP_AVERAGE:Ljava/lang/String; = "video-qp-average"

.field public static final whitelist KEY_VIDEO_QP_B_MAX:Ljava/lang/String; = "video-qp-b-max"

.field public static final whitelist KEY_VIDEO_QP_B_MIN:Ljava/lang/String; = "video-qp-b-min"

.field public static final whitelist KEY_VIDEO_QP_I_MAX:Ljava/lang/String; = "video-qp-i-max"

.field public static final whitelist KEY_VIDEO_QP_I_MIN:Ljava/lang/String; = "video-qp-i-min"

.field public static final whitelist KEY_VIDEO_QP_MAX:Ljava/lang/String; = "video-qp-max"

.field public static final whitelist KEY_VIDEO_QP_MIN:Ljava/lang/String; = "video-qp-min"

.field public static final whitelist KEY_VIDEO_QP_P_MAX:Ljava/lang/String; = "video-qp-p-max"

.field public static final whitelist KEY_VIDEO_QP_P_MIN:Ljava/lang/String; = "video-qp-p-min"

.field public static final whitelist KEY_WIDTH:Ljava/lang/String; = "width"

.field public static final whitelist LOG_SESSION_ID:Ljava/lang/String; = "log-session-id"

.field public static final whitelist MIMETYPE_AUDIO_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final whitelist MIMETYPE_AUDIO_AAC_ELD:Ljava/lang/String; = "audio/mp4a.40.39"

.field public static final whitelist MIMETYPE_AUDIO_AAC_HE_V1:Ljava/lang/String; = "audio/mp4a.40.05"

.field public static final whitelist MIMETYPE_AUDIO_AAC_HE_V2:Ljava/lang/String; = "audio/mp4a.40.29"

.field public static final whitelist MIMETYPE_AUDIO_AAC_LC:Ljava/lang/String; = "audio/mp4a.40.02"

.field public static final whitelist MIMETYPE_AUDIO_AAC_XHE:Ljava/lang/String; = "audio/mp4a.40.42"

.field public static final whitelist MIMETYPE_AUDIO_AC3:Ljava/lang/String; = "audio/ac3"

.field public static final whitelist MIMETYPE_AUDIO_AC4:Ljava/lang/String; = "audio/ac4"

.field public static final whitelist MIMETYPE_AUDIO_AMR_NB:Ljava/lang/String; = "audio/3gpp"

.field public static final whitelist MIMETYPE_AUDIO_AMR_WB:Ljava/lang/String; = "audio/amr-wb"

.field public static final whitelist MIMETYPE_AUDIO_DOLBY_MAT:Ljava/lang/String; = "audio/vnd.dolby.mat"

.field public static final whitelist MIMETYPE_AUDIO_DOLBY_TRUEHD:Ljava/lang/String; = "audio/vnd.dolby.mlp"

.field public static final whitelist MIMETYPE_AUDIO_DRA:Ljava/lang/String; = "audio/vnd.dra"

.field public static final whitelist MIMETYPE_AUDIO_DTS:Ljava/lang/String; = "audio/vnd.dts"

.field public static final whitelist MIMETYPE_AUDIO_DTS_HD:Ljava/lang/String; = "audio/vnd.dts.hd"

.field public static final whitelist MIMETYPE_AUDIO_DTS_UHD:Ljava/lang/String; = "audio/vnd.dts.uhd"

.field public static final whitelist MIMETYPE_AUDIO_EAC3:Ljava/lang/String; = "audio/eac3"

.field public static final whitelist MIMETYPE_AUDIO_EAC3_JOC:Ljava/lang/String; = "audio/eac3-joc"

.field public static final whitelist MIMETYPE_AUDIO_FLAC:Ljava/lang/String; = "audio/flac"

.field public static final whitelist MIMETYPE_AUDIO_G711_ALAW:Ljava/lang/String; = "audio/g711-alaw"

.field public static final whitelist MIMETYPE_AUDIO_G711_MLAW:Ljava/lang/String; = "audio/g711-mlaw"

.field public static final whitelist MIMETYPE_AUDIO_IAMF:Ljava/lang/String; = "audio/iamf"

.field public static final whitelist MIMETYPE_AUDIO_IEC61937:Ljava/lang/String; = "audio/x-iec61937"

.field public static final whitelist MIMETYPE_AUDIO_MPEG:Ljava/lang/String; = "audio/mpeg"

.field public static final whitelist MIMETYPE_AUDIO_MPEGH_BL_L3:Ljava/lang/String; = "audio/mhm1.03"

.field public static final whitelist MIMETYPE_AUDIO_MPEGH_BL_L4:Ljava/lang/String; = "audio/mhm1.04"

.field public static final whitelist MIMETYPE_AUDIO_MPEGH_LC_L3:Ljava/lang/String; = "audio/mhm1.0d"

.field public static final whitelist MIMETYPE_AUDIO_MPEGH_LC_L4:Ljava/lang/String; = "audio/mhm1.0e"

.field public static final whitelist MIMETYPE_AUDIO_MPEGH_MHA1:Ljava/lang/String; = "audio/mha1"

.field public static final whitelist MIMETYPE_AUDIO_MPEGH_MHM1:Ljava/lang/String; = "audio/mhm1"

.field public static final whitelist MIMETYPE_AUDIO_MSGSM:Ljava/lang/String; = "audio/gsm"

.field public static final whitelist MIMETYPE_AUDIO_OPUS:Ljava/lang/String; = "audio/opus"

.field public static final whitelist MIMETYPE_AUDIO_QCELP:Ljava/lang/String; = "audio/qcelp"

.field public static final whitelist MIMETYPE_AUDIO_RAW:Ljava/lang/String; = "audio/raw"

.field public static final whitelist MIMETYPE_AUDIO_SCRAMBLED:Ljava/lang/String; = "audio/scrambled"

.field public static final whitelist MIMETYPE_AUDIO_VORBIS:Ljava/lang/String; = "audio/vorbis"

.field public static final whitelist MIMETYPE_IMAGE_ANDROID_HEIC:Ljava/lang/String; = "image/vnd.android.heic"

.field public static final whitelist MIMETYPE_IMAGE_AVIF:Ljava/lang/String; = "image/avif"

.field public static final whitelist MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final whitelist MIMETYPE_TEXT_CEA_708:Ljava/lang/String; = "text/cea-708"

.field public static final whitelist MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final whitelist MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field public static final whitelist MIMETYPE_VIDEO_APV:Ljava/lang/String; = "video/apv"

.field public static final whitelist MIMETYPE_VIDEO_AV1:Ljava/lang/String; = "video/av01"

.field public static final whitelist MIMETYPE_VIDEO_AVC:Ljava/lang/String; = "video/avc"

.field public static final whitelist MIMETYPE_VIDEO_DOLBY_VISION:Ljava/lang/String; = "video/dolby-vision"

.field public static final whitelist MIMETYPE_VIDEO_H263:Ljava/lang/String; = "video/3gpp"

.field public static final whitelist MIMETYPE_VIDEO_HEVC:Ljava/lang/String; = "video/hevc"

.field public static final whitelist MIMETYPE_VIDEO_MPEG2:Ljava/lang/String; = "video/mpeg2"

.field public static final whitelist MIMETYPE_VIDEO_MPEG4:Ljava/lang/String; = "video/mp4v-es"

.field public static final whitelist MIMETYPE_VIDEO_RAW:Ljava/lang/String; = "video/raw"

.field public static final whitelist MIMETYPE_VIDEO_SCRAMBLED:Ljava/lang/String; = "video/scrambled"

.field public static final whitelist MIMETYPE_VIDEO_VP8:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field public static final whitelist MIMETYPE_VIDEO_VP9:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field public static final whitelist PICTURE_TYPE_B:I = 0x3

.field public static final whitelist PICTURE_TYPE_I:I = 0x1

.field public static final whitelist PICTURE_TYPE_P:I = 0x2

.field public static final whitelist PICTURE_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist TYPE_BYTE_BUFFER:I = 0x5

.field public static final whitelist TYPE_FLOAT:I = 0x3

.field public static final whitelist TYPE_INTEGER:I = 0x1

.field public static final whitelist TYPE_LONG:I = 0x2

.field public static final whitelist TYPE_NULL:I = 0x0

.field public static final whitelist TYPE_STRING:I = 0x4

.field public static final whitelist VIDEO_ENCODING_STATISTICS_LEVEL_1:I = 0x1

.field public static final whitelist VIDEO_ENCODING_STATISTICS_LEVEL_NONE:I


# instance fields
.field private greylist mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMap(Landroid/media/MediaFormat;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 1887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1888
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    .line 1889
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/MediaFormat;)V
    .registers 4
    .param p1, "other"    # Landroid/media/MediaFormat;

    .line 2360
    invoke-direct {p0}, Landroid/media/MediaFormat;-><init>()V

    .line 2361
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    iget-object v1, p1, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2362
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1880
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1881
    iput-object p1, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    .line 1882
    return-void
.end method

.method public static final whitelist createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .registers 5
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "sampleRate"    # I
    .param p2, "channelCount"    # I

    .line 2391
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 2392
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "mime"

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    const-string v1, "sample-rate"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2394
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2396
    return-object v0
.end method

.method public static final whitelist createSubtitleFormat(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaFormat;
    .registers 4
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "language"    # Ljava/lang/String;

    .line 2410
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 2411
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "mime"

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    const-string v1, "language"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    return-object v0
.end method

.method public static final whitelist createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .registers 5
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2427
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 2428
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "mime"

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2430
    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2432
    return-object v0
.end method


# virtual methods
.method public final whitelist containsFeature(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1907
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist containsKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1900
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2096
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final whitelist getByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/nio/ByteBuffer;

    .line 2107
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2108
    .local v0, "ret":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public whitelist getFeatureEnabled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "feature"    # Ljava/lang/String;

    .line 2121
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2122
    .local v0, "enabled":Ljava/lang/Integer;
    if-eqz v0, :cond_27

    .line 2125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1

    .line 2123
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "feature is not specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist getFeatures()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2353
    new-instance v0, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;

    const-string v1, "feature-"

    invoke-direct {v0, p0, v1}, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;-><init>(Landroid/media/MediaFormat;Ljava/lang/String;)V

    return-object v0
.end method

.method public final whitelist getFloat(Ljava/lang/String;)F
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2053
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final whitelist getFloat(Ljava/lang/String;F)F
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 2064
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2065
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_10

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_11

    :cond_10
    move v1, p2

    :goto_11
    return v1
.end method

.method public final whitelist getInteger(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1997
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final whitelist getInteger(Ljava/lang/String;I)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 2009
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 2010
    :catch_5
    move-exception v0

    .line 2012
    .local v0, "e":Ljava/lang/NullPointerException;
    return p2
.end method

.method public final whitelist getKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2339
    new-instance v0, Landroid/media/MediaFormat$UnprefixedKeySet;

    const-string v1, "feature-"

    invoke-direct {v0, p0, v1}, Landroid/media/MediaFormat$UnprefixedKeySet;-><init>(Landroid/media/MediaFormat;Ljava/lang/String;)V

    return-object v0
.end method

.method public final whitelist getLong(Ljava/lang/String;)J
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 2025
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 2037
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide v0

    .line 2038
    :catch_5
    move-exception v0

    .line 2040
    .local v0, "e":Ljava/lang/NullPointerException;
    return-wide p2
.end method

.method greylist getMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1893
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method public final whitelist getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1974
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public final whitelist getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Number;

    .line 1984
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 1985
    .local v0, "ret":Ljava/lang/Number;
    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public final whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2075
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 2085
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2086
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public final whitelist getValueTypeForKey(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1933
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1934
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_a

    .line 1935
    const/4 v1, 0x0

    return v1

    .line 1936
    :cond_a
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_10

    .line 1937
    const/4 v1, 0x1

    return v1

    .line 1938
    :cond_10
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_16

    .line 1939
    const/4 v1, 0x2

    return v1

    .line 1940
    :cond_16
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1c

    .line 1941
    const/4 v1, 0x3

    return v1

    .line 1942
    :cond_1c
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 1943
    const/4 v1, 0x4

    return v1

    .line 1944
    :cond_22
    instance-of v1, v0, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_28

    .line 1945
    const/4 v1, 0x5

    return v1

    .line 1947
    :cond_28
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "invalid value for key"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist removeFeature(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 2186
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2187
    return-void
.end method

.method public final whitelist removeKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2176
    const-string v0, "feature-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2177
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    :cond_d
    return-void
.end method

.method public final whitelist setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # Ljava/nio/ByteBuffer;

    .line 2168
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2169
    return-void
.end method

.method public whitelist setFeatureEnabled(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 2378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2379
    return-void
.end method

.method public final whitelist setFloat(Ljava/lang/String;F)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 2146
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    return-void
.end method

.method public final whitelist setInteger(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 2132
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2133
    return-void
.end method

.method public final whitelist setLong(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 2139
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2140
    return-void
.end method

.method public final whitelist setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2157
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 2437
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
