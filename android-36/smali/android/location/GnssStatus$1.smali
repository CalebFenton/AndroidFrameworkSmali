.class Landroid/location/GnssStatus$1;
.super Ljava/lang/Object;
.source "GnssStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssStatus;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 381
    .local v1, "svCount":I
    new-array v2, v1, [I

    .line 382
    .local v2, "svidWithFlags":[I
    new-array v3, v1, [F

    .line 383
    .local v3, "cn0DbHzs":[F
    new-array v4, v1, [F

    .line 384
    .local v4, "elevations":[F
    new-array v5, v1, [F

    .line 385
    .local v5, "azimuths":[F
    new-array v6, v1, [F

    .line 386
    .local v6, "carrierFrequencies":[F
    new-array v7, v1, [F

    .line 387
    .local v7, "basebandCn0DbHzs":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_3a

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    aput v8, v2, v0

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    aput v8, v3, v0

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    aput v8, v4, v0

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    aput v8, v5, v0

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    aput v8, v6, v0

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    aput v8, v7, v0

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 396
    .end local v0    # "i":I
    :cond_3a
    new-instance v0, Landroid/location/GnssStatus;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/location/GnssStatus;-><init>(I[I[F[F[F[F[FLandroid/location/GnssStatus-IA;)V

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

    .line 377
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssStatus;
    .registers 3
    .param p1, "size"    # I

    .line 402
    new-array v0, p1, [Landroid/location/GnssStatus;

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

    .line 377
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus$1;->newArray(I)[Landroid/location/GnssStatus;

    move-result-object p1

    return-object p1
.end method
