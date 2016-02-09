.class final Landroid/media/tv/TvInputManager$SessionCallbackRecord;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionCallbackRecord"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mSession:Landroid/media/tv/TvInputManager$Session;

.field private final mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "sessionCallback"    # Landroid/media/tv/TvInputManager$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 428
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    #@5
    .line 429
    iput-object p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@7
    .line 427
    return-void
.end method


# virtual methods
.method postChannelRetuned(Landroid/net/Uri;)V
    .locals 2
    .param p1, "channelUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 452
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$3;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$3;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/net/Uri;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 451
    return-void
.end method

.method postContentAllowed()V
    .locals 2

    #@0
    .prologue
    .line 506
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$9;

    #@4
    invoke-direct {v1, p0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$9;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 505
    return-void
.end method

.method postContentBlocked(Landroid/media/tv/TvContentRating;)V
    .locals 2
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    #@0
    .prologue
    .line 515
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/TvContentRating;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 514
    return-void
.end method

.method postLayoutSurface(IIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 525
    iget-object v6, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;

    #@4
    move-object v1, p0

    #@5
    move v2, p1

    #@6
    move v3, p2

    #@7
    move v4, p3

    #@8
    move v5, p4

    #@9
    invoke-direct/range {v0 .. v5}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;IIII)V

    #@c
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@f
    .line 524
    return-void
.end method

.method postSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    #@0
    .prologue
    .line 433
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    .line 434
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@4
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;

    #@6
    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/TvInputManager$Session;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 432
    return-void
.end method

.method postSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventArgs"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 534
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;

    #@4
    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 533
    return-void
.end method

.method postSessionReleased()V
    .locals 2

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;

    #@4
    invoke-direct {v1, p0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 442
    return-void
.end method

.method postTimeShiftCurrentPositionChanged(J)V
    .locals 3
    .param p1, "timeMs"    # J

    #@0
    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$15;

    #@4
    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$15;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;J)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 560
    return-void
.end method

.method postTimeShiftStartPositionChanged(J)V
    .locals 3
    .param p1, "timeMs"    # J

    #@0
    .prologue
    .line 552
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;

    #@4
    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;J)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 551
    return-void
.end method

.method postTimeShiftStatusChanged(I)V
    .locals 2
    .param p1, "status"    # I

    #@0
    .prologue
    .line 543
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$13;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$13;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 542
    return-void
.end method

.method postTrackSelected(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 470
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;

    #@4
    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;ILjava/lang/String;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 469
    return-void
.end method

.method postTracksChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 461
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/util/List;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 460
    return-void
.end method

.method postVideoAvailable()V
    .locals 2

    #@0
    .prologue
    .line 488
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$7;

    #@4
    invoke-direct {v1, p0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$7;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 487
    return-void
.end method

.method postVideoSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 479
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$6;

    #@4
    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$6;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;II)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 478
    return-void
.end method

.method postVideoUnavailable(I)V
    .locals 2
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 497
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$8;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$8;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 496
    return-void
.end method
