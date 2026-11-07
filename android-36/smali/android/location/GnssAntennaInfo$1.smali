.class Landroid/location/GnssAntennaInfo$1;
.super Ljava/lang/Object;
.source "GnssAntennaInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAntennaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssAntennaInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAntennaInfo;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    .line 527
    .local v1, "carrierFrequencyMHz":D
    sget-object v0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 528
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 529
    .local v3, "phaseCenterOffset":Landroid/location/GnssAntennaInfo$PhaseCenterOffset;
    sget-object v0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 530
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 531
    .local v4, "phaseCenterVariationCorrections":Landroid/location/GnssAntennaInfo$SphericalCorrections;
    sget-object v0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 532
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 534
    .local v5, "signalGainCorrections":Landroid/location/GnssAntennaInfo$SphericalCorrections;
    new-instance v0, Landroid/location/GnssAntennaInfo;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssAntennaInfo;-><init>(DLandroid/location/GnssAntennaInfo$PhaseCenterOffset;Landroid/location/GnssAntennaInfo$SphericalCorrections;Landroid/location/GnssAntennaInfo$SphericalCorrections;Landroid/location/GnssAntennaInfo-IA;)V

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

    .line 523
    invoke-virtual {p0, p1}, Landroid/location/GnssAntennaInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAntennaInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssAntennaInfo;
    .registers 3
    .param p1, "size"    # I

    .line 543
    new-array v0, p1, [Landroid/location/GnssAntennaInfo;

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

    .line 523
    invoke-virtual {p0, p1}, Landroid/location/GnssAntennaInfo$1;->newArray(I)[Landroid/location/GnssAntennaInfo;

    move-result-object p1

    return-object p1
.end method
