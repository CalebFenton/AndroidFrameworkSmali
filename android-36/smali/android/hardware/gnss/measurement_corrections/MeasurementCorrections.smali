.class public Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;
.super Ljava/lang/Object;
.source "MeasurementCorrections.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist altitudeMeters:D

.field public blacklist environmentBearingDegrees:F

.field public blacklist environmentBearingUncertaintyDegrees:F

.field public blacklist hasEnvironmentBearing:Z

.field public blacklist horizontalPositionUncertaintyMeters:D

.field public blacklist latitudeDegrees:D

.field public blacklist longitudeDegrees:D

.field public blacklist satCorrections:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;

.field public blacklist toaGpsNanosecondsOfWeek:J

.field public blacklist verticalPositionUncertaintyMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections$1;

    invoke-direct {v0}, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->latitudeDegrees:D

    .line 14
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->longitudeDegrees:D

    .line 15
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->altitudeMeters:D

    .line 16
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    .line 17
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->hasEnvironmentBearing:Z

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->environmentBearingDegrees:F

    .line 22
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

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
    invoke-direct {p0, v4}, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->describeContents(Ljava/lang/Object;)I

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
    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->satCorrections:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 93
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 59
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_13e

    .line 62
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 84
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->latitudeDegrees:D

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 84
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->longitudeDegrees:D

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 84
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->altitudeMeters:D

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 84
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 84
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 84
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 84
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_ce
    :try_start_ce
    sget-object v2, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;

    iput-object v2, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->satCorrections:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dc
    .catchall {:try_start_ce .. :try_end_dc} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 84
    :cond_e8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_ee
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->hasEnvironmentBearing:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10a

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_104

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 84
    :cond_104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_10a
    :try_start_10a
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->environmentBearingDegrees:F

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_114
    .catchall {:try_start_10a .. :try_end_114} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_126

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_120

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 84
    :cond_120
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_126
    :try_start_126
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F
    :try_end_12c
    .catchall {:try_start_126 .. :try_end_12c} :catchall_13c

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_136

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    nop

    .line 88
    return-void

    .line 84
    :cond_136
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :catchall_13c
    move-exception v2

    goto :goto_146

    .line 61
    :cond_13e
    :try_start_13e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_146
    .catchall {:try_start_13e .. :try_end_146} :catchall_13c

    .line 83
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_146
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_14f

    .line 84
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_14f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 40
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->latitudeDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 42
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->longitudeDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 43
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->altitudeMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 45
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 46
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->satCorrections:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 48
    iget-boolean v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->hasEnvironmentBearing:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 49
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->environmentBearingDegrees:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 50
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 52
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void
.end method
