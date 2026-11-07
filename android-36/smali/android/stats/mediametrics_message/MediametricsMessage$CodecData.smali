.class public final Landroid/stats/mediametrics_message/MediametricsMessage$CodecData;
.super Ljava/lang/Object;
.source "MediametricsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/mediametrics_message/MediametricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CodecData"
.end annotation


# static fields
.field public static final blacklist APP_MAX_INPUT_SIZE:J = 0x10500000042L

.field public static final blacklist ARRAY_MODE:J = 0x1050000003fL

.field public static final blacklist BITRATE:J = 0x10500000018L

.field public static final blacklist BITRATE_MODE:J = 0x10900000017L

.field public static final blacklist CALLER_UID:J = 0x10500000049L

.field public static final blacklist CAPTURE_RATE:J = 0x10100000024L

.field public static final blacklist CHANNEL_COUNT:J = 0x1050000001bL

.field public static final blacklist CODEC:J = 0x10900000001L

.field public static final blacklist CODEC_ID:J = 0x1030000003eL

.field public static final blacklist CODEC_MAX_INPUT_SIZE:J = 0x10500000044L

.field public static final blacklist COLOR_FORMAT:J = 0x10500000022L

.field public static final blacklist COMPONENT_COLOR_FORMAT:J = 0x10500000048L

.field public static final blacklist CONFIG_COLOR_RANGE:J = 0x10500000036L

.field public static final blacklist CONFIG_COLOR_STANDARD:J = 0x10500000035L

.field public static final blacklist CONFIG_COLOR_TRANSFER:J = 0x10500000037L

.field public static final blacklist CRYPTO:J = 0x10500000009L

.field public static final blacklist ENCODER:J = 0x10500000004L

.field public static final blacklist ERROR_CODE:J = 0x1050000000eL

.field public static final blacklist ERROR_STATE:J = 0x1090000000fL

.field public static final blacklist FLUSH_COUNT:J = 0x10500000045L

.field public static final blacklist FRAME_RATE:J = 0x10100000023L

.field public static final blacklist HDR10_PLUS_INFO:J = 0x1050000003cL

.field public static final blacklist HDR_FORMAT:J = 0x1050000003dL

.field public static final blacklist HDR_STATIC_INFO:J = 0x1050000003bL

.field public static final blacklist HEIGHT:J = 0x10500000007L

.field public static final blacklist LATENCY_AVG:J = 0x10300000012L

.field public static final blacklist LATENCY_COUNT:J = 0x10300000013L

.field public static final blacklist LATENCY_MAX:J = 0x10300000010L

.field public static final blacklist LATENCY_MIN:J = 0x10300000011L

.field public static final blacklist LATENCY_UNKNOWN:J = 0x10300000014L

.field public static final blacklist LEVEL:J = 0x1050000000bL

.field public static final blacklist LIFETIME_MILLIS:J = 0x10300000019L

.field public static final blacklist LOG_SESSION_ID:J = 0x1090000001aL

.field public static final blacklist MAX_HEIGHT:J = 0x1050000000dL

.field public static final blacklist MAX_WIDTH:J = 0x1050000000cL

.field public static final blacklist MIME:J = 0x10900000002L

.field public static final blacklist MODE:J = 0x10900000003L

.field public static final blacklist OPERATING_RATE:J = 0x10100000025L

.field public static final blacklist OPERATION_MODE:J = 0x10500000040L

.field public static final blacklist ORIGINAL_BITRATE:J = 0x1050000002dL

.field public static final blacklist ORIGINAL_VIDEO_QP_B_MAX:J = 0x10500000034L

.field public static final blacklist ORIGINAL_VIDEO_QP_B_MIN:J = 0x10500000033L

.field public static final blacklist ORIGINAL_VIDEO_QP_I_MAX:J = 0x10500000030L

.field public static final blacklist ORIGINAL_VIDEO_QP_I_MIN:J = 0x1050000002fL

.field public static final blacklist ORIGINAL_VIDEO_QP_P_MAX:J = 0x10500000032L

.field public static final blacklist ORIGINAL_VIDEO_QP_P_MIN:J = 0x10500000031L

.field public static final blacklist OUTPUT_SURFACE:J = 0x10500000041L

.field public static final blacklist PARSED_COLOR_RANGE:J = 0x10500000039L

.field public static final blacklist PARSED_COLOR_STANDARD:J = 0x10500000038L

.field public static final blacklist PARSED_COLOR_TRANSFER:J = 0x1050000003aL

.field public static final blacklist PIXEL_FORMAT:J = 0x1030000004aL

.field public static final blacklist PRIORITY:J = 0x10500000026L

.field public static final blacklist PROFILE:J = 0x1050000000aL

.field public static final blacklist QUEUE_INPUT_BUFFER_ERROR:J = 0x10500000015L

.field public static final blacklist QUEUE_SECURE_INPUT_BUFFER_ERROR:J = 0x10500000016L

.field public static final blacklist RESOLUTION_CHANGE_COUNT:J = 0x10500000047L

.field public static final blacklist ROTATION:J = 0x10500000008L

.field public static final blacklist SAMPLE_RATE:J = 0x1050000001cL

.field public static final blacklist SECURE:J = 0x10500000005L

.field public static final blacklist SET_SURFACE_COUNT:J = 0x10500000046L

.field public static final blacklist SHAPING_ENHANCED:J = 0x1050000002eL

.field public static final blacklist USED_MAX_INPUT_SIZE:J = 0x10500000043L

.field public static final blacklist VIDEO_ENCODE_BYTES:J = 0x1030000001dL

.field public static final blacklist VIDEO_ENCODE_DURATION_US:J = 0x10300000021L

.field public static final blacklist VIDEO_ENCODE_FRAMES:J = 0x1030000001eL

.field public static final blacklist VIDEO_INPUT_BYTES:J = 0x1030000001fL

.field public static final blacklist VIDEO_INPUT_FRAMES:J = 0x10300000020L

.field public static final blacklist VIDEO_QP_B_MAX:J = 0x1050000002cL

.field public static final blacklist VIDEO_QP_B_MIN:J = 0x1050000002bL

.field public static final blacklist VIDEO_QP_I_MAX:J = 0x10500000028L

.field public static final blacklist VIDEO_QP_I_MIN:J = 0x10500000027L

.field public static final blacklist VIDEO_QP_P_MAX:J = 0x1050000002aL

.field public static final blacklist VIDEO_QP_P_MIN:J = 0x10500000029L

.field public static final blacklist WIDTH:J = 0x10500000006L


# direct methods
.method public constructor blacklist <init>(Landroid/stats/mediametrics_message/MediametricsMessage;)V
    .registers 2
    .param p1, "this$0"    # Landroid/stats/mediametrics_message/MediametricsMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
