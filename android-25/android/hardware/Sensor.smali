.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field private static final ADDITIONAL_INFO_MASK:I = 0x40

.field private static final ADDITIONAL_INFO_SHIFT:I = 0x6

.field private static final DATA_INJECTION_MASK:I = 0x10

.field private static final DATA_INJECTION_SHIFT:I = 0x4

.field private static final DYNAMIC_SENSOR_MASK:I = 0x20

.field private static final DYNAMIC_SENSOR_SHIFT:I = 0x5

.field public static final REPORTING_MODE_CONTINUOUS:I = 0x0

.field private static final REPORTING_MODE_MASK:I = 0xe

.field public static final REPORTING_MODE_ONE_SHOT:I = 0x2

.field public static final REPORTING_MODE_ON_CHANGE:I = 0x1

.field private static final REPORTING_MODE_SHIFT:I = 0x1

.field public static final REPORTING_MODE_SPECIAL_TRIGGER:I = 0x3

.field private static final SENSOR_FLAG_WAKE_UP_SENSOR:I = 0x1

.field public static final SENSOR_STRING_TYPE_TILT_DETECTOR:Ljava/lang/String; = "android.sensor.tilt_detector"

.field public static final STRING_TYPE_ACCELEROMETER:Ljava/lang/String; = "android.sensor.accelerometer"

.field public static final STRING_TYPE_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.sensor.ambient_temperature"

.field public static final STRING_TYPE_DEVICE_ORIENTATION:Ljava/lang/String; = "android.sensor.device_orientation"

.field public static final STRING_TYPE_DYNAMIC_SENSOR_META:Ljava/lang/String; = "android.sensor.dynamic_sensor_meta"

.field public static final STRING_TYPE_GAME_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.game_rotation_vector"

.field public static final STRING_TYPE_GEOMAGNETIC_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.geomagnetic_rotation_vector"

.field public static final STRING_TYPE_GLANCE_GESTURE:Ljava/lang/String; = "android.sensor.glance_gesture"

.field public static final STRING_TYPE_GRAVITY:Ljava/lang/String; = "android.sensor.gravity"

.field public static final STRING_TYPE_GYROSCOPE:Ljava/lang/String; = "android.sensor.gyroscope"

.field public static final STRING_TYPE_GYROSCOPE_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_uncalibrated"

.field public static final STRING_TYPE_HEART_BEAT:Ljava/lang/String; = "android.sensor.heart_beat"

.field public static final STRING_TYPE_HEART_RATE:Ljava/lang/String; = "android.sensor.heart_rate"

.field public static final STRING_TYPE_LIGHT:Ljava/lang/String; = "android.sensor.light"

.field public static final STRING_TYPE_LINEAR_ACCELERATION:Ljava/lang/String; = "android.sensor.linear_acceleration"

.field public static final STRING_TYPE_MAGNETIC_FIELD:Ljava/lang/String; = "android.sensor.magnetic_field"

.field public static final STRING_TYPE_MAGNETIC_FIELD_UNCALIBRATED:Ljava/lang/String; = "android.sensor.magnetic_field_uncalibrated"

.field public static final STRING_TYPE_MOTION_DETECT:Ljava/lang/String; = "android.sensor.motion_detect"

.field public static final STRING_TYPE_ORIENTATION:Ljava/lang/String; = "android.sensor.orientation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_PICK_UP_GESTURE:Ljava/lang/String; = "android.sensor.pick_up_gesture"

.field public static final STRING_TYPE_POSE_6DOF:Ljava/lang/String; = "android.sensor.pose_6dof"

.field public static final STRING_TYPE_PRESSURE:Ljava/lang/String; = "android.sensor.pressure"

.field public static final STRING_TYPE_PROXIMITY:Ljava/lang/String; = "android.sensor.proximity"

.field public static final STRING_TYPE_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.sensor.relative_humidity"

.field public static final STRING_TYPE_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.rotation_vector"

.field public static final STRING_TYPE_SIGNIFICANT_MOTION:Ljava/lang/String; = "android.sensor.significant_motion"

