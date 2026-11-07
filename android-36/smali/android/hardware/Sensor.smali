.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field private static final greylist-max-o ADDITIONAL_INFO_MASK:I = 0x40

.field private static final greylist-max-o ADDITIONAL_INFO_SHIFT:I = 0x6

.field private static final greylist-max-o DATA_INJECTION_MASK:I = 0x10

.field private static final greylist-max-o DATA_INJECTION_SHIFT:I = 0x4

.field private static final greylist-max-o DIRECT_CHANNEL_MASK:I = 0xc00

.field private static final greylist-max-o DIRECT_CHANNEL_SHIFT:I = 0xa

.field private static final greylist-max-o DIRECT_REPORT_MASK:I = 0x380

.field private static final greylist-max-o DIRECT_REPORT_SHIFT:I = 0x7

.field private static final greylist-max-o DYNAMIC_SENSOR_MASK:I = 0x20

.field private static final greylist-max-o DYNAMIC_SENSOR_SHIFT:I = 0x5

.field public static final whitelist REPORTING_MODE_CONTINUOUS:I = 0x0

.field private static final greylist-max-o REPORTING_MODE_MASK:I = 0xe

.field public static final whitelist REPORTING_MODE_ONE_SHOT:I = 0x2

.field public static final whitelist REPORTING_MODE_ON_CHANGE:I = 0x1

.field private static final greylist-max-o REPORTING_MODE_SHIFT:I = 0x1

.field public static final whitelist REPORTING_MODE_SPECIAL_TRIGGER:I = 0x3

.field private static final greylist-max-o SENSOR_FLAG_WAKE_UP_SENSOR:I = 0x1

.field public static final greylist-max-o SENSOR_STRING_TYPE_TILT_DETECTOR:Ljava/lang/String; = "android.sensor.tilt_detector"

.field public static final whitelist STRING_TYPE_ACCELEROMETER:Ljava/lang/String; = "android.sensor.accelerometer"

.field public static final whitelist STRING_TYPE_ACCELEROMETER_LIMITED_AXES:Ljava/lang/String; = "android.sensor.accelerometer_limited_axes"

.field public static final whitelist STRING_TYPE_ACCELEROMETER_LIMITED_AXES_UNCALIBRATED:Ljava/lang/String; = "android.sensor.accelerometer_limited_axes_uncalibrated"

.field public static final whitelist STRING_TYPE_ACCELEROMETER_UNCALIBRATED:Ljava/lang/String; = "android.sensor.accelerometer_uncalibrated"

.field public static final whitelist STRING_TYPE_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.sensor.ambient_temperature"

.field public static final greylist-max-o STRING_TYPE_DEVICE_ORIENTATION:Ljava/lang/String; = "android.sensor.device_orientation"

.field public static final whitelist STRING_TYPE_DYNAMIC_SENSOR_META:Ljava/lang/String; = "android.sensor.dynamic_sensor_meta"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STRING_TYPE_GAME_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.game_rotation_vector"

.field public static final whitelist STRING_TYPE_GEOMAGNETIC_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.geomagnetic_rotation_vector"

.field public static final greylist-max-o STRING_TYPE_GLANCE_GESTURE:Ljava/lang/String; = "android.sensor.glance_gesture"

.field public static final whitelist STRING_TYPE_GRAVITY:Ljava/lang/String; = "android.sensor.gravity"

.field public static final whitelist STRING_TYPE_GYROSCOPE:Ljava/lang/String; = "android.sensor.gyroscope"

.field public static final whitelist STRING_TYPE_GYROSCOPE_LIMITED_AXES:Ljava/lang/String; = "android.sensor.gyroscope_limited_axes"

.field public static final whitelist STRING_TYPE_GYROSCOPE_LIMITED_AXES_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_limited_axes_uncalibrated"

.field public static final whitelist STRING_TYPE_GYROSCOPE_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_uncalibrated"

.field public static final whitelist STRING_TYPE_HEADING:Ljava/lang/String; = "android.sensor.heading"

.field public static final whitelist STRING_TYPE_HEAD_TRACKER:Ljava/lang/String; = "android.sensor.head_tracker"

