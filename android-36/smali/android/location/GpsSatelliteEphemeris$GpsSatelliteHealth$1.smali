.class Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$1;
.super Ljava/lang/Object;
.source "GpsSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 284
    new-instance v0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;

    invoke-direct {v0}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;-><init>()V

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->setSvHealth(I)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;

    move-result-object v0

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->setSvAccur(D)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->setFitInt(D)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;

    move-result-object v0

    .line 289
    .local v0, "gpsSatelliteHealth":Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;
    invoke-virtual {v0}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->build()Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

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

    .line 280
    invoke-virtual {p0, p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;
    .registers 3
    .param p1, "size"    # I

    .line 294
    new-array v0, p1, [Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

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

    .line 280
    invoke-virtual {p0, p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$1;->newArray(I)[Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    move-result-object p1

    return-object p1
.end method
