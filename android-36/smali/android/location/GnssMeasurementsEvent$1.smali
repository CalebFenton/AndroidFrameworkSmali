.class Landroid/location/GnssMeasurementsEvent$1;
.super Ljava/lang/Object;
.source "GnssMeasurementsEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssMeasurementsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurementsEvent;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 203
    .local v1, "flag":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v2, Landroid/location/GnssClock;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/location/GnssClock;

    .line 205
    .local v2, "clock":Landroid/location/GnssClock;
    sget-object v0, Landroid/location/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 206
    .local v3, "measurements":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssMeasurement;>;"
    sget-object v0, Landroid/location/GnssAutomaticGainControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 208
    .local v4, "agcs":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAutomaticGainControl;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 209
    .local v5, "isFullTracking":Z
    new-instance v0, Landroid/location/GnssMeasurementsEvent;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssMeasurementsEvent;-><init>(ILandroid/location/GnssClock;Ljava/util/List;Ljava/util/List;ZLandroid/location/GnssMeasurementsEvent-IA;)V

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

    .line 199
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementsEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurementsEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssMeasurementsEvent;
    .registers 3
    .param p1, "size"    # I

    .line 214
    new-array v0, p1, [Landroid/location/GnssMeasurementsEvent;

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

    .line 199
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementsEvent$1;->newArray(I)[Landroid/location/GnssMeasurementsEvent;

    move-result-object p1

    return-object p1
.end method
