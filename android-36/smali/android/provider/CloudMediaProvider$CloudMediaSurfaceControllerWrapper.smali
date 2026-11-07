.class public Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;
.super Landroid/provider/ICloudMediaSurfaceController$Stub;
.source "CloudMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CloudMediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudMediaSurfaceControllerWrapper"
.end annotation


# instance fields
.field private final blacklist mSurfaceController:Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;


# direct methods
.method constructor blacklist <init>(Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;)V
    .registers 2
    .param p1, "surfaceController"    # Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;

    .line 1292
    invoke-direct {p0}, Landroid/provider/ICloudMediaSurfaceController$Stub;-><init>()V

    .line 1293
    iput-object p1, p0, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;->mSurfaceController:Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;

    .line 1294
    return-void
.end method


# virtual methods
.method public blacklist onConfigChange(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "config"    # Landroid/os/Bundle;

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config changed. Updated config params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudMediaProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iget-object v0, p0, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;->mSurfaceController:Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;

    invoke-virtual {v0, p1}, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;->onConfigChange(Landroid/os/Bundle;)V

    .line 1351
    return-void
.end method

.method public blacklist onDestroy()V
    .registers 3

    .line 1355
    const-string v0, "CloudMediaProvider"

    const-string v1, "Controller destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v0, p0, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;->mSurfaceController:Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;

    invoke-virtual {v0}, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;->onDestroy()V

    .line 1357
    return-void
.end method

.method public blacklist onMediaPause(I)V
    .registers 4
    .param p1, "surfaceId"    # I

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media paused. SurfaceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudMediaProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v0, p0, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;->mSurfaceController:Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;

    invoke-virtual {v0, p1}, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;->onMediaPause(I)V

    .line 1338
    return-void
.end method

.method public blacklist onMediaPlay(I)V
    .registers 4
    .param p1, "surfaceId"    # I

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media played. SurfaceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudMediaProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v0, p0, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;->mSurfaceController:Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;

    invoke-virtual {v0, p1}, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;->onMediaPlay(I)V

    .line 1332
    return-void
.end method

.method public blacklist onMediaSeekTo(IJ)V
    .registers 6
    .param p1, "surfaceId"    # I
    .param p2, "timestampMillis"    # J

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media seeked. SurfaceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Seek timestamp(ms): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudMediaProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v0, p0, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;->mSurfaceController:Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;

    invoke-virtual {v0, p1, p2, p3}, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;->onMediaSeekTo(IJ)V

    .line 1345
    return-void
.end method

.method public blacklist onPlayerCreate()V
    .registers 3

    .line 1298
    const-string v0, "CloudMediaProvider"

    const-string v1, "Creating player."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget-object v0, p0, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;->mSurfaceController:Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;

    invoke-virtual {v0}, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;->onPlayerCreate()V

    .line 1300
    return-void
.end method

.method public blacklist onPlayerRelease()V
    .registers 3

    .line 1304
    const-string v0, "CloudMediaProvider"

    const-string v1, "Releasing player."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v0, p0, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;->mSurfaceController:Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;

    invoke-virtual {v0}, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;->onPlayerRelease()V

    .line 1306
    return-void
.end method

.method public blacklist onSurfaceChanged(IIII)V
    .registers 7
    .param p1, "surfaceId"    # I
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface changed. SurfaceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudMediaProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v0, p0, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;->mSurfaceController:Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;->onSurfaceChanged(IIII)V

    .line 1320
    return-void
.end method

.method public blacklist onSurfaceCreated(ILandroid/view/Surface;Ljava/lang/String;)V
    .registers 6
    .param p1, "surfaceId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "mediaId"    # Ljava/lang/String;

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface prepared. SurfaceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". MediaId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudMediaProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object v0, p0, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;->mSurfaceController:Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;

    invoke-virtual {v0, p1, p2, p3}, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;->onSurfaceCreated(ILandroid/view/Surface;Ljava/lang/String;)V

    .line 1313
    return-void
.end method

.method public blacklist onSurfaceDestroyed(I)V
    .registers 4
    .param p1, "surfaceId"    # I

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface released. SurfaceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudMediaProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v0, p0, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;->mSurfaceController:Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;

    invoke-virtual {v0, p1}, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;->onSurfaceDestroyed(I)V

    .line 1326
    return-void
.end method
