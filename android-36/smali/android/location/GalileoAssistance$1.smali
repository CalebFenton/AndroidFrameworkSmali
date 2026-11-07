.class Landroid/location/GalileoAssistance$1;
.super Ljava/lang/Object;
.source "GalileoAssistance.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GalileoAssistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GalileoAssistance;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GalileoAssistance;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 197
    new-instance v0, Landroid/location/GalileoAssistance$Builder;

    invoke-direct {v0}, Landroid/location/GalileoAssistance$Builder;-><init>()V

    sget-object v1, Landroid/location/GnssAlmanac;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 198
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssAlmanac;

    invoke-virtual {v0, v1}, Landroid/location/GalileoAssistance$Builder;->setAlmanac(Landroid/location/GnssAlmanac;)Landroid/location/GalileoAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GalileoIonosphericModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 200
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GalileoIonosphericModel;

    .line 199
    invoke-virtual {v0, v1}, Landroid/location/GalileoAssistance$Builder;->setIonosphericModel(Landroid/location/GalileoIonosphericModel;)Landroid/location/GalileoAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/UtcModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 201
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/UtcModel;

    invoke-virtual {v0, v1}, Landroid/location/GalileoAssistance$Builder;->setUtcModel(Landroid/location/UtcModel;)Landroid/location/GalileoAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/LeapSecondsModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 202
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LeapSecondsModel;

    invoke-virtual {v0, v1}, Landroid/location/GalileoAssistance$Builder;->setLeapSecondsModel(Landroid/location/LeapSecondsModel;)Landroid/location/GalileoAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/AuxiliaryInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 204
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Landroid/location/GalileoAssistance$Builder;->setAuxiliaryInformation(Ljava/util/List;)Landroid/location/GalileoAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/TimeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 205
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/GalileoAssistance$Builder;->setTimeModels(Ljava/util/List;)Landroid/location/GalileoAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GalileoSatelliteEphemeris;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 207
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Landroid/location/GalileoAssistance$Builder;->setSatelliteEphemeris(Ljava/util/List;)Landroid/location/GalileoAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/RealTimeIntegrityModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 209
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Landroid/location/GalileoAssistance$Builder;->setRealTimeIntegrityModels(Ljava/util/List;)Landroid/location/GalileoAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GnssAssistance$GnssSatelliteCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 211
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Landroid/location/GalileoAssistance$Builder;->setSatelliteCorrections(Ljava/util/List;)Landroid/location/GalileoAssistance$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/location/GalileoAssistance$Builder;->build()Landroid/location/GalileoAssistance;

    move-result-object v0

    .line 197
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

    .line 194
    invoke-virtual {p0, p1}, Landroid/location/GalileoAssistance$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GalileoAssistance;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GalileoAssistance;
    .registers 3
    .param p1, "size"    # I

    .line 217
    new-array v0, p1, [Landroid/location/GalileoAssistance;

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

    .line 194
    invoke-virtual {p0, p1}, Landroid/location/GalileoAssistance$1;->newArray(I)[Landroid/location/GalileoAssistance;

    move-result-object p1

    return-object p1
.end method
