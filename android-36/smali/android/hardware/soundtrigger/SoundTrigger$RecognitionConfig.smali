.class public final Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAudioCapabilities:I

.field private final blacklist mCaptureRequested:Z

.field private final blacklist mData:[B

.field private final blacklist mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

.field private final blacklist mMultipleTriggersAllowed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .registers 1

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1571
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V
    .registers 11
    .param p1, "captureRequested"    # Z
    .param p2, "multipleTriggersAllowed"    # Z
    .param p3, "keyphrases"    # [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .param p4, "data"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1568
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "captureRequested":Z
    .end local p2    # "multipleTriggersAllowed":Z
    .end local p3    # "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .end local p4    # "data":[B
    .local v1, "captureRequested":Z
    .local v2, "multipleTriggersAllowed":Z
    .local v3, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .local v4, "data":[B
    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V

    .line 1569
    return-void
.end method

.method private constructor blacklist <init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V
    .registers 8
    .param p1, "captureRequested"    # Z
    .param p2, "multipleTriggersAllowed"    # Z
    .param p3, "keyphrases"    # [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .param p4, "data"    # [B
    .param p5, "audioCapabilities"    # I

    .line 1542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1543
    iput-boolean p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mCaptureRequested:Z

    .line 1544
    iput-boolean p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mMultipleTriggersAllowed:Z

    .line 1545
    const/4 v0, 0x0

    if-eqz p3, :cond_c

    move-object v1, p3

    goto :goto_e

    :cond_c
    new-array v1, v0, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    :goto_e
    iput-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 1546
    if-eqz p4, :cond_14

    move-object v0, p4

    goto :goto_16

    :cond_14
    new-array v0, v0, [B

    :goto_16
    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mData:[B

    .line 1547
    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mAudioCapabilities:I

    .line 1548
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BILandroid/hardware/soundtrigger/SoundTrigger-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V

    return-void
.end method

.method private static greylist-max-o fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .registers 7
    .param p0, "in"    # Landroid/os/Parcel;

    .line 1629
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1630
    .local v1, "captureRequested":Z
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1631
    .local v2, "multipleTriggersAllowed":Z
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1632
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 1633
    .local v3, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1634
    .local v4, "data":[B
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1635
    .local v5, "audioCapabilities":I
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1650
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1663
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1664
    return v0

    .line 1665
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1666
    return v1

    .line 1667
    :cond_8
    instance-of v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    if-nez v2, :cond_d

    .line 1668
    return v1

    .line 1669
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 1670
    .local v2, "other":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mCaptureRequested:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mCaptureRequested:Z

    if-eq v3, v4, :cond_17

    .line 1671
    return v1

    .line 1673
    :cond_17
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mMultipleTriggersAllowed:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mMultipleTriggersAllowed:Z

    if-eq v3, v4, :cond_1e

    .line 1674
    return v1

    .line 1676
    :cond_1e
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 1677
    return v1

    .line 1679
    :cond_29
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mData:[B

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mData:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_34

    .line 1680
    return v1

    .line 1682
    :cond_34
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mAudioCapabilities:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mAudioCapabilities:I

    if-eq v3, v4, :cond_3b

    .line 1683
    return v1

    .line 1685
    :cond_3b
    return v0
.end method

.method public blacklist getAudioCapabilities()I
    .registers 2

    .line 1625
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mAudioCapabilities:I

    return v0
.end method

.method public blacklist getData()[B
    .registers 2

    .line 1617
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mData:[B

    return-object v0
.end method

.method public blacklist getKeyphrases()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;"
        }
    .end annotation

    .line 1606
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 5

    .line 1690
    const/16 v0, 0x1f

    .line 1691
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1692
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mCaptureRequested:Z

    add-int/2addr v2, v3

    .line 1693
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mMultipleTriggersAllowed:Z

    add-int/2addr v1, v3

    .line 1694
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1695
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mData:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    .line 1696
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mAudioCapabilities:I

    add-int/2addr v2, v3

    .line 1697
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public blacklist isCaptureRequested()Z
    .registers 2

    .line 1587
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mCaptureRequested:Z

    return v0
.end method

.method public blacklist isMultipleTriggersAllowed()Z
    .registers 2

    .line 1597
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mMultipleTriggersAllowed:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionConfig [captureRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mCaptureRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", multipleTriggersAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mMultipleTriggersAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyphrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 1657
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mAudioCapabilities:I

    .line 1658
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1655
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1641
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mCaptureRequested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1642
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mMultipleTriggersAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1643
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1644
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1645
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mAudioCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    return-void
.end method
