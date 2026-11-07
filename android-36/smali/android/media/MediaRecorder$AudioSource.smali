.class public final Landroid/media/MediaRecorder$AudioSource;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioSource"
.end annotation


# static fields
.field public static final greylist-max-o AUDIO_SOURCE_INVALID:I = -0x1

.field public static final whitelist CAMCORDER:I = 0x5

.field public static final whitelist DEFAULT:I = 0x0

.field public static final whitelist ECHO_REFERENCE:I = 0x7cd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HOTWORD:I = 0x7cf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MIC:I = 0x1

.field public static final whitelist RADIO_TUNER:I = 0x7ce
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REMOTE_SUBMIX:I = 0x8

.field public static final whitelist ULTRASOUND:I = 0x7d0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UNPROCESSED:I = 0x9

.field public static final whitelist VOICE_CALL:I = 0x4

.field public static final whitelist VOICE_COMMUNICATION:I = 0x7

.field public static final whitelist VOICE_DOWNLINK:I = 0x3

.field public static final whitelist VOICE_PERFORMANCE:I = 0xa

.field public static final whitelist VOICE_RECOGNITION:I = 0x6

.field public static final whitelist VOICE_UPLINK:I = 0x2


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaRecorder;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/MediaRecorder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
