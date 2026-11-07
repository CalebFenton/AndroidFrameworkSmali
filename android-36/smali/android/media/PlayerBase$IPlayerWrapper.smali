.class Landroid/media/PlayerBase$IPlayerWrapper;
.super Landroid/media/IPlayer$Stub;
.source "PlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlayerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPlayerWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mWeakPB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/PlayerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/media/PlayerBase;)V
    .registers 3
    .param p1, "pb"    # Landroid/media/PlayerBase;

    .line 380
    invoke-direct {p0}, Landroid/media/IPlayer$Stub;-><init>()V

    .line 381
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    .line 382
    return-void
.end method


# virtual methods
.method public blacklist applyVolumeShaper(Landroid/media/VolumeShaperConfiguration;Landroid/media/VolumeShaperOperation;)V
    .registers 6
    .param p1, "configuration"    # Landroid/media/VolumeShaperConfiguration;
    .param p2, "operation"    # Landroid/media/VolumeShaperOperation;

    .line 436
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 437
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_15

    .line 438
    invoke-static {p1}, Landroid/media/VolumeShaper$Configuration;->fromParcelable(Landroid/media/VolumeShaperConfiguration;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v1

    .line 439
    invoke-static {p2}, Landroid/media/VolumeShaper$Operation;->fromParcelable(Landroid/media/VolumeShaperOperation;)Landroid/media/VolumeShaper$Operation;

    move-result-object v2

    .line 438
    invoke-virtual {v0, v1, v2}, Landroid/media/PlayerBase;->playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    .line 441
    :cond_15
    return-void
.end method

.method public greylist-max-o pause()V
    .registers 2

    .line 394
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 395
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_d

    .line 396
    invoke-virtual {v0}, Landroid/media/PlayerBase;->playerPause()V

    .line 398
    :cond_d
    return-void
.end method

.method public greylist-max-o setPan(F)V
    .registers 3
    .param p1, "pan"    # F

    .line 418
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 419
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_d

    .line 420
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->baseSetPan(F)V

    .line 422
    :cond_d
    return-void
.end method

.method public greylist-max-o setStartDelayMs(I)V
    .registers 3
    .param p1, "delayMs"    # I

    .line 426
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 427
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_d

    .line 428
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->baseSetStartDelayMs(I)V

    .line 430
    :cond_d
    return-void
.end method

.method public greylist-max-o setVolume(F)V
    .registers 3
    .param p1, "vol"    # F

    .line 410
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 411
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_d

    .line 412
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->setVolumeMultiplier(F)V

    .line 414
    :cond_d
    return-void
.end method

.method public greylist-max-o start()V
    .registers 2

    .line 386
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 387
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_d

    .line 388
    invoke-virtual {v0}, Landroid/media/PlayerBase;->playerStart()V

    .line 390
    :cond_d
    return-void
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 402
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 403
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_d

    .line 404
    invoke-virtual {v0}, Landroid/media/PlayerBase;->playerStop()V

    .line 406
    :cond_d
    return-void
.end method
