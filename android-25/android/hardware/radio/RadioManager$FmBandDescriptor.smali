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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$FmBandDescriptor$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$FmBandDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAf:Z

.field private final mEa:Z

.field private final mRds:Z

.field private final mStereo:Z

.field private final mTa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 515
    new-instance v0, Landroid/hardware/radio/RadioManager$FmBandDescriptor$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$FmBandDescriptor$1;-><init>()V

    #@5
    .line 514
    sput-object v0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 455
    return-void
.end method

.method constructor <init>(IIIIIZZZZZ)V
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
    .param p10, "ea"    # Z

    #@0
    .prologue
    .line 464
    invoke-direct/range {p0 .. p5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    #@3
    .line 465
    iput-boolean p6, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    #@5
    .line 466
    iput-boolean p7, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    #@7
    .line 467
    iput-boolean p8, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    #@9
    .line 468
    iput-boolean p9, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    #@b
    .line 469
    iput-boolean p10, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    #@d
    .line 463
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
    .line 506
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$BandDescriptor;)V

    #@6
    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@9
    move-result v0

    #@a
    if-ne v0, v1, :cond_0

    #@c
    move v0, v1

    #@d
    :goto_0
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    #@f
    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@12
    move-result v0

    #@13
    if-ne v0, v1, :cond_1

    #@15
    move v0, v1

    #@16
    :goto_1
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    #@18
    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@1b
    move-result v0

    #@1c
    if-ne v0, v1, :cond_2

    #@1e
    move v0, v1

    #@1f
    :goto_2
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    #@21
    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@24
    move-result v0

    #@25
    if-ne v0, v1, :cond_3

    #@27
    move v0, v1

    #@28
    :goto_3
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    #@2a
    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@2d
    move-result v0

    #@2e
    if-ne v0, v1, :cond_4

    #@30
    :goto_4
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    #@32
    .line 505
    return-void

    #@33
    :cond_0
    move v0, v2

    #@34
    .line 507
    goto :goto_0

    #@35
    :cond_1
    move v0, v2

    #@36
    .line 508
    goto :goto_1

    #@37
    :cond_2
    move v0, v2

    #@38
    .line 509
    goto :goto_2

    #@39
    :cond_3
    move v0, v2

    #@3a
    .line 510
    goto :goto_3

    #@3b
    :cond_4
    move v1, v2

    #@3c
    .line 511
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$FmBandDescriptor;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 537
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
    .line 561
    if-ne p0, p1, :cond_0

    #@4
    .line 562
    return v4

    #@5
    .line 563
    :cond_0
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    .line 564
    return v3

    #@c
    .line 565
    :cond_1
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    #@e
    if-nez v1, :cond_2

    #@10
    .line 566
    return v3

    #@11
    :cond_2
    move-object v0, p1

    #@12
    .line 567
    check-cast v0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    #@14
    .line 568
    .local v0, "other":Landroid/hardware/radio/RadioManager$FmBandDescriptor;
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    #@16
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isStereoSupported()Z

    #@19
    move-result v2

    #@1a
    if-eq v1, v2, :cond_3

    #@1c
    .line 569
    return v3

    #@1d
    .line 570
    :cond_3
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    #@1f
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isRdsSupported()Z

    #@22
    move-result v2

    #@23
    if-eq v1, v2, :cond_4

    #@25
    .line 571
    return v3

    #@26
    .line 572
    :cond_4
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    #@28
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isTaSupported()Z

    #@2b
    move-result v2

    #@2c
    if-eq v1, v2, :cond_5

    #@2e
    .line 573
    return v3

    #@2f
    .line 574
    :cond_5
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    #@31
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isAfSupported()Z

    #@34
    move-result v2

    #@35
    if-eq v1, v2, :cond_6

    #@37
    .line 575
    return v3

    #@38
    .line 576
    :cond_6
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    #@3a
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isEaSupported()Z

    #@3d
    move-result v2

    #@3e
    if-eq v1, v2, :cond_7

    #@40
    .line 577
    return v3

    #@41
    .line 578
    :cond_7
    return v4
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 549
    const/16 v0, 0x1f

    #@4
    .line 550
    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->hashCode()I

    #@7
    move-result v1

    #@8
    .line 551
    .local v1, "result":I
    mul-int/lit8 v5, v1, 0x1f

    #@a
    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    #@c
    if-eqz v2, :cond_0

    #@e
    move v2, v3

    #@f
    :goto_0
    add-int v1, v5, v2

    #@11
    .line 552
    mul-int/lit8 v5, v1, 0x1f

    #@13
    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    #@15
    if-eqz v2, :cond_1

    #@17
    move v2, v3

    #@18
    :goto_1
    add-int v1, v5, v2

    #@1a
    .line 553
    mul-int/lit8 v5, v1, 0x1f

    #@1c
    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    #@1e
    if-eqz v2, :cond_2

    #@20
    move v2, v3

    #@21
    :goto_2
    add-int v1, v5, v2

    #@23
    .line 554
    mul-int/lit8 v5, v1, 0x1f

    #@25
    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    #@27
    if-eqz v2, :cond_3

    #@29
    move v2, v3

    #@2a
    :goto_3
    add-int v1, v5, v2

    #@2c
    .line 555
    mul-int/lit8 v2, v1, 0x1f

    #@2e
    iget-boolean v5, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    #@30
    if-eqz v5, :cond_4

    #@32
    :goto_4
    add-int v1, v2, v3

    #@34
    .line 556
    return v1

    #@35
    :cond_0
    move v2, v4

    #@36
    .line 551
    goto :goto_0

    #@37
    :cond_1
    move v2, v4

    #@38
    .line 552
    goto :goto_1

    #@39
    :cond_2
    move v2, v4

    #@3a
    .line 553
    goto :goto_2

    #@3b
    :cond_3
    move v2, v4

    #@3c
    .line 554
    goto :goto_3

    #@3d
    :cond_4
    move v3, v4

    #@3e
    .line 555
    goto :goto_4
