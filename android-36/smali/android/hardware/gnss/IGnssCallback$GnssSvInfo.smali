.class public Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;
.super Ljava/lang/Object;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssSvInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist azimuthDegrees:F

.field public blacklist basebandCN0DbHz:F

.field public blacklist cN0Dbhz:F

.field public blacklist carrierFrequencyHz:J

.field public blacklist constellation:I

.field public blacklist elevationDegrees:F

.field public blacklist svFlag:I

.field public blacklist svid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 578
    new-instance v0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svid:I

    .line 570
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    .line 571
    iput v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->basebandCN0DbHz:F

    .line 572
    iput v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    .line 573
    iput v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    .line 574
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:J

    .line 575
    iput v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svFlag:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 610
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 612
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_102

    .line 613
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 633
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 613
    return-void

    .line 631
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 614
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svid:I

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 633
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 615
    return-void

    .line 631
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 616
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->constellation:I

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 633
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 617
    return-void

    .line 631
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 618
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 633
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 619
    return-void

    .line 631
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 620
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->basebandCN0DbHz:F

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 633
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 621
    return-void

    .line 631
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 622
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 633
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 623
    return-void

    .line 631
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 624
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 633
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 625
    return-void

    .line 631
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 626
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:J

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_100

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 633
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 627
    return-void

    .line 631
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 628
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svFlag:I
    :try_end_f0
    .catchall {:try_start_ea .. :try_end_f0} :catchall_100

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fa

    .line 633
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 634
    nop

    .line 635
    return-void

    .line 631
    :cond_fa
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 630
    :catchall_100
    move-exception v2

    goto :goto_10a

    .line 612
    :cond_102
    :try_start_102
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_10a
    .catchall {:try_start_102 .. :try_end_10a} :catchall_100

    .line 630
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_10a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_113

    .line 631
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 633
    :cond_113
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 634
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 593
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->constellation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 597
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->basebandCN0DbHz:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 598
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 599
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 600
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 601
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svFlag:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 603
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 604
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 606
    return-void
.end method
