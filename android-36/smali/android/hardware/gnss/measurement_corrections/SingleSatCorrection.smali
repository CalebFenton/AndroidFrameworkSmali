.class public Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;
.super Ljava/lang/Object;
.source "SingleSatCorrection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SINGLE_SAT_CORRECTION_HAS_COMBINED_ATTENUATION:I = 0x10

.field public static final blacklist SINGLE_SAT_CORRECTION_HAS_COMBINED_EXCESS_PATH_LENGTH:I = 0x2

.field public static final blacklist SINGLE_SAT_CORRECTION_HAS_COMBINED_EXCESS_PATH_LENGTH_UNC:I = 0x4

.field public static final blacklist SINGLE_SAT_CORRECTION_HAS_SAT_IS_LOS_PROBABILITY:I = 0x1


# instance fields
.field public blacklist carrierFrequencyHz:J

.field public blacklist combinedAttenuationDb:F

.field public blacklist combinedExcessPathLengthMeters:F

.field public blacklist combinedExcessPathLengthUncertaintyMeters:F

.field public blacklist constellation:I

.field public blacklist excessPathInfos:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;

.field public blacklist probSatIsLos:F

.field public blacklist singleSatCorrectionFlags:I

.field public blacklist svid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$1;

    invoke-direct {v0}, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->singleSatCorrectionFlags:I

    .line 15
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->svid:I

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->carrierFrequencyHz:J

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->probSatIsLos:F

    .line 18
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedExcessPathLengthMeters:F

    .line 19
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedExcessPathLengthUncertaintyMeters:F

    .line 20
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedAttenuationDb:F

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 97
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 100
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 99
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 102
    :cond_19
    return v1

    .line 104
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 105
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 107
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->excessPathInfos:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 93
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 57
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_122

    .line 60
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 80
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->singleSatCorrectionFlags:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 80
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->constellation:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 80
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->svid:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 80
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->carrierFrequencyHz:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 80
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->probSatIsLos:F

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 80
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedExcessPathLengthMeters:F

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 80
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedExcessPathLengthUncertaintyMeters:F

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 80
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedAttenuationDb:F

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 80
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_106
    :try_start_106
    sget-object v2, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;

    iput-object v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->excessPathInfos:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_120

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11a

    .line 82
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    nop

    .line 84
    return-void

    .line 80
    :cond_11a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :catchall_120
    move-exception v2

    goto :goto_12a

    .line 59
    :cond_122
    :try_start_122
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_12a
    .catchall {:try_start_122 .. :try_end_12a} :catchall_120

    .line 79
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_12a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_133

    .line 80
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_133
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 39
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->singleSatCorrectionFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->constellation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->svid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->carrierFrequencyHz:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->probSatIsLos:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 45
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedExcessPathLengthMeters:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 46
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedExcessPathLengthUncertaintyMeters:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 47
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedAttenuationDb:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 48
    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->excessPathInfos:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 50
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void
.end method
