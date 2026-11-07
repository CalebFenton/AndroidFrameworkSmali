.class public Landroid/media/soundtrigger/SoundTriggerManager$Model;
.super Ljava/lang/Object;
.source "SoundTriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Model"
.end annotation


# instance fields
.field private greylist-max-o mGenericSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    .registers 2
    .param p1, "soundTriggerModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerManager$Model;->mGenericSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 331
    return-void
.end method

.method public static whitelist create(Ljava/util/UUID;Ljava/util/UUID;[B)Landroid/media/soundtrigger/SoundTriggerManager$Model;
    .registers 4
    .param p0, "modelUuid"    # Ljava/util/UUID;
    .param p1, "vendorUuid"    # Ljava/util/UUID;
    .param p2, "data"    # [B

    .line 362
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Landroid/media/soundtrigger/SoundTriggerManager$Model;->create(Ljava/util/UUID;Ljava/util/UUID;[BI)Landroid/media/soundtrigger/SoundTriggerManager$Model;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist create(Ljava/util/UUID;Ljava/util/UUID;[BI)Landroid/media/soundtrigger/SoundTriggerManager$Model;
    .registers 6
    .param p0, "modelUuid"    # Ljava/util/UUID;
    .param p1, "vendorUuid"    # Ljava/util/UUID;
    .param p2, "data"    # [B
    .param p3, "version"    # I

    .line 345
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerManager$Model;

    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[BI)V

    invoke-direct {v0, v1}, Landroid/media/soundtrigger/SoundTriggerManager$Model;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V

    return-object v0
.end method


# virtual methods
.method greylist-max-o getGenericSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager$Model;->mGenericSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    return-object v0
.end method

.method public whitelist getModelData()[B
    .registers 2

    .line 401
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager$Model;->mGenericSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getModelUuid()Ljava/util/UUID;
    .registers 2

    .line 372
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager$Model;->mGenericSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .registers 2

    .line 418
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager$Model;->mGenericSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    return-object v0
.end method

.method public whitelist getVendorUuid()Ljava/util/UUID;
    .registers 2

    .line 382
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager$Model;->mGenericSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 391
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager$Model;->mGenericSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getVersion()I

    move-result v0

    return v0
.end method
