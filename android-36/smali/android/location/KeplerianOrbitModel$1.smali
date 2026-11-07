.class Landroid/location/KeplerianOrbitModel$1;
.super Ljava/lang/Object;
.source "KeplerianOrbitModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/KeplerianOrbitModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/KeplerianOrbitModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/KeplerianOrbitModel;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 158
    new-instance v0, Landroid/location/KeplerianOrbitModel$Builder;

    invoke-direct {v0}, Landroid/location/KeplerianOrbitModel$Builder;-><init>()V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$Builder;->setRootA(D)Landroid/location/KeplerianOrbitModel$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$Builder;->setEccentricity(D)Landroid/location/KeplerianOrbitModel$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$Builder;->setI0(D)Landroid/location/KeplerianOrbitModel$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$Builder;->setIDot(D)Landroid/location/KeplerianOrbitModel$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$Builder;->setOmega(D)Landroid/location/KeplerianOrbitModel$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$Builder;->setOmega0(D)Landroid/location/KeplerianOrbitModel$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$Builder;->setOmegaDot(D)Landroid/location/KeplerianOrbitModel$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$Builder;->setM0(D)Landroid/location/KeplerianOrbitModel$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/KeplerianOrbitModel$Builder;->setDeltaN(D)Landroid/location/KeplerianOrbitModel$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 170
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;

    .line 169
    invoke-virtual {v0, v1}, Landroid/location/KeplerianOrbitModel$Builder;->setSecondOrderHarmonicPerturbation(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;)Landroid/location/KeplerianOrbitModel$Builder;

    move-result-object v0

    .line 172
    .local v0, "keplerianOrbitModel":Landroid/location/KeplerianOrbitModel$Builder;
    invoke-virtual {v0}, Landroid/location/KeplerianOrbitModel$Builder;->build()Landroid/location/KeplerianOrbitModel;

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

    .line 154
    invoke-virtual {p0, p1}, Landroid/location/KeplerianOrbitModel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/KeplerianOrbitModel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/KeplerianOrbitModel;
    .registers 3
    .param p1, "size"    # I

    .line 177
    new-array v0, p1, [Landroid/location/KeplerianOrbitModel;

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

    .line 154
    invoke-virtual {p0, p1}, Landroid/location/KeplerianOrbitModel$1;->newArray(I)[Landroid/location/KeplerianOrbitModel;

    move-result-object p1

    return-object p1
.end method
