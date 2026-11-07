.class Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequestParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareRequestParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/location/GeofenceHardwareRequestParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .local v0, "geofenceType":I
    if-nez v0, :cond_44

    .line 146
    nop

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 146
    invoke-static/range {v1 .. v6}, Landroid/hardware/location/GeofenceHardwareRequest;->createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;

    move-result-object v1

    .line 150
    .local v1, "request":Landroid/hardware/location/GeofenceHardwareRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/location/GeofenceHardwareRequest;->setLastTransition(I)V

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/location/GeofenceHardwareRequest;->setMonitorTransitions(I)V

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/location/GeofenceHardwareRequest;->setUnknownTimer(I)V

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/location/GeofenceHardwareRequest;->setNotificationResponsiveness(I)V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/location/GeofenceHardwareRequest;->setSourceTechnologies(I)V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .local v2, "id":I
    new-instance v3, Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    invoke-direct {v3, v2, v1}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;-><init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V

    return-object v3

    .line 143
    .end local v1    # "request":Landroid/hardware/location/GeofenceHardwareRequest;
    .end local v2    # "id":I
    :cond_44
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Geofence type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 138
    invoke-virtual {p0, p1}, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .registers 3
    .param p1, "size"    # I

    .line 162
    new-array v0, p1, [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

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

    .line 138
    invoke-virtual {p0, p1}, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;->newArray(I)[Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    move-result-object p1

    return-object p1
.end method
