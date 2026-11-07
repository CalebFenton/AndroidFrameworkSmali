.class Landroid/location/GlonassAssistance$1;
.super Ljava/lang/Object;
.source "GlonassAssistance.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GlonassAssistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GlonassAssistance;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GlonassAssistance;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 173
    new-instance v0, Landroid/location/GlonassAssistance$Builder;

    invoke-direct {v0}, Landroid/location/GlonassAssistance$Builder;-><init>()V

    sget-object v1, Landroid/location/GlonassAlmanac;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 174
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GlonassAlmanac;

    invoke-virtual {v0, v1}, Landroid/location/GlonassAssistance$Builder;->setAlmanac(Landroid/location/GlonassAlmanac;)Landroid/location/GlonassAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/UtcModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 175
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/UtcModel;

    invoke-virtual {v0, v1}, Landroid/location/GlonassAssistance$Builder;->setUtcModel(Landroid/location/UtcModel;)Landroid/location/GlonassAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/AuxiliaryInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 177
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Landroid/location/GlonassAssistance$Builder;->setAuxiliaryInformation(Ljava/util/List;)Landroid/location/GlonassAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/TimeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 178
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/GlonassAssistance$Builder;->setTimeModels(Ljava/util/List;)Landroid/location/GlonassAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GlonassSatelliteEphemeris;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 180
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Landroid/location/GlonassAssistance$Builder;->setSatelliteEphemeris(Ljava/util/List;)Landroid/location/GlonassAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GnssAssistance$GnssSatelliteCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 182
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Landroid/location/GlonassAssistance$Builder;->setSatelliteCorrections(Ljava/util/List;)Landroid/location/GlonassAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/RealTimeIntegrityModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 184
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Landroid/location/GlonassAssistance$Builder;->setRealTimeIntegrityModels(Ljava/util/List;)Landroid/location/GlonassAssistance$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/location/GlonassAssistance$Builder;->build()Landroid/location/GlonassAssistance;

    move-result-object v0

    .line 173
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

    .line 170
    invoke-virtual {p0, p1}, Landroid/location/GlonassAssistance$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GlonassAssistance;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GlonassAssistance;
    .registers 3
    .param p1, "size"    # I

    .line 190
    new-array v0, p1, [Landroid/location/GlonassAssistance;

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

    .line 170
    invoke-virtual {p0, p1}, Landroid/location/GlonassAssistance$1;->newArray(I)[Landroid/location/GlonassAssistance;

    move-result-object p1

    return-object p1
.end method
