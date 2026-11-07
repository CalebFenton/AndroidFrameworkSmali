.class public final Landroid/app/time/TimeZoneDetectorStatus;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeZoneDetectorStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDetectorStatus:I

.field private final blacklist mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

.field private final blacklist mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Landroid/app/time/TimeZoneDetectorStatus$1;

    invoke-direct {v0}, Landroid/app/time/TimeZoneDetectorStatus$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeZoneDetectorStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/time/TelephonyTimeZoneAlgorithmStatus;Landroid/app/time/LocationTimeZoneAlgorithmStatus;)V
    .registers 5
    .param p1, "detectorStatus"    # I
    .param p2, "telephonyTimeZoneAlgorithmStatus"    # Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;
    .param p3, "locationTimeZoneAlgorithmStatus"    # Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/app/time/DetectorStatusTypes;->requireValidDetectorStatus(I)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    .line 45
    nop

    .line 46
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    iput-object v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    .line 47
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    iput-object v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 108
    return v0

    .line 110
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 113
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/time/TimeZoneDetectorStatus;

    .line 114
    .local v2, "that":Landroid/app/time/TimeZoneDetectorStatus;
    iget v3, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    iget v4, v2, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    iget-object v4, v2, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    .line 115
    invoke-virtual {v3, v4}, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    iget-object v4, v2, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 116
    invoke-virtual {v3, v4}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 114
    :goto_31
    return v0

    .line 111
    .end local v2    # "that":Landroid/app/time/TimeZoneDetectorStatus;
    :cond_32
    :goto_32
    return v1
.end method

.method public blacklist getDetectorStatus()I
    .registers 2

    .line 51
    iget v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    return v0
.end method

.method public blacklist getLocationTimeZoneAlgorithmStatus()Landroid/app/time/LocationTimeZoneAlgorithmStatus;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    return-object v0
.end method

.method public blacklist getTelephonyTimeZoneAlgorithmStatus()Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 121
    iget v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    iget-object v2, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneDetectorStatus{mDetectorStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    .line 67
    invoke-static {v1}, Landroid/app/time/DetectorStatusTypes;->detectorStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTelephonyTimeZoneAlgorithmStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocationTimeZoneAlgorithmStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mDetectorStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mTelephonyTimeZoneAlgorithmStatus:Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    iget-object v0, p0, Landroid/app/time/TimeZoneDetectorStatus;->mLocationTimeZoneAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    return-void
.end method
