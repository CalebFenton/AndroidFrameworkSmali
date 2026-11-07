.class Landroid/location/TimeModel$1;
.super Ljava/lang/Object;
.source "TimeModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/TimeModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/TimeModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/TimeModel;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 113
    new-instance v0, Landroid/location/TimeModel$Builder;

    invoke-direct {v0}, Landroid/location/TimeModel$Builder;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/TimeModel$Builder;->setToGnss(I)Landroid/location/TimeModel$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/TimeModel$Builder;->setA0(D)Landroid/location/TimeModel$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/TimeModel$Builder;->setA1(D)Landroid/location/TimeModel$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/TimeModel$Builder;->setTimeOfWeek(I)Landroid/location/TimeModel$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/TimeModel$Builder;->setWeekNumber(I)Landroid/location/TimeModel$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/location/TimeModel$Builder;->build()Landroid/location/TimeModel;

    move-result-object v0

    .line 113
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

    .line 110
    invoke-virtual {p0, p1}, Landroid/location/TimeModel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/TimeModel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/TimeModel;
    .registers 3
    .param p1, "size"    # I

    .line 124
    new-array v0, p1, [Landroid/location/TimeModel;

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

    .line 110
    invoke-virtual {p0, p1}, Landroid/location/TimeModel$1;->newArray(I)[Landroid/location/TimeModel;

    move-result-object p1

    return-object p1
.end method
