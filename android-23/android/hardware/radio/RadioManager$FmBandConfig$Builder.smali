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
.field private mAf:Z

.field private final mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private mRds:Z

.field private mStereo:Z

.field private mTa:Z


# direct methods
.method public constructor <init>(Landroid/hardware/radio/RadioManager$FmBandConfig;)V
    .locals 6
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$FmBandConfig;

    #@0
    .prologue
    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 903
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@5
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getRegion()I

    #@8
    move-result v1

    #@9
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getType()I

    #@c
    move-result v2

    #@d
    .line 904
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getLowerLimit()I

    #@10
    move-result v3

    #@11
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getUpperLimit()I

    #@14
    move-result v4

    #@15
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getSpacing()I

    #@18
    move-result v5

    #@19
    .line 903
    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    #@1c
    iput-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@1e
    .line 905
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getStereo()Z

    #@21
    move-result v0

    #@22
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    #@24
    .line 906
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getRds()Z

    #@27
    move-result v0

    #@28
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    #@2a
    .line 907
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getTa()Z

    #@2d
    move-result v0

    #@2e
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    #@30
    .line 908
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getAf()Z

    #@33
    move-result v0

    #@34
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    #@36
    .line 902
    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/RadioManager$FmBandDescriptor;)V
    .locals 6
    .param p1, "descriptor"    # Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    #@0
    .prologue
    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 889
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@5
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getRegion()I

    #@8
    move-result v1

    #@9
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getType()I

    #@c
    move-result v2

    #@d
    .line 890
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getLowerLimit()I

    #@10
    move-result v3

    #@11
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getUpperLimit()I

    #@14
    move-result v4

    #@15
    .line 891
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getSpacing()I

    #@18
    move-result v5

    #@19
    .line 889
    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    #@1c
    iput-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@1e
    .line 892
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isStereoSupported()Z

    #@21
    move-result v0

    #@22
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    #@24
    .line 893
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isRdsSupported()Z

    #@27
    move-result v0

    #@28
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    #@2a
    .line 894
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isTaSupported()Z

    #@2d
    move-result v0

    #@2e
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    #@30
    .line 895
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isAfSupported()Z

    #@33
    move-result v0

    #@34
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    #@36
    .line 888
    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/radio/RadioManager$FmBandConfig;
    .locals 10

    #@0
    .prologue
    .line 917
    new-instance v0, Landroid/hardware/radio/RadioManager$FmBandConfig;

    #@2
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@4
    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    #@7
    move-result v1

    #@8
    .line 918
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@a
    invoke-virtual {v2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    #@d
    move-result v2

    #@e
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@10
    invoke-virtual {v3}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    #@13
    move-result v3

    #@14
    .line 919
    iget-object v4, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@16
    invoke-virtual {v4}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    #@19
    move-result v4

    #@1a
    iget-object v5, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@1c
    invoke-virtual {v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    #@1f
    move-result v5

    #@20
    .line 920
    iget-boolean v6, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    #@22
    iget-boolean v7, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    #@24
    iget-boolean v8, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    #@26
    iget-boolean v9, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    #@28
    .line 917
    invoke-direct/range {v0 .. v9}, Landroid/hardware/radio/RadioManager$FmBandConfig;-><init>(IIIIIZZZZ)V

    #@2b
    .line 921
    .local v0, "config":Landroid/hardware/radio/RadioManager$FmBandConfig;
    return-object v0
.end method

.method public setAf(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 956
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    #@2
    .line 957
    return-object p0
.end method

.method public setRds(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 938
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    #@2
    .line 939
    return-object p0
.end method

.method public setStereo(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 929
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    #@2
    .line 930
    return-object p0
.end method

.method public setTa(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 947
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    #@2
    .line 948
    return-object p0
.end method
