.class Landroid/uwb/AngleOfArrivalMeasurement$1;
.super Ljava/lang/Object;
.source "AngleOfArrivalMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/AngleOfArrivalMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/uwb/AngleOfArrivalMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/uwb/AngleOfArrivalMeasurement;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 119
    new-instance v0, Landroid/uwb/AngleOfArrivalMeasurement$Builder;

    const-class v1, Landroid/uwb/AngleMeasurement;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/uwb/AngleMeasurement;

    invoke-direct {v0, v1}, Landroid/uwb/AngleOfArrivalMeasurement$Builder;-><init>(Landroid/uwb/AngleMeasurement;)V

    .line 122
    .local v0, "builder":Landroid/uwb/AngleOfArrivalMeasurement$Builder;
    const-class v1, Landroid/uwb/AngleMeasurement;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/uwb/AngleMeasurement;

    invoke-virtual {v0, v1}, Landroid/uwb/AngleOfArrivalMeasurement$Builder;->setAltitude(Landroid/uwb/AngleMeasurement;)Landroid/uwb/AngleOfArrivalMeasurement$Builder;

    .line 124
    invoke-virtual {v0}, Landroid/uwb/AngleOfArrivalMeasurement$Builder;->build()Landroid/uwb/AngleOfArrivalMeasurement;

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

    .line 116
    invoke-virtual {p0, p1}, Landroid/uwb/AngleOfArrivalMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/uwb/AngleOfArrivalMeasurement;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/uwb/AngleOfArrivalMeasurement;
    .registers 3
    .param p1, "size"    # I

    .line 129
    new-array v0, p1, [Landroid/uwb/AngleOfArrivalMeasurement;

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

    .line 116
    invoke-virtual {p0, p1}, Landroid/uwb/AngleOfArrivalMeasurement$1;->newArray(I)[Landroid/uwb/AngleOfArrivalMeasurement;

    move-result-object p1

    return-object p1
.end method
