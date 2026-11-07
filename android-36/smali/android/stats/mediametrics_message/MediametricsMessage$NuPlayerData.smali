.class public final Landroid/stats/mediametrics_message/MediametricsMessage$NuPlayerData;
.super Ljava/lang/Object;
.source "MediametricsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/mediametrics_message/MediametricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NuPlayerData"
.end annotation


# static fields
.field public static final blacklist AUDIO_CODEC:J = 0x1090000000aL

.field public static final blacklist AUDIO_MIME:J = 0x10900000009L

.field public static final blacklist DATA_SOURCE_TYPE:J = 0x10900000010L

.field public static final blacklist DURATION_MILLIS:J = 0x1030000000bL

.field public static final blacklist ERROR:J = 0x1050000000dL

.field public static final blacklist ERROR_CODE:J = 0x1050000000eL

.field public static final blacklist ERROR_STATE:J = 0x1090000000fL

.field public static final blacklist FRAMERATE:J = 0x10100000008L

.field public static final blacklist FRAMES:J = 0x10300000006L

.field public static final blacklist FRAMES_DROPPED:J = 0x10300000007L

.field public static final blacklist FRAMES_DROPPED_STARTUP:J = 0x10300000014L

.field public static final blacklist HEIGHT:J = 0x10500000005L

.field public static final blacklist PLAYING_MILLIS:J = 0x1030000000cL

.field public static final blacklist REBUFFERING_MILLIS:J = 0x10300000011L

.field public static final blacklist REBUFFERS:J = 0x10500000012L

.field public static final blacklist REBUFFER_AT_EXIT:J = 0x10500000013L

.field public static final blacklist VIDEO_CODEC:J = 0x10900000003L

.field public static final blacklist VIDEO_MIME:J = 0x10900000002L

.field public static final blacklist WHICH_PLAYER:J = 0x10900000001L

.field public static final blacklist WIDTH:J = 0x10500000004L


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

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
