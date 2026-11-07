.class public final Landroid/location/SatellitePvt$ClockInfo;
.super Ljava/lang/Object;
.source "SatellitePvt.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/SatellitePvt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClockInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/SatellitePvt$ClockInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClockDriftMetersPerSecond:D

.field private final blacklist mHardwareCodeBiasMeters:D

.field private final blacklist mTimeCorrectionMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 368
    new-instance v0, Landroid/location/SatellitePvt$ClockInfo$1;

    invoke-direct {v0}, Landroid/location/SatellitePvt$ClockInfo$1;-><init>()V

    sput-object v0, Landroid/location/SatellitePvt$ClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(DDD)V
    .registers 7
    .param p1, "hardwareCodeBiasMeters"    # D
    .param p3, "timeCorrectionMeters"    # D
    .param p5, "clockDriftMetersPerSecond"    # D

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-wide p1, p0, Landroid/location/SatellitePvt$ClockInfo;->mHardwareCodeBiasMeters:D

    .line 364
    iput-wide p3, p0, Landroid/location/SatellitePvt$ClockInfo;->mTimeCorrectionMeters:D

    .line 365
    iput-wide p5, p0, Landroid/location/SatellitePvt$ClockInfo;->mClockDriftMetersPerSecond:D

    .line 366
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClockDriftMetersPerSecond()D
    .registers 3

    .line 428
    iget-wide v0, p0, Landroid/location/SatellitePvt$ClockInfo;->mClockDriftMetersPerSecond:D

    return-wide v0
.end method

.method public whitelist getHardwareCodeBiasMeters()D
    .registers 3

    .line 399
    iget-wide v0, p0, Landroid/location/SatellitePvt$ClockInfo;->mHardwareCodeBiasMeters:D

    return-wide v0
.end method

.method public whitelist getTimeCorrectionMeters()D
    .registers 3

    .line 420
    iget-wide v0, p0, Landroid/location/SatellitePvt$ClockInfo;->mTimeCorrectionMeters:D

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClockInfo{hardwareCodeBiasMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$ClockInfo;->mHardwareCodeBiasMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeCorrectionMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$ClockInfo;->mTimeCorrectionMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clockDriftMetersPerSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$ClockInfo;->mClockDriftMetersPerSecond:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 438
    iget-wide v0, p0, Landroid/location/SatellitePvt$ClockInfo;->mHardwareCodeBiasMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 439
    iget-wide v0, p0, Landroid/location/SatellitePvt$ClockInfo;->mTimeCorrectionMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 440
    iget-wide v0, p0, Landroid/location/SatellitePvt$ClockInfo;->mClockDriftMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 441
    return-void
.end method
