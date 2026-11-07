.class Landroid/location/QzssAssistance$1;
.super Ljava/lang/Object;
.source "QzssAssistance.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/QzssAssistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/QzssAssistance;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/QzssAssistance;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 163
    new-instance v0, Landroid/location/QzssAssistance$Builder;

    invoke-direct {v0}, Landroid/location/QzssAssistance$Builder;-><init>()V

    sget-object v1, Landroid/location/GnssAlmanac;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 164
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssAlmanac;

    invoke-virtual {v0, v1}, Landroid/location/QzssAssistance$Builder;->setAlmanac(Landroid/location/GnssAlmanac;)Landroid/location/QzssAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/KlobucharIonosphericModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 166
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/KlobucharIonosphericModel;

    .line 165
    invoke-virtual {v0, v1}, Landroid/location/QzssAssistance$Builder;->setIonosphericModel(Landroid/location/KlobucharIonosphericModel;)Landroid/location/QzssAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/UtcModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 167
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/UtcModel;

    invoke-virtual {v0, v1}, Landroid/location/QzssAssistance$Builder;->setUtcModel(Landroid/location/UtcModel;)Landroid/location/QzssAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/LeapSecondsModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 168
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LeapSecondsModel;

    invoke-virtual {v0, v1}, Landroid/location/QzssAssistance$Builder;->setLeapSecondsModel(Landroid/location/LeapSecondsModel;)Landroid/location/QzssAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/AuxiliaryInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 170
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/location/QzssAssistance$Builder;->setAuxiliaryInformation(Ljava/util/List;)Landroid/location/QzssAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/TimeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 171
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/QzssAssistance$Builder;->setTimeModels(Ljava/util/List;)Landroid/location/QzssAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/QzssSatelliteEphemeris;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 173
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/location/QzssAssistance$Builder;->setSatelliteEphemeris(Ljava/util/List;)Landroid/location/QzssAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/RealTimeIntegrityModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 175
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Landroid/location/QzssAssistance$Builder;->setRealTimeIntegrityModels(Ljava/util/List;)Landroid/location/QzssAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GnssAssistance$GnssSatelliteCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 177
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Landroid/location/QzssAssistance$Builder;->setSatelliteCorrections(Ljava/util/List;)Landroid/location/QzssAssistance$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/location/QzssAssistance$Builder;->build()Landroid/location/QzssAssistance;

    move-result-object v0

    .line 163
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

    .line 159
    invoke-virtual {p0, p1}, Landroid/location/QzssAssistance$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/QzssAssistance;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/QzssAssistance;
    .registers 3
    .param p1, "size"    # I

    .line 183
    new-array v0, p1, [Landroid/location/QzssAssistance;

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

    .line 159
    invoke-virtual {p0, p1}, Landroid/location/QzssAssistance$1;->newArray(I)[Landroid/location/QzssAssistance;

    move-result-object p1

    return-object p1
.end method
