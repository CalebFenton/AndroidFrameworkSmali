.class Landroid/location/Geofence$1;
.super Ljava/lang/Object;
.source "Geofence.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Geofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/Geofence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/Geofence;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 97
    new-instance v0, Landroid/location/Geofence;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Landroid/location/Geofence;-><init>(DDFJ)V

    .line 97
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

    .line 94
    invoke-virtual {p0, p1}, Landroid/location/Geofence$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Geofence;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/Geofence;
    .registers 3
    .param p1, "size"    # I

    .line 106
    new-array v0, p1, [Landroid/location/Geofence;

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

    .line 94
    invoke-virtual {p0, p1}, Landroid/location/Geofence$1;->newArray(I)[Landroid/location/Geofence;

    move-result-object p1

    return-object p1
.end method
