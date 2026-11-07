.class public Landroid/hardware/radio/RadioManager$FmBandDescriptor;
.super Landroid/hardware/radio/RadioManager$BandDescriptor;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FmBandDescriptor"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$FmBandDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAf:Z

.field private final greylist-max-o mEa:Z

.field private final greylist-max-o mRds:Z

.field private final greylist-max-o mStereo:Z

.field private final greylist-max-o mTa:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 858
    new-instance v0, Landroid/hardware/radio/RadioManager$FmBandDescriptor$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$FmBandDescriptor$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(IIIIIZZZZZ)V
    .registers 12
    .param p1, "region"    # I
    .param p2, "type"    # I
    .param p3, "lowerLimit"    # I
    .param p4, "upperLimit"    # I
    .param p5, "spacing"    # I
    .param p6, "stereo"    # Z
    .param p7, "rds"    # Z
    .param p8, "ta"    # Z
    .param p9, "af"    # Z
    .param p10, "ea"    # Z

    .line 804
    invoke-direct/range {p0 .. p5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    .line 805
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "region":I
    .local v0, "spacing":I
    .local p2, "region":I
    .local p3, "type":I
    .local p4, "lowerLimit":I
    .local p5, "upperLimit":I
    iput-boolean p6, p1, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    .line 806
    iput-boolean p7, p1, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    .line 807
    iput-boolean p8, p1, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    .line 808
    iput-boolean p9, p1, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    .line 809
    iput-boolean p10, p1, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    .line 810
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 850
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2f

    move v0, v2

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_39

    move v1, v2

    :cond_39
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    .line 856
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 881
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 906
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 907
    return v0

    .line 908
    :cond_4
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 909
    return v2

    .line 910
    :cond_c
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    if-nez v1, :cond_11

    .line 911
    return v2

    .line 912
    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    .line 913
    .local v1, "other":Landroid/hardware/radio/RadioManager$FmBandDescriptor;
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isStereoSupported()Z

    move-result v4

    if-eq v3, v4, :cond_1d

    .line 914
    return v2

    .line 915
    :cond_1d
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isRdsSupported()Z

    move-result v4

    if-eq v3, v4, :cond_26

    .line 916
    return v2

    .line 917
    :cond_26
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isTaSupported()Z

    move-result v4

    if-eq v3, v4, :cond_2f

    .line 918
    return v2

    .line 919
    :cond_2f
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isAfSupported()Z

    move-result v4

    if-eq v3, v4, :cond_38

    .line 920
    return v2

    .line 921
    :cond_38
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isEaSupported()Z

    move-result v4

    if-eq v3, v4, :cond_41

    .line 922
    return v2

    .line 923
    :cond_41
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 894
    const/16 v0, 0x1f

    .line 895
    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->hashCode()I

    move-result v1

    .line 896
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    add-int/2addr v2, v3

    .line 897
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    add-int/2addr v1, v3

    .line 898
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    add-int/2addr v2, v3

    .line 899
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    add-int/2addr v1, v3

    .line 900
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    add-int/2addr v2, v3

    .line 901
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public whitelist isAfSupported()Z
    .registers 2

    .line 837
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    return v0
.end method

.method public whitelist isEaSupported()Z
    .registers 2

    .line 845
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    return v0
.end method

.method public whitelist isRdsSupported()Z
    .registers 2

    .line 824
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    return v0
.end method

.method public whitelist isStereoSupported()Z
    .registers 2

    .line 817
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    return v0
.end method

.method public whitelist isTaSupported()Z
    .registers 2

    .line 831
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FmBandDescriptor [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStereo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEa ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 871
    invoke-super {p0, p1, p2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 872
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 873
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 874
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 875
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 876
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 877
    return-void
.end method
