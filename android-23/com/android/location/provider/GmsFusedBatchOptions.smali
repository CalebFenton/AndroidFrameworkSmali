.class public Lcom/android/location/provider/GmsFusedBatchOptions;
.super Ljava/lang/Object;
.source "GmsFusedBatchOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;,
        Lcom/android/location/provider/GmsFusedBatchOptions$BatchFlags;
    }
.end annotation


# instance fields
.field private mOptions:Landroid/location/FusedBatchOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    new-instance v0, Landroid/location/FusedBatchOptions;

    #@5
    invoke-direct {v0}, Landroid/location/FusedBatchOptions;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@a
    .line 24
    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    invoke-virtual {v0}, Landroid/location/FusedBatchOptions;->getFlags()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaxPowerAllocationInMW()D
    .locals 2

    #@0
    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    invoke-virtual {v0}, Landroid/location/FusedBatchOptions;->getMaxPowerAllocationInMW()D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getParcelableOptions()Landroid/location/FusedBatchOptions;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    return-object v0
.end method

.method public getPeriodInNS()J
    .locals 2

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    invoke-virtual {v0}, Landroid/location/FusedBatchOptions;->getPeriodInNS()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getSmallestDisplacementMeters()F
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    invoke-virtual {v0}, Landroid/location/FusedBatchOptions;->getSmallestDisplacementMeters()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSourcesToUse()I
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    invoke-virtual {v0}, Landroid/location/FusedBatchOptions;->getSourcesToUse()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/FusedBatchOptions;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSourceToUseSet(I)Z
    .locals 1
    .param p1, "source"    # I

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/FusedBatchOptions;->isSourceToUseSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public resetFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/FusedBatchOptions;->resetFlag(I)V

    #@5
    .line 74
    return-void
.end method

.method public resetSourceToUse(I)V
    .locals 1
    .param p1, "source"    # I

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/FusedBatchOptions;->resetSourceToUse(I)V

    #@5
    .line 58
    return-void
.end method

.method public setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/FusedBatchOptions;->setFlag(I)V

    #@5
    .line 70
    return-void
.end method

.method public setMaxPowerAllocationInMW(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/location/FusedBatchOptions;->setMaxPowerAllocationInMW(D)V

    #@5
    .line 30
    return-void
.end method

.method public setPeriodInNS(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/location/FusedBatchOptions;->setPeriodInNS(J)V

    #@5
    .line 38
    return-void
.end method

.method public setSmallestDisplacementMeters(F)V
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/FusedBatchOptions;->setSmallestDisplacementMeters(F)V

    #@5
    .line 46
    return-void
.end method

.method public setSourceToUse(I)V
    .locals 1
    .param p1, "source"    # I

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/location/provider/GmsFusedBatchOptions;->mOptions:Landroid/location/FusedBatchOptions;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/FusedBatchOptions;->setSourceToUse(I)V

    #@5
    .line 54
    return-void
.end method