.field public static final STRING_TYPE_STATIONARY_DETECT:Ljava/lang/String; = "android.sensor.stationary_detect"

.field public static final STRING_TYPE_STEP_COUNTER:Ljava/lang/String; = "android.sensor.step_counter"

.field public static final STRING_TYPE_STEP_DETECTOR:Ljava/lang/String; = "android.sensor.step_detector"

.field public static final STRING_TYPE_TEMPERATURE:Ljava/lang/String; = "android.sensor.temperature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_WAKE_GESTURE:Ljava/lang/String; = "android.sensor.wake_gesture"

.field public static final STRING_TYPE_WRIST_TILT_GESTURE:Ljava/lang/String; = "android.sensor.wrist_tilt_gesture"

.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_DEVICE_ORIENTATION:I = 0x1b

.field public static final TYPE_DEVICE_PRIVATE_BASE:I = 0x10000

.field public static final TYPE_DYNAMIC_SENSOR_META:I = 0x20

.field public static final TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final TYPE_GLANCE_GESTURE:I = 0x18

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final TYPE_HEART_BEAT:I = 0x1f

.field public static final TYPE_HEART_RATE:I = 0x15

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final TYPE_MOTION_DETECT:I = 0x1e

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PICK_UP_GESTURE:I = 0x19

.field public static final TYPE_POSE_6DOF:I = 0x1c

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final TYPE_STATIONARY_DETECT:I = 0x1d

.field public static final TYPE_STEP_COUNTER:I = 0x13

.field public static final TYPE_STEP_DETECTOR:I = 0x12

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TILT_DETECTOR:I = 0x16

.field public static final TYPE_WAKE_GESTURE:I = 0x17

.field public static final TYPE_WRIST_TILT_GESTURE:I = 0x1a

