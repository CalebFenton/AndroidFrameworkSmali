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
.field private static greylist-max-o sInitialized:Z

.field private static greylist-max-o sRotation:I

.field private static greylist-max-o sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private final greylist-max-o mLegacyListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorListener;",
            "Landroid/hardware/LegacySensorManager$LegacyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const/4 v0, 0x0

    sput v0, Landroid/hardware/LegacySensorManager;->sRotation:I

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/SensorManager;)V
    .registers 6
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 47
    iput-object p1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 49
    const-class v0, Landroid/hardware/SensorManager;

    monitor-enter v0

    .line 50
    :try_start_f
    sget-boolean v1, Landroid/hardware/LegacySensorManager;->sInitialized:Z

    if-nez v1, :cond_34

    .line 51
    const-string/jumbo v1, "window"

    .line 52
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;

    .line 53
    sget-object v1, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_36

    if-eqz v1, :cond_34

    .line 57
    :try_start_24
    sget-object v1, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v2, Landroid/hardware/LegacySensorManager$1;

    invoke-direct {v2, p0}, Landroid/hardware/LegacySensorManager$1;-><init>(Landroid/hardware/LegacySensorManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result v1

    sput v1, Landroid/hardware/LegacySensorManager;->sRotation:I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_32} :catch_33
    .catchall {:try_start_24 .. :try_end_32} :catchall_36

    .line 64
    goto :goto_34

    .line 63
    :catch_33
    move-exception v1

    .line 67
    :cond_34
    :goto_34
    :try_start_34
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_36

    throw v1
.end method

