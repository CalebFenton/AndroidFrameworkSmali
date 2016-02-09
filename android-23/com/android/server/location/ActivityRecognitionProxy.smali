.class public Lcom/android/server/location/ActivityRecognitionProxy;
.super Ljava/lang/Object;
.source "ActivityRecognitionProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionProxy"


# instance fields
.field private final mActivityRecognitionHardware:Landroid/hardware/location/ActivityRecognitionHardware;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method static synthetic -get0(Lcom/android/server/location/ActivityRecognitionProxy;)Landroid/hardware/location/ActivityRecognitionHardware;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mActivityRecognitionHardware:Landroid/hardware/location/ActivityRecognitionHardware;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/location/ActivityRecognitionProxy;Landroid/hardware/location/ActivityRecognitionHardware;)V
    .locals 0
    .param p1, "activityRecognitionHardware"    # Landroid/hardware/location/ActivityRecognitionHardware;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/ActivityRecognitionProxy;->bindProvider(Landroid/hardware/location/ActivityRecognitionHardware;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/ActivityRecognitionHardware;III)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "activityRecognitionHardware"    # Landroid/hardware/location/ActivityRecognitionHardware;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNameResId"    # I

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput-object p3, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mActivityRecognitionHardware:Landroid/hardware/location/ActivityRecognitionHardware;

    #@5
    .line 48
    new-instance v7, Lcom/android/server/location/ActivityRecognitionProxy$1;

    #@7
    invoke-direct {v7, p0}, Lcom/android/server/location/ActivityRecognitionProxy$1;-><init>(Lcom/android/server/location/ActivityRecognitionProxy;)V

    #@a
    .line 56
    .local v7, "newServiceWork":Ljava/lang/Runnable;
    new-instance v0, Lcom/android/server/ServiceWatcher;

    #@c
    .line 58
    const-string/jumbo v2, "ActivityRecognitionProxy"

    #@f
    .line 59
    const-string/jumbo v3, "com.android.location.service.ActivityRecognitionProvider"

    #@12
    move-object v1, p1

    #@13
    move v4, p4

    #@14
    move v5, p5

    #@15
    move v6, p6

    #@16
    move-object v8, p2

    #@17
    .line 56
    invoke-direct/range {v0 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    #@1a
    iput-object v0, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@1c
    .line 45
    return-void
.end method

.method private bindProvider(Landroid/hardware/location/ActivityRecognitionHardware;)V
    .locals 4
    .param p1, "activityRecognitionHardware"    # Landroid/hardware/location/ActivityRecognitionHardware;

    #@0
    .prologue
    .line 101
    iget-object v2, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@2
    invoke-virtual {v2}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    #@9
    move-result-object v1

    #@a
    .line 102
    .local v1, "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    if-nez v1, :cond_0

    #@c
    .line 103
    const-string/jumbo v2, "ActivityRecognitionProxy"

    #@f
    const-string/jumbo v3, "No provider instance found on connection."

    #@12
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 104
    return-void

    #@16
    .line 108
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mActivityRecognitionHardware:Landroid/hardware/location/ActivityRecognitionHardware;

    #@18
    invoke-interface {v1, v2}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;->onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 99
    :goto_0
    return-void

    #@1c
    .line 109
    :catch_0
    move-exception v0

    #@1d
    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ActivityRecognitionProxy"

    #@20
    const-string/jumbo v3, "Error delivering hardware interface."

    #@23
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0
.end method

.method public static createAndBind(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "activityRecognitionHardware"    # Landroid/hardware/location/ActivityRecognitionHardware;
    .param p3, "overlaySwitchResId"    # I
    .param p4, "defaultServicePackageNameResId"    # I
    .param p5, "initialPackageNameResId"    # I

    #@0
    .prologue
    .line 79
    new-instance v0, Lcom/android/server/location/ActivityRecognitionProxy;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    move v6, p5

    #@8
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/ActivityRecognitionProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/ActivityRecognitionHardware;III)V

    #@b
    .line 88
    .local v0, "activityRecognitionProxy":Lcom/android/server/location/ActivityRecognitionProxy;
    iget-object v1, v0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@d
    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->start()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 89
    const-string/jumbo v1, "ActivityRecognitionProxy"

    #@16
    const-string/jumbo v2, "ServiceWatcher could not start."

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 90
    const/4 v1, 0x0

    #@1d
    return-object v1

    #@1e
    .line 93
    :cond_0
    return-object v0
.end method
