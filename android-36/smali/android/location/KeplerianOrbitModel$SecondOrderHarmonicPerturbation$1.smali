.class Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$1;
.super Ljava/lang/Object;
.source "KeplerianOrbitModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 399
    new-instance v0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;

    invoke-direct {v0}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;-><init>()V

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->setCic(D)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;

    move-result-object v0

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->setCis(D)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;

    move-result-object v0

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->setCrc(D)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;

    move-result-object v0

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->setCrs(D)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;

    move-result-object v0

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->setCuc(D)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;

    move-result-object v0

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->setCus(D)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;

    move-result-object v0

    .line 407
    .local v0, "secondOrderHarmonicPerturbation":Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;
    invoke-virtual {v0}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->build()Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;

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

    .line 394
    invoke-virtual {p0, p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;
    .registers 3
    .param p1, "size"    # I

    .line 412
    new-array v0, p1, [Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;

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

    .line 394
    invoke-virtual {p0, p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$1;->newArray(I)[Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;

    move-result-object p1

    return-object p1
.end method
