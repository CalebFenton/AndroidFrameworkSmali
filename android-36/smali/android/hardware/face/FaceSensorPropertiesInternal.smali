.class public Landroid/hardware/face/FaceSensorPropertiesInternal;
.super Landroid/hardware/biometrics/SensorPropertiesInternal;
.source "FaceSensorPropertiesInternal.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist sensorType:I

.field public final blacklist supportsFaceDetection:Z

.field public final blacklist supportsSelfIllumination:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Landroid/hardware/face/FaceSensorPropertiesInternal$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceSensorPropertiesInternal$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/List;IZZZ)V
    .registers 16
    .param p1, "sensorId"    # I
    .param p2, "strength"    # I
    .param p3, "maxEnrollmentsPerUser"    # I
    .param p5, "sensorType"    # I
    .param p6, "supportsFaceDetection"    # Z
    .param p7, "supportsSelfIllumination"    # Z
    .param p8, "resetLockoutRequiresChallenge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/ComponentInfoInternal;",
            ">;IZZZ)V"
        }
    .end annotation

    .line 57
    .local p4, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p8

    .end local p1    # "sensorId":I
    .end local p2    # "strength":I
    .end local p3    # "maxEnrollmentsPerUser":I
    .end local p4    # "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    .end local p8    # "resetLockoutRequiresChallenge":Z
    .local v1, "sensorId":I
    .local v2, "strength":I
    .local v3, "maxEnrollmentsPerUser":I
    .local v4, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    .local v6, "resetLockoutRequiresChallenge":Z
    invoke-direct/range {v0 .. v6}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(IIILjava/util/List;ZZ)V

    .line 59
    iput p5, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorType:I

    .line 60
    iput-boolean p6, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->supportsFaceDetection:Z

    .line 61
    iput-boolean p7, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->supportsSelfIllumination:Z

    .line 62
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(Landroid/os/Parcel;)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorType:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->supportsFaceDetection:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->supportsSelfIllumination:Z

    .line 69
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Strength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SupportsFaceDetection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->supportsFaceDetection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 91
    invoke-super {p0, p1, p2}, Landroid/hardware/biometrics/SensorPropertiesInternal;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    iget v0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-boolean v0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->supportsFaceDetection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 94
    iget-boolean v0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->supportsSelfIllumination:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 95
    return-void
.end method
