.class Landroid/location/Location$1;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1015
    new-instance v0, Landroid/location/Location;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v0, "l":Landroid/location/Location;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Location;->-$$Nest$fputmFieldsMask(Landroid/location/Location;I)V

    .line 1017
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/Location;->-$$Nest$fputmTimeMs(Landroid/location/Location;J)V

    .line 1018
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/Location;->-$$Nest$fputmElapsedRealtimeNs(Landroid/location/Location;J)V

    .line 1019
    invoke-virtual {v0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1020
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/Location;->-$$Nest$fputmElapsedRealtimeUncertaintyNs(Landroid/location/Location;D)V

    .line 1022
    :cond_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/Location;->-$$Nest$fputmLatitudeDegrees(Landroid/location/Location;D)V

    .line 1023
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/Location;->-$$Nest$fputmLongitudeDegrees(Landroid/location/Location;D)V

    .line 1024
    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1025
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/Location;->-$$Nest$fputmAltitudeMeters(Landroid/location/Location;D)V

    .line 1027
    :cond_46
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1028
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Location;->-$$Nest$fputmSpeedMetersPerSecond(Landroid/location/Location;F)V

    .line 1030
    :cond_53
    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 1031
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Location;->-$$Nest$fputmBearingDegrees(Landroid/location/Location;F)V

    .line 1033
    :cond_60
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1034
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Location;->-$$Nest$fputmHorizontalAccuracyMeters(Landroid/location/Location;F)V

    .line 1036
    :cond_6d
    invoke-virtual {v0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1037
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Location;->-$$Nest$fputmAltitudeAccuracyMeters(Landroid/location/Location;F)V

    .line 1039
    :cond_7a
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 1040
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Location;->-$$Nest$fputmSpeedAccuracyMetersPerSecond(Landroid/location/Location;F)V

    .line 1042
    :cond_87
    invoke-virtual {v0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1043
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Location;->-$$Nest$fputmBearingAccuracyDegrees(Landroid/location/Location;F)V

    .line 1045
    :cond_94
    invoke-virtual {v0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 1046
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/Location;->-$$Nest$fputmMslAltitudeMeters(Landroid/location/Location;D)V

    .line 1048
    :cond_a1
    invoke-virtual {v0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 1049
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Location;->-$$Nest$fputmMslAltitudeAccuracyMeters(Landroid/location/Location;F)V

    .line 1051
    :cond_ae
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/location/Location;->-$$Nest$fputmExtras(Landroid/location/Location;Landroid/os/Bundle;)V

    .line 1052
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1012
    invoke-virtual {p0, p1}, Landroid/location/Location$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/Location;
    .registers 3
    .param p1, "size"    # I

    .line 1057
    new-array v0, p1, [Landroid/location/Location;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1012
    invoke-virtual {p0, p1}, Landroid/location/Location$1;->newArray(I)[Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method
