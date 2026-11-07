.class Landroid/location/GpsAssistance$1;
.super Ljava/lang/Object;
.source "GpsAssistance.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsAssistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GpsAssistance;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsAssistance;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 164
    new-instance v0, Landroid/location/GpsAssistance$Builder;

    invoke-direct {v0}, Landroid/location/GpsAssistance$Builder;-><init>()V

    sget-object v1, Landroid/location/GnssAlmanac;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 165
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssAlmanac;

    invoke-virtual {v0, v1}, Landroid/location/GpsAssistance$Builder;->setAlmanac(Landroid/location/GnssAlmanac;)Landroid/location/GpsAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/KlobucharIonosphericModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 167
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/KlobucharIonosphericModel;

    .line 166
    invoke-virtual {v0, v1}, Landroid/location/GpsAssistance$Builder;->setIonosphericModel(Landroid/location/KlobucharIonosphericModel;)Landroid/location/GpsAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/UtcModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 168
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/UtcModel;

    invoke-virtual {v0, v1}, Landroid/location/GpsAssistance$Builder;->setUtcModel(Landroid/location/UtcModel;)Landroid/location/GpsAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/LeapSecondsModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 169
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LeapSecondsModel;

    invoke-virtual {v0, v1}, Landroid/location/GpsAssistance$Builder;->setLeapSecondsModel(Landroid/location/LeapSecondsModel;)Landroid/location/GpsAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/AuxiliaryInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 171
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Landroid/location/GpsAssistance$Builder;->setAuxiliaryInformation(Ljava/util/List;)Landroid/location/GpsAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/TimeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 172
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/GpsAssistance$Builder;->setTimeModels(Ljava/util/List;)Landroid/location/GpsAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GpsSatelliteEphemeris;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 174
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Landroid/location/GpsAssistance$Builder;->setSatelliteEphemeris(Ljava/util/List;)Landroid/location/GpsAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/RealTimeIntegrityModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 176
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Landroid/location/GpsAssistance$Builder;->setRealTimeIntegrityModels(Ljava/util/List;)Landroid/location/GpsAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GnssAssistance$GnssSatelliteCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 178
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/location/GpsAssistance$Builder;->setSatelliteCorrections(Ljava/util/List;)Landroid/location/GpsAssistance$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/location/GpsAssistance$Builder;->build()Landroid/location/GpsAssistance;

    move-result-object v0

    .line 164
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

    .line 160
    invoke-virtual {p0, p1}, Landroid/location/GpsAssistance$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsAssistance;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GpsAssistance;
    .registers 3
    .param p1, "size"    # I

    .line 184
    new-array v0, p1, [Landroid/location/GpsAssistance;

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

    .line 160
    invoke-virtual {p0, p1}, Landroid/location/GpsAssistance$1;->newArray(I)[Landroid/location/GpsAssistance;

    move-result-object p1

    return-object p1
.end method
