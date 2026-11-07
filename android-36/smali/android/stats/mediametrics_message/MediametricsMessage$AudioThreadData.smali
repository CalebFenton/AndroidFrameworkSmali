.class public final Landroid/stats/mediametrics_message/MediametricsMessage$AudioThreadData;
.super Ljava/lang/Object;
.source "MediametricsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/mediametrics_message/MediametricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioThreadData"
.end annotation


# static fields
.field public static final blacklist ACTIVE_MILLIS:J = 0x10300000009L

.field public static final blacklist CHANNEL_MASK:J = 0x1030000000eL

.field public static final blacklist DURATION_MILLIS:J = 0x1030000000aL

.field public static final blacklist ENCODING:J = 0x1090000000fL

.field public static final blacklist FRAMECOUNT:J = 0x10500000002L

.field public static final blacklist FRAME_COUNT:J = 0x10500000010L

.field public static final blacklist ID:J = 0x1050000000bL

.field public static final blacklist INPUT_DEVICE:J = 0x10900000012L

.field public static final blacklist IO_JITTER_MEAN_MILLIS:J = 0x10100000013L

.field public static final blacklist IO_JITTER_STDDEV_MILLIS:J = 0x10100000014L

.field public static final blacklist LATENCY_MEAN_MILLIS:J = 0x10100000019L

.field public static final blacklist LATENCY_MILLIS_HIST:J = 0x10900000005L

.field public static final blacklist LATENCY_STDDEV_MILLIS:J = 0x1010000001aL

.field public static final blacklist OUTPUT_DEVICE:J = 0x10900000011L

.field public static final blacklist OVERRUNS:J = 0x10300000008L

.field public static final blacklist PORT_ID:J = 0x1050000000cL

.field public static final blacklist PROCESS_TIME_MEAN_MILLIS:J = 0x10100000015L

.field public static final blacklist PROCESS_TIME_STDDEV_MILLIS:J = 0x10100000016L

.field public static final blacklist SAMPLERATE:J = 0x10500000003L

.field public static final blacklist SAMPLE_RATE:J = 0x1050000000dL

.field public static final blacklist TIMESTAMP_JITTER_MEAN_MILLIS:J = 0x10100000017L

.field public static final blacklist TIMESTAMP_JITTER_STDDEV_MILLIS:J = 0x10100000018L

.field public static final blacklist TYPE:J = 0x10900000001L

.field public static final blacklist UNDERRUNS:J = 0x10300000007L

.field public static final blacklist WARMUP_MILLIS_HIST:J = 0x10900000006L

.field public static final blacklist WORK_MILLIS_HIST:J = 0x10900000004L


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

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