.field public static final whitelist STRING_TYPE_HEART_BEAT:Ljava/lang/String; = "android.sensor.heart_beat"

.field public static final whitelist STRING_TYPE_HEART_RATE:Ljava/lang/String; = "android.sensor.heart_rate"

.field public static final whitelist STRING_TYPE_HINGE_ANGLE:Ljava/lang/String; = "android.sensor.hinge_angle"

.field public static final whitelist STRING_TYPE_LIGHT:Ljava/lang/String; = "android.sensor.light"

.field public static final whitelist STRING_TYPE_LINEAR_ACCELERATION:Ljava/lang/String; = "android.sensor.linear_acceleration"

.field public static final whitelist STRING_TYPE_LOW_LATENCY_OFFBODY_DETECT:Ljava/lang/String; = "android.sensor.low_latency_offbody_detect"

.field public static final whitelist STRING_TYPE_MAGNETIC_FIELD:Ljava/lang/String; = "android.sensor.magnetic_field"

.field public static final whitelist STRING_TYPE_MAGNETIC_FIELD_UNCALIBRATED:Ljava/lang/String; = "android.sensor.magnetic_field_uncalibrated"

.field public static final whitelist STRING_TYPE_MOTION_DETECT:Ljava/lang/String; = "android.sensor.motion_detect"

.field public static final whitelist STRING_TYPE_ORIENTATION:Ljava/lang/String; = "android.sensor.orientation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STRING_TYPE_PICK_UP_GESTURE:Ljava/lang/String; = "android.sensor.pick_up_gesture"

.field public static final whitelist STRING_TYPE_POSE_6DOF:Ljava/lang/String; = "android.sensor.pose_6dof"

.field public static final whitelist STRING_TYPE_PRESSURE:Ljava/lang/String; = "android.sensor.pressure"

.field public static final whitelist STRING_TYPE_PROXIMITY:Ljava/lang/String; = "android.sensor.proximity"

.field public static final whitelist STRING_TYPE_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.sensor.relative_humidity"

.field public static final whitelist STRING_TYPE_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.rotation_vector"

.field public static final whitelist STRING_TYPE_SIGNIFICANT_MOTION:Ljava/lang/String; = "android.sensor.significant_motion"

.field public static final whitelist STRING_TYPE_STATIONARY_DETECT:Ljava/lang/String; = "android.sensor.stationary_detect"

.field public static final whitelist STRING_TYPE_STEP_COUNTER:Ljava/lang/String; = "android.sensor.step_counter"

.field public static final whitelist STRING_TYPE_STEP_DETECTOR:Ljava/lang/String; = "android.sensor.step_detector"

.field public static final whitelist STRING_TYPE_TEMPERATURE:Ljava/lang/String; = "android.sensor.temperature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STRING_TYPE_WAKE_GESTURE:Ljava/lang/String; = "android.sensor.wake_gesture"

.field public static final whitelist STRING_TYPE_WRIST_TILT_GESTURE:Ljava/lang/String; = "android.sensor.wrist_tilt_gesture"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_ACCELEROMETER:I = 0x1

.field public static final whitelist TYPE_ACCELEROMETER_LIMITED_AXES:I = 0x26

.field public static final whitelist TYPE_ACCELEROMETER_LIMITED_AXES_UNCALIBRATED:I = 0x28

.field public static final whitelist TYPE_ACCELEROMETER_UNCALIBRATED:I = 0x23

.field public static final whitelist TYPE_ALL:I = -0x1

.field public static final whitelist TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final greylist-max-r TYPE_DEVICE_ORIENTATION:I = 0x1b

.field public static final whitelist TYPE_DEVICE_PRIVATE_BASE:I = 0x10000

.field public static final whitelist TYPE_DYNAMIC_SENSOR_META:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final whitelist TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final greylist-max-o TYPE_GLANCE_GESTURE:I = 0x18

.field public static final whitelist TYPE_GRAVITY:I = 0x9

.field public static final whitelist TYPE_GYROSCOPE:I = 0x4

.field public static final whitelist TYPE_GYROSCOPE_LIMITED_AXES:I = 0x27

.field public static final whitelist TYPE_GYROSCOPE_LIMITED_AXES_UNCALIBRATED:I = 0x29

