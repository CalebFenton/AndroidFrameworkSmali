.class final Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;
.super Ljava/lang/Object;
.source "GeofenceHardwareMonitorEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareMonitorEvent;
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
        "Landroid/hardware/location/GeofenceHardwareMonitorEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/GeofenceHardwareMonitorEvent;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 79
    const-class v5, Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    #@2
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    .line 80
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v3

    #@a
    .line 81
    .local v3, "monitoringType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v2

    #@e
    .line 82
    .local v2, "monitoringStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v4

    #@12
    .line 83
    .local v4, "sourceTechnologies":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/location/Location;

    #@18
    .line 85
    .local v1, "location":Landroid/location/Location;
    new-instance v5, Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    #@1a
    invoke-direct {v5, v3, v2, v4, v1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;-><init>(IIILandroid/location/Location;)V

    #@1d
    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 78
    invoke-virtual {p0, p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/location/GeofenceHardwareMonitorEvent;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 94
    new-array v0, p1, [Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;->newArray(I)[Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
