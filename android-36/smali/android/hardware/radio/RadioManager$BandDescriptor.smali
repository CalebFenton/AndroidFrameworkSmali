.class public Landroid/hardware/radio/RadioManager$BandDescriptor;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandDescriptor"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$BandDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mLowerLimit:I

.field private final greylist-max-o mRegion:I

.field private final greylist-max-o mSpacing:I

.field private final greylist-max-o mType:I

.field private final greylist-max-o mUpperLimit:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlookupTypeFromParcel(Landroid/os/Parcel;)I
    .registers 1

    invoke-static {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->lookupTypeFromParcel(Landroid/os/Parcel;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 714
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$BandDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(IIIII)V
    .registers 9
    .param p1, "region"    # I
    .param p2, "type"    # I
    .param p3, "lowerLimit"    # I
    .param p4, "upperLimit"    # I
    .param p5, "spacing"    # I

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    if-eqz p2, :cond_28

    const/4 v0, 0x1

    if-eq p2, v0, :cond_28

    const/4 v0, 0x2

    if-eq p2, v0, :cond_28

    const/4 v0, 0x3

    if-ne p2, v0, :cond_f

    goto :goto_28

    .line 624
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported band: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_28
    :goto_28
    iput p1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    .line 627
    iput p2, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    .line 628
    iput p3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    .line 629
    iput p4, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    .line 630
    iput p5, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    .line 631
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    .line 700
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    .line 702
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    .line 703
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    .line 704
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static greylist-max-o lookupTypeFromParcel(Landroid/os/Parcel;)I
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 707
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 708
    .local v0, "pos":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 709
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 710
    .local v1, "type":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 711
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 770
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 771
    return v0

    .line 772
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$BandDescriptor;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 773
    return v2

    .line 774
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 775
    .local v1, "other":Landroid/hardware/radio/RadioManager$BandDescriptor;
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v4

    if-eq v3, v4, :cond_16

    .line 776
    return v2

    .line 777
    :cond_16
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v4

    if-eq v3, v4, :cond_1f

    .line 778
    return v2

    .line 779
    :cond_1f
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v4

    if-eq v3, v4, :cond_28

    .line 780
    return v2

    .line 781
    :cond_28
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v4

    if-eq v3, v4, :cond_31

    .line 782
    return v2

    .line 783
    :cond_31
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v4

    if-eq v3, v4, :cond_3a

    .line 784
    return v2

    .line 785
    :cond_3a
    return v0
.end method

.method public whitelist getLowerLimit()I
    .registers 2

    .line 677
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    return v0
.end method

.method public whitelist getRegion()I
    .registers 2

    .line 638
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    return v0
.end method

.method public whitelist getSpacing()I
    .registers 2

    .line 695
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 649
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    return v0
.end method

.method public whitelist getUpperLimit()I
    .registers 2

    .line 686
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 758
    const/16 v0, 0x1f

    .line 759
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 760
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    add-int/2addr v2, v3

    .line 761
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    add-int/2addr v1, v3

    .line 762
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    add-int/2addr v2, v3

    .line 763
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    add-int/2addr v1, v3

    .line 764
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    add-int/2addr v2, v3

    .line 765
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public whitelist isAmBand()Z
    .registers 3

    .line 658
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public whitelist isFmBand()Z
    .registers 4

    .line 667
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BandDescriptor [mRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLowerLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUpperLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 737
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    return-void
.end method
