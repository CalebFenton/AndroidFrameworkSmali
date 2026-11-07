.class public Landroid/hardware/gnss/SatellitePvt;
.super Ljava/lang/Object;
.source "SatellitePvt.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/SatellitePvt$SatelliteEphemerisSource;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/SatellitePvt;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HAS_IONO:I = 0x2

.field public static final blacklist HAS_POSITION_VELOCITY_CLOCK_INFO:I = 0x1

.field public static final blacklist HAS_TROPO:I = 0x4


# instance fields
.field public blacklist ephemerisSource:I

.field public blacklist flags:I

.field public blacklist ionoDelayMeters:D

.field public blacklist issueOfDataClock:I

.field public blacklist issueOfDataEphemeris:I

.field public blacklist satClockInfo:Landroid/hardware/gnss/SatelliteClockInfo;

.field public blacklist satPosEcef:Landroid/hardware/gnss/SatellitePositionEcef;

.field public blacklist satVelEcef:Landroid/hardware/gnss/SatelliteVelocityEcef;

.field public blacklist timeOfClockSeconds:J

.field public blacklist timeOfEphemerisSeconds:J

.field public blacklist tropoDelayMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/hardware/gnss/SatellitePvt$1;

    invoke-direct {v0}, Landroid/hardware/gnss/SatellitePvt$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/SatellitePvt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/SatellitePvt;->flags:I

    .line 17
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->ionoDelayMeters:D

    .line 18
    iput-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->tropoDelayMeters:D

    .line 19
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->timeOfClockSeconds:J

    .line 20
    iput v0, p0, Landroid/hardware/gnss/SatellitePvt;->issueOfDataClock:I

    .line 21
    iput-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->timeOfEphemerisSeconds:J

    .line 22
    iput v0, p0, Landroid/hardware/gnss/SatellitePvt;->issueOfDataEphemeris:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/gnss/SatellitePvt;->ephemerisSource:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 105
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 106
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 107
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 109
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/gnss/SatellitePvt;->satPosEcef:Landroid/hardware/gnss/SatellitePositionEcef;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/SatellitePvt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 100
    iget-object v1, p0, Landroid/hardware/gnss/SatellitePvt;->satVelEcef:Landroid/hardware/gnss/SatelliteVelocityEcef;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/SatellitePvt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 101
    iget-object v1, p0, Landroid/hardware/gnss/SatellitePvt;->satClockInfo:Landroid/hardware/gnss/SatelliteClockInfo;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/SatellitePvt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 102
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 61
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_162

    .line 64
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 88
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/SatellitePvt;->flags:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 88
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_42
    :try_start_42
    sget-object v2, Landroid/hardware/gnss/SatellitePositionEcef;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/SatellitePositionEcef;

    iput-object v2, p0, Landroid/hardware/gnss/SatellitePvt;->satPosEcef:Landroid/hardware/gnss/SatellitePositionEcef;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 88
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_62
    :try_start_62
    sget-object v2, Landroid/hardware/gnss/SatelliteVelocityEcef;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/SatelliteVelocityEcef;

    iput-object v2, p0, Landroid/hardware/gnss/SatellitePvt;->satVelEcef:Landroid/hardware/gnss/SatelliteVelocityEcef;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 88
    :cond_7c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_82
    :try_start_82
    sget-object v2, Landroid/hardware/gnss/SatelliteClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/SatelliteClockInfo;

    iput-object v2, p0, Landroid/hardware/gnss/SatellitePvt;->satClockInfo:Landroid/hardware/gnss/SatelliteClockInfo;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a2

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_9c

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 88
    :cond_9c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_a2
    :try_start_a2
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/SatellitePvt;->ionoDelayMeters:D

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ac
    .catchall {:try_start_a2 .. :try_end_ac} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_be

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b8

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 88
    :cond_b8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_be
    :try_start_be
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/SatellitePvt;->tropoDelayMeters:D

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c8
    .catchall {:try_start_be .. :try_end_c8} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_da

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d4

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 88
    :cond_d4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_da
    :try_start_da
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/SatellitePvt;->timeOfClockSeconds:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e4
    .catchall {:try_start_da .. :try_end_e4} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f6

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f0

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 88
    :cond_f0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_f6
    :try_start_f6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/SatellitePvt;->issueOfDataClock:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_100
    .catchall {:try_start_f6 .. :try_end_100} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_112

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10c

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 88
    :cond_10c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_112
    :try_start_112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/SatellitePvt;->timeOfEphemerisSeconds:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11c
    .catchall {:try_start_112 .. :try_end_11c} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_12e

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_128

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 88
    :cond_128
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_12e
    :try_start_12e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/SatellitePvt;->issueOfDataEphemeris:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_138
    .catchall {:try_start_12e .. :try_end_138} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_14a

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_144

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 88
    :cond_144
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_14a
    :try_start_14a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/SatellitePvt;->ephemerisSource:I
    :try_end_150
    .catchall {:try_start_14a .. :try_end_150} :catchall_160

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_15a

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    nop

    .line 92
    return-void

    .line 88
    :cond_15a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :catchall_160
    move-exception v2

    goto :goto_16a

    .line 63
    :cond_162
    :try_start_162
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/SatellitePvt;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_16a
    .catchall {:try_start_162 .. :try_end_16a} :catchall_160

    .line 87
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/SatellitePvt;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_16a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_173

    .line 88
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_173
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 41
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v1, p0, Landroid/hardware/gnss/SatellitePvt;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v1, p0, Landroid/hardware/gnss/SatellitePvt;->satPosEcef:Landroid/hardware/gnss/SatellitePositionEcef;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 44
    iget-object v1, p0, Landroid/hardware/gnss/SatellitePvt;->satVelEcef:Landroid/hardware/gnss/SatelliteVelocityEcef;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 45
    iget-object v1, p0, Landroid/hardware/gnss/SatellitePvt;->satClockInfo:Landroid/hardware/gnss/SatelliteClockInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 46
    iget-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->ionoDelayMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 47
    iget-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->tropoDelayMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 48
    iget-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->timeOfClockSeconds:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget v1, p0, Landroid/hardware/gnss/SatellitePvt;->issueOfDataClock:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->timeOfEphemerisSeconds:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget v1, p0, Landroid/hardware/gnss/SatellitePvt;->issueOfDataEphemeris:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v1, p0, Landroid/hardware/gnss/SatellitePvt;->ephemerisSource:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 54
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void
.end method
