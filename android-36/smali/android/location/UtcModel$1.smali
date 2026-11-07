.class Landroid/location/UtcModel$1;
.super Ljava/lang/Object;
.source "UtcModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/UtcModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/UtcModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/UtcModel;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 118
    new-instance v0, Landroid/location/UtcModel$Builder;

    invoke-direct {v0}, Landroid/location/UtcModel$Builder;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/UtcModel$Builder;->setA0(D)Landroid/location/UtcModel$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/UtcModel$Builder;->setA1(D)Landroid/location/UtcModel$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/UtcModel$Builder;->setTimeOfWeek(I)Landroid/location/UtcModel$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/UtcModel$Builder;->setWeekNumber(I)Landroid/location/UtcModel$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/location/UtcModel$Builder;->build()Landroid/location/UtcModel;

    move-result-object v0

    .line 118
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

    .line 115
    invoke-virtual {p0, p1}, Landroid/location/UtcModel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/UtcModel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/UtcModel;
    .registers 3
    .param p1, "size"    # I

    .line 128
    new-array v0, p1, [Landroid/location/UtcModel;

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

    .line 115
    invoke-virtual {p0, p1}, Landroid/location/UtcModel$1;->newArray(I)[Landroid/location/UtcModel;

    move-result-object p1

    return-object p1
.end method
