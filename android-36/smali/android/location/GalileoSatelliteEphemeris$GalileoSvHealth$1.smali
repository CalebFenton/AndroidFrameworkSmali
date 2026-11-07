.class Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$1;
.super Ljava/lang/Object;
.source "GalileoSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 370
    new-instance v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;

    invoke-direct {v0}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;-><init>()V

    .line 371
    .local v0, "galileoSvHealth":Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->setDataValidityStatusE1b(I)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->setSignalHealthStatusE1b(I)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->setDataValidityStatusE5a(I)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->setSignalHealthStatusE5a(I)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->setDataValidityStatusE5b(I)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->setSignalHealthStatusE5b(I)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;

    .line 377
    invoke-virtual {v0}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->build()Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

    move-result-object v1

    return-object v1
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

    .line 366
    invoke-virtual {p0, p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;
    .registers 3
    .param p1, "size"    # I

    .line 382
    new-array v0, p1, [Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

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

    .line 366
    invoke-virtual {p0, p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$1;->newArray(I)[Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

    move-result-object p1

    return-object p1
.end method
