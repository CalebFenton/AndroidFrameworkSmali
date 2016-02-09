.class final Landroid/location/Geofence$1;
.super Ljava/lang/Object;
.source "Geofence.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Geofence;
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
        "Landroid/location/Geofence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Geofence;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v5

    #@4
    .line 105
    .local v5, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@7
    move-result-wide v0

    #@8
    .line 106
    .local v0, "latitude":D
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@b
    move-result-wide v2

    #@c
    .line 107
    .local v2, "longitude":D
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@f
    move-result v4

    #@10
    .line 108
    .local v4, "radius":F
    invoke-static {v5}, Landroid/location/Geofence;->-wrap0(I)V

    #@13
    .line 109
    invoke-static {v0, v1, v2, v3, v4}, Landroid/location/Geofence;->createCircle(DDF)Landroid/location/Geofence;

    #@16
    move-result-object v6

    #@17
    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/location/Geofence$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Geofence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/Geofence;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 113
    new-array v0, p1, [Landroid/location/Geofence;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/location/Geofence$1;->newArray(I)[Landroid/location/Geofence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
