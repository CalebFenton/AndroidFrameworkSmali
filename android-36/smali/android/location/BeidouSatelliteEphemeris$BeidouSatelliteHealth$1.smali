.class Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$1;
.super Ljava/lang/Object;
.source "BeidouSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 464
    new-instance v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;

    invoke-direct {v0}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;-><init>()V

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;->setSatH1(I)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;->setSvAccur(D)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;

    move-result-object v0

    .line 466
    .local v0, "beidouSatelliteHealth":Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;
    invoke-virtual {v0}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;->build()Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

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

    .line 460
    invoke-virtual {p0, p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;
    .registers 3
    .param p1, "size"    # I

    .line 471
    new-array v0, p1, [Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

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

    .line 460
    invoke-virtual {p0, p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$1;->newArray(I)[Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

    move-result-object p1

    return-object p1
.end method
