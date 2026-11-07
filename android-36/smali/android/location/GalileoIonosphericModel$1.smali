.class Landroid/location/GalileoIonosphericModel$1;
.super Ljava/lang/Object;
.source "GalileoIonosphericModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GalileoIonosphericModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GalileoIonosphericModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GalileoIonosphericModel;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 79
    new-instance v0, Landroid/location/GalileoIonosphericModel$Builder;

    invoke-direct {v0}, Landroid/location/GalileoIonosphericModel$Builder;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GalileoIonosphericModel$Builder;->setAi0(D)Landroid/location/GalileoIonosphericModel$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GalileoIonosphericModel$Builder;->setAi1(D)Landroid/location/GalileoIonosphericModel$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GalileoIonosphericModel$Builder;->setAi2(D)Landroid/location/GalileoIonosphericModel$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/location/GalileoIonosphericModel$Builder;->build()Landroid/location/GalileoIonosphericModel;

    move-result-object v0

    .line 79
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

    .line 76
    invoke-virtual {p0, p1}, Landroid/location/GalileoIonosphericModel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GalileoIonosphericModel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GalileoIonosphericModel;
    .registers 3
    .param p1, "size"    # I

    .line 88
    new-array v0, p1, [Landroid/location/GalileoIonosphericModel;

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

    .line 76
    invoke-virtual {p0, p1}, Landroid/location/GalileoIonosphericModel$1;->newArray(I)[Landroid/location/GalileoIonosphericModel;

    move-result-object p1

    return-object p1
.end method
