.class public Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
.super Landroid/hardware/biometrics/SensorPropertiesInternal;
.source "FingerprintSensorPropertiesInternal.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist halControlsIllumination:Z

.field private final blacklist mSensorLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorLocationInternal;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist sensorType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    new-instance v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/List;IZ)V
    .registers 21
    .param p1, "sensorId"    # I
    .param p2, "strength"    # I
    .param p3, "maxEnrollmentsPerUser"    # I
    .param p5, "sensorType"    # I
    .param p6, "resetLockoutRequiresHardwareAuthToken"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/ComponentInfoInternal;",
            ">;IZ)V"
        }
    .end annotation

    .line 73
    .local p4, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    new-instance v0, Landroid/hardware/biometrics/SensorLocationInternal;

    const/16 v1, 0x664

    const/16 v2, 0x82

    const-string v3, ""

    const/16 v4, 0x21c

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/hardware/biometrics/SensorLocationInternal;-><init>(Ljava/lang/String;III)V

    .line 75
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 73
    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v12, p6

    invoke-direct/range {v5 .. v13}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZLjava/util/List;)V

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/List;IZZLjava/util/List;)V
    .registers 16
    .param p1, "sensorId"    # I
    .param p2, "strength"    # I
    .param p3, "maxEnrollmentsPerUser"    # I
    .param p5, "sensorType"    # I
    .param p6, "halControlsIllumination"    # Z
    .param p7, "resetLockoutRequiresHardwareAuthToken"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/ComponentInfoInternal;",
            ">;IZZ",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorLocationInternal;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p4, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    .local p8, "sensorLocations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorLocationInternal;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p7

    .end local p1    # "sensorId":I
    .end local p2    # "strength":I
    .end local p3    # "maxEnrollmentsPerUser":I
    .end local p4    # "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    .end local p7    # "resetLockoutRequiresHardwareAuthToken":Z
    .local v1, "sensorId":I
    .local v2, "strength":I
    .local v3, "maxEnrollmentsPerUser":I
    .local v4, "componentInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/ComponentInfoInternal;>;"
    .local v5, "resetLockoutRequiresHardwareAuthToken":Z
    invoke-direct/range {v0 .. v6}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(IIILjava/util/List;ZZ)V

    .line 59
    iput p5, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    .line 60
    iput-boolean p6, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->halControlsIllumination:Z

    .line 61
    invoke-static {p8}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    .line 62
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(Landroid/os/Parcel;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->halControlsIllumination:Z

    .line 83
    sget-object v0, Landroid/hardware/biometrics/SensorLocationInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    .line 84
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllLocations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorLocationInternal;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getLocation()Landroid/hardware/biometrics/SensorLocationInternal;
    .registers 3

    .line 157
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation(Ljava/lang/String;)Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object v0

    .line 158
    .local v0, "location":Landroid/hardware/biometrics/SensorLocationInternal;
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_c

    :cond_a
    sget-object v1, Landroid/hardware/biometrics/SensorLocationInternal;->DEFAULT:Landroid/hardware/biometrics/SensorLocationInternal;

    :goto_c
    return-object v1
.end method

.method public blacklist getLocation(Ljava/lang/String;)Landroid/hardware/biometrics/SensorLocationInternal;
    .registers 5
    .param p1, "displayId"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/SensorLocationInternal;

    .line 170
    .local v1, "location":Landroid/hardware/biometrics/SensorLocationInternal;
    iget-object v2, v1, Landroid/hardware/biometrics/SensorLocationInternal;->displayId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 171
    return-object v1

    .line 173
    .end local v1    # "location":Landroid/hardware/biometrics/SensorLocationInternal;
    :cond_1b
    goto :goto_6

    .line 174
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isAnySidefpsType()Z
    .registers 2

    .line 140
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    packed-switch v0, :pswitch_data_a

    .line 144
    const/4 v0, 0x0

    return v0

    .line 142
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x4
        :pswitch_7
    .end packed-switch
.end method

.method public blacklist isAnyUdfpsType()Z
    .registers 2

    .line 113
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    packed-switch v0, :pswitch_data_a

    .line 118
    const/4 v0, 0x0

    return v0

    .line 116
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public blacklist isOpticalUdfps()Z
    .registers 3

    .line 133
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isUltrasonicUdfps()Z
    .registers 3

    .line 126
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Strength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    invoke-super {p0, p1, p2}, Landroid/hardware/biometrics/SensorPropertiesInternal;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->halControlsIllumination:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 110
    return-void
.end method
