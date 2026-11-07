.class Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;
.super Ljava/lang/Object;
.source "ImsServiceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsServiceConnection"
.end annotation


# instance fields
.field private blacklist mIsServiceConnectionDead:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method public static synthetic blacklist $r8$lambda$lyjsMFpEmdfey2fzUlmJR5l5H2c(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->lambda$onNullBinding$3(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nmXDzP_KEiPbj8bLK-h8tkBkccI(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->lambda$onServiceConnected$0(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oW8RHC7jOdKbFoD4ji5XEv7Bqrk(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->lambda$onServiceDisconnected$1(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oZTDWYw7aV8U-NU1ymNJOgrYujY(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->lambda$onBindingDied$2(Landroid/content/ComponentName;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    return-void
.end method

.method private blacklist cleanupConnection()V
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mcleanupAllFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 210
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->setServiceController(Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic blacklist lambda$onBindingDied$2(Landroid/content/ComponentName;)V
    .registers 2

    .line 112
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onBindingDiedInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic blacklist lambda$onNullBinding$3(Landroid/content/ComponentName;)V
    .registers 2

    .line 121
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onNullBindingInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceConnected$0(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceDisconnected$1(Landroid/content/ComponentName;)V
    .registers 2

    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onServiceDisconnectedInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method private blacklist onBindingDiedInternal(Landroid/content/ComponentName;)V
    .registers 5

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_8
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 176
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->cleanupConnection()V

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$munbindService(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 178
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mstartDelayedRebindToService(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 179
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_66

    .line 180
    const-string v0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): onBindingDiedInternal. Starting rebind..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindingDiedInternal, retrying in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmBackoff(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " mS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    :catchall_66
    move-exception p0

    .line 179
    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p0
.end method

.method private blacklist onNullBindingInternal(Landroid/content/ComponentName;)V
    .registers 5

    .line 186
    const-string v0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): onNullBindingInternal. Is service dead = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNullBindingInternal, is service dead = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 191
    iget-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    if-eqz p1, :cond_41

    goto :goto_73

    .line 192
    :cond_41
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 193
    :try_start_46
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 197
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->cleanupConnection()V

    .line 198
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_74

    .line 199
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 201
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmBoundUser(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceBindPermanentError(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    :cond_73
    :goto_73
    return-void

    :catchall_74
    move-exception p0

    .line 198
    :try_start_75
    monitor-exit p1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw p0
.end method

.method private blacklist onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmBackoff(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_8a

    .line 131
    :try_start_1a
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v1

    const-string v3, "onServiceConnectedInternal"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 132
    const-string v1, "ImsServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsService("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): onServiceConnectedInternal with binder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->setServiceController(Landroid/os/IBinder;)V

    .line 135
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->notifyImsServiceReady()V

    .line 136
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mretrieveStaticImsServiceCapabilities(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 138
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmImsFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fb

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 139
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmImsFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/Set;

    move-result-object v4

    iget v5, v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget-object v6, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v6}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmServiceCapabilities(Lcom/android/internal/telephony/ims/ImsServiceController;)J

    move-result-wide v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mmodifyCapabiltiesForSlot(Lcom/android/internal/telephony/ims/ImsServiceController;Ljava/util/Set;IJ)J

    move-result-wide v3

    .line 141
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmSlotIdToSubIdMap(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/util/SparseIntArray;

    move-result-object v6

    iget v7, v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-static {v5, v1, v3, v4, v6}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$maddImsServiceFeature(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_89} :catch_8c
    .catchall {:try_start_1a .. :try_end_89} :catchall_8a

    goto :goto_5c

    :catchall_8a
    move-exception p0

    goto :goto_fd

    :catch_8c
    move-exception p2

    .line 144
    :try_start_8d
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->cleanupConnection()V

    .line 149
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$munbindService(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mstartDelayedRebindToService(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnected exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", retry in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmBackoff(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " mS"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 153
    const-string p0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") RemoteException:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_fb
    monitor-exit v0

    return-void

    :goto_fd
    monitor-exit v0
    :try_end_fe
    .catchall {:try_start_8d .. :try_end_fe} :catchall_8a

    throw p0
.end method

.method private blacklist onServiceDisconnectedInternal(Landroid/content/ComponentName;)V
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 162
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->cleanupConnection()V

    .line 163
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_3b

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    const-string v1, "onServiceDisconnectedInternal"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 165
    const-string v0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): onServiceDisconnectedInternal. Waiting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mcheckAndReportAnomaly(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/content/ComponentName;)V

    return-void

    :catchall_3b
    move-exception p0

    .line 163
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 110
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onBindingDiedInternal(Landroid/content/ComponentName;)V

    return-void

    .line 112
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 119
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onNullBindingInternal(Landroid/content/ComponentName;)V

    return-void

    .line 121
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void

    .line 94
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 101
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onServiceDisconnectedInternal(Landroid/content/ComponentName;)V

    return-void

    .line 103
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
