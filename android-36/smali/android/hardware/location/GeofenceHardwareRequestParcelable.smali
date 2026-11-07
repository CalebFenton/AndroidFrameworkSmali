.class public final Landroid/hardware/location/GeofenceHardwareRequestParcelable;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequestParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/GeofenceHardwareRequestParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mId:I

.field private greylist-max-o mRequest:Landroid/hardware/location/GeofenceHardwareRequest;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 137
    new-instance v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;

    invoke-direct {v0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;-><init>()V

    sput-object v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "request"    # Landroid/hardware/location/GeofenceHardwareRequest;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    .line 34
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getId()I
    .registers 2

    .line 41
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    return v0
.end method

.method public greylist-max-o getLastTransition()I
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLastTransition()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getLatitude()D
    .registers 3

    .line 48
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getLongitude()D
    .registers 3

    .line 55
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getMonitorTransitions()I
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getMonitorTransitions()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getNotificationResponsiveness()I
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getNotificationResponsiveness()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getRadius()D
    .registers 3

    .line 62
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getRadius()D

    move-result-wide v0

    return-wide v0
.end method

.method greylist-max-o getSourceTechnologies()I
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getSourceTechnologies()I

    move-result v0

    return v0
.end method

.method greylist-max-o getType()I
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getUnknownTimer()I
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getUnknownTimer()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getRadius()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", lastTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLastTransition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ", unknownTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getUnknownTimer()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, ", monitorTransitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getMonitorTransitions()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ", notificationResponsiveness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getNotificationResponsiveness()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, ", sourceTechnologies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getSourceTechnologies()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 173
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 175
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 176
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getRadius()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 177
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLastTransition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getMonitorTransitions()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getUnknownTimer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getNotificationResponsiveness()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getSourceTechnologies()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    return-void
.end method
