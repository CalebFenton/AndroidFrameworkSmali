.class Landroid/uwb/DistanceMeasurement$1;
.super Ljava/lang/Object;
.source "DistanceMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/DistanceMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/uwb/DistanceMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/uwb/DistanceMeasurement;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 123
    new-instance v0, Landroid/uwb/DistanceMeasurement$Builder;

    invoke-direct {v0}, Landroid/uwb/DistanceMeasurement$Builder;-><init>()V

    .line 124
    .local v0, "builder":Landroid/uwb/DistanceMeasurement$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/uwb/DistanceMeasurement$Builder;->setMeters(D)Landroid/uwb/DistanceMeasurement$Builder;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/uwb/DistanceMeasurement$Builder;->setErrorMeters(D)Landroid/uwb/DistanceMeasurement$Builder;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/uwb/DistanceMeasurement$Builder;->setConfidenceLevel(D)Landroid/uwb/DistanceMeasurement$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/uwb/DistanceMeasurement$Builder;->build()Landroid/uwb/DistanceMeasurement;

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

    .line 120
    invoke-virtual {p0, p1}, Landroid/uwb/DistanceMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/uwb/DistanceMeasurement;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/uwb/DistanceMeasurement;
    .registers 3
    .param p1, "size"    # I

    .line 132
    new-array v0, p1, [Landroid/uwb/DistanceMeasurement;

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

    .line 120
    invoke-virtual {p0, p1}, Landroid/uwb/DistanceMeasurement$1;->newArray(I)[Landroid/uwb/DistanceMeasurement;

    move-result-object p1

    return-object p1
.end method