.field public static final whitelist TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final whitelist TYPE_HEADING:I = 0x2a

.field public static final whitelist TYPE_HEAD_TRACKER:I = 0x25

.field public static final whitelist TYPE_HEART_BEAT:I = 0x1f

.field public static final whitelist TYPE_HEART_RATE:I = 0x15

.field public static final whitelist TYPE_HINGE_ANGLE:I = 0x24

.field public static final whitelist TYPE_LIGHT:I = 0x5

.field public static final whitelist TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final whitelist TYPE_LOW_LATENCY_OFFBODY_DETECT:I = 0x22

.field public static final whitelist TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final whitelist TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final whitelist TYPE_MOTION_DETECT:I = 0x1e

.field public static final whitelist TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r TYPE_PICK_UP_GESTURE:I = 0x19

.field public static final whitelist TYPE_POSE_6DOF:I = 0x1c

.field public static final whitelist TYPE_PRESSURE:I = 0x6

.field public static final whitelist TYPE_PROXIMITY:I = 0x8

.field public static final whitelist TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final whitelist TYPE_ROTATION_VECTOR:I = 0xb

.field public static final whitelist TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final whitelist TYPE_STATIONARY_DETECT:I = 0x1d

.field public static final whitelist TYPE_STEP_COUNTER:I = 0x13

.field public static final whitelist TYPE_STEP_DETECTOR:I = 0x12

.field public static final whitelist TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TYPE_TILT_DETECTOR:I = 0x16

.field public static final greylist-max-o TYPE_WAKE_GESTURE:I = 0x17

.field public static final whitelist TYPE_WRIST_TILT_GESTURE:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o sSensorReportingModes:[I


# instance fields
.field private greylist-max-o mFifoMaxEventCount:I

.field private greylist-max-o mFifoReservedEventCount:I

.field private greylist mFlags:I

.field private greylist-max-o mHandle:I

.field private greylist-max-o mId:I

.field private greylist-max-o mMaxDelay:I

.field private greylist-max-o mMaxRange:F

.field private greylist-max-o mMinDelay:I

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mPower:F

.field private greylist-max-o mRequiredPermission:Ljava/lang/String;

.field private greylist-max-o mResolution:F

.field private greylist-max-o mStringType:Ljava/lang/String;

.field private greylist-max-o mType:I

.field private blacklist mUuid:Ljava/util/UUID;

.field private greylist-max-o mVendor:Ljava/lang/String;

.field private greylist-max-o mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 897
    const/16 v0, 0x2b

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x5
        0x1
        0x1
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
        0x10
        0x1
        0x6
        0x1
        0x6
        0x6
        0x6
        0x9
        0x9
        0x2
    .end array-data
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/input/InputSensorInfo;)V
    .registers 7
    .param p1, "sensorInfo"    # Landroid/hardware/input/InputSensorInfo;

    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    .line 1049
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getVendor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    .line 1050
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getVersion()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mVersion:I

    .line 1051
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getHandle()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mHandle:I

    .line 1052
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getType()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mType:I

    .line 1053
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getMaxRange()F

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 1054
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getResolution()F

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 1055
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getPower()F

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mPower:F

    .line 1056
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getMinDelay()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    .line 1057
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getFifoReservedEventCount()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    .line 1058
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getFifoMaxEventCount()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    .line 1059
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getStringType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1060
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getRequiredPermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    .line 1061
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getMaxDelay()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    .line 1062
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getFlags()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mFlags:I

    .line 1063
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getId()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mId:I

    .line 1065
    new-instance v0, Ljava/util/UUID;

    iget v1, p0, Landroid/hardware/Sensor;->mId:I

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroid/hardware/Sensor;->mUuid:Ljava/util/UUID;

    .line 1066
    return-void
.end method

.method public static greylist-max-o getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .registers 4
    .param p0, "sensor"    # Landroid/hardware/Sensor;
    .param p1, "sdkLevel"    # I

    .line 1002
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_c

    const/16 v0, 0x11

    if-gt p1, v0, :cond_c

    .line 1004
    const/4 v0, 0x3

    return v0

    .line 1006
    :cond_c
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    .line 1007
    .local v0, "offset":I
    sget-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v1, v1

    if-lt v0, v1, :cond_16

    .line 1012
    const/16 v1, 0x10

    return v1

    .line 1014
    :cond_16
    sget-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    aget v1, v1, v0

    return v1
