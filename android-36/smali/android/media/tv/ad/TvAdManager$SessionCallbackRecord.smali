.class final Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
.super Ljava/lang/Object;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionCallbackRecord"
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mSession:Landroid/media/tv/ad/TvAdManager$Session;

.field private final blacklist mSessionCallback:Landroid/media/tv/ad/TvAdManager$SessionCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)Landroid/media/tv/ad/TvAdManager$Session;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)Landroid/media/tv/ad/TvAdManager$SessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/ad/TvAdManager$SessionCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager$SessionCallback;Landroid/os/Handler;)V
    .registers 3
    .param p1, "sessionCallback"    # Landroid/media/tv/ad/TvAdManager$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/ad/TvAdManager$SessionCallback;

    .line 1280
    iput-object p2, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    .line 1281
    return-void
.end method


# virtual methods
.method blacklist postLayoutSurface(IIII)V
    .registers 12
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1304
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$3;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "right":I
    .end local p4    # "bottom":I
    .local v3, "left":I
    .local v4, "top":I
    .local v5, "right":I
    .local v6, "bottom":I
    invoke-direct/range {v1 .. v6}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$3;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;IIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1310
    return-void
.end method

.method blacklist postRequestCurrentChannelUri()V
    .registers 3

    .line 1322
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$5;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$5;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1328
    return-void
.end method

.method blacklist postRequestCurrentTvInputId()V
    .registers 3

    .line 1340
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$7;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$7;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1346
    return-void
.end method

.method blacklist postRequestCurrentVideoBounds()V
    .registers 3

    .line 1313
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$4;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$4;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1319
    return-void
.end method

.method blacklist postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .line 1349
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p3    # "alias":Ljava/lang/String;
    .end local p4    # "data":[B
    .local v3, "id":Ljava/lang/String;
    .local v4, "algorithm":Ljava/lang/String;
    .local v5, "alias":Ljava/lang/String;
    .local v6, "data":[B
    invoke-direct/range {v1 .. v6}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1355
    return-void
.end method

.method blacklist postRequestTrackInfoList()V
    .registers 3

    .line 1331
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$6;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$6;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1337
    return-void
.end method

.method blacklist postSessionCreated(Landroid/media/tv/ad/TvAdManager$Session;)V
    .registers 4
    .param p1, "session"    # Landroid/media/tv/ad/TvAdManager$Session;

    .line 1284
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    .line 1285
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$1;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;Landroid/media/tv/ad/TvAdManager$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1291
    return-void
.end method

.method blacklist postSessionReleased()V
    .registers 3

    .line 1294
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$2;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$2;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1300
    return-void
.end method

.method blacklist postTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1358
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$9;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$9;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1366
    return-void
.end method
