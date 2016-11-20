.class Landroid/app/ActivityThread$StopInfo;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StopInfo"
.end annotation


# instance fields
.field activity:Landroid/app/ActivityThread$ActivityClientRecord;

.field description:Ljava/lang/CharSequence;

.field persistentState:Landroid/os/PersistableBundle;

.field state:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread$StopInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/app/ActivityThread$StopInfo;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 3773
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 3774
    iget-object v2, p0, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    #@6
    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@8
    iget-object v3, p0, Landroid/app/ActivityThread$StopInfo;->state:Landroid/os/Bundle;

    #@a
    iget-object v4, p0, Landroid/app/ActivityThread$StopInfo;->persistentState:Landroid/os/PersistableBundle;

    #@c
    iget-object v5, p0, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;

    #@e
    .line 3773
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/IActivityManager;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 3769
    return-void

    #@12
    .line 3775
    :catch_0
    move-exception v0

    #@13
    .line 3776
    .local v0, "ex":Landroid/os/RemoteException;
    instance-of v1, v0, Landroid/os/TransactionTooLargeException;

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 3777
    iget-object v1, p0, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    #@19
    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@1b
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    #@1e
    move-result v1

    #@1f
    const/16 v2, 0x18

    #@21
    if-ge v1, v2, :cond_0

    #@23
    .line 3778
    const-string/jumbo v1, "ActivityThread"

    #@26
    const-string/jumbo v2, "App sent too much data in instance state, so it was ignored"

    #@29
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    .line 3779
    return-void

    #@2d
    .line 3781
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@30
    move-result-object v1

    #@31
    throw v1
.end method