.end method

.method private blacklist setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 1437
    iput p1, p0, Landroid/hardware/Sensor;->mId:I

    .line 1438
    return-void
.end method

.method private greylist-max-o setType(I)Z
    .registers 4
    .param p1, "value"    # I

    .line 1303
    iput p1, p0, Landroid/hardware/Sensor;->mType:I

    .line 1304
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_be

    .line 1414
    :pswitch_8
    const/4 v0, 0x0

    return v0

    .line 1411
    :pswitch_a
    const-string v0, "android.sensor.heading"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1412
    return v1

    .line 1408
    :pswitch_f
    const-string v0, "android.sensor.gyroscope_limited_axes_uncalibrated"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1409
    return v1

    .line 1405
    :pswitch_14
    const-string v0, "android.sensor.accelerometer_limited_axes_uncalibrated"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1406
    return v1

    .line 1402
    :pswitch_19
    const-string v0, "android.sensor.gyroscope_limited_axes"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1403
    return v1

    .line 1399
    :pswitch_1e
    const-string v0, "android.sensor.accelerometer_limited_axes"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1400
    return v1

    .line 1396
    :pswitch_23
    const-string v0, "android.sensor.head_tracker"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1397
    return v1

    .line 1393
    :pswitch_28
    const-string v0, "android.sensor.hinge_angle"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1394
    return v1

    .line 1390
    :pswitch_2d
    const-string v0, "android.sensor.accelerometer_uncalibrated"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1391
    return v1

    .line 1387
    :pswitch_32
    const-string v0, "android.sensor.low_latency_offbody_detect"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1388
    return v1

    .line 1384
    :pswitch_37
    const-string v0, "android.sensor.dynamic_sensor_meta"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1385
    return v1

    .line 1381
    :pswitch_3c
    const-string v0, "android.sensor.device_orientation"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1382
    return v1

    .line 1345
    :pswitch_41
    const-string v0, "android.sensor.pick_up_gesture"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1346
    return v1

    .line 1318
    :pswitch_46
    const-string v0, "android.sensor.glance_gesture"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1319
    return v1

    .line 1372
    :pswitch_4b
    const-string v0, "android.sensor.wake_gesture"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1373
    return v1

    .line 1369
    :pswitch_50
    const-string v0, "android.sensor.tilt_detector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1370
    return v1

    .line 1330
    :pswitch_55
    const-string v0, "android.sensor.heart_rate"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1331
    return v1

    .line 1315
    :pswitch_5a
    const-string v0, "android.sensor.geomagnetic_rotation_vector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1316
    return v1

    .line 1363
    :pswitch_5f
    const-string v0, "android.sensor.step_counter"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1364
    return v1

    .line 1366
    :pswitch_64
    const-string v0, "android.sensor.step_detector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1367
    return v1

    .line 1360
    :pswitch_69
    const-string v0, "android.sensor.significant_motion"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1361
    return v1

    .line 1327
    :pswitch_6e
    const-string v0, "android.sensor.gyroscope_uncalibrated"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1328
    return v1

    .line 1312
    :pswitch_73
    const-string v0, "android.sensor.game_rotation_vector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1313
    return v1

    .line 1342
    :pswitch_78
    const-string v0, "android.sensor.magnetic_field_uncalibrated"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1343
    return v1

    .line 1309
    :pswitch_7d
    const-string v0, "android.sensor.ambient_temperature"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1310
    return v1

    .line 1354
    :pswitch_82
    const-string v0, "android.sensor.relative_humidity"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1355
    return v1

    .line 1357
    :pswitch_87
    const-string v0, "android.sensor.rotation_vector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1358
    return v1

    .line 1336
    :pswitch_8c
    const-string v0, "android.sensor.linear_acceleration"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1337
    return v1

    .line 1321
    :pswitch_91
    const-string v0, "android.sensor.gravity"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1322
    return v1

    .line 1351
    :pswitch_96
    const-string v0, "android.sensor.proximity"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1352
    return v1

    .line 1378
    :pswitch_9b
    const-string v0, "android.sensor.temperature"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1379
    return v1

    .line 1348
    :pswitch_a0
    const-string v0, "android.sensor.pressure"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1349
    return v1

    .line 1333
    :pswitch_a5
    const-string v0, "android.sensor.light"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1334
    return v1

    .line 1324
    :pswitch_aa
    const-string v0, "android.sensor.gyroscope"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1325
    return v1

    .line 1375
    :pswitch_af
    const-string v0, "android.sensor.orientation"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1376
    return v1

    .line 1339
    :pswitch_b4
    const-string v0, "android.sensor.magnetic_field"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1340
    return v1

    .line 1306
    :pswitch_b9
    const-string v0, "android.sensor.accelerometer"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1307
    return v1

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_b4
        :pswitch_af
        :pswitch_aa
        :pswitch_a5
        :pswitch_a0
        :pswitch_9b
        :pswitch_96
        :pswitch_91
        :pswitch_8c
        :pswitch_87
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
        :pswitch_4b
        :pswitch_46
        :pswitch_41
        :pswitch_8
        :pswitch_3c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_37
        :pswitch_8
        :pswitch_32
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method private greylist-max-o setUuid(JJ)V
    .registers 6
    .param p1, "msb"    # J
    .param p3, "lsb"    # J

    .line 1426
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroid/hardware/Sensor;->mUuid:Ljava/util/UUID;

    .line 1427
    return-void