.end method

.method public isAfSupported()Z
    .locals 1

    #@0
    .prologue
    .line 494
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    #@2
    return v0
.end method

.method public isEaSupported()Z
    .locals 1

    #@0
    .prologue
    .line 501
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    #@2
    return v0
.end method

.method public isRdsSupported()Z
    .locals 1

    #@0
    .prologue
    .line 482
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    #@2
    return v0
.end method

.method public isStereoSupported()Z
    .locals 1

    #@0
    .prologue
    .line 476
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    #@2
    return v0
.end method

.method public isTaSupported()Z
    .locals 1

    #@0
    .prologue
    .line 488
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "FmBandDescriptor [ "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, " mStereo="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 543
    const-string/jumbo v1, ", mRds="

    #@24
    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 543
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

    #@2a
    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 543
    const-string/jumbo v1, ", mTa="

    #@31
    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 543
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

    #@37
    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 543
    const-string/jumbo v1, ", mAf="

    #@3e
    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    .line 543
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    #@44
    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 544
    const-string/jumbo v1, ", mEa ="

    #@4b
    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    .line 544
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    #@51
    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    .line 544
    const-string/jumbo v1, "]"

    #@58
    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
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
    .line 527
    invoke-super {p0, p1, p2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 528
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mStereo:Z

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
    .line 529
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mRds:Z

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
    .line 530
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mTa:Z

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
    .line 531
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mAf:Z

    #@22
    if-eqz v0, :cond_3

    #@24
    move v0, v1

    #@25
    :goto_3
    int-to-byte v0, v0

    #@26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@29
    .line 532
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->mEa:Z

    #@2b
    if-eqz v0, :cond_4

    #@2d
    :goto_4
    int-to-byte v0, v1

    #@2e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@31
    .line 526
    return-void

    #@32
    :cond_0
    move v0, v2

    #@33
    .line 528
    goto :goto_0

    #@34
    :cond_1
    move v0, v2

    #@35
    .line 529
    goto :goto_1

    #@36
    :cond_2
    move v0, v2

    #@37
    .line 530
    goto :goto_2

    #@38
    :cond_3
    move v0, v2

    #@39
    .line 531
    goto :goto_3

    #@3a
    :cond_4
    move v1, v2

    #@3b
    .line 532
    goto :goto_4
.end method
