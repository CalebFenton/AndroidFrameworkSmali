.class final Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequestParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareRequestParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/location/GeofenceHardwareRequestParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v6

    #@5
    .line 142
    .local v6, "geofenceType":I
    if-eqz v6, :cond_0

    #@7
    .line 144
    const-string/jumbo v0, "GeofenceHardwareRequest"

    #@a
    .line 145
    const-string/jumbo v1, "Invalid Geofence type: %d"

    #@d
    const/4 v2, 0x1

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v3

    #@14
    aput-object v3, v2, v4

    #@16
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 146
    const/4 v0, 0x0

    #@1e
    return-object v0

    #@1f
    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@22
    move-result-wide v0

    #@23
    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@26
    move-result-wide v2

    #@27
    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@2a
    move-result-wide v4

    #@2b
    .line 149
    invoke-static/range {v0 .. v5}, Landroid/hardware/location/GeofenceHardwareRequest;->createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;

    #@2e
    move-result-object v8

    #@2f
    .line 153
    .local v8, "request":Landroid/hardware/location/GeofenceHardwareRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v0

    #@33
    invoke-virtual {v8, v0}, Landroid/hardware/location/GeofenceHardwareRequest;->setLastTransition(I)V

    #@36
    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    invoke-virtual {v8, v0}, Landroid/hardware/location/GeofenceHardwareRequest;->setMonitorTransitions(I)V

    #@3d
    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v0

    #@41
    invoke-virtual {v8, v0}, Landroid/hardware/location/GeofenceHardwareRequest;->setUnknownTimer(I)V

    #@44
    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v0

    #@48
    invoke-virtual {v8, v0}, Landroid/hardware/location/GeofenceHardwareRequest;->setNotificationResponsiveness(I)V

    #@4b
    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4e
    move-result v0

    #@4f
    invoke-virtual {v8, v0}, Landroid/hardware/location/GeofenceHardwareRequest;->setSourceTechnologies(I)V

    #@52
    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v7

    #@56
    .line 160
    .local v7, "id":I
    new-instance v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    #@58
    invoke-direct {v0, v7, v8}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;-><init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V

    #@5b
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 140
    invoke-virtual {p0, p1}, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 165
    new-array v0, p1, [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 164
    invoke-virtual {p0, p1}, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;->newArray(I)[Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
