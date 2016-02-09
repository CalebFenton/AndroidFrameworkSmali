.class public Landroid/hardware/radio/RadioManager$FmBandConfig;
.super Landroid/hardware/radio/RadioManager$BandConfig;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FmBandConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;,
        Landroid/hardware/radio/RadioManager$FmBandConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$FmBandConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAf:Z

.field private final mRds:Z

.field private final mStereo:Z

.field private final mTa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 812
    new-instance v0, Landroid/hardware/radio/RadioManager$FmBandConfig$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$FmBandConfig$1;-><init>()V

    #@5
    .line 811
    sput-object v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 752
    return-void
.end method

.method constructor <init>(IIIIIZZZZ)V
    .locals 0
    .param p1, "region"    # I
    .param p2, "type"    # I
    .param p3, "lowerLimit"    # I
    .param p4, "upperLimit"    # I
    .param p5, "spacing"    # I
    .param p6, "stereo"    # Z
    .param p7, "rds"    # Z
    .param p8, "ta"    # Z
    .param p9, "af"    # Z

    #@0
    .prologue
    .line 768
    invoke-direct/range {p0 .. p5}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(IIIII)V

    #@3
    .line 769
    iput-boolean p6, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    #@5
    .line 770
    iput-boolean p7, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    #@7
    .line 771
    iput-boolean p8, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    #@9
    .line 772
    iput-boolean p9, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    #@b
    .line 767
    return-void
.end method

.method constructor <init>(Landroid/hardware/radio/RadioManager$FmBandDescriptor;)V
    .locals 1
    .param p1, "descriptor"    # Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    #@0
    .prologue
    .line 759
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/hardware/radio/RadioManager$BandDescriptor;)V

    #@3
    .line 760
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isStereoSupported()Z

    #@6
    move-result v0

    #@7
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    #@9
    .line 761
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isRdsSupported()Z

    #@c
    move-result v0

    #@d
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    #@f
    .line 762
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isTaSupported()Z

    #@12
    move-result v0

    #@13
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    #@15
    .line 763
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isAfSupported()Z

    #@18
    move-result v0

    #@19
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    #@1b
    .line 758
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 804
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$BandConfig;)V

    #@6
    .line 805
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@9
    move-result v0

    #@a
    if-ne v0, v1, :cond_0

    #@c
    move v0, v1

    #@d
    :goto_0
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    #@f
    .line 806
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@12
    move-result v0

    #@13
    if-ne v0, v1, :cond_1

    #@15
    move v0, v1

    #@16
    :goto_1
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    #@18
    .line 807
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@1b
    move-result v0

    #@1c
    if-ne v0, v1, :cond_2

    #@1e
    move v0, v1

    #@1f
    :goto_2
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    #@21
    .line 808
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@24
    move-result v0

    #@25
    if-ne v0, v1, :cond_3

    #@27
    :goto_3
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    #@29
    .line 803
    return-void

    #@2a
    :cond_0
    move v0, v2

    #@2b
    .line 805
    goto :goto_0

    #@2c
    :cond_1
    move v0, v2

    #@2d
    .line 806
    goto :goto_1

    #@2e
    :cond_2
    move v0, v2

    #@2f
    .line 807
    goto :goto_2

    #@30
    :cond_3
    move v1, v2

    #@31
    .line 808
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$FmBandConfig;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 833
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 856
    if-ne p0, p1, :cond_0

    #@4
    .line 857
    return v4

    #@5
    .line 858
    :cond_0
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    .line 859
    return v3

    #@c
    .line 860
    :cond_1
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$FmBandConfig;

    #@e
    if-nez v1, :cond_2

    #@10
    .line 861
    return v3

    #@11
    :cond_2
    move-object v0, p1

    #@12
    .line 862
    check-cast v0, Landroid/hardware/radio/RadioManager$FmBandConfig;

    #@14
    .line 863
    .local v0, "other":Landroid/hardware/radio/RadioManager$FmBandConfig;
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    #@16
    iget-boolean v2, v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    #@18
    if-eq v1, v2, :cond_3

    #@1a
    .line 864
    return v3

    #@1b
    .line 865
    :cond_3
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    #@1d
    iget-boolean v2, v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    #@1f
    if-eq v1, v2, :cond_4

    #@21
    .line 866
    return v3

    #@22
    .line 867
    :cond_4
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    #@24
    iget-boolean v2, v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    #@26
    if-eq v1, v2, :cond_5

    #@28
    .line 868
    return v3

    #@29
    .line 869
    :cond_5
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    #@2b
    iget-boolean v2, v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    #@2d
    if-eq v1, v2, :cond_6

    #@2f
    .line 870
    return v3

    #@30
    .line 871
    :cond_6
    return v4
