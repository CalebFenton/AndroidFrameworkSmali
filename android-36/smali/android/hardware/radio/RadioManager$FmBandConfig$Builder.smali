.class public Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$FmBandConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAf:Z

.field private final greylist-max-o mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private greylist-max-o mEa:Z

.field private greylist-max-o mRds:Z

.field private greylist-max-o mStereo:Z

.field private greylist-max-o mTa:Z


# direct methods
.method public constructor whitelist <init>(Landroid/hardware/radio/RadioManager$FmBandConfig;)V
    .registers 8
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$FmBandConfig;

    .line 1316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1317
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getType()I

    move-result v2

    .line 1318
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getLowerLimit()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getUpperLimit()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getSpacing()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1319
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getStereo()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    .line 1320
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getRds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    .line 1321
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getTa()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    .line 1322
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getAf()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    .line 1323
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getEa()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mEa:Z

    .line 1324
    return-void
.end method

.method public constructor whitelist <init>(Landroid/hardware/radio/RadioManager$FmBandDescriptor;)V
    .registers 8
    .param p1, "descriptor"    # Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    .line 1301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1302
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getType()I

    move-result v2

    .line 1303
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getLowerLimit()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getUpperLimit()I

    move-result v4

    .line 1304
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getSpacing()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1305
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isStereoSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    .line 1306
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isRdsSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    .line 1307
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isTaSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    .line 1308
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isAfSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    .line 1309
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isEaSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mEa:Z

    .line 1310
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/radio/RadioManager$FmBandConfig;
    .registers 12

    .line 1332
    new-instance v0, Landroid/hardware/radio/RadioManager$FmBandConfig;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1333
    invoke-virtual {v2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v3}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1334
    invoke-virtual {v4}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v4

    iget-object v5, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v5

    iget-boolean v6, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    iget-boolean v7, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    iget-boolean v8, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    iget-boolean v9, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    iget-boolean v10, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mEa:Z

    invoke-direct/range {v0 .. v10}, Landroid/hardware/radio/RadioManager$FmBandConfig;-><init>(IIIIIZZZZZ)V

    .line 1336
    .local v0, "config":Landroid/hardware/radio/RadioManager$FmBandConfig;
    return-object v0
.end method

.method public whitelist setAf(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .registers 2
    .param p1, "state"    # Z

    .line 1375
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    .line 1376
    return-object p0
.end method

.method public whitelist setEa(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .registers 2
    .param p1, "state"    # Z

    .line 1385
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mEa:Z

    .line 1386
    return-object p0
.end method

.method public whitelist setRds(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .registers 2
    .param p1, "state"    # Z

    .line 1355
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    .line 1356
    return-object p0
.end method

.method public whitelist setStereo(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .registers 2
    .param p1, "state"    # Z

    .line 1345
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    .line 1346
    return-object p0
.end method

.method public whitelist setTa(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .registers 2
    .param p1, "state"    # Z

    .line 1365
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    .line 1366
    return-object p0
.end method
