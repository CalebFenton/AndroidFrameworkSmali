.class Landroid/location/GnssMeasurementRequest$1;
.super Ljava/lang/Object;
.source "GnssMeasurementRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssMeasurementRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurementRequest;
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 138
    new-instance v0, Landroid/location/GnssMeasurementRequest;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 142
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/location/GnssMeasurementRequest;-><init>(ZZILandroid/os/WorkSource;Landroid/location/GnssMeasurementRequest-IA;)V

    .line 138
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

    .line 134
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurementRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssMeasurementRequest;
    .registers 3
    .param p1, "i"    # I

    .line 147
    new-array v0, p1, [Landroid/location/GnssMeasurementRequest;

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

    .line 134
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementRequest$1;->newArray(I)[Landroid/location/GnssMeasurementRequest;

    move-result-object p1

    return-object p1
.end method
