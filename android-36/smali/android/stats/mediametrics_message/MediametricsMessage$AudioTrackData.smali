.class public final Landroid/stats/mediametrics_message/MediametricsMessage$AudioTrackData;
.super Ljava/lang/Object;
.source "MediametricsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/mediametrics_message/MediametricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioTrackData"
.end annotation


# static fields
.field public static final blacklist ATTRIBUTES:J = 0x1090000000bL

.field public static final blacklist CHANNEL_MASK:J = 0x10300000005L

.field public static final blacklist CONTENT_TYPE:J = 0x10900000002L

.field public static final blacklist ENCODING:J = 0x10900000009L

.field public static final blacklist FRAME_COUNT:J = 0x1050000000aL

.field public static final blacklist PORT_ID:J = 0x10500000008L

.field public static final blacklist SAMPLE_RATE:J = 0x10500000004L

.field public static final blacklist STARTUP_GLITCH:J = 0x10500000007L

.field public static final blacklist STREAM_TYPE:J = 0x10900000001L

.field public static final blacklist TRACK_USAGE:J = 0x10900000003L

.field public static final blacklist UNDERRUN_FRAMES:J = 0x10500000006L


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

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
