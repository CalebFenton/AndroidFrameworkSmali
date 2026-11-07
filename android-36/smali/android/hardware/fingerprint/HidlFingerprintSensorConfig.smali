.class public final Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;
.super Landroid/hardware/biometrics/fingerprint/SensorProps;
.source "HidlFingerprintSensorConfig.java"


# instance fields
.field private blacklist mModality:I

.field private blacklist mSensorId:I

.field private blacklist mStrength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/SensorProps;-><init>()V

    return-void
.end method

.method private blacklist authenticatorStrengthToPropertyStrength(I)B
    .registers 5
    .param p1, "strength"    # I

    .line 108
    sparse-switch p1, :sswitch_data_22

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :sswitch_1c
    const/4 v0, 0x0

    return v0

    .line 112
    :sswitch_1e
    const/4 v0, 0x1

    return v0

    .line 114
    :sswitch_20
    const/4 v0, 0x2

    return v0

    :sswitch_data_22
    .sparse-switch
        0xf -> :sswitch_20
        0xff -> :sswitch_1e
        0xfff -> :sswitch_1c
    .end sparse-switch
.end method

.method private blacklist mapHidlToAidlSensorConfiguration(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/hardware/biometrics/common/CommonProps;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/CommonProps;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 65
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/hardware/biometrics/common/CommonProps;->componentInfo:[Landroid/hardware/biometrics/common/ComponentInfo;

    .line 66
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mSensorId:I

    iput v1, v0, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    .line 67
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mStrength:I

    invoke-direct {p0, v1}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->authenticatorStrengthToPropertyStrength(I)B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    .line 68
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->halControlsIllumination:Z

    .line 71
    const/4 v1, 0x1

    new-array v2, v1, [Landroid/hardware/biometrics/fingerprint/SensorLocation;

    iput-object v2, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 75
    .local v2, "udfpsProps":[I
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v3

    xor-int/2addr v3, v1

    .line 77
    .local v3, "isUdfps":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11101d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 80
    .local v4, "isPowerbuttonFps":Z
    if-eqz v3, :cond_53

    .line 81
    iput-byte v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorType:B

    goto :goto_5b

    .line 82
    :cond_53
    if-eqz v4, :cond_59

    .line 83
    const/4 v5, 0x4

    iput-byte v5, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorType:B

    goto :goto_5b

    .line 85
    :cond_59
    iput-byte v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorType:B

    .line 88
    :goto_5b
    if-eqz v3, :cond_6c

    array-length v5, v2

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6c

    .line 89
    aget v0, v2, v0

    aget v1, v2, v1

    const/4 v5, 0x2

    aget v5, v2, v5

    invoke-direct {p0, v0, v1, v5}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->setSensorLocation(III)V

    goto :goto_75

    .line 91
    :cond_6c
    const/16 v0, 0x664

    const/16 v1, 0x82

    const/16 v5, 0x21c

    invoke-direct {p0, v5, v0, v1}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->setSensorLocation(III)V

    .line 95
    :goto_75
    return-void
.end method

.method private blacklist setSensorLocation(III)V
    .registers 7
    .param p1, "sensorLocationX"    # I
    .param p2, "sensorLocationY"    # I
    .param p3, "sensorRadius"    # I

    .line 99
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    new-instance v1, Landroid/hardware/biometrics/fingerprint/SensorLocation;

    invoke-direct {v1}, Landroid/hardware/biometrics/fingerprint/SensorLocation;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 100
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    aget-object v0, v0, v2

    const-string v1, ""

    iput-object v1, v0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->display:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    aget-object v0, v0, v2

    iput p1, v0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationX:I

    .line 102
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    aget-object v0, v0, v2

    iput p2, v0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationY:I

    .line 103
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    aget-object v0, v0, v2

    iput p3, v0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorRadius:I

    .line 104
    return-void
.end method


# virtual methods
.method public blacklist getModality()I
    .registers 2

    .line 60
    iget v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mModality:I

    return v0
.end method

.method public blacklist parse(Ljava/lang/String;Landroid/content/Context;)V
    .registers 6
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 48
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "elems":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_29

    .line 52
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mSensorId:I

    .line 53
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mModality:I

    .line 54
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mStrength:I

    .line 55
    invoke-direct {p0, p2}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mapHidlToAidlSensorConfiguration(Landroid/content/Context;)V

    .line 56
    return-void

    .line 50
    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
