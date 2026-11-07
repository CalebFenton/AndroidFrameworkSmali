.class public final Landroid/stats/mediametrics_message/MediametricsMessage$AudioRecordData;
.super Ljava/lang/Object;
.source "MediametricsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/mediametrics_message/MediametricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioRecordData"
.end annotation


# static fields
.field public static final blacklist ATTRIBUTES:J = 0x1090000000dL

.field public static final blacklist CHANNELS:J = 0x10500000005L

.field public static final blacklist CHANNEL_MASK:J = 0x1030000000eL

.field public static final blacklist COUNT:J = 0x10500000008L

.field public static final blacklist CREATED_MILLIS:J = 0x10300000006L

.field public static final blacklist DURATION_MILLIS:J = 0x10300000007L

.field public static final blacklist ENCODING:J = 0x10900000001L

.field public static final blacklist ERROR_CODE:J = 0x10500000009L

.field public static final blacklist ERROR_FUNCTION:J = 0x1090000000aL

.field public static final blacklist FRAME_COUNT:J = 0x1050000000cL

.field public static final blacklist LATENCY:J = 0x10500000003L

.field public static final blacklist PORT_ID:J = 0x1050000000bL

.field public static final blacklist SAMPLERATE:J = 0x10500000004L

.field public static final blacklist SOURCE:J = 0x10900000002L

.field public static final blacklist START_COUNT:J = 0x1030000000fL


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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
