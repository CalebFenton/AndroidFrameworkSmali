.class Landroid/location/GnssCorrectionComponent$1;
.super Ljava/lang/Object;
.source "GnssCorrectionComponent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssCorrectionComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssCorrectionComponent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssCorrectionComponent;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "sourceKey":Ljava/lang/String;
    sget-object v1, Landroid/location/GnssCorrectionComponent$GnssInterval;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssCorrectionComponent$GnssInterval;

    .line 97
    .local v1, "validityInterval":Landroid/location/GnssCorrectionComponent$GnssInterval;
    sget-object v2, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 98
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;

    .line 99
    .local v2, "pseudorangeCorrection":Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;
    new-instance v3, Landroid/location/GnssCorrectionComponent;

    invoke-direct {v3, v0, v1, v2}, Landroid/location/GnssCorrectionComponent;-><init>(Ljava/lang/String;Landroid/location/GnssCorrectionComponent$GnssInterval;Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;)V

    return-object v3
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

    .line 91
    invoke-virtual {p0, p1}, Landroid/location/GnssCorrectionComponent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssCorrectionComponent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssCorrectionComponent;
    .registers 3
    .param p1, "size"    # I

    .line 105
    new-array v0, p1, [Landroid/location/GnssCorrectionComponent;

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

    .line 91
    invoke-virtual {p0, p1}, Landroid/location/GnssCorrectionComponent$1;->newArray(I)[Landroid/location/GnssCorrectionComponent;

    move-result-object p1

    return-object p1
.end method
