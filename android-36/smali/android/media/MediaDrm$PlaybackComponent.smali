.class public final Landroid/media/MediaDrm$PlaybackComponent;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlaybackComponent"
.end annotation


# instance fields
.field private blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private final blacklist mSessionId:[B

.field final synthetic blacklist this$0:Landroid/media/MediaDrm;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaDrm;[B)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/MediaDrm;
    .param p2, "sessionId"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3067
    iput-object p1, p0, Landroid/media/MediaDrm$PlaybackComponent;->this$0:Landroid/media/MediaDrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3064
    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v0, p0, Landroid/media/MediaDrm$PlaybackComponent;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 3068
    iput-object p2, p0, Landroid/media/MediaDrm$PlaybackComponent;->mSessionId:[B

    .line 3069
    return-void
.end method


# virtual methods
.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 3095
    iget-object v0, p0, Landroid/media/MediaDrm$PlaybackComponent;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .registers 5
    .param p1, "logSessionId"    # Landroid/media/metrics/LogSessionId;

    .line 3082
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3083
    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3086
    iget-object v0, p0, Landroid/media/MediaDrm$PlaybackComponent;->this$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$PlaybackComponent;->mSessionId:[B

    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/media/MediaDrm;->-$$Nest$msetPlaybackId(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    .line 3087
    iput-object p1, p0, Landroid/media/MediaDrm$PlaybackComponent;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 3088
    return-void

    .line 3084
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playbackId is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