.end method


# virtual methods
.method public whitelist getFifoMaxEventCount()I
    .registers 2

    .line 1144
    iget v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    return v0
.end method

.method public whitelist getFifoReservedEventCount()I
    .registers 2

    .line 1134
    iget v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    return v0
.end method

.method public greylist getHandle()I
    .registers 2

    .line 1190
    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method public whitelist getHighestDirectReportRateLevel()I
    .registers 3

    .line 971
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v0, v0, 0x380

    shr-int/lit8 v0, v0, 0x7

    .line 972
    .local v0, "rateLevel":I
    const/4 v1, 0x3

    if-gt v0, v1, :cond_b

    .line 973
    move v1, v0

    goto :goto_c

    :cond_b
    nop

    .line 972
    :goto_c
    return v1
.end method

.method public whitelist getId()I
    .registers 2

    .line 1174
    iget v0, p0, Landroid/hardware/Sensor;->mId:I

    return v0
.end method

.method public whitelist getMaxDelay()I
    .registers 2

    .line 1203
    iget v0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    return v0
.end method

.method public whitelist getMaximumRange()F
    .registers 2

    .line 1101
    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public whitelist getMinDelay()I
    .registers 2

    .line 1126
    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 1073
    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPower()F
    .registers 2

    .line 1115
    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public whitelist getReportingMode()I
    .registers 2

    .line 954
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o getRequiredPermission()Ljava/lang/String;
    .registers 2

    .line 1182
    iget-object v0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResolution()F
    .registers 2

    .line 1108
    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public whitelist getStringType()Ljava/lang/String;
    .registers 2

    .line 1151
    iget-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 1087
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1165
    iget-object v0, p0, Landroid/hardware/Sensor;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getVendor()Ljava/lang/String;
    .registers 2

    .line 1080
    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 1094
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method public whitelist isAdditionalInfoSupported()Z
    .registers 2

    .line 1264
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isDataInjectionSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1278
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    shr-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isDirectChannelTypeSupported(I)Z
    .registers 5
    .param p1, "sharedMemType"    # I

    .line 985
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_18

    .line 991
    return v1

    .line 989
    :pswitch_6
    iget v2, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v2, v2, 0x800

    if-lez v2, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0

    .line 987
    :pswitch_f
    iget v2, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v2, v2, 0x400

    if-lez v2, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    return v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_f
        :pswitch_6
    .end packed-switch
.end method

.method public whitelist isDynamicSensor()Z
    .registers 2

    .line 1254
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isWakeUpSensor()Z
    .registers 3

    .line 1244
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method greylist-max-o setRange(FF)V
    .registers 3
    .param p1, "max"    # F
    .param p2, "res"    # F

    .line 1282
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 1283
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 1284
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Sensor name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", vendor=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMinDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
