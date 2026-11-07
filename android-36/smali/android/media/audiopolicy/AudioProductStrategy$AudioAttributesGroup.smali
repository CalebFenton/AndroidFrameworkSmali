.class final Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
.super Ljava/lang/Object;
.source "AudioProductStrategy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioProductStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioAttributesGroup"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAudioAttributes:[Landroid/media/AudioAttributes;

.field private blacklist mLegacyStreamType:I

.field private blacklist mVolumeGroupId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 532
    new-instance v0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup$1;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup$1;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(II[Landroid/media/AudioAttributes;)V
    .registers 4
    .param p1, "volumeGroupId"    # I
    .param p2, "streamType"    # I
    .param p3, "audioAttributes"    # [Landroid/media/AudioAttributes;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput p1, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    .line 463
    iput p2, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    .line 464
    iput-object p3, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    .line 465
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 469
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 470
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    .line 472
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    .line 474
    .local v2, "thatAag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    iget v3, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    iget v4, v2, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    iget v4, v2, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    .line 476
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    .line 474
    :goto_2d
    return v0

    .line 470
    .end local v2    # "thatAag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    :cond_2e
    :goto_2e
    return v1
.end method

.method public blacklist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 3

    .line 495
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v0, v0

    if-nez v0, :cond_a

    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->-$$Nest$sfgetDEFAULT_ATTRIBUTES()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_f

    :cond_a
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_f
    return-object v0
.end method

.method public blacklist getStreamType()I
    .registers 2

    .line 486
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    return v0
.end method

.method public blacklist getVolumeGroupId()I
    .registers 2

    .line 490
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 481
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    .line 482
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 481
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist supportsAttributes(Landroid/media/AudioAttributes;)Z
    .registers 8
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .line 505
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_1b

    aget-object v4, v0, v3

    .line 506
    .local v4, "refAa":Landroid/media/AudioAttributes;
    invoke-virtual {v4, p1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-static {v4, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->-$$Nest$smattributesMatches(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_19

    .line 505
    .end local v4    # "refAa":Landroid/media/AudioAttributes;
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 507
    .restart local v4    # "refAa":Landroid/media/AudioAttributes;
    :cond_19
    :goto_19
    const/4 v0, 0x1

    return v0

    .line 510
    .end local v4    # "refAa":Landroid/media/AudioAttributes;
    :cond_1b
    return v2
.end method

.method public blacklist supportsStreamType(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .line 514
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "\n    Legacy Stream Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget v1, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v1, " Volume Group Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget v1, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v1, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_38

    aget-object v4, v1, v3

    .line 562
    .local v4, "attribute":Landroid/media/AudioAttributes;
    const-string v5, "\n    -"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v4}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .end local v4    # "attribute":Landroid/media/AudioAttributes;
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 565
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 524
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    .line 528
    .local v3, "attributes":Landroid/media/AudioAttributes;
    or-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 527
    .end local v3    # "attributes":Landroid/media/AudioAttributes;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 530
    :cond_20
    return-void
.end method
