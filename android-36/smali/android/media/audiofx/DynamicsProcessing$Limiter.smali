.class public final Landroid/media/audiofx/DynamicsProcessing$Limiter;
.super Landroid/media/audiofx/DynamicsProcessing$Stage;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Limiter"
.end annotation


# instance fields
.field private greylist-max-o mAttackTime:F

.field private greylist-max-o mLinkGroup:I

.field private greylist-max-o mPostGain:F

.field private greylist-max-o mRatio:F

.field private greylist-max-o mReleaseTime:F

.field private greylist-max-o mThreshold:F


# direct methods
.method public constructor whitelist <init>(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .registers 4
    .param p1, "cfg"    # Landroid/media/audiofx/DynamicsProcessing$Limiter;

    .line 933
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isInUse()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Stage;-><init>(ZZ)V

    .line 934
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mLinkGroup:I

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mLinkGroup:I

    .line 935
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mAttackTime:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mAttackTime:F

    .line 936
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mReleaseTime:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mReleaseTime:F

    .line 937
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mRatio:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mRatio:F

    .line 938
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mThreshold:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mThreshold:F

    .line 939
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mPostGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mPostGain:F

    .line 940
    return-void
.end method

.method public constructor whitelist <init>(ZZIFFFFF)V
    .registers 9
    .param p1, "inUse"    # Z
    .param p2, "enabled"    # Z
    .param p3, "linkGroup"    # I
    .param p4, "attackTime"    # F
    .param p5, "releaseTime"    # F
    .param p6, "ratio"    # F
    .param p7, "threshold"    # F
    .param p8, "postGain"    # F

    .line 919
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Stage;-><init>(ZZ)V

    .line 920
    iput p3, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mLinkGroup:I

    .line 921
    iput p4, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mAttackTime:F

    .line 922
    iput p5, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mReleaseTime:F

    .line 923
    iput p6, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mRatio:F

    .line 924
    iput p7, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mThreshold:F

    .line 925
    iput p8, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mPostGain:F

    .line 926
    return-void
.end method


# virtual methods
.method public whitelist getAttackTime()F
    .registers 2

    .line 971
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mAttackTime:F

    return v0
.end method

.method public whitelist getLinkGroup()I
    .registers 2

    .line 961
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mLinkGroup:I

    return v0
.end method

.method public whitelist getPostGain()F
    .registers 2

    .line 1014
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mPostGain:F

    return v0
.end method

.method public whitelist getRatio()F
    .registers 2

    .line 991
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mRatio:F

    return v0
.end method

.method public whitelist getReleaseTime()F
    .registers 2

    .line 981
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mReleaseTime:F

    return v0
.end method

.method public whitelist getThreshold()F
    .registers 2

    .line 1002
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mThreshold:F

    return v0
.end method

.method public whitelist setAttackTime(F)V
    .registers 2
    .param p1, "attackTime"    # F

    .line 976
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mAttackTime:F

    return-void
.end method

.method public whitelist setLinkGroup(I)V
    .registers 2
    .param p1, "linkGroup"    # I

    .line 966
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mLinkGroup:I

    return-void
.end method

.method public whitelist setPostGain(F)V
    .registers 2
    .param p1, "postGain"    # F

    .line 1020
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mPostGain:F

    return-void
.end method

.method public whitelist setRatio(F)V
    .registers 2
    .param p1, "ratio"    # F

    .line 996
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mRatio:F

    return-void
.end method

.method public whitelist setReleaseTime(F)V
    .registers 2
    .param p1, "releaseTime"    # F

    .line 986
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mReleaseTime:F

    return-void
.end method

.method public whitelist setThreshold(F)V
    .registers 2
    .param p1, "threshold"    # F

    .line 1008
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mThreshold:F

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 945
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$Stage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 947
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mLinkGroup:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " LinkGroup: %d (group)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mAttackTime:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " AttackTime: %f (ms)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mReleaseTime:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " ReleaseTime: %f (ms)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mRatio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " Ratio: 1:%f\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mThreshold:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " Threshold: %f (dB)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Limiter;->mPostGain:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " PostGain: %f (dB)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    :cond_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
