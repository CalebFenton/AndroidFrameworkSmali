.class public final Landroid/ranging/RangingData;
.super Ljava/lang/Object;
.source "RangingData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/RangingData$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/RangingData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAzimuth:Landroid/ranging/RangingMeasurement;

.field private final blacklist mDelaySpreadMeters:D

.field private final blacklist mDetectedAttackLevel:B

.field private final blacklist mDistance:Landroid/ranging/RangingMeasurement;

.field private final blacklist mElevation:Landroid/ranging/RangingMeasurement;

.field private final blacklist mRangingTechnology:I

.field private final blacklist mRssi:I

.field private final blacklist mTimestamp:J

.field private final blacklist mVelocityMetersPerSec:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Landroid/ranging/RangingData$1;

    invoke-direct {v0}, Landroid/ranging/RangingData$1;-><init>()V

    sput-object v0, Landroid/ranging/RangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/RangingData;->mRangingTechnology:I

    .line 73
    const-class v0, Landroid/ranging/RangingMeasurement;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/RangingMeasurement;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/RangingMeasurement;

    .line 73
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/RangingMeasurement;

    iput-object v0, p0, Landroid/ranging/RangingData;->mDistance:Landroid/ranging/RangingMeasurement;

    .line 76
    const-class v0, Landroid/ranging/RangingMeasurement;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/RangingMeasurement;

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/RangingMeasurement;

    iput-object v0, p0, Landroid/ranging/RangingData;->mAzimuth:Landroid/ranging/RangingMeasurement;

    .line 78
    const-class v0, Landroid/ranging/RangingMeasurement;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/RangingMeasurement;

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/RangingMeasurement;

    iput-object v0, p0, Landroid/ranging/RangingData;->mElevation:Landroid/ranging/RangingMeasurement;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/RangingData;->mRssi:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/ranging/RangingData;->mTimestamp:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/ranging/RangingData;->mDelaySpreadMeters:D

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/ranging/RangingData;->mDetectedAttackLevel:B

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/ranging/RangingData;->mVelocityMetersPerSec:D

    .line 85
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/RangingData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/RangingData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/RangingData$Builder;)V
    .registers 6
    .param p1, "builder"    # Landroid/ranging/RangingData$Builder;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Landroid/ranging/RangingData$Builder;->-$$Nest$fgetmDistance(Landroid/ranging/RangingData$Builder;)Landroid/ranging/RangingMeasurement;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 54
    invoke-static {p1}, Landroid/ranging/RangingData$Builder;->-$$Nest$fgetmTimestamp(Landroid/ranging/RangingData$Builder;)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5a

    .line 57
    invoke-static {p1}, Landroid/ranging/RangingData$Builder;->-$$Nest$fgetmRangingTechnology(Landroid/ranging/RangingData$Builder;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_52

    .line 60
    invoke-static {p1}, Landroid/ranging/RangingData$Builder;->-$$Nest$fgetmRangingTechnology(Landroid/ranging/RangingData$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/RangingData;->mRangingTechnology:I

    .line 61
    invoke-static {p1}, Landroid/ranging/RangingData$Builder;->-$$Nest$fgetmDistance(Landroid/ranging/RangingData$Builder;)Landroid/ranging/RangingMeasurement;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/RangingData;->mDistance:Landroid/ranging/RangingMeasurement;

    .line 62
    invoke-static {p1}, Landroid/ranging/RangingData$Builder;->-$$Nest$fgetmAzimuth(Landroid/ranging/RangingData$Builder;)Landroid/ranging/RangingMeasurement;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/RangingData;->mAzimuth:Landroid/ranging/RangingMeasurement;

    .line 63
    invoke-static {p1}, Landroid/ranging/RangingData$Builder;->-$$Nest$fgetmElevation(Landroid/ranging/RangingData$Builder;)Landroid/ranging/RangingMeasurement;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/RangingData;->mElevation:Landroid/ranging/RangingMeasurement;

    .line 64
    invoke-static {p1}, Landroid/ranging/RangingData$Builder;->-$$Nest$fgetmRssi(Landroid/ranging/RangingData$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/RangingData;->mRssi:I

    .line 65
    invoke-static {p1}, Landroid/ranging/RangingData$Builder;->-$$Nest$fgetmTimestamp(Landroid/ranging/RangingData$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/ranging/RangingData;->mTimestamp:J

    .line 66
    invoke-static {p1}, Landroid/ranging/RangingData$Builder;->-$$Nest$fgetmDelaySpreadMeters(Landroid/ranging/RangingData$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/ranging/RangingData;->mDelaySpreadMeters:D

    .line 67
    invoke-static {p1}, Landroid/ranging/RangingData$Builder;->-$$Nest$fgetmDetectedAttackLevel(Landroid/ranging/RangingData$Builder;)B

    move-result v0

    iput-byte v0, p0, Landroid/ranging/RangingData;->mDetectedAttackLevel:B

    .line 68
    invoke-static {p1}, Landroid/ranging/RangingData$Builder;->-$$Nest$fgetmVelocityMetersPerSec(Landroid/ranging/RangingData$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/ranging/RangingData;->mVelocityMetersPerSec:D

    .line 69
    return-void

    .line 58
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing required parameter: rangingTechnology"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing required parameter: timestamp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing required parameter: distance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/RangingData$Builder;Landroid/ranging/RangingData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/RangingData;-><init>(Landroid/ranging/RangingData$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAzimuth()Landroid/ranging/RangingMeasurement;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/ranging/RangingData;->mAzimuth:Landroid/ranging/RangingMeasurement;

    return-object v0
.end method

.method public blacklist getDelaySpreadMeters()D
    .registers 3

    .line 180
    iget-wide v0, p0, Landroid/ranging/RangingData;->mDelaySpreadMeters:D

    return-wide v0
.end method

.method public blacklist getDetectedAttackLevel()B
    .registers 2

    .line 201
    iget-byte v0, p0, Landroid/ranging/RangingData;->mDetectedAttackLevel:B

    return v0
.end method

.method public whitelist getDistance()Landroid/ranging/RangingMeasurement;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/ranging/RangingData;->mDistance:Landroid/ranging/RangingMeasurement;

    return-object v0
.end method

.method public whitelist getElevation()Landroid/ranging/RangingMeasurement;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/ranging/RangingData;->mElevation:Landroid/ranging/RangingMeasurement;

    return-object v0
.end method

.method public whitelist getRangingTechnology()I
    .registers 2

    .line 105
    iget v0, p0, Landroid/ranging/RangingData;->mRangingTechnology:I

    return v0
.end method

.method public whitelist getRssi()I
    .registers 3

    .line 154
    invoke-virtual {p0}, Landroid/ranging/RangingData;->hasRssi()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 157
    iget v0, p0, Landroid/ranging/RangingData;->mRssi:I

    return v0

    .line 155
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "rssi is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTimestampMillis()J
    .registers 3

    .line 232
    iget-wide v0, p0, Landroid/ranging/RangingData;->mTimestamp:J

    return-wide v0
.end method

.method public blacklist getVelocityMetersPerSec()D
    .registers 3

    .line 222
    iget-wide v0, p0, Landroid/ranging/RangingData;->mVelocityMetersPerSec:D

    return-wide v0
.end method

.method public blacklist hasDelaySpread()Z
    .registers 3

    .line 167
    iget-wide v0, p0, Landroid/ranging/RangingData;->mDelaySpreadMeters:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist hasDetectedAttackLevel()Z
    .registers 3

    .line 190
    iget-byte v0, p0, Landroid/ranging/RangingData;->mDetectedAttackLevel:B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Byte;->compareUnsigned(BB)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist hasRssi()Z
    .registers 3

    .line 144
    iget v0, p0, Landroid/ranging/RangingData;->mRssi:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasVelocity()Z
    .registers 3

    .line 211
    iget-wide v0, p0, Landroid/ranging/RangingData;->mVelocityMetersPerSec:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 242
    iget v0, p0, Landroid/ranging/RangingData;->mRangingTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v0, p0, Landroid/ranging/RangingData;->mDistance:Landroid/ranging/RangingMeasurement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 244
    iget-object v0, p0, Landroid/ranging/RangingData;->mAzimuth:Landroid/ranging/RangingMeasurement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 245
    iget-object v0, p0, Landroid/ranging/RangingData;->mElevation:Landroid/ranging/RangingMeasurement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 246
    iget v0, p0, Landroid/ranging/RangingData;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-wide v0, p0, Landroid/ranging/RangingData;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    iget-wide v0, p0, Landroid/ranging/RangingData;->mDelaySpreadMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 249
    iget-byte v0, p0, Landroid/ranging/RangingData;->mDetectedAttackLevel:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 250
    iget-wide v0, p0, Landroid/ranging/RangingData;->mVelocityMetersPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 251
    return-void
.end method
