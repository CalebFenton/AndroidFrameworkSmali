.class public Landroid/hardware/location/ActivityRecognitionHardware;
.super Landroid/hardware/location/IActivityRecognitionHardware$Stub;
.source "ActivityRecognitionHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ActivityRecognitionHardware$Event;
    }
.end annotation


# static fields
.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final INVALID_ACTIVITY_TYPE:I = -0x1

.field private static final NATIVE_SUCCESS_RESULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionHardware"

.field private static sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private static final sSingletonInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSinks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/hardware/location/IActivityRecognitionHardwareSink;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedActivities:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 39
    const/4 v0, 0x0

    #@1
    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    #@3
    .line 40
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    #@a
    .line 212
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeClassInit()V

    #@d
    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;-><init>()V

    #@3
    .line 46
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@5
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@8
    .line 45
    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/os/RemoteCallbackList;

    #@a
    .line 55
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeInitialize()V

    #@d
    .line 57
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    #@f
    .line 58
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->fetchSupportedActivities()[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    #@15
    .line 54
    return-void
.end method

.method private checkPermissions()V
    .locals 5

    #@0
    .prologue
    .line 197
    const-string/jumbo v1, "Permission \'%s\' not granted to access ActivityRecognitionHardware"

    #@3
    .line 196
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    .line 198
    const-string/jumbo v3, "android.permission.LOCATION_HARDWARE"

    #@9
    const/4 v4, 0x0

    #@a
    aput-object v3, v2, v4

    #@c
    .line 196
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 199
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    #@12
    const-string/jumbo v2, "android.permission.LOCATION_HARDWARE"

    #@15
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 195
    return-void
.end method

.method private fetchSupportedActivities()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 203
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeGetSupportedActivities()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 204
    .local v0, "supportedActivities":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 205
    return-object v0

    #@7
    .line 208
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
    .line 168
    if-ltz p1, :cond_0

    #@3
    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    #@5
    array-length v1, v1

    #@6
    if-lt p1, v1, :cond_1

    #@8
    .line 170
    :cond_0
    const-string/jumbo v1, "Invalid ActivityType: %d, SupportedActivities: %d"

    #@b
    .line 169
    const/4 v2, 0x2

    #@c
    new-array v2, v2, [Ljava/lang/Object;

    #@e
    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v3

    #@12
    aput-object v3, v2, v4

    #@14
    .line 172
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
    .line 169
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 173
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "ActivityRecognitionHardware"

    #@25
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 174
    const/4 v1, 0x0

    #@29
    return-object v1

    #@2a
    .line 177
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
    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 182
    return v3

    #@8
    .line 185
    :cond_0
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    #@a
    array-length v1, v2

    #@b
    .line 186
    .local v1, "supportedActivitiesLength":I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@e
    .line 187
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
    .line 188
    return v0

    #@19
    .line 186
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 192
    :cond_2
    return v3
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 62
    sget-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 63
    :try_start_0
    sget-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 64
    new-instance v0, Landroid/hardware/location/ActivityRecognitionHardware;

    #@9
    invoke-direct {v0, p0}, Landroid/hardware/location/ActivityRecognitionHardware;-><init>(Landroid/content/Context;)V

    #@c
    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    #@e
    .line 67
    :cond_0
    sget-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 62
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
    .line 72
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
    .line 137
    if-eqz p1, :cond_0

    #@2
    array-length v9, p1

    #@3
    if-nez v9, :cond_1

    #@5
    .line 138
    :cond_0
    const-string/jumbo v9, "ActivityRecognitionHardware"

    #@8
    const-string/jumbo v10, "No events to broadcast for onActivityChanged."

    #@b
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 139
    return-void

    #@f
    .line 142
    :cond_1
    array-length v5, p1

    #@10
    .line 144
    .local v5, "eventsLength":I
    new-array v2, v5, [Landroid/hardware/location/ActivityRecognitionEvent;

    #@12
    .line 145
    .local v2, "activityRecognitionEventArray":[Landroid/hardware/location/ActivityRecognitionEvent;
    const/4 v6, 0x0

    #@13
    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    #@15
    .line 146
    aget-object v4, p1, v6

    #@17
    .line 147
    .local v4, "event":Landroid/hardware/location/ActivityRecognitionHardware$Event;
    iget v9, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->activity:I

    #@19
    invoke-direct {p0, v9}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityName(I)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 149
    .local v1, "activityName":Ljava/lang/String;
    new-instance v9, Landroid/hardware/location/ActivityRecognitionEvent;

    #@1f
    iget v10, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->type:I

    #@21
    iget-wide v12, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->timestamp:J

    #@23
    invoke-direct {v9, v1, v10, v12, v13}, Landroid/hardware/location/ActivityRecognitionEvent;-><init>(Ljava/lang/String;IJ)V

    #@26
    .line 148
    aput-object v9, v2, v6

    #@28
    .line 145
    add-int/lit8 v6, v6, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 152
    .end local v1    # "activityName":Ljava/lang/String;
    .end local v4    # "event":Landroid/hardware/location/ActivityRecognitionHardware$Event;
    :cond_2
    new-instance v0, Landroid/hardware/location/ActivityChangedEvent;

    #@2d
    invoke-direct {v0, v2}, Landroid/hardware/location/ActivityChangedEvent;-><init>([Landroid/hardware/location/ActivityRecognitionEvent;)V

    #@30
    .line 154
    .local v0, "activityChangedEvent":Landroid/hardware/location/ActivityChangedEvent;
    iget-object v9, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/os/RemoteCallbackList;

    #@32
    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@35
    move-result v8

    #@36
    .line 155
    .local v8, "size":I
    const/4 v6, 0x0

    #@37
    :goto_1
    if-ge v6, v8, :cond_3

    #@39
    .line 156
    iget-object v9, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/os/RemoteCallbackList;

    #@3b
    invoke-virtual {v9, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@3e
    move-result-object v7

    #@3f
    check-cast v7, Landroid/hardware/location/IActivityRecognitionHardwareSink;

    #@41
    .line 158
    .local v7, "sink":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    :try_start_0
    invoke-interface {v7, v0}, Landroid/hardware/location/IActivityRecognitionHardwareSink;->onActivityChanged(Landroid/hardware/location/ActivityChangedEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 155
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@46
    goto :goto_1

    #@47
    .line 159
    :catch_0
    move-exception v3

    #@48
    .line 160
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "ActivityRecognitionHardware"

    #@4b
    const-string/jumbo v10, "Error delivering activity changed event."

    #@4e
    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    goto :goto_2

    #@52
    .line 163
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v7    # "sink":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    :cond_3
    iget-object v9, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/os/RemoteCallbackList;

    #@54
    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@57
    .line 136
    return-void
.end method


# virtual methods
.method public disableActivityEvent(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 115
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    #@4
    .line 117
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 118
    .local v0, "activityType":I
    const/4 v3, -0x1

    #@9
    if-ne v0, v3, :cond_0

    #@b
    .line 119
    return v2

    #@c
    .line 122
    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    #@f
    move-result v1

    #@10
    .line 123
    .local v1, "result":I
    if-nez v1, :cond_1

    #@12
    const/4 v2, 0x1

    #@13
    :cond_1
    return v2
.end method

.method public enableActivityEvent(Ljava/lang/String;IJ)Z
    .locals 5
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "reportLatencyNs"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 102
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    #@4
    .line 104
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 105
    .local v0, "activityType":I
    const/4 v3, -0x1

    #@9
    if-ne v0, v3, :cond_0

    #@b
    .line 106
    return v2

    #@c
    .line 109
    :cond_0
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeEnableActivityEvent(IIJ)I

    #@f
    move-result v1

    #@10
    .line 110
    .local v1, "result":I
    if-nez v1, :cond_1

    #@12
    const/4 v2, 0x1

    #@13
    :cond_1
    return v2
.end method

.method public flush()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 128
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    #@4
    .line 129
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeFlush()I

    #@7
    move-result v0

    #@8
    .line 130
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
    .line 77
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    #@3
    .line 78
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    #@5
    return-object v0
.end method

.method public isActivitySupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "activity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    #@3
    .line 84
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    .line 85
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
    .line 90
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    #@3
    .line 91
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/os/RemoteCallbackList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

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
    .line 96
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    #@3
    .line 97
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/os/RemoteCallbackList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method
