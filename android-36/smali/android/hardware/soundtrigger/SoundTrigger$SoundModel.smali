.class public Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModel$SoundModelType;
    }
.end annotation


# static fields
.field public static final whitelist TYPE_GENERIC_SOUND:I = 0x1

.field public static final whitelist TYPE_KEYPHRASE:I = 0x0

.field public static final greylist-max-o TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mData:[B

.field private final blacklist mType:I

.field private final blacklist mUuid:Ljava/util/UUID;

.field private final blacklist mVendorUuid:Ljava/util/UUID;

.field private final blacklist mVersion:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/util/UUID;I[BI)V
    .registers 9
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "vendorUuid"    # Ljava/util/UUID;
    .param p3, "type"    # I
    .param p4, "data"    # [B
    .param p5, "version"    # I

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mUuid:Ljava/util/UUID;

    .line 491
    if-eqz p2, :cond_f

    move-object v0, p2

    goto :goto_16

    :cond_f
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    :goto_16
    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVendorUuid:Ljava/util/UUID;

    .line 492
    iput p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mType:I

    .line 493
    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVersion:I

    .line 494
    if-eqz p4, :cond_20

    move-object v0, p4

    goto :goto_23

    :cond_20
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_23
    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mData:[B

    .line 495
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 540
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 541
    return v0

    .line 543
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 544
    return v1

    .line 546
    :cond_8
    instance-of v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez v2, :cond_d

    .line 547
    return v1

    .line 549
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 550
    .local v2, "other":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v4

    if-eq v3, v4, :cond_1b

    .line 551
    return v1

    .line 553
    :cond_1b
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    if-nez v3, :cond_28

    .line 554
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 555
    return v1

    .line 557
    :cond_28
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 558
    return v1

    .line 560
    :cond_37
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    if-nez v3, :cond_44

    .line 561
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 562
    return v1

    .line 564
    :cond_44
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 565
    return v1

    .line 567
    :cond_53
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_62

    .line 568
    return v1

    .line 570
    :cond_62
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVersion()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVersion()I

    move-result v4

    if-eq v3, v4, :cond_6d

    .line 571
    return v1

    .line 573
    :cond_6d
    return v0
.end method

.method public whitelist getData()[B
    .registers 2

    .line 523
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mData:[B

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 506
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mType:I

    return v0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .registers 2

    .line 500
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getVendorUuid()Ljava/util/UUID;
    .registers 2

    .line 512
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVendorUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 517
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVersion:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 528
    const/16 v0, 0x1f

    .line 529
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 530
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVersion()I

    move-result v3

    add-int/2addr v2, v3

    .line 531
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    .line 532
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v3

    add-int/2addr v2, v3

    .line 533
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_27

    move v3, v4

    goto :goto_2f

    :cond_27
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2f
    add-int/2addr v1, v3

    .line 534
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    if-nez v3, :cond_39

    goto :goto_41

    :cond_39
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_41
    add-int/2addr v2, v4

    .line 535
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
