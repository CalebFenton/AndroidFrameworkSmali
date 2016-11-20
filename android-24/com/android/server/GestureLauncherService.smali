.class public Lcom/android/server/GestureLauncherService;
.super Lcom/android/server/SystemService;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GestureLauncherService$1;,
        Lcom/android/server/GestureLauncherService$2;,
        Lcom/android/server/GestureLauncherService$GestureEventListener;
    }
.end annotation


# static fields
.field private static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x12cL

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "GestureLauncherService"


# instance fields
.field private mCameraDoubleTapPowerEnabled:Z

.field private mCameraGestureLastEventTime:J

.field private mCameraGestureOnTimeMs:J

.field private mCameraGestureSensor1LastOnTimeMs:J

.field private mCameraGestureSensor2LastOnTimeMs:J

.field private mCameraLaunchLastEventExtra:I

.field private mCameraLaunchSensor:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private final mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

.field private mLastPowerDown:J

.field private mRegistered:Z

.field private final mSettingObserver:Landroid/database/ContentObserver;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/GestureLauncherService;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/GestureLauncherService;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/GestureLauncherService;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    #@2
    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/GestureLauncherService;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    #@2
    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/GestureLauncherService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/GestureLauncherService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/GestureLauncherService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/GestureLauncherService;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/GestureLauncherService;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    #@2
    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/server/GestureLauncherService;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    #@2
    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/GestureLauncherService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/server/GestureLauncherService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/GestureLauncherService;ZI)Z
    .locals 1
    .param p1, "useWakelock"    # Z
    .param p2, "source"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/GestureLauncherService;->handleCameraLaunchGesture(ZI)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@5
    .line 63
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureEventListener;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$GestureEventListener;)V

    #@b
    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    #@d
    .line 75
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    #@f
    .line 78
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    #@11
    .line 85
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    #@13
    .line 95
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    #@15
    .line 101
    const/4 v0, 0x0

    #@16
    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    #@18
    .line 309
    new-instance v0, Lcom/android/server/GestureLauncherService$1;

    #@1a
    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$1;-><init>(Lcom/android/server/GestureLauncherService;)V

    #@1d
    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@1f
    .line 322
    new-instance v0, Lcom/android/server/GestureLauncherService$2;

    #@21
    new-instance v1, Landroid/os/Handler;

    #@23
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@26
    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$2;-><init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V

    #@29
    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    #@2b
    .line 111
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@2d
    .line 109
    return-void
.end method