.method static greylist-max-o getRotation()I
    .registers 2

    .line 201
    const-class v0, Landroid/hardware/SensorManager;

    monitor-enter v0

    .line 202
    :try_start_3
    sget v1, Landroid/hardware/LegacySensorManager;->sRotation:I

    monitor-exit v0

    return v1

    .line 203
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static greylist-max-o onRotationChanged(I)V
    .registers 3
    .param p0, "rotation"    # I

    .line 195
    const-class v0, Landroid/hardware/SensorManager;

    monitor-enter v0

    .line 196
    :try_start_3
    sput p0, Landroid/hardware/LegacySensorManager;->sRotation:I

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private greylist-max-o registerLegacyListener(IILandroid/hardware/SensorListener;II)Z
    .registers 11
    .param p1, "legacyType"    # I
    .param p2, "type"    # I
    .param p3, "listener"    # Landroid/hardware/SensorListener;
    .param p4, "sensors"    # I
    .param p5, "rate"    # I

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "result":Z
    and-int v1, p4, p1

    if-eqz v1, :cond_39

    .line 114
    iget-object v1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 115
    .local v1, "sensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_39

    .line 120
    iget-object v2, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 124
    :try_start_10
    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/LegacySensorManager$LegacyListener;

    .line 125
    .local v3, "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    if-nez v3, :cond_25

    .line 128
    new-instance v4, Landroid/hardware/LegacySensorManager$LegacyListener;

    invoke-direct {v4, p3}, Landroid/hardware/LegacySensorManager$LegacyListener;-><init>(Landroid/hardware/SensorListener;)V

    move-object v3, v4

    .line 129
    iget-object v4, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v4, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_25
    invoke-virtual {v3, p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->registerSensor(I)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 135
    iget-object v4, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3, v1, p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    move v0, v4

    .end local v0    # "result":Z
    .local v4, "result":Z
    goto :goto_34

    .line 137
    .end local v4    # "result":Z
    .restart local v0    # "result":Z
    :cond_33
    const/4 v0, 0x1

    .line 139
    .end local v3    # "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    :goto_34
    monitor-exit v2

    goto :goto_39

    :catchall_36
    move-exception v3

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_36

    throw v3

    .line 142
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_39
    :goto_39
    return v0
.end method

.method private greylist-max-o unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V
    .registers 9
    .param p1, "legacyType"    # I
    .param p2, "type"    # I
    .param p3, "listener"    # Landroid/hardware/SensorListener;
    .param p4, "sensors"    # I

    .line 164
    and-int v0, p4, p1

    if-eqz v0, :cond_34

    .line 166
    iget-object v0, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 167
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_34

    .line 172
    iget-object v1, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 174
    :try_start_f
    iget-object v2, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/LegacySensorManager$LegacyListener;

    .line 175
    .local v2, "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    if-eqz v2, :cond_2f

    .line 178
    invoke-virtual {v2, p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->unregisterSensor(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 180
    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 184
    invoke-virtual {v2}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasSensors()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 185
    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v2    # "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    :cond_2f
    monitor-exit v1

    goto :goto_34

    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_31

    throw v2

    .line 192
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public greylist-max-o getSensors()I
    .registers 6

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "result":I
    iget-object v1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 74
    .local v3, "i":Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_2a

    goto :goto_28

    .line 82
    :pswitch_1f
    or-int/lit16 v0, v0, 0x81

    goto :goto_28

    .line 79
    :pswitch_22
    or-int/lit8 v0, v0, 0x8

    .line 80
    goto :goto_28

    .line 76
    :pswitch_25
    or-int/lit8 v0, v0, 0x2

    .line 77
    nop

    .line 86
    .end local v3    # "i":Landroid/hardware/Sensor;
    :goto_28
    goto :goto_b

    .line 87
    :cond_29
    return v0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method

.method public greylist-max-o registerListener(Landroid/hardware/SensorListener;II)Z
    .registers 12
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .param p3, "rate"    # I

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 92
    return v0

    .line 94
    :cond_4
    const/4 v1, 0x0

    .line 95
    .local v1, "result":Z
    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    .end local p1    # "listener":Landroid/hardware/SensorListener;
    .end local p2    # "sensors":I
    .end local p3    # "rate":I
    .local v5, "listener":Landroid/hardware/SensorListener;
    .local v6, "sensors":I
    .local v7, "rate":I
    invoke-direct/range {v2 .. v7}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_17

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    move p1, v0

    goto :goto_18

    :cond_17
    :goto_17
    move p1, p2

    .line 97
    .end local v1    # "result":Z
    .local p1, "result":Z
    :goto_18
    const/16 v3, 0x8

    const/4 v4, 0x2

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result p3

    if-nez p3, :cond_27

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    move p3, v0

    goto :goto_28

    :cond_27
    :goto_27
    move p3, p2

    .line 99
    .end local p1    # "result":Z
    .local p3, "result":Z
    :goto_28
    const/16 v3, 0x80

    const/4 v4, 0x3

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result p1

    if-nez p1, :cond_37

    if-eqz p3, :cond_35

    goto :goto_37

    :cond_35
    move p1, v0

    goto :goto_38

    :cond_37
    :goto_37
    move p1, p2

    .line 101
    .end local p3    # "result":Z
    .restart local p1    # "result":Z
    :goto_38
    const/4 v3, 0x1

    const/4 v4, 0x3

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result p3

    if-nez p3, :cond_46

    if-eqz p1, :cond_44

    goto :goto_46

    :cond_44
    move p3, v0

    goto :goto_47

    :cond_46
    :goto_46
    move p3, p2

    .line 103
    .end local p1    # "result":Z
    .restart local p3    # "result":Z
    :goto_47
    const/4 v3, 0x4

    const/4 v4, 0x7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result p1

    if-nez p1, :cond_52

    if-eqz p3, :cond_53

    :cond_52
    move v0, p2

    .line 105
    .end local p3    # "result":Z
    .local v0, "result":Z
    :cond_53
    return v0
.end method

.method public greylist-max-o unregisterListener(Landroid/hardware/SensorListener;I)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I

    .line 146
    if-nez p1, :cond_3

    .line 147
    return-void

    .line 149
    :cond_3
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 151
    const/16 v2, 0x8

    invoke-direct {p0, v2, v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 153
    const/16 v0, 0x80

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 155
    invoke-direct {p0, v1, v2, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 157
    const/4 v0, 0x4

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 159
    return-void
.end method
