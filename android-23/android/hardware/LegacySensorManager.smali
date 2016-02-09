.class final Landroid/hardware/LegacySensorManager;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/LegacySensorManager$LegacyListener;,
        Landroid/hardware/LegacySensorManager$LmsFilter;
    }
.end annotation


# static fields
.field private static sInitialized:Z

.field private static sRotation:I

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private final mLegacyListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorListener;",
            "Landroid/hardware/LegacySensorManager$LegacyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    const/4 v0, 0x0

    #@1
    sput v0, Landroid/hardware/LegacySensorManager;->sRotation:I

    #@3
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 4
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    new-instance v1, Ljava/util/HashMap;

    #@5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 41
    iput-object v1, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    #@a
    .line 45
    iput-object p1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    #@c
    .line 47
    const-class v2, Landroid/hardware/SensorManager;

    #@e
    monitor-enter v2

    #@f
    .line 48
    :try_start_0
    sget-boolean v1, Landroid/hardware/LegacySensorManager;->sInitialized:Z

    #@11
    if-nez v1, :cond_0

    #@13
    .line 50
    const-string/jumbo v1, "window"

    #@16
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    .line 49
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@1d
    move-result-object v1

    #@1e
    sput-object v1, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;

    #@20
    .line 51
    sget-object v1, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 55
    :try_start_1
    sget-object v1, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;

    #@26
    .line 56
    new-instance v3, Landroid/hardware/LegacySensorManager$1;

    #@28
    invoke-direct {v3, p0}, Landroid/hardware/LegacySensorManager$1;-><init>(Landroid/hardware/LegacySensorManager;)V

    #@2b
    .line 55
    invoke-interface {v1, v3}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    #@2e
    move-result v1

    #@2f
    sput v1, Landroid/hardware/LegacySensorManager;->sRotation:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    :cond_0
    :goto_0
    monitor-exit v2

    #@32
    .line 44
    return-void

    #@33
    .line 47
    :catchall_0
    move-exception v1

    #@34
    monitor-exit v2

    #@35
    throw v1

    #@36
    .line 62
    :catch_0
    move-exception v0

    #@37
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method static getRotation()I
    .locals 2

    #@0
    .prologue
    .line 200
    const-class v0, Landroid/hardware/SensorManager;

    #@2
    monitor-enter v0

    #@3
    .line 201
    :try_start_0
    sget v1, Landroid/hardware/LegacySensorManager;->sRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 200
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method static onRotationChanged(I)V
    .locals 2
    .param p0, "rotation"    # I

    #@0
    .prologue
    .line 194
    const-class v0, Landroid/hardware/SensorManager;

    #@2
    monitor-enter v0

    #@3
    .line 195
    :try_start_0
    sput p0, Landroid/hardware/LegacySensorManager;->sRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 193
    return-void

    #@7
    .line 194
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method private registerLegacyListener(IILandroid/hardware/SensorListener;II)Z
    .locals 5
    .param p1, "legacyType"    # I
    .param p2, "type"    # I
    .param p3, "listener"    # Landroid/hardware/SensorListener;
    .param p4, "sensors"    # I
    .param p5, "rate"    # I

    #@0
    .prologue
    .line 109
    const/4 v1, 0x0

    #@1
    .line 111
    .local v1, "result":Z
    and-int v3, p4, p1

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 113
    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    #@7
    invoke-virtual {v3, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@a
    move-result-object v2

    #@b
    .line 114
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-eqz v2, :cond_1

    #@d
    .line 119
    iget-object v4, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    #@f
    monitor-enter v4

    #@10
    .line 123
    :try_start_0
    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    #@12
    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/hardware/LegacySensorManager$LegacyListener;

    #@18
    .line 124
    .local v0, "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    if-nez v0, :cond_0

    #@1a
    .line 127
    new-instance v0, Landroid/hardware/LegacySensorManager$LegacyListener;

    #@1c
    .end local v0    # "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    invoke-direct {v0, p3}, Landroid/hardware/LegacySensorManager$LegacyListener;-><init>(Landroid/hardware/SensorListener;)V

    #@1f
    .line 128
    .restart local v0    # "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    #@21
    invoke-virtual {v3, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 132
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->registerSensor(I)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 134
    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    #@2c
    invoke-virtual {v3, v0, v2, p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result v1

    #@30
    .end local v1    # "result":Z
    :goto_0
    monitor-exit v4

    #@31
    .line 141
    .end local v0    # "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    return v1

    #@32
    .line 136
    .restart local v0    # "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    .restart local v1    # "result":Z
    .restart local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_2
    const/4 v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 119
    .end local v0    # "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    :catchall_0
    move-exception v3

    #@35
    monitor-exit v4

    #@36
    throw v3
.end method

.method private unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V
    .locals 4
    .param p1, "legacyType"    # I
    .param p2, "type"    # I
    .param p3, "listener"    # Landroid/hardware/SensorListener;
    .param p4, "sensors"    # I

    #@0
    .prologue
    .line 163
    and-int v2, p4, p1

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 165
    iget-object v2, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    #@6
    invoke-virtual {v2, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@9
    move-result-object v1

    #@a
    .line 166
    .local v1, "sensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_1

    #@c
    .line 171
    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    #@e
    monitor-enter v3

    #@f
    .line 173
    :try_start_0
    iget-object v2, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    #@11
    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/hardware/LegacySensorManager$LegacyListener;

    #@17
    .line 174
    .local v0, "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    if-eqz v0, :cond_0

    #@19
    .line 177
    invoke-virtual {v0, p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->unregisterSensor(I)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 179
    iget-object v2, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    #@21
    invoke-virtual {v2, v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    #@24
    .line 183
    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasSensors()Z

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_0

    #@2a
    .line 184
    iget-object v2, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    #@2c
    invoke-virtual {v2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    :cond_0
    monitor-exit v3

    #@30
    .line 161
    .end local v0    # "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    return-void

    #@31
    .line 171
    .restart local v1    # "sensor":Landroid/hardware/Sensor;
    :catchall_0
    move-exception v2

    #@32
    monitor-exit v3

    #@33
    throw v2
.end method


# virtual methods
.method public getSensors()I
    .locals 5

    #@0
    .prologue
    .line 70
    const/4 v3, 0x0

    #@1
    .line 71
    .local v3, "result":I
    iget-object v4, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    #@3
    invoke-virtual {v4}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    #@6
    move-result-object v0

    #@7
    .line 72
    .local v0, "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/hardware/Sensor;

    #@17
    .line 73
    .local v1, "i":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    #@1a
    move-result v4

    #@1b
    packed-switch v4, :pswitch_data_0

    #@1e
    goto :goto_0

    #@1f
    .line 75
    :pswitch_0
    or-int/lit8 v3, v3, 0x2

    #@21
    .line 76
    goto :goto_0

    #@22
    .line 78
    :pswitch_1
    or-int/lit8 v3, v3, 0x8

    #@24
    .line 79
    goto :goto_0

    #@25
    .line 81
    :pswitch_2
    or-int/lit16 v3, v3, 0x81

    #@27
    .line 83
    goto :goto_0

    #@28
    .line 86
    .end local v1    # "i":Landroid/hardware/Sensor;
    :cond_0
    return v3

    #@29
    .line 73
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 11
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .param p3, "rate"    # I

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v1, 0x2

    #@2
    const/4 v2, 0x1

    #@3
    .line 90
    if-nez p1, :cond_0

    #@5
    .line 91
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    :cond_0
    move-object v0, p0

    #@8
    move-object v3, p1

    #@9
    move v4, p2

    #@a
    move v5, p3

    #@b
    .line 94
    invoke-direct/range {v0 .. v5}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    .line 93
    const/4 v9, 0x0

    #@12
    .line 96
    .local v9, "result":Z
    :goto_0
    const/16 v4, 0x8

    #@14
    move-object v3, p0

    #@15
    move v5, v1

    #@16
    move-object v6, p1

    #@17
    move v7, p2

    #@18
    move v8, p3

    #@19
    invoke-direct/range {v3 .. v8}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_2

    #@1f
    .line 98
    :goto_1
    const/16 v4, 0x80

    #@21
    move-object v3, p0

    #@22
    move v5, v10

    #@23
    move-object v6, p1

    #@24
    move v7, p2

    #@25
    move v8, p3

    #@26
    invoke-direct/range {v3 .. v8}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_3

    #@2c
    :goto_2
    move-object v1, p0

    #@2d
    move v3, v10

    #@2e
    move-object v4, p1

    #@2f
    move v5, p2

    #@30
    move v6, p3

    #@31
    .line 100
    invoke-direct/range {v1 .. v6}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    #@34
    move-result v0

    #@35
    if-nez v0, :cond_4

    #@37
    .line 102
    :goto_3
    const/4 v1, 0x4

    #@38
    .line 103
    const/4 v2, 0x7

    #@39
    move-object v0, p0

    #@3a
    move-object v3, p1

    #@3b
    move v4, p2

    #@3c
    move v5, p3

    #@3d
    .line 102
    invoke-direct/range {v0 .. v5}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    #@40
    move-result v0

    #@41
    if-nez v0, :cond_5

    #@43
    .line 104
    :goto_4
    return v9

    #@44
    .line 94
    .end local v9    # "result":Z
    :cond_1
    const/4 v9, 0x1

    #@45
    .restart local v9    # "result":Z
    goto :goto_0

    #@46
    .line 96
    :cond_2
    const/4 v9, 0x1

    #@47
    goto :goto_1

    #@48
    .line 98
    :cond_3
    const/4 v9, 0x1

    #@49
    goto :goto_2

    #@4a
    .line 100
    :cond_4
    const/4 v9, 0x1

    #@4b
    goto :goto_3

    #@4c
    .line 102
    :cond_5
    const/4 v9, 0x1

    #@4d
    goto :goto_4
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v2, 0x2

    #@2
    const/4 v1, 0x1

    #@3
    .line 145
    if-nez p1, :cond_0

    #@5
    .line 146
    return-void

    #@6
    .line 148
    :cond_0
    invoke-direct {p0, v2, v1, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    #@9
    .line 150
    const/16 v0, 0x8

    #@b
    invoke-direct {p0, v0, v2, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    #@e
    .line 152
    const/16 v0, 0x80

    #@10
    invoke-direct {p0, v0, v3, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    #@13
    .line 154
    invoke-direct {p0, v1, v3, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    #@16
    .line 156
    const/4 v0, 0x4

    #@17
    const/4 v1, 0x7

    #@18
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    #@1b
    .line 144
    return-void
.end method
