.class public Lcom/android/server/location/ActivityRecognitionProxy;
.super Ljava/lang/Object;
.source "ActivityRecognitionProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionProxy"


# instance fields
.field private final mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private final mIsSupported:Z

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/location/ActivityRecognitionProxy;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/ActivityRecognitionProxy;->bindProvider()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "activityRecognitionHardwareIsSupported"    # Z
    .param p4, "activityRecognitionHardware"    # Landroid/hardware/location/ActivityRecognitionHardware;
    .param p5, "overlaySwitchResId"    # I
    .param p6, "defaultServicePackageNameResId"    # I
    .param p7, "initialPackageNameResId"    # I

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-boolean p3, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mIsSupported:Z

    #@5
    .line 51
    iput-object p4, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    #@7
    .line 53
    new-instance v7, Lcom/android/server/location/ActivityRecognitionProxy$1;

    #@9
    invoke-direct {v7, p0}, Lcom/android/server/location/ActivityRecognitionProxy$1;-><init>(Lcom/android/server/location/ActivityRecognitionProxy;)V

    #@c
    .line 61
    .local v7, "newServiceWork":Ljava/lang/Runnable;
    new-instance v0, Lcom/android/server/ServiceWatcher;

    #@e
    .line 63
    const-string/jumbo v2, "ActivityRecognitionProxy"

    #@11
    .line 64
    const-string/jumbo v3, "com.android.location.service.ActivityRecognitionProvider"

    #@14
    move-object v1, p1

    #@15
    move v4, p5

    #@16
    move v5, p6

    #@17
    move/from16 v6, p7

    #@19
    move-object v8, p2

    #@1a
    .line 61
    invoke-direct/range {v0 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    #@1d
    iput-object v0, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@1f
    .line 49
    return-void
.end method

.method private bindProvider()V
    .locals 8

    #@0
    .prologue
    .line 106
    iget-object v5, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@2
    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    .line 107
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    #@8
    .line 108
    const-string/jumbo v5, "ActivityRecognitionProxy"

    #@b
    const-string/jumbo v6, "Null binder found on connection."

    #@e
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 109
    return-void

    #@12
    .line 113
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v2

    #@16
    .line 119
    .local v2, "descriptor":Ljava/lang/String;
    const-class v5, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    #@18
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_3

    #@22
    .line 121
    invoke-static {v0}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    #@25
    move-result-object v4

    #@26
    .line 122
    .local v4, "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    if-nez v4, :cond_1

    #@28
    .line 123
    const-string/jumbo v5, "ActivityRecognitionProxy"

    #@2b
    const-string/jumbo v6, "No watcher found on connection."

    #@2e
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 124
    return-void

    #@32
    .line 114
    .end local v2    # "descriptor":Ljava/lang/String;
    .end local v4    # "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    :catch_0
    move-exception v3

    #@33
    .line 115
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "ActivityRecognitionProxy"

    #@36
    const-string/jumbo v6, "Unable to get interface descriptor."

    #@39
    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    .line 116
    return-void

    #@3d
    .line 126
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "descriptor":Ljava/lang/String;
    .restart local v4    # "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    :cond_1
    iget-object v5, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    #@3f
    if-nez v5, :cond_2

    #@41
    .line 129
    const-string/jumbo v5, "ActivityRecognitionProxy"

    #@44
    const-string/jumbo v6, "AR HW instance not available, binding will be a no-op."

    #@47
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 130
    return-void

    #@4b
    .line 133
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    #@4d
    invoke-interface {v4, v5}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;->onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@50
    .line 105
    .end local v4    # "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    :goto_0
    return-void

    #@51
    .line 134
    .restart local v4    # "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    :catch_1
    move-exception v3

    #@52
    .line 135
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "ActivityRecognitionProxy"

    #@55
    const-string/jumbo v6, "Error delivering hardware interface to watcher."

    #@58
    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    goto :goto_0

    #@5c
    .line 137
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    :cond_3
    const-class v5, Landroid/hardware/location/IActivityRecognitionHardwareClient;

    #@5e
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v5

    #@66
    if-eqz v5, :cond_5

    #@68
    .line 139
    invoke-static {v0}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareClient;

    #@6b
    move-result-object v1

    #@6c
    .line 140
    .local v1, "client":Landroid/hardware/location/IActivityRecognitionHardwareClient;
    if-nez v1, :cond_4

    #@6e
    .line 141
    const-string/jumbo v5, "ActivityRecognitionProxy"

    #@71
    const-string/jumbo v6, "No client found on connection."

    #@74
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 142
    return-void

    #@78
    .line 145
    :cond_4
    :try_start_2
    iget-boolean v5, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mIsSupported:Z

    #@7a
    iget-object v6, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    #@7c
    invoke-interface {v1, v5, v6}, Landroid/hardware/location/IActivityRecognitionHardwareClient;->onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@7f
    goto :goto_0

    #@80
    .line 146
    :catch_2
    move-exception v3

    #@81
    .line 147
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "ActivityRecognitionProxy"

    #@84
    const-string/jumbo v6, "Error delivering hardware interface to client."

    #@87
    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8a
    goto :goto_0

    #@8b
    .line 150
    .end local v1    # "client":Landroid/hardware/location/IActivityRecognitionHardwareClient;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_5
    const-string/jumbo v5, "ActivityRecognitionProxy"

    #@8e
    new-instance v6, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v7, "Invalid descriptor found on connection: "

    #@96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v6

    #@9a
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v6

    #@9e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v6

    #@a2
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    goto :goto_0
.end method

.method public static createAndBind(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "activityRecognitionHardwareIsSupported"    # Z
    .param p3, "activityRecognitionHardware"    # Landroid/hardware/location/ActivityRecognitionHardware;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNameResId"    # I

    #@0
    .prologue
    .line 85
    new-instance v0, Lcom/android/server/location/ActivityRecognitionProxy;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move-object v4, p3

    #@6
    move v5, p4

    #@7
    move v6, p5

    #@8
    move v7, p6

    #@9
    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/ActivityRecognitionProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V

    #@c
    .line 95
    .local v0, "activityRecognitionProxy":Lcom/android/server/location/ActivityRecognitionProxy;
    iget-object v1, v0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@e
    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->start()Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 96
    const-string/jumbo v1, "ActivityRecognitionProxy"

    #@17
    const-string/jumbo v2, "ServiceWatcher could not start."

    #@1a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 97
    const/4 v1, 0x0

    #@1e
    return-object v1

    #@1f
    .line 99
    :cond_0
    return-object v0
.end method
