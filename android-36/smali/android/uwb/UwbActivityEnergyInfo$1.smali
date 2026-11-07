.class Landroid/uwb/UwbActivityEnergyInfo$1;
.super Ljava/lang/Object;
.source "UwbActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/UwbActivityEnergyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/uwb/UwbActivityEnergyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/uwb/UwbActivityEnergyInfo;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 106
    new-instance v0, Landroid/uwb/UwbActivityEnergyInfo$Builder;

    invoke-direct {v0}, Landroid/uwb/UwbActivityEnergyInfo$Builder;-><init>()V

    .line 107
    .local v0, "builder":Landroid/uwb/UwbActivityEnergyInfo$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/uwb/UwbActivityEnergyInfo$Builder;->setTimeSinceBootMillis(J)Landroid/uwb/UwbActivityEnergyInfo$Builder;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/uwb/UwbActivityEnergyInfo$Builder;->setStackState(I)Landroid/uwb/UwbActivityEnergyInfo$Builder;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/uwb/UwbActivityEnergyInfo$Builder;->setControllerTxDurationMillis(J)Landroid/uwb/UwbActivityEnergyInfo$Builder;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/uwb/UwbActivityEnergyInfo$Builder;->setControllerRxDurationMillis(J)Landroid/uwb/UwbActivityEnergyInfo$Builder;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/uwb/UwbActivityEnergyInfo$Builder;->setControllerIdleDurationMillis(J)Landroid/uwb/UwbActivityEnergyInfo$Builder;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/uwb/UwbActivityEnergyInfo$Builder;->setControllerWakeCount(J)Landroid/uwb/UwbActivityEnergyInfo$Builder;

    .line 113
    invoke-virtual {v0}, Landroid/uwb/UwbActivityEnergyInfo$Builder;->build()Landroid/uwb/UwbActivityEnergyInfo;

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

    .line 103
    invoke-virtual {p0, p1}, Landroid/uwb/UwbActivityEnergyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/uwb/UwbActivityEnergyInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/uwb/UwbActivityEnergyInfo;
    .registers 3
    .param p1, "size"    # I

    .line 117
    new-array v0, p1, [Landroid/uwb/UwbActivityEnergyInfo;

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

    .line 103
    invoke-virtual {p0, p1}, Landroid/uwb/UwbActivityEnergyInfo$1;->newArray(I)[Landroid/uwb/UwbActivityEnergyInfo;

    move-result-object p1

    return-object p1
.end method