.field private static final sSensorReportingModes:[I


# instance fields
.field private mFifoMaxEventCount:I

.field private mFifoReservedEventCount:I

.field private mFlags:I

.field private mHandle:I

.field private mId:I

.field private mMaxDelay:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mRequiredPermission:Ljava/lang/String;

.field private mResolution:F

.field private mStringType:Ljava/lang/String;

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 721
    const/16 v0, 0x21

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    #@9
    .line 32
    return-void

    #@a
    .line 721
    :array_0
    .array-data 4
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x5
        0x3
        0x3
        0x6
        0x4
        0x6
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x10
        0x1
        0x1
        0x1
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .locals 3
    .param p0, "sensor"    # Landroid/hardware/Sensor;
    .param p1, "sdkLevel"    # I

    #@0
    .prologue
    .line 774
    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    #@2
    const/16 v2, 0xb

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 775
    const/16 v1, 0x11

    #@8
    if-gt p1, v1, :cond_0

    #@a
    .line 776
    const/4 v1, 0x3

    #@b
    return v1

    #@c
    .line 778
    :cond_0
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    #@e
    .line 779
    .local v0, "offset":I
    sget-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    #@10
    array-length v1, v1

    #@11
    if-lt v0, v1, :cond_1

    #@13
    .line 784
    const/16 v1, 0x10

    #@15
    return v1

    #@16
    .line 786
    :cond_1
    sget-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    #@18
    aget v1, v1, v0

    #@1a
    return v1
.end method

.method private setType(I)Z
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1043
    iput p1, p0, Landroid/hardware/Sensor;->mType:I

    #@3
    .line 1044
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 1127
    :pswitch_0
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 1046
    :pswitch_1
    const-string/jumbo v0, "android.sensor.accelerometer"

    #@d
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@f
    .line 1047
    return v1

    #@10
    .line 1049
    :pswitch_2
    const-string/jumbo v0, "android.sensor.ambient_temperature"

    #@13
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@15
    .line 1050
    return v1

    #@16
    .line 1052
    :pswitch_3
    const-string/jumbo v0, "android.sensor.game_rotation_vector"

    #@19
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@1b
    .line 1053
    return v1

    #@1c
    .line 1055
    :pswitch_4
    const-string/jumbo v0, "android.sensor.geomagnetic_rotation_vector"

    #@1f
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@21
    .line 1056
    return v1

    #@22
    .line 1058
    :pswitch_5
    const-string/jumbo v0, "android.sensor.glance_gesture"

    #@25
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@27
    .line 1059
    return v1

    #@28
    .line 1061
    :pswitch_6
    const-string/jumbo v0, "android.sensor.gravity"

    #@2b
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@2d
    .line 1062
    return v1

    #@2e
    .line 1064
    :pswitch_7
    const-string/jumbo v0, "android.sensor.gyroscope"

    #@31
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@33
    .line 1065
    return v1

    #@34
    .line 1067
    :pswitch_8
    const-string/jumbo v0, "android.sensor.gyroscope_uncalibrated"

    #@37
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@39
    .line 1068
    return v1

    #@3a
    .line 1070
    :pswitch_9
    const-string/jumbo v0, "android.sensor.heart_rate"

    #@3d
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@3f
    .line 1071
    return v1

    #@40
    .line 1073
    :pswitch_a
    const-string/jumbo v0, "android.sensor.light"

    #@43
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@45
    .line 1074
    return v1

    #@46
    .line 1076
    :pswitch_b
    const-string/jumbo v0, "android.sensor.linear_acceleration"

    #@49
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@4b
    .line 1077
    return v1

    #@4c
    .line 1079
    :pswitch_c
    const-string/jumbo v0, "android.sensor.magnetic_field"

    #@4f
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@51
    .line 1080
    return v1

    #@52
    .line 1082
    :pswitch_d
    const-string/jumbo v0, "android.sensor.magnetic_field_uncalibrated"

    #@55
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@57
    .line 1083
    return v1

    #@58
    .line 1085
    :pswitch_e
    const-string/jumbo v0, "android.sensor.pick_up_gesture"

    #@5b
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@5d
    .line 1086
    return v1

    #@5e
    .line 1088
    :pswitch_f
    const-string/jumbo v0, "android.sensor.pressure"

    #@61
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@63
    .line 1089
    return v1

    #@64
    .line 1091
    :pswitch_10
    const-string/jumbo v0, "android.sensor.proximity"

    #@67
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@69
    .line 1092
    return v1

    #@6a
    .line 1094
    :pswitch_11
    const-string/jumbo v0, "android.sensor.relative_humidity"

    #@6d
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@6f
    .line 1095
    return v1

    #@70
    .line 1097
    :pswitch_12
    const-string/jumbo v0, "android.sensor.rotation_vector"

    #@73
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@75
    .line 1098
    return v1

    #@76
    .line 1100
    :pswitch_13
    const-string/jumbo v0, "android.sensor.significant_motion"

    #@79
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@7b
    .line 1101
    return v1

    #@7c
    .line 1103
    :pswitch_14
    const-string/jumbo v0, "android.sensor.step_counter"

    #@7f
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@81
    .line 1104
    return v1

    #@82
    .line 1106
    :pswitch_15
    const-string/jumbo v0, "android.sensor.step_detector"

    #@85
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@87
    .line 1107
    return v1

    #@88
    .line 1109
    :pswitch_16
    const-string/jumbo v0, "android.sensor.tilt_detector"

    #@8b
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@8d
    .line 1110
    return v1

    #@8e
    .line 1112
    :pswitch_17
    const-string/jumbo v0, "android.sensor.wake_gesture"

    #@91
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@93
    .line 1113
    return v1

    #@94
    .line 1115
    :pswitch_18
    const-string/jumbo v0, "android.sensor.orientation"

    #@97
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@99
    .line 1116
    return v1

    #@9a
    .line 1118
    :pswitch_19
    const-string/jumbo v0, "android.sensor.temperature"

    #@9d
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@9f
    .line 1119
    return v1

    #@a0
    .line 1121
    :pswitch_1a
    const-string/jumbo v0, "android.sensor.device_orientation"

    #@a3
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@a5
    .line 1122
    return v1

    #@a6
    .line 1124
    :pswitch_1b
    const-string/jumbo v0, "android.sensor.dynamic_sensor_meta"

    #@a9
    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@ab
    .line 1125
    return v1

    #@ac
    .line 1044
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_c
        :pswitch_18
        :pswitch_7
        :pswitch_a
        :pswitch_f
        :pswitch_19
        :pswitch_10
        :pswitch_6
        :pswitch_b
        :pswitch_12
        :pswitch_11
        :pswitch_2
        :pswitch_d
        :pswitch_3
        :pswitch_8
        :pswitch_13
        :pswitch_15
        :pswitch_14
        :pswitch_4
        :pswitch_9
        :pswitch_16
        :pswitch_17
        :pswitch_5
        :pswitch_e
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
    .end packed-switch
.end method

.method private setUuid(JJ)V
    .locals 1
    .param p1, "msb"    # J
    .param p3, "lsb"    # J

    #@0
    .prologue
    .line 1143
    long-to-int v0, p1

    #@1
    iput v0, p0, Landroid/hardware/Sensor;->mId:I

    #@3
    .line 1141
    return-void
.end method


# virtual methods
.method public getFifoMaxEventCount()I
    .locals 1

    #@0
    .prologue
    .line 885
    iget v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    #@2
    return v0
.end method

.method public getFifoReservedEventCount()I
    .locals 1

    #@0
    .prologue
    .line 875
    iget v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    #@2
    return v0
.end method

.method public getHandle()I
    .locals 1

    #@0
    .prologue
    .line 930
    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 917
    iget v0, p0, Landroid/hardware/Sensor;->mId:I

    #@2
    return v0
.end method

.method public getMaxDelay()I
    .locals 1

    #@0
    .prologue
    .line 943
    iget v0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    #@2
    return v0
.end method

.method public getMaximumRange()F
    .locals 1

    #@0
    .prologue
    .line 844
    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    #@2
    return v0
.end method

.method public getMinDelay()I
    .locals 1

    #@0
    .prologue
    .line 867
    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 816
    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPower()F
    .locals 1

    #@0
    .prologue
    .line 858
    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    #@2
    return v0
.end method

.method public getReportingMode()I
    .locals 1

    #@0
    .prologue
    .line 768
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0xe

    #@4
    shr-int/lit8 v0, v0, 0x1

    #@6
    return v0
.end method

.method public getRequiredPermission()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 925
    iget-object v0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResolution()F
    .locals 1

    #@0
    .prologue
    .line 851
    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    #@2
    return v0
.end method

.method public getStringType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 892
    iget-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 830
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    #@2
    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    #@0
    .prologue
    .line 908
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 823
    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 837
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    #@2
    return v0
.end method

.method public isAdditionalInfoSupported()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1004
    iget v1, p0, Landroid/hardware/Sensor;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x40

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isDataInjectionSupported()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1018
    iget v1, p0, Landroid/hardware/Sensor;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x10

    #@5
    shr-int/lit8 v1, v1, 0x4

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isDynamicSensor()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 994
    iget v1, p0, Landroid/hardware/Sensor;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x20

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isWakeUpSensor()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 984
    iget v1, p0, Landroid/hardware/Sensor;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method setRange(FF)V
    .locals 0
    .param p1, "max"    # F
    .param p2, "res"    # F

    #@0
    .prologue
    .line 1022
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    #@2
    .line 1023
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    #@4
    .line 1021
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{Sensor name=\""

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "\", vendor=\""

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "\", version="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 1029
    const-string/jumbo v1, ", type="

    #@2f
    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 1029
    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    #@35
    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 1029
    const-string/jumbo v1, ", maxRange="

    #@3c
    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 1029
    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    #@42
    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 1029
    const-string/jumbo v1, ", resolution="

    #@49
    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 1029
    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    #@4f
    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 1030
    const-string/jumbo v1, ", power="

    #@56
    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 1030
    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    #@5c
    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 1030
    const-string/jumbo v1, ", minDelay="

    #@63
    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 1030
    iget v1, p0, Landroid/hardware/Sensor;->mMinDelay:I

    #@69
    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 1030
    const-string/jumbo v1, "}"

    #@70
    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v0

    #@78
    return-object v0
.end method
