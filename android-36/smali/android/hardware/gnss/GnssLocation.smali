.class public Landroid/hardware/gnss/GnssLocation;
.super Ljava/lang/Object;
.source "GnssLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/GnssLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HAS_ALTITUDE:I = 0x2

.field public static final blacklist HAS_BEARING:I = 0x8

.field public static final blacklist HAS_BEARING_ACCURACY:I = 0x80

.field public static final blacklist HAS_HORIZONTAL_ACCURACY:I = 0x10

.field public static final blacklist HAS_LAT_LONG:I = 0x1

.field public static final blacklist HAS_SPEED:I = 0x4

.field public static final blacklist HAS_SPEED_ACCURACY:I = 0x40

.field public static final blacklist HAS_VERTICAL_ACCURACY:I = 0x20


# instance fields
.field public blacklist altitudeMeters:D

.field public blacklist bearingAccuracyDegrees:D

.field public blacklist bearingDegrees:D

.field public blacklist elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;

.field public blacklist gnssLocationFlags:I

.field public blacklist horizontalAccuracyMeters:D

.field public blacklist latitudeDegrees:D

.field public blacklist longitudeDegrees:D

.field public blacklist speedAccuracyMetersPerSecond:D

.field public blacklist speedMetersPerSec:D

.field public blacklist timestampMillis:J

.field public blacklist verticalAccuracyMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Landroid/hardware/gnss/GnssLocation$1;

    invoke-direct {v0}, Landroid/hardware/gnss/GnssLocation$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/GnssLocation;->gnssLocationFlags:I

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->latitudeDegrees:D

    .line 15
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->longitudeDegrees:D

    .line 16
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->altitudeMeters:D

    .line 17
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->speedMetersPerSec:D

    .line 18
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->bearingDegrees:D

    .line 19
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->horizontalAccuracyMeters:D

    .line 20
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->verticalAccuracyMeters:D

    .line 21
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->speedAccuracyMetersPerSecond:D

    .line 22
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->bearingAccuracyDegrees:D

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->timestampMillis:J

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 112
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 113
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 114
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 116
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/gnss/GnssLocation;->elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssLocation;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 109
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 63
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_176

    .line 66
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_174

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 92
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssLocation;->gnssLocationFlags:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_174

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 92
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->latitudeDegrees:D

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_174

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 92
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->longitudeDegrees:D

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_174

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 92
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->altitudeMeters:D

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_174

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 92
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->speedMetersPerSec:D

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_174

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 92
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->bearingDegrees:D

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_174

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 92
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->horizontalAccuracyMeters:D

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_174

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 92
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->verticalAccuracyMeters:D

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_174

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 92
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->speedAccuracyMetersPerSecond:D

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_174

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 92
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->bearingAccuracyDegrees:D

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12c
    .catchall {:try_start_122 .. :try_end_12c} :catchall_174

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13e

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_138

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 92
    :cond_138
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_13e
    :try_start_13e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->timestampMillis:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_148
    .catchall {:try_start_13e .. :try_end_148} :catchall_174

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15a

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_154

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 92
    :cond_154
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_15a
    :try_start_15a
    sget-object v2, Landroid/hardware/gnss/ElapsedRealtime;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/ElapsedRealtime;

    iput-object v2, p0, Landroid/hardware/gnss/GnssLocation;->elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;
    :try_end_164
    .catchall {:try_start_15a .. :try_end_164} :catchall_174

    .line 91
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16e

    .line 94
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    nop

    .line 96
    return-void

    .line 92
    :cond_16e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :catchall_174
    move-exception v2

    goto :goto_17e

    .line 65
    :cond_176
    :try_start_176
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/GnssLocation;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_17e
    .catchall {:try_start_176 .. :try_end_17e} :catchall_174

    .line 91
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/GnssLocation;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_17e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_187

    .line 92
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_187
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 42
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v1, p0, Landroid/hardware/gnss/GnssLocation;->gnssLocationFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->latitudeDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 45
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->longitudeDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 46
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->altitudeMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 47
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->speedMetersPerSec:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 48
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->bearingDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 49
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->horizontalAccuracyMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 50
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->verticalAccuracyMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 51
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->speedAccuracyMetersPerSecond:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 52
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->bearingAccuracyDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 53
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->timestampMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-object v1, p0, Landroid/hardware/gnss/GnssLocation;->elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 56
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void
.end method