.end method

.method public getAf()Z
    .locals 1

    #@0
    .prologue
    .line 800
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    #@2
    return v0
.end method

.method public getRds()Z
    .locals 1

    #@0
    .prologue
    .line 786
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    #@2
    return v0
.end method

.method public getStereo()Z
    .locals 1

    #@0
    .prologue
    .line 779
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    #@2
    return v0
.end method

.method public getTa()Z
    .locals 1

    #@0
    .prologue
    .line 793
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 845
    const/16 v0, 0x1f

    #@4
    .line 846
    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandConfig;->hashCode()I

    #@7
    move-result v1

    #@8
    .line 847
    .local v1, "result":I
    mul-int/lit8 v5, v1, 0x1f

    #@a
    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    #@c
    if-eqz v2, :cond_0

    #@e
    move v2, v3

    #@f
    :goto_0
    add-int v1, v5, v2

    #@11
    .line 848
    mul-int/lit8 v5, v1, 0x1f

    #@13
    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    #@15
    if-eqz v2, :cond_1

    #@17
    move v2, v3

    #@18
    :goto_1
    add-int v1, v5, v2

    #@1a
    .line 849
    mul-int/lit8 v5, v1, 0x1f

    #@1c
    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    #@1e
    if-eqz v2, :cond_2

    #@20
    move v2, v3

    #@21
    :goto_2
    add-int v1, v5, v2

    #@23
    .line 850
    mul-int/lit8 v2, v1, 0x1f

    #@25
    iget-boolean v5, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    #@27
    if-eqz v5, :cond_3

    #@29
    :goto_3
    add-int v1, v2, v3

    #@2b
    .line 851
    return v1

    #@2c
    :cond_0
    move v2, v4

    #@2d
    .line 847
    goto :goto_0

    #@2e
    :cond_1
    move v2, v4

    #@2f
    .line 848
    goto :goto_1

    #@30
    :cond_2
    move v2, v4

    #@31
    .line 849
    goto :goto_2

    #@32
    :cond_3
    move v3, v4

    #@33
    .line 850
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "FmBandConfig ["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandConfig;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 839
    const-string/jumbo v1, ", mStereo="

    #@17
    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 839
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    #@1d
    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 839
    const-string/jumbo v1, ", mRds="

    #@24
    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 839
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    #@2a
    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 839
    const-string/jumbo v1, ", mTa="

    #@31
    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 839
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    #@37
    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 840
    const-string/jumbo v1, ", mAf="

    #@3e
    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    .line 840
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    #@44
    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 840
    const-string/jumbo v1, "]"

    #@4b
    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 824
    invoke-super {p0, p1, p2}, Landroid/hardware/radio/RadioManager$BandConfig;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 825
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    move v0, v1

    #@a
    :goto_0
    int-to-byte v0, v0

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@e
    .line 826
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    move v0, v1

    #@13
    :goto_1
    int-to-byte v0, v0

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@17
    .line 827
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    #@19
    if-eqz v0, :cond_2

    #@1b
    move v0, v1

    #@1c
    :goto_2
    int-to-byte v0, v0

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@20
    .line 828
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    #@22
    if-eqz v0, :cond_3

    #@24
    :goto_3
    int-to-byte v0, v1

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@28
    .line 823
    return-void

    #@29
    :cond_0
    move v0, v2

    #@2a
    .line 825
    goto :goto_0

    #@2b
    :cond_1
    move v0, v2

    #@2c
    .line 826
    goto :goto_1

    #@2d
    :cond_2
    move v0, v2

    #@2e
    .line 827
    goto :goto_2

    #@2f
    :cond_3
    move v1, v2

    #@30
    .line 828
    goto :goto_3
.end method
