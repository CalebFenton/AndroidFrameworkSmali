.class public Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$AmBandConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private mStereo:Z


# direct methods
.method public constructor <init>(Landroid/hardware/radio/RadioManager$AmBandConfig;)V
    .locals 6
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$AmBandConfig;

    #@0
    .prologue
    .line 1105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1106
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@5
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getRegion()I

    #@8
    move-result v1

    #@9
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getType()I

    #@c
    move-result v2

    #@d
    .line 1107
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getLowerLimit()I

    #@10
    move-result v3

    #@11
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getUpperLimit()I

    #@14
    move-result v4

    #@15
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getSpacing()I

    #@18
    move-result v5

    #@19
    .line 1106
    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    #@1c
    iput-object v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@1e
    .line 1108
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getStereo()Z

    #@21
    move-result v0

    #@22
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    #@24
    .line 1105
    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/RadioManager$AmBandDescriptor;)V
    .locals 6
    .param p1, "descriptor"    # Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    #@0
    .prologue
    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1095
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@5
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    #@8
    move-result v1

    #@9
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    #@c
    move-result v2

    #@d
    .line 1096
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    #@10
    move-result v3

    #@11
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    #@14
    move-result v4

    #@15
    .line 1097
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    #@18
    move-result v5

    #@19
    .line 1095
    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    #@1c
    iput-object v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@1e
    .line 1098
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->isStereoSupported()Z

    #@21
    move-result v0

    #@22
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    #@24
    .line 1094
    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/radio/RadioManager$AmBandConfig;
    .locals 7

    #@0
    .prologue
    .line 1117
    new-instance v0, Landroid/hardware/radio/RadioManager$AmBandConfig;

    #@2
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@4
    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    #@7
    move-result v1

    #@8
    .line 1118
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@a
    invoke-virtual {v2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    #@d
    move-result v2

    #@e
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@10
    invoke-virtual {v3}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    #@13
    move-result v3

    #@14
    .line 1119
    iget-object v4, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@16
    invoke-virtual {v4}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    #@19
    move-result v4

    #@1a
    iget-object v5, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@1c
    invoke-virtual {v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    #@1f
    move-result v5

    #@20
    .line 1120
    iget-boolean v6, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    #@22
    .line 1117
    invoke-direct/range {v0 .. v6}, Landroid/hardware/radio/RadioManager$AmBandConfig;-><init>(IIIIIZ)V

    #@25
    .line 1121
    .local v0, "config":Landroid/hardware/radio/RadioManager$AmBandConfig;
    return-object v0
.end method

.method public setStereo(Z)Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1129
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    #@2
    .line 1130
    return-object p0
.end method
