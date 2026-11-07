.class public final Landroid/uwb/AngleOfArrivalMeasurement;
.super Ljava/lang/Object;
.source "AngleOfArrivalMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/AngleOfArrivalMeasurement$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/uwb/AngleOfArrivalMeasurement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAltitudeAngleMeasurement:Landroid/uwb/AngleMeasurement;

.field private final blacklist mAzimuthAngleMeasurement:Landroid/uwb/AngleMeasurement;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 115
    new-instance v0, Landroid/uwb/AngleOfArrivalMeasurement$1;

    invoke-direct {v0}, Landroid/uwb/AngleOfArrivalMeasurement$1;-><init>()V

    sput-object v0, Landroid/uwb/AngleOfArrivalMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/uwb/AngleMeasurement;Landroid/uwb/AngleMeasurement;)V
    .registers 3
    .param p1, "azimuthAngleMeasurement"    # Landroid/uwb/AngleMeasurement;
    .param p2, "altitudeAngleMeasurement"    # Landroid/uwb/AngleMeasurement;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/uwb/AngleOfArrivalMeasurement;->mAzimuthAngleMeasurement:Landroid/uwb/AngleMeasurement;

    .line 40
    iput-object p2, p0, Landroid/uwb/AngleOfArrivalMeasurement;->mAltitudeAngleMeasurement:Landroid/uwb/AngleMeasurement;

    .line 41
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/uwb/AngleMeasurement;Landroid/uwb/AngleMeasurement;Landroid/uwb/AngleOfArrivalMeasurement-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/uwb/AngleOfArrivalMeasurement;-><init>(Landroid/uwb/AngleMeasurement;Landroid/uwb/AngleMeasurement;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 85
    return v0

    .line 88
    :cond_4
    instance-of v1, p1, Landroid/uwb/AngleOfArrivalMeasurement;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 89
    move-object v1, p1

    check-cast v1, Landroid/uwb/AngleOfArrivalMeasurement;

    .line 90
    .local v1, "other":Landroid/uwb/AngleOfArrivalMeasurement;
    iget-object v3, p0, Landroid/uwb/AngleOfArrivalMeasurement;->mAzimuthAngleMeasurement:Landroid/uwb/AngleMeasurement;

    invoke-virtual {v1}, Landroid/uwb/AngleOfArrivalMeasurement;->getAzimuth()Landroid/uwb/AngleMeasurement;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Landroid/uwb/AngleOfArrivalMeasurement;->mAltitudeAngleMeasurement:Landroid/uwb/AngleMeasurement;

    .line 91
    invoke-virtual {v1}, Landroid/uwb/AngleOfArrivalMeasurement;->getAltitude()Landroid/uwb/AngleMeasurement;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_26

    :cond_25
    move v0, v2

    .line 90
    :goto_26
    return v0

    .line 93
    .end local v1    # "other":Landroid/uwb/AngleOfArrivalMeasurement;
    :cond_27
    return v2
.end method

.method public whitelist getAltitude()Landroid/uwb/AngleMeasurement;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/uwb/AngleOfArrivalMeasurement;->mAltitudeAngleMeasurement:Landroid/uwb/AngleMeasurement;

    return-object v0
.end method

.method public whitelist getAzimuth()Landroid/uwb/AngleMeasurement;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/uwb/AngleOfArrivalMeasurement;->mAzimuthAngleMeasurement:Landroid/uwb/AngleMeasurement;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 101
    iget-object v0, p0, Landroid/uwb/AngleOfArrivalMeasurement;->mAzimuthAngleMeasurement:Landroid/uwb/AngleMeasurement;

    iget-object v1, p0, Landroid/uwb/AngleOfArrivalMeasurement;->mAltitudeAngleMeasurement:Landroid/uwb/AngleMeasurement;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AngleOfArrivalMeasurement[azimuth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/AngleOfArrivalMeasurement;->mAzimuthAngleMeasurement:Landroid/uwb/AngleMeasurement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", altitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/AngleOfArrivalMeasurement;->mAltitudeAngleMeasurement:Landroid/uwb/AngleMeasurement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 111
    iget-object v0, p0, Landroid/uwb/AngleOfArrivalMeasurement;->mAzimuthAngleMeasurement:Landroid/uwb/AngleMeasurement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 112
    iget-object v0, p0, Landroid/uwb/AngleOfArrivalMeasurement;->mAltitudeAngleMeasurement:Landroid/uwb/AngleMeasurement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    return-void
.end method
