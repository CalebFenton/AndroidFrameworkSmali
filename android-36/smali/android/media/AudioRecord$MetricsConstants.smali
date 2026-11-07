.class public final Landroid/media/AudioRecord$MetricsConstants;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetricsConstants"
.end annotation


# static fields
.field public static final blacklist ATTRIBUTES:Ljava/lang/String; = "android.media.audiorecord.attributes"

.field public static final whitelist CHANNELS:Ljava/lang/String; = "android.media.audiorecord.channels"

.field public static final blacklist CHANNEL_MASK:Ljava/lang/String; = "android.media.audiorecord.channelMask"

.field public static final blacklist DURATION_MS:Ljava/lang/String; = "android.media.audiorecord.durationMs"

.field public static final whitelist ENCODING:Ljava/lang/String; = "android.media.audiorecord.encoding"

.field public static final blacklist FRAME_COUNT:Ljava/lang/String; = "android.media.audiorecord.frameCount"

.field public static final whitelist LATENCY:Ljava/lang/String; = "android.media.audiorecord.latency"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist MM_PREFIX:Ljava/lang/String; = "android.media.audiorecord."

.field public static final blacklist PORT_ID:Ljava/lang/String; = "android.media.audiorecord.portId"

.field public static final whitelist SAMPLERATE:Ljava/lang/String; = "android.media.audiorecord.samplerate"

.field public static final whitelist SOURCE:Ljava/lang/String; = "android.media.audiorecord.source"

.field public static final blacklist START_COUNT:Ljava/lang/String; = "android.media.audiorecord.startCount"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