.method private handleCameraLaunchGesture(ZI)Z
    .locals 6
    .param p1, "useWakelock"    # Z
    .param p2, "source"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 287
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v4

    #@8
    .line 288
    const-string/jumbo v5, "user_setup_complete"

    #@b
    .line 287
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    move v1, v2

    #@12
    .line 289
    .local v1, "userSetupComplete":Z
    :goto_0
    if-nez v1, :cond_1

    #@14
    .line 293
    return v3

    #@15
    .end local v1    # "userSetupComplete":Z
    :cond_0
    move v1, v3

    #@16
    .line 287
    goto :goto_0

    #@17
    .line 299
    .restart local v1    # "userSetupComplete":Z
    :cond_1
    if-eqz p1, :cond_2

    #@19
    .line 301
    iget-object v3, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1b
    const-wide/16 v4, 0x1f4

    #@1d
    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@20
    .line 304
    :cond_2
    const-class v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@22
    .line 303
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@28
    .line 305
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-interface {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    #@2b
    .line 306
    return v2
.end method

.method public static isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 244
    const v0, 0x11200a7

    #@3
    .line 243
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v1

    #@f
    .line 229
    const-string/jumbo v2, "camera_double_tap_power_gesture_disabled"

    #@12
    .line 228
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    .line 227
    :cond_0
    return v0
.end method

.method public static isCameraLaunchEnabled(Landroid/content/res/Resources;)Z
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 237
    const v3, 0x10e009c

    #@5
    .line 236
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@8
    move-result v3

    #@9
    .line 237
    const/4 v4, -0x1

    #@a
    .line 236
    if-eq v3, v4, :cond_1

    #@c
    move v0, v2

    #@d
    .line 238
    .local v0, "configSet":Z
    :goto_0
    if-eqz v0, :cond_0

    #@f
    .line 239
    const-string/jumbo v3, "gesture.disable_camera_launch"

    #@12
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2

    #@18
    .line 238
    :cond_0
    :goto_1
    return v1

    #@19
    .end local v0    # "configSet":Z
    :cond_1
    move v0, v1

    #@1a
    .line 236
    goto :goto_0

    #@1b
    .restart local v0    # "configSet":Z
    :cond_2
    move v1, v2

    #@1c
    .line 239
    goto :goto_1
.end method

.method public static isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v1

    #@f
    .line 223
    const-string/jumbo v2, "camera_gesture_disabled"

    #@12
    .line 222
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    .line 221
    :cond_0
    return v0
.end method

.method public static isGestureLauncherEnabled(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 251
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method private registerCameraLaunchGesture(Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "resources"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 183
    iget-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 184
    return-void

    #@7
    .line 186
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v4

    #@b
    iput-wide v4, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    #@d
    .line 187
    iget-wide v4, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    #@f
    iput-wide v4, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    #@11
    .line 188
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@13
    .line 189
    const-string/jumbo v5, "sensor"

    #@16
    .line 188
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/hardware/SensorManager;

    #@1c
    .line 191
    .local v2, "sensorManager":Landroid/hardware/SensorManager;
    const v4, 0x10e009c

    #@1f
    .line 190
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    #@22
    move-result v0

    #@23
    .line 192
    .local v0, "cameraLaunchGestureId":I
    const/4 v4, -0x1

    #@24
    if-eq v0, v4, :cond_1

    #@26
    .line 193
    iput-boolean v6, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    #@28
    .line 195
    const v4, 0x104006a

    #@2b
    .line 194
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    .line 196
    .local v3, "sensorName":Ljava/lang/String;
    invoke-virtual {v2, v0, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    #@32
    move-result-object v4

    #@33
    iput-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    #@35
    .line 203
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    #@37
    if-eqz v4, :cond_1

    #@39
    .line 204
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    #@3b
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v4

    #@43
    if-eqz v4, :cond_2

    #@45
    .line 205
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    #@47
    .line 206
    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    #@49
    .line 205
    invoke-virtual {v2, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    #@4c
    move-result v4

    #@4d
    iput-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    #@4f
    .line 182
    .end local v3    # "sensorName":Ljava/lang/String;
    :cond_1
    return-void

    #@50
    .line 208
    .restart local v3    # "sensorName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    #@53
    const/4 v5, 0x2

    #@54
    new-array v5, v5, [Ljava/lang/Object;

    #@56
    .line 210
    aput-object v3, v5, v6

    #@58
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    #@5a
    invoke-virtual {v6}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    aput-object v6, v5, v7

    #@60
    .line 208
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    .line 211
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    #@66
    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@69
    throw v4
.end method

.method private registerContentObservers()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 140
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    .line 141
    const-string/jumbo v1, "camera_gesture_disabled"

    #@a
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@d
    move-result-object v1

    #@e
    .line 142
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    #@10
    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    #@12
    .line 140
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@15
    .line 143
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1a
    move-result-object v0

    #@1b
    .line 144
    const-string/jumbo v1, "camera_double_tap_power_gesture_disabled"

    #@1e
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@21
    move-result-object v1

    #@22
    .line 145
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    #@24
    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    #@26
    .line 143
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@29
    .line 139
    return-void
.end method

.method private unregisterCameraLaunchGesture()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-wide/16 v2, 0x0

    #@3
    .line 165
    iget-boolean v1, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 166
    iput-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    #@9
    .line 167
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    #@b
    .line 168
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    #@d
    .line 169
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    #@f
    .line 170
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    #@11
    .line 171
    iput v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    #@13
    .line 173
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@15
    .line 174
    const-string/jumbo v2, "sensor"

    #@18
    .line 173
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/hardware/SensorManager;

    #@1e
    .line 175
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    #@20
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@23
    .line 164
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    :cond_0
    return-void
.end method

.method private updateCameraDoubleTapPowerEnabled()V
    .locals 3

    #@0
    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@2
    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    #@4
    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z

    #@7
    move-result v0

    #@8
    .line 159
    .local v0, "enabled":Z
    monitor-enter p0

    #@9
    .line 160
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 157
    return-void

    #@d
    .line 159
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method

.method private updateCameraRegistered()V
    .locals 3

    #@0
    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 150
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@8
    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    #@a
    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 151
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLaunchGesture(Landroid/content/res/Resources;)V

    #@13
    .line 148
    :goto_0
    return-void

    #@14
    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLaunchGesture()V

    #@17
    goto :goto_0
.end method


# virtual methods
.method public interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "outLaunched"    # Landroid/util/MutableBoolean;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 256
    const/4 v3, 0x0

    #@2
    .line 257
    .local v3, "launched":Z
    const/4 v2, 0x0

    #@3
    .line 259
    .local v2, "intercept":Z
    monitor-enter p0

    #@4
    .line 260
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@7
    move-result-wide v6

    #@8
    iget-wide v8, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    #@a
    sub-long v0, v6, v8

    #@c
    .line 261
    .local v0, "doubleTapInterval":J
    iget-boolean v5, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 262
    const-wide/16 v6, 0x12c

    #@12
    cmp-long v5, v0, v6

    #@14
    if-gez v5, :cond_0

    #@16
    .line 263
    const/4 v3, 0x1

    #@17
    .line 264
    move v2, p2

    #@18
    .line 266
    .end local v2    # "intercept":Z
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@1b
    move-result-wide v6

    #@1c
    iput-wide v6, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 268
    if-eqz v3, :cond_1

    #@21
    .line 269
    const-string/jumbo v5, "GestureLauncherService"

    #@24
    new-instance v6, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v7, "Power button double tap gesture detected, launching camera. Interval="

    #@2c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    .line 270
    const-string/jumbo v7, "ms"

    #@37
    .line 269
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 272
    const/4 v5, 0x1

    #@43
    .line 271
    invoke-direct {p0, v4, v5}, Lcom/android/server/GestureLauncherService;->handleCameraLaunchGesture(ZI)Z

    #@46
    move-result v3

    #@47
    .line 273
    .local v3, "launched":Z
    if-eqz v3, :cond_1

    #@49
    .line 274
    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@4b
    .line 275
    long-to-int v6, v0

    #@4c
    .line 274
    const/16 v7, 0xff

    #@4e
    invoke-static {v5, v7, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    #@51
    .line 278
    .end local v3    # "launched":Z
    :cond_1
    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@53
    const-string/jumbo v6, "power_double_tap_interval"

    #@56
    long-to-int v7, v0

    #@57
    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@5a
    .line 279
    iput-boolean v3, p3, Landroid/util/MutableBoolean;->value:Z

    #@5c
    .line 280
    if-eqz v2, :cond_2

    #@5e
    :goto_0
    return v3

    #@5f
    .line 259
    .end local v0    # "doubleTapInterval":J
    .local v3, "launched":Z
    :catchall_0
    move-exception v4

    #@60
    monitor-exit p0

    #@61
    throw v4

    #@62
    .end local v3    # "launched":Z
    .restart local v0    # "doubleTapInterval":J
    :cond_2
    move v3, v4

    #@63
    .line 280
    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 119
    const/16 v2, 0x258

    #@2
    if-ne p1, v2, :cond_1

    #@4
    .line 120
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v1

    #@a
    .line 121
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 123
    return-void

    #@11
    .line 126
    :cond_0
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@13
    .line 127
    const-string/jumbo v3, "power"

    #@16
    .line 126
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/os/PowerManager;

    #@1c
    .line 129
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v2, "GestureLauncherService"

    #@1f
    .line 128
    const/4 v3, 0x1

    #@20
    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@23
    move-result-object v2

    #@24
    iput-object v2, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@26
    .line 130
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    #@29
    .line 131
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    #@2c
    .line 133
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@2f
    move-result v2

    #@30
    iput v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    #@32
    .line 134
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    #@34
    iget-object v3, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@36
    new-instance v4, Landroid/content/IntentFilter;

    #@38
    const-string/jumbo v5, "android.intent.action.USER_SWITCHED"

    #@3b
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@3e
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@41
    .line 135
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    #@44
    .line 118
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    #@0
    .prologue
    .line 115
    const-class v0, Lcom/android/server/GestureLauncherService;

    #@2
    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@5
    .line 114
    return-void
.end method
