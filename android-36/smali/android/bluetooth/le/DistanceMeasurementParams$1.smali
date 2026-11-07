.class Landroid/bluetooth/le/DistanceMeasurementParams$1;
.super Ljava/lang/Object;
.source "DistanceMeasurementParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/DistanceMeasurementParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/le/DistanceMeasurementParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/DistanceMeasurementParams;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 202
    new-instance v0, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, v1}, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 203
    .local v0, "builder":Landroid/bluetooth/le/DistanceMeasurementParams$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->setDurationSeconds(I)Landroid/bluetooth/le/DistanceMeasurementParams$Builder;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->setFrequency(I)Landroid/bluetooth/le/DistanceMeasurementParams$Builder;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->setMethodId(I)Landroid/bluetooth/le/DistanceMeasurementParams$Builder;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    .line 207
    sget-object v1, Landroid/bluetooth/le/ChannelSoundingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 208
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ChannelSoundingParams;

    .line 207
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->setChannelSoundingParams(Landroid/bluetooth/le/ChannelSoundingParams;)Landroid/bluetooth/le/DistanceMeasurementParams$Builder;

    .line 210
    :cond_34
    invoke-virtual {v0}, Landroid/bluetooth/le/DistanceMeasurementParams$Builder;->build()Landroid/bluetooth/le/DistanceMeasurementParams;

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

    .line 199
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/DistanceMeasurementParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/DistanceMeasurementParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/le/DistanceMeasurementParams;
    .registers 3
    .param p1, "size"    # I

    .line 215
    new-array v0, p1, [Landroid/bluetooth/le/DistanceMeasurementParams;

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

    .line 199
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/DistanceMeasurementParams$1;->newArray(I)[Landroid/bluetooth/le/DistanceMeasurementParams;

    move-result-object p1

    return-object p1
.end method
