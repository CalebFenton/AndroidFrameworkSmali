.class Landroid/location/GnssAssistance$1;
.super Ljava/lang/Object;
.source "GnssAssistance.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAssistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssAssistance;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAssistance;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 101
    new-instance v0, Landroid/location/GnssAssistance$Builder;

    invoke-direct {v0}, Landroid/location/GnssAssistance$Builder;-><init>()V

    sget-object v1, Landroid/location/GpsAssistance;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 102
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsAssistance;

    invoke-virtual {v0, v1}, Landroid/location/GnssAssistance$Builder;->setGpsAssistance(Landroid/location/GpsAssistance;)Landroid/location/GnssAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GlonassAssistance;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GlonassAssistance;

    invoke-virtual {v0, v1}, Landroid/location/GnssAssistance$Builder;->setGlonassAssistance(Landroid/location/GlonassAssistance;)Landroid/location/GnssAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GalileoAssistance;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 104
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GalileoAssistance;

    invoke-virtual {v0, v1}, Landroid/location/GnssAssistance$Builder;->setGalileoAssistance(Landroid/location/GalileoAssistance;)Landroid/location/GnssAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/BeidouAssistance;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 105
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/BeidouAssistance;

    invoke-virtual {v0, v1}, Landroid/location/GnssAssistance$Builder;->setBeidouAssistance(Landroid/location/BeidouAssistance;)Landroid/location/GnssAssistance$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/QzssAssistance;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 106
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/QzssAssistance;

    invoke-virtual {v0, v1}, Landroid/location/GnssAssistance$Builder;->setQzssAssistance(Landroid/location/QzssAssistance;)Landroid/location/GnssAssistance$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/location/GnssAssistance$Builder;->build()Landroid/location/GnssAssistance;

    move-result-object v0

    .line 101
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

    .line 97
    invoke-virtual {p0, p1}, Landroid/location/GnssAssistance$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAssistance;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssAssistance;
    .registers 3
    .param p1, "size"    # I

    .line 112
    new-array v0, p1, [Landroid/location/GnssAssistance;

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

    .line 97
    invoke-virtual {p0, p1}, Landroid/location/GnssAssistance$1;->newArray(I)[Landroid/location/GnssAssistance;

    move-result-object p1

    return-object p1
.end method
