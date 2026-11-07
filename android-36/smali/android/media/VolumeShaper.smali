.class public final Landroid/media/VolumeShaper;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Operation;,
        Landroid/media/VolumeShaper$Configuration;,
        Landroid/media/VolumeShaper$State;
    }
.end annotation


# instance fields
.field private greylist-max-o mId:I

.field private final greylist-max-o mWeakPlayerBase:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/PlayerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V
    .registers 4
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "playerBase"    # Landroid/media/PlayerBase;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    .line 57
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->defer()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper;->mId:I

    .line 58
    return-void
.end method

.method private greylist-max-o applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .registers 8
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "operation"    # Landroid/media/VolumeShaper$Operation;

    .line 175
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_45

    .line 176
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 177
    .local v0, "player":Landroid/media/PlayerBase;
    if-eqz v0, :cond_3d

    .line 180
    invoke-virtual {v0, p1, p2}, Landroid/media/PlayerBase;->playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    .line 181
    .local v0, "id":I
    nop

    .line 184
    if-gez v0, :cond_3c

    .line 186
    const/16 v1, -0x26

    .line 189
    .local v1, "VOLUME_SHAPER_INVALID_OPERATION":I
    const/16 v2, -0x26

    if-ne v0, v2, :cond_23

    .line 190
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "player or VolumeShaper deallocated"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid configuration or operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    .end local v1    # "VOLUME_SHAPER_INVALID_OPERATION":I
    :cond_3c
    return v0

    .line 178
    .local v0, "player":Landroid/media/PlayerBase;
    :cond_3d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "player deallocated"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    .end local v0    # "player":Landroid/media/PlayerBase;
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "uninitialized shaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getStatePlayer(I)Landroid/media/VolumeShaper$State;
    .registers 5
    .param p1, "id"    # I

    .line 206
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_26

    .line 207
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 208
    .local v0, "player":Landroid/media/PlayerBase;
    if-eqz v0, :cond_1e

    .line 211
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    .line 212
    .local v0, "state":Landroid/media/VolumeShaper$State;
    nop

    .line 215
    if-eqz v0, :cond_16

    .line 218
    return-object v0

    .line 216
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "shaper cannot be found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    .local v0, "player":Landroid/media/PlayerBase;
    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "player deallocated"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    .end local v0    # "player":Landroid/media/PlayerBase;
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "uninitialized shaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist apply(Landroid/media/VolumeShaper$Operation;)V
    .registers 4
    .param p1, "operation"    # Landroid/media/VolumeShaper$Operation;

    .line 81
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    iget v1, p0, Landroid/media/VolumeShaper;->mId:I

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    invoke-direct {p0, v0, p1}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    .line 82
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 147
    :try_start_0
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    iget v1, p0, Landroid/media/VolumeShaper;->mId:I

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    new-instance v1, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v1}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    .line 149
    invoke-virtual {v1}, Landroid/media/VolumeShaper$Operation$Builder;->terminate()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v1

    .line 147
    invoke-direct {p0, v0, v1}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_17} :catch_18

    .line 152
    goto :goto_19

    .line 150
    :catch_18
    move-exception v0

    .line 153
    :goto_19
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_22

    .line 154
    iget-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 156
    :cond_22
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 160
    invoke-virtual {p0}, Landroid/media/VolumeShaper;->close()V

    .line 161
    return-void
.end method

.method greylist-max-o getId()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/media/VolumeShaper;->mId:I

    return v0
.end method

.method public whitelist getVolume()F
    .registers 2

    .line 130
    iget v0, p0, Landroid/media/VolumeShaper;->mId:I

    invoke-direct {p0, v0}, Landroid/media/VolumeShaper;->getStatePlayer(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$State;->getVolume()F

    move-result v0

    return v0
.end method

.method public whitelist replace(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;Z)V
    .registers 6
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "operation"    # Landroid/media/VolumeShaper$Operation;
    .param p3, "join"    # Z

    .line 112
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0, p2}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    iget v1, p0, Landroid/media/VolumeShaper;->mId:I

    .line 114
    invoke-virtual {v0, v1, p3}, Landroid/media/VolumeShaper$Operation$Builder;->replace(IZ)Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    .line 112
    invoke-direct {p0, p1, v0}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper;->mId:I

    .line 115
    return-void
.end method
