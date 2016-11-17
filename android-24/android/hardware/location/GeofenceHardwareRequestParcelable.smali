.class public final Landroid/hardware/location/GeofenceHardwareRequestParcelable;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequestParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/GeofenceHardwareRequestParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field private mRequest:Landroid/hardware/location/GeofenceHardwareRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 138
    new-instance v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;-><init>()V

    #@5
    .line 137
    sput-object v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "request"    # Landroid/hardware/location/GeofenceHardwareRequest;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    #@5
    .line 34
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@7
    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 171
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 41
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    #@2
    return v0
.end method

.method public getLastTransition()I
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@2
    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLastTransition()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLatitude()D
    .locals 2

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@2
    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLatitude()D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@2
    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLongitude()D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getMonitorTransitions()I
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@2
    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getMonitorTransitions()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNotificationResponsiveness()I
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@2
    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getNotificationResponsiveness()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRadius()D
    .locals 2

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@2
    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getRadius()D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method getSourceTechnologies()I
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@2
    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getSourceTechnologies()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getType()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@2
    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUnknownTimer()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@2
    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getUnknownTimer()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 111
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "id="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 112
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    .line 113
    const-string/jumbo v1, ", type="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 114
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@18
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    .line 115
    const-string/jumbo v1, ", latitude="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 116
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@27
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLatitude()D

    #@2a
    move-result-wide v2

    #@2b
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@2e
    .line 117
    const-string/jumbo v1, ", longitude="

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 118
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@36
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLongitude()D

    #@39
    move-result-wide v2

    #@3a
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@3d
    .line 119
    const-string/jumbo v1, ", radius="

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 120
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@45
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getRadius()D

    #@48
    move-result-wide v2

    #@49
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@4c
    .line 121
    const-string/jumbo v1, ", lastTransition="

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 122
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@54
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLastTransition()I

    #@57
    move-result v1

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    .line 123
    const-string/jumbo v1, ", unknownTimer="

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 124
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@63
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getUnknownTimer()I

    #@66
    move-result v1

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    .line 125
    const-string/jumbo v1, ", monitorTransitions="

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 126
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@72
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getMonitorTransitions()I

    #@75
    move-result v1

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    .line 127
    const-string/jumbo v1, ", notificationResponsiveness="

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    .line 128
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@81
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getNotificationResponsiveness()I

    #@84
    move-result v1

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    .line 129
    const-string/jumbo v1, ", sourceTechnologies="

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    .line 130
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    #@90
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getSourceTechnologies()I

    #@93
    move-result v1

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v1

    #@9b
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getType()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 177
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLatitude()D

    #@a
    move-result-wide v0

    #@b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@e
    .line 178
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLongitude()D

    #@11
    move-result-wide v0

    #@12
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@15
    .line 179
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getRadius()D

    #@18
    move-result-wide v0

    #@19
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@1c
    .line 180
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLastTransition()I

    #@1f
    move-result v0

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 181
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getMonitorTransitions()I

    #@26
    move-result v0

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 182
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getUnknownTimer()I

    #@2d
    move-result v0

    #@2e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 183
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getNotificationResponsiveness()I

    #@34
    move-result v0

    #@35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 184
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getSourceTechnologies()I

    #@3b
    move-result v0

    #@3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 185
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getId()I

    #@42
    move-result v0

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 175
    return-void
.end method
