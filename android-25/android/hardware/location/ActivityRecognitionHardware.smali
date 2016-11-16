.class public Landroid/hardware/location/ActivityRecognitionHardware;
.super Landroid/hardware/location/IActivityRecognitionHardware$Stub;
.source "ActivityRecognitionHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ActivityRecognitionHardware$Event;,
        Landroid/hardware/location/ActivityRecognitionHardware$SinkList;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ActivityRecognitionHardware"

.field private static final EVENT_TYPE_COUNT:I = 0x3

.field private static final EVENT_TYPE_DISABLED:I = 0x0

.field private static final EVENT_TYPE_ENABLED:I = 0x1

.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final INVALID_ACTIVITY_TYPE:I = -0x1

.field private static final NATIVE_SUCCESS_RESULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionHW"

.field private static sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private static final sSingletonInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

.field private final mSupportedActivities:[Ljava/lang/String;

.field private final mSupportedActivitiesCount:I

.field private final mSupportedActivitiesEnabledEvents:[[I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/hardware/location/ActivityRecognitionHardware;)Landroid/hardware/location/ActivityRecognitionHardware$SinkList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/location/ActivityRecognitionHardware;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/hardware/location/ActivityRecognitionHardware;)[[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/location/ActivityRecognitionHardware;II)I
    .locals 1
    .param p1, "activityType"    # I
    .param p2, "eventType"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 34
    const-string/jumbo v0, "ActivityRecognitionHW"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    #@a
    .line 54
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    #@11
    .line 265
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeClassInit()V

    #@14
    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;-><init>()V

    #@3
    .line 60
    new-instance v0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, v1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;-><init>(Landroid/hardware/location/ActivityRecognitionHardware;Landroid/hardware/location/ActivityRecognitionHardware$SinkList;)V

    #@9
    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    #@b
    .line 69
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeInitialize()V

    #@e
    .line 71
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    #@10
    .line 72
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->fetchSupportedActivities()[Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    #@16
    .line 73
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    #@18
    array-length v0, v0

    #@19
    iput v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    #@1b
    .line 74
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1d
    const/4 v1, 0x2

    #@1e
    new-array v1, v1, [I

    #@20
    iget v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    #@22
    const/4 v3, 0x0

    #@23
    aput v2, v1, v3

    #@25
    const/4 v2, 0x3

    #@26
    const/4 v3, 0x1

    #@27
    aput v2, v1, v3

    #@29
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, [[I

    #@2f
    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    #@31
    .line 68
    return-void
.end method

.method private checkPermissions()V
    .locals 3

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@5
    const-string/jumbo v2, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ActivityRecognitionHardware"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 218
    return-void
.end method

.method private fetchSupportedActivities()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 223
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeGetSupportedActivities()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 224
    .local v0, "supportedActivities":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 225
    return-object v0

    #@7
    .line 228
    :cond_0
    const/4 v1, 0x0

    #@8
    new-array v1, v1, [Ljava/lang/String;

    #@a
    return-object v1
.end method

.method private getActivityName(I)Ljava/lang/String;
    .locals 5
    .param p1, "activityType"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 191
    if-ltz p1, :cond_0

    #@3
    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    #@5
    array-length v1, v1

    #@6
    if-lt p1, v1, :cond_1

    #@8
    .line 193
    :cond_0
    const-string/jumbo v1, "Invalid ActivityType: %d, SupportedActivities: %d"

    #@b
    .line 192
    const/4 v2, 0x2

    #@c
    new-array v2, v2, [Ljava/lang/Object;

    #@e
    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v3

    #@12
    aput-object v3, v2, v4

    #@14
    .line 195
    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    #@16
    array-length v3, v3

    #@17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v3

    #@1b
    const/4 v4, 0x1

    #@1c
    aput-object v3, v2, v4

    #@1e
    .line 192
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 196
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "ActivityRecognitionHW"

    #@25
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 197
    const/4 v1, 0x0

    #@29
    return-object v1

    #@2a
    .line 200
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    #@2c
    aget-object v1, v1, p1

    #@2e
    return-object v1
.end method

.method private getActivityType(Ljava/lang/String;)I
    .locals 4
    .param p1, "activity"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 205
    return v3

    #@8
    .line 208
    :cond_0
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    #@a
    array-length v1, v2

    #@b
    .line 209
    .local v1, "supportedActivitiesLength":I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@e
    .line 210
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    #@10
    aget-object v2, v2, v0

    #@12
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 211
    return v0

    #@19
    .line 209
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 215
    :cond_2
    return v3
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 78
    sget-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 79
    :try_start_0
    sget-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 80
    new-instance v0, Landroid/hardware/location/ActivityRecognitionHardware;

    #@9
    invoke-direct {v0, p0}, Landroid/hardware/location/ActivityRecognitionHardware;-><init>(Landroid/content/Context;)V

    #@c
    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    #@e
    .line 83
    :cond_0
    sget-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 78
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public static isSupported()Z
    .locals 1

    #@0
    .prologue
    .line 88
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeIsSupported()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDisableActivityEvent(II)I
.end method

.method private native nativeEnableActivityEvent(IIJ)I
.end method

.method private native nativeFlush()I
.end method

.method private native nativeGetSupportedActivities()[Ljava/lang/String;
.end method

.method private native nativeInitialize()V
.end method

.method private static native nativeIsSupported()Z
.end method

.method private native nativeRelease()V
.end method

.method private onActivityChanged([Landroid/hardware/location/ActivityRecognitionHardware$Event;)V
    .locals 14
    .param p1, "events"    # [Landroid/hardware/location/ActivityRecognitionHardware$Event;

    #@0
    .prologue
    .line 161
    if-eqz p1, :cond_0

    #@2
    array-length v9, p1

    #@3
    if-nez v9, :cond_2

    #@5
    .line 162
    :cond_0
    sget-boolean v9, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    #@7
    if-eqz v9, :cond_1

    #@9
    const-string/jumbo v9, "ActivityRecognitionHW"

    #@c
    const-string/jumbo v10, "No events to broadcast for onActivityChanged."

    #@f
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 163
    :cond_1
    return-void

    #@13
    .line 166
    :cond_2
    array-length v5, p1

    #@14
    .line 168
    .local v5, "eventsLength":I
    new-array v2, v5, [Landroid/hardware/location/ActivityRecognitionEvent;

    #@16
    .line 169
    .local v2, "activityRecognitionEventArray":[Landroid/hardware/location/ActivityRecognitionEvent;
    const/4 v6, 0x0

    #@17
    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_3

    #@19
    .line 170
    aget-object v4, p1, v6

    #@1b
    .line 171
    .local v4, "event":Landroid/hardware/location/ActivityRecognitionHardware$Event;
    iget v9, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->activity:I

    #@1d
    invoke-direct {p0, v9}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityName(I)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 173
    .local v1, "activityName":Ljava/lang/String;
    new-instance v9, Landroid/hardware/location/ActivityRecognitionEvent;

    #@23
    iget v10, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->type:I

    #@25
    iget-wide v12, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->timestamp:J

    #@27
    invoke-direct {v9, v1, v10, v12, v13}, Landroid/hardware/location/ActivityRecognitionEvent;-><init>(Ljava/lang/String;IJ)V

    #@2a
    .line 172
    aput-object v9, v2, v6

    #@2c
    .line 169
    add-int/lit8 v6, v6, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 176
    .end local v1    # "activityName":Ljava/lang/String;
    .end local v4    # "event":Landroid/hardware/location/ActivityRecognitionHardware$Event;
    :cond_3
    new-instance v0, Landroid/hardware/location/ActivityChangedEvent;

    #@31
    invoke-direct {v0, v2}, Landroid/hardware/location/ActivityChangedEvent;-><init>([Landroid/hardware/location/ActivityRecognitionEvent;)V

    #@34
    .line 178
    .local v0, "activityChangedEvent":Landroid/hardware/location/ActivityChangedEvent;
    iget-object v9, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    #@36
    invoke-virtual {v9}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->beginBroadcast()I

    #@39
    move-result v8

    #@3a
    .line 179
    .local v8, "size":I
    const/4 v6, 0x0

    #@3b
    :goto_1
    if-ge v6, v8, :cond_4

    #@3d
    .line 180
    iget-object v9, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    #@3f
    invoke-virtual {v9, v6}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@42
    move-result-object v7

    #@43
    check-cast v7, Landroid/hardware/location/IActivityRecognitionHardwareSink;

    #@45
    .line 182
    .local v7, "sink":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    :try_start_0
    invoke-interface {v7, v0}, Landroid/hardware/location/IActivityRecognitionHardwareSink;->onActivityChanged(Landroid/hardware/location/ActivityChangedEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 179
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 183
    :catch_0
    move-exception v3

    #@4c
    .line 184
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "ActivityRecognitionHW"

    #@4f
    const-string/jumbo v10, "Error delivering activity changed event."

    #@52
    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@55
    goto :goto_2

    #@56
    .line 187
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v7    # "sink":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    :cond_4
    iget-object v9, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    #@58
    invoke-virtual {v9}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->finishBroadcast()V

    #@5b
    .line 160
    return-void
.end method


# virtual methods
.method public disableActivityEvent(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 135
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    #@4
    .line 137
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 138
    .local v0, "activityType":I
    const/4 v2, -0x1

    #@9
    if-ne v0, v2, :cond_0

    #@b
    .line 139
    return v3

    #@c
    .line 142
    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    #@f
    move-result v1

    #@10
    .line 143
    .local v1, "result":I
    if-nez v1, :cond_1

    #@12
    .line 144
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    #@14
    aget-object v2, v2, v0

    #@16
    aput v3, v2, p2

    #@18
    .line 145
    const/4 v2, 0x1

    #@19
    return v2

    #@1a
    .line 147
    :cond_1
    return v3
.end method

.method public enableActivityEvent(Ljava/lang/String;IJ)Z
    .locals 5
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "reportLatencyNs"    # J

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 118
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    #@5
    .line 120
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    .line 121
    .local v0, "activityType":I
    const/4 v2, -0x1

    #@a
    if-ne v0, v2, :cond_0

    #@c
    .line 122
    return v3

    #@d
    .line 125
    :cond_0
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeEnableActivityEvent(IIJ)I

    #@10
    move-result v1

    #@11
    .line 126
    .local v1, "result":I
    if-nez v1, :cond_1

    #@13
    .line 127
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    #@15
    aget-object v2, v2, v0

    #@17
    aput v4, v2, p2

    #@19
    .line 128
    return v4

    #@1a
    .line 130
    :cond_1
    return v3
.end method

.method public flush()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 152
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    #@4
    .line 153
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeFlush()I

    #@7
    move-result v0

    #@8
    .line 154
    .local v0, "result":I
    if-nez v0, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    :cond_0
    return v1
.end method

.method public getSupportedActivities()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    #@3
    .line 94
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    #@5
    return-object v0
.end method

.method public isActivitySupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "activity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    #@3
    .line 100
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    .line 101
    .local v0, "activityType":I
    const/4 v1, -0x1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    :goto_0
    return v1

    #@c
    :cond_0
    const/4 v1, 0x0

    #@d
    goto :goto_0
.end method

.method public registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .locals 1
    .param p1, "sink"    # Landroid/hardware/location/IActivityRecognitionHardwareSink;

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    #@3
    .line 107
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    #@5
    invoke-virtual {v0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->register(Landroid/os/IInterface;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .locals 1
    .param p1, "sink"    # Landroid/hardware/location/IActivityRecognitionHardwareSink;

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    #@3
    .line 113
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    #@5
    invoke-virtual {v0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->unregister(Landroid/os/IInterface;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method
