.class Landroid/location/GnssAssistance$GnssSatelliteCorrections$1;
.super Ljava/lang/Object;
.source "GnssAssistance.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAssistance$GnssSatelliteCorrections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssAssistance$GnssSatelliteCorrections;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAssistance$GnssSatelliteCorrections;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 278
    .local v0, "svid":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v1, "ionosphericCorrections":Ljava/util/List;, "Ljava/util/List<Landroid/location/IonosphericCorrection;>;"
    sget-object v2, Landroid/location/IonosphericCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 280
    new-instance v2, Landroid/location/GnssAssistance$GnssSatelliteCorrections;

    invoke-direct {v2, v0, v1}, Landroid/location/GnssAssistance$GnssSatelliteCorrections;-><init>(ILjava/util/List;)V

    return-object v2
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

    .line 273
    invoke-virtual {p0, p1}, Landroid/location/GnssAssistance$GnssSatelliteCorrections$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAssistance$GnssSatelliteCorrections;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssAssistance$GnssSatelliteCorrections;
    .registers 3
    .param p1, "size"    # I

    .line 285
    new-array v0, p1, [Landroid/location/GnssAssistance$GnssSatelliteCorrections;

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

    .line 273
    invoke-virtual {p0, p1}, Landroid/location/GnssAssistance$GnssSatelliteCorrections$1;->newArray(I)[Landroid/location/GnssAssistance$GnssSatelliteCorrections;

    move-result-object p1

    return-object p1
.end method
