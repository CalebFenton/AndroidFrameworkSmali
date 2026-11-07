.class public final Landroid/stats/mediametrics_message/MediametricsMessage$RecorderData;
.super Ljava/lang/Object;
.source "MediametricsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/mediametrics_message/MediametricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecorderData"
.end annotation


# static fields
.field public static final blacklist AUDIO_BITRATE:J = 0x1050000000eL

.field public static final blacklist AUDIO_CHANNELS:J = 0x1050000000fL

.field public static final blacklist AUDIO_MIME:J = 0x10900000001L

.field public static final blacklist AUDIO_SAMPLERATE:J = 0x10500000010L

.field public static final blacklist AUDIO_TIMESCALE:J = 0x10500000012L

.field public static final blacklist CAPTURE_FPS:J = 0x10500000009L

.field public static final blacklist CAPTURE_FPS_ENABLE:J = 0x1010000000aL

.field public static final blacklist DURATION_MILLIS:J = 0x1030000000bL

.field public static final blacklist FRAMERATE:J = 0x10500000008L

.field public static final blacklist HEIGHT:J = 0x10500000006L

.field public static final blacklist IFRAME_INTERVAL:J = 0x10500000015L

.field public static final blacklist LOG_SESSION_ID:J = 0x10900000016L

.field public static final blacklist MOVIE_TIMESCALE:J = 0x10500000011L

.field public static final blacklist PAUSED_COUNT:J = 0x1050000000dL

.field public static final blacklist PAUSED_MILLIS:J = 0x1030000000cL

.field public static final blacklist ROTATION:J = 0x10500000007L

.field public static final blacklist VIDEO_BITRATE:J = 0x10500000014L

.field public static final blacklist VIDEO_LEVEL:J = 0x10500000004L

.field public static final blacklist VIDEO_MIME:J = 0x10900000002L

.field public static final blacklist VIDEO_PROFILE:J = 0x10500000003L

.field public static final blacklist VIDEO_TIMESCALE:J = 0x10500000013L

.field public static final blacklist WIDTH:J = 0x10500000005L


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

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
