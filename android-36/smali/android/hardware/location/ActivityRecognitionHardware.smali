.class public Landroid/hardware/location/ActivityRecognitionHardware;
.super Landroid/hardware/location/IActivityRecognitionHardware$Stub;
.source "ActivityRecognitionHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ActivityRecognitionHardware$SinkList;,
        Landroid/hardware/location/ActivityRecognitionHardware$Event;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ActivityRecognitionHardware"

.field private static final greylist-max-o EVENT_TYPE_COUNT:I = 0x3

.field private static final greylist-max-o EVENT_TYPE_DISABLED:I = 0x0

.field private static final greylist-max-o EVENT_TYPE_ENABLED:I = 0x1

.field private static final greylist-max-o HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final greylist-max-o INVALID_ACTIVITY_TYPE:I = -0x1

.field private static final greylist-max-o NATIVE_SUCCESS_RESULT:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityRecognitionHW"

.field private static greylist-max-o sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private static final greylist-max-o sSingletonInstanceLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

.field private final greylist-max-o mSupportedActivities:[Ljava/lang/String;

.field private final greylist-max-o mSupportedActivitiesCount:I

.field private final greylist-max-o mSupportedActivitiesEnabledEvents:[[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSinks(Landroid/hardware/location/ActivityRecognitionHardware;)Landroid/hardware/location/ActivityRecognitionHardware$SinkList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedActivitiesCount(Landroid/hardware/location/ActivityRecognitionHardware;)I
    .registers 1

    iget p0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedActivitiesEnabledEvents(Landroid/hardware/location/ActivityRecognitionHardware;)[[I
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnativeDisableActivityEvent(Landroid/hardware/location/ActivityRecognitionHardware;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 34
    const-string v0, "ActivityRecognitionHW"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    .line 279
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeClassInit()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;-><init>()V

    .line 60
    new-instance v0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;-><init>(Landroid/hardware/location/ActivityRecognitionHardware;Landroid/hardware/location/ActivityRecognitionHardware-IA;)V

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    .line 69
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeInitialize()V

    .line 71
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->fetchSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    .line 73
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    .line 74
    iget v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    .line 75
    return-void
.end method

.method private greylist-max-o checkPermissions()V
    .registers 4

    .line 233
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ActivityRecognitionHardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method private greylist-max-o fetchSupportedActivities()[Ljava/lang/String;
    .registers 3

    .line 237
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeGetSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "supportedActivities":[Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 239
    return-object v0

    .line 242
    :cond_7
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1
.end method

.method private greylist-max-o getActivityName(I)Ljava/lang/String;
    .registers 4
    .param p1, "activityType"    # I

    .line 205
    if-ltz p1, :cond_d

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_8

    goto :goto_d

    .line 214
    :cond_8
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 206
    :cond_d
    :goto_d
    nop

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v1, v1

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 206
    const-string v1, "Invalid ActivityType: %d, SupportedActivities: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "message":Ljava/lang/String;
    const-string v1, "ActivityRecognitionHW"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getActivityType(Ljava/lang/String;)I
    .registers 6
    .param p1, "activity"    # Ljava/lang/String;

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 219
    return v1

    .line 222
    :cond_8
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v0, v0

    .line 223
    .local v0, "supportedActivitiesLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_1c

    .line 224
    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 225
    return v2

    .line 223
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 229
    .end local v2    # "i":I
    :cond_1c
    return v1
.end method

.method public static greylist-max-o getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    sget-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    sget-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    if-nez v1, :cond_e

    .line 80
    new-instance v1, Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-direct {v1, p0}, Landroid/hardware/location/ActivityRecognitionHardware;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    .line 83
    :cond_e
    sget-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    monitor-exit v0

    return-object v1

    .line 84
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static greylist-max-o isSupported()Z
    .registers 1

    .line 88
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeIsSupported()Z

    move-result v0

    return v0
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method

.method private native greylist-max-o nativeDisableActivityEvent(II)I
.end method

.method private native greylist-max-o nativeEnableActivityEvent(IIJ)I
.end method

.method private native greylist-max-o nativeFlush()I
.end method

.method private native greylist-max-o nativeGetSupportedActivities()[Ljava/lang/String;
.end method

.method private native greylist-max-o nativeInitialize()V
.end method

.method private static native greylist-max-o nativeIsSupported()Z
.end method

.method private native greylist-max-o nativeRelease()V
.end method

.method private greylist-max-o onActivityChanged([Landroid/hardware/location/ActivityRecognitionHardware$Event;)V
    .registers 12
    .param p1, "events"    # [Landroid/hardware/location/ActivityRecognitionHardware$Event;

    .line 175
    const-string v0, "ActivityRecognitionHW"

    if-eqz p1, :cond_4d

    array-length v1, p1

    if-nez v1, :cond_8

    goto :goto_4d

    .line 180
    :cond_8
    array-length v1, p1

    .line 181
    .local v1, "eventsLength":I
    new-array v2, v1, [Landroid/hardware/location/ActivityRecognitionEvent;

    .line 183
    .local v2, "activityRecognitionEventArray":[Landroid/hardware/location/ActivityRecognitionEvent;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_24

    .line 184
    aget-object v4, p1, v3

    .line 185
    .local v4, "event":Landroid/hardware/location/ActivityRecognitionHardware$Event;
    iget v5, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->activity:I

    invoke-direct {p0, v5}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityName(I)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "activityName":Ljava/lang/String;
    new-instance v6, Landroid/hardware/location/ActivityRecognitionEvent;

    iget v7, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->type:I

    iget-wide v8, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->timestamp:J

    invoke-direct {v6, v5, v7, v8, v9}, Landroid/hardware/location/ActivityRecognitionEvent;-><init>(Ljava/lang/String;IJ)V

    aput-object v6, v2, v3

    .line 183
    .end local v4    # "event":Landroid/hardware/location/ActivityRecognitionHardware$Event;
    .end local v5    # "activityName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 189
    .end local v3    # "i":I
    :cond_24
    new-instance v3, Landroid/hardware/location/ActivityChangedEvent;

    invoke-direct {v3, v2}, Landroid/hardware/location/ActivityChangedEvent;-><init>([Landroid/hardware/location/ActivityRecognitionEvent;)V

    .line 192
    .local v3, "activityChangedEvent":Landroid/hardware/location/ActivityChangedEvent;
    iget-object v4, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v4}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->beginBroadcast()I

    move-result v4

    .line 193
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_30
    if-ge v5, v4, :cond_47

    .line 194
    iget-object v6, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v6, v5}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/hardware/location/IActivityRecognitionHardwareSink;

    .line 196
    .local v6, "sink":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    :try_start_3a
    invoke-interface {v6, v3}, Landroid/hardware/location/IActivityRecognitionHardwareSink;->onActivityChanged(Landroid/hardware/location/ActivityChangedEvent;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 199
    goto :goto_44

    .line 197
    :catch_3e
    move-exception v7

    .line 198
    .local v7, "e":Landroid/os/RemoteException;
    const-string v8, "Error delivering activity changed event."

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v6    # "sink":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 201
    .end local v5    # "i":I
    :cond_47
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v0}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->finishBroadcast()V

    .line 202
    return-void

    .line 176
    .end local v1    # "eventsLength":I
    .end local v2    # "activityRecognitionEventArray":[Landroid/hardware/location/ActivityRecognitionEvent;
    .end local v3    # "activityChangedEvent":Landroid/hardware/location/ActivityChangedEvent;
    .end local v4    # "size":I
    :cond_4d
    :goto_4d
    sget-boolean v1, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    if-eqz v1, :cond_56

    const-string v1, "No events to broadcast for onActivityChanged."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_56
    return-void
.end method


# virtual methods
.method public greylist-max-o disableActivityEvent(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I

    .line 147
    invoke-super {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->disableActivityEvent_enforcePermission()V

    .line 149
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, "activityType":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    .line 151
    return v2

    .line 154
    :cond_c
    invoke-direct {p0, v0, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    move-result v1

    .line 155
    .local v1, "result":I
    if-nez v1, :cond_1a

    .line 156
    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    aget-object v3, v3, v0

    aput v2, v3, p2

    .line 157
    const/4 v2, 0x1

    return v2

    .line 159
    :cond_1a
    return v2
.end method

.method public greylist-max-o enableActivityEvent(Ljava/lang/String;IJ)Z
    .registers 9
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "reportLatencyNs"    # J

    .line 128
    invoke-super {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->enableActivityEvent_enforcePermission()V

    .line 130
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, "activityType":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    .line 132
    return v2

    .line 135
    :cond_c
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeEnableActivityEvent(IIJ)I

    move-result v1

    .line 136
    .local v1, "result":I
    if-nez v1, :cond_1a

    .line 137
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aput v3, v2, p2

    .line 138
    return v3

    .line 140
    :cond_1a
    return v2
.end method

.method public greylist-max-o flush()Z
    .registers 3

    .line 165
    invoke-super {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->flush_enforcePermission()V

    .line 167
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeFlush()I

    move-result v0

    .line 168
    .local v0, "result":I
    if-nez v0, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public greylist-max-o getSupportedActivities()[Ljava/lang/String;
    .registers 2

    .line 94
    invoke-super {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getSupportedActivities_enforcePermission()V

    .line 96
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o isActivitySupported(Ljava/lang/String;)Z
    .registers 4
    .param p1, "activity"    # Ljava/lang/String;

    .line 102
    invoke-super {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->isActivitySupported_enforcePermission()V

    .line 104
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, "activityType":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public greylist-max-o registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .registers 3
    .param p1, "sink"    # Landroid/hardware/location/IActivityRecognitionHardwareSink;

    .line 111
    invoke-super {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->registerSink_enforcePermission()V

    .line 113
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .registers 3
    .param p1, "sink"    # Landroid/hardware/location/IActivityRecognitionHardwareSink;

    .line 119
    invoke-super {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->unregisterSink_enforcePermission()V

    .line 121
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method
