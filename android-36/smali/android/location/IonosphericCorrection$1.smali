.class Landroid/location/IonosphericCorrection$1;
.super Ljava/lang/Object;
.source "IonosphericCorrection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IonosphericCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/IonosphericCorrection;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/IonosphericCorrection;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 81
    .local v0, "carrierFrequencyHz":J
    sget-object v2, Landroid/location/GnssCorrectionComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 82
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GnssCorrectionComponent;

    .line 83
    .local v2, "ionosphericCorrection":Landroid/location/GnssCorrectionComponent;
    new-instance v3, Landroid/location/IonosphericCorrection;

    invoke-direct {v3, v0, v1, v2}, Landroid/location/IonosphericCorrection;-><init>(JLandroid/location/GnssCorrectionComponent;)V

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

    .line 76
    invoke-virtual {p0, p1}, Landroid/location/IonosphericCorrection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/IonosphericCorrection;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/IonosphericCorrection;
    .registers 3
    .param p1, "size"    # I

    .line 88
    new-array v0, p1, [Landroid/location/IonosphericCorrection;

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
    invoke-virtual {p0, p1}, Landroid/location/IonosphericCorrection$1;->newArray(I)[Landroid/location/IonosphericCorrection;

    move-result-object p1

    return-object p1
.end method
