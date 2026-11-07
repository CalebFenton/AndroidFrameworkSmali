.class Landroid/location/RealTimeIntegrityModel$1;
.super Ljava/lang/Object;
.source "RealTimeIntegrityModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/RealTimeIntegrityModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/RealTimeIntegrityModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/RealTimeIntegrityModel;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 174
    new-instance v0, Landroid/location/RealTimeIntegrityModel$Builder;

    invoke-direct {v0}, Landroid/location/RealTimeIntegrityModel$Builder;-><init>()V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/RealTimeIntegrityModel$Builder;->setBadSvid(I)Landroid/location/RealTimeIntegrityModel$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GnssSignalType;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 178
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/location/RealTimeIntegrityModel$Builder;->setBadSignalTypes(Ljava/util/List;)Landroid/location/RealTimeIntegrityModel$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/RealTimeIntegrityModel$Builder;->setPublishDateSeconds(J)Landroid/location/RealTimeIntegrityModel$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/RealTimeIntegrityModel$Builder;->setStartDateSeconds(J)Landroid/location/RealTimeIntegrityModel$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/RealTimeIntegrityModel$Builder;->setEndDateSeconds(J)Landroid/location/RealTimeIntegrityModel$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/RealTimeIntegrityModel$Builder;->setAdvisoryType(Ljava/lang/String;)Landroid/location/RealTimeIntegrityModel$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/RealTimeIntegrityModel$Builder;->setAdvisoryNumber(Ljava/lang/String;)Landroid/location/RealTimeIntegrityModel$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/location/RealTimeIntegrityModel$Builder;->build()Landroid/location/RealTimeIntegrityModel;

    move-result-object v0

    .line 185
    .local v0, "realTimeIntegrityModel":Landroid/location/RealTimeIntegrityModel;
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

    .line 170
    invoke-virtual {p0, p1}, Landroid/location/RealTimeIntegrityModel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/RealTimeIntegrityModel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/RealTimeIntegrityModel;
    .registers 3
    .param p1, "size"    # I

    .line 190
    new-array v0, p1, [Landroid/location/RealTimeIntegrityModel;

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

    .line 170
    invoke-virtual {p0, p1}, Landroid/location/RealTimeIntegrityModel$1;->newArray(I)[Landroid/location/RealTimeIntegrityModel;

    move-result-object p1

    return-object p1
.end method
