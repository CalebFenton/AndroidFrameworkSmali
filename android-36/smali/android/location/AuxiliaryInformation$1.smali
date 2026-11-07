.class Landroid/location/AuxiliaryInformation$1;
.super Ljava/lang/Object;
.source "AuxiliaryInformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/AuxiliaryInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/AuxiliaryInformation;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/AuxiliaryInformation;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 197
    new-instance v0, Landroid/location/AuxiliaryInformation$Builder;

    invoke-direct {v0}, Landroid/location/AuxiliaryInformation$Builder;-><init>()V

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/AuxiliaryInformation$Builder;->setSvid(I)Landroid/location/AuxiliaryInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GnssSignalType;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 200
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Landroid/location/AuxiliaryInformation$Builder;->setAvailableSignalTypes(Ljava/util/List;)Landroid/location/AuxiliaryInformation$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/AuxiliaryInformation$Builder;->setFrequencyChannelNumber(I)Landroid/location/AuxiliaryInformation$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/AuxiliaryInformation$Builder;->setSatType(I)Landroid/location/AuxiliaryInformation$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/location/AuxiliaryInformation$Builder;->build()Landroid/location/AuxiliaryInformation;

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
    invoke-virtual {p0, p1}, Landroid/location/AuxiliaryInformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/AuxiliaryInformation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/AuxiliaryInformation;
    .registers 3
    .param p1, "size"    # I

    .line 208
    new-array v0, p1, [Landroid/location/AuxiliaryInformation;

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
    invoke-virtual {p0, p1}, Landroid/location/AuxiliaryInformation$1;->newArray(I)[Landroid/location/AuxiliaryInformation;

    move-result-object p1

    return-object p1
.end method
