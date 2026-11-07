.class Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;
.super Ljava/lang/Object;
.source "DomainSelectionController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/domainselection/DomainSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DomainSelectionServiceConnection"
.end annotation


# instance fields
.field private blacklist mIsServiceConnectionDead:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;


# direct methods
.method public static synthetic blacklist $r8$lambda$3uyL_HR6giDXbfTs3V7jB-kJaT8(Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->lambda$onBindingDied$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$75dppbrO3N2couM4Ri_XpdZuf68(Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->lambda$onServiceDisconnected$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UVzo9PWDyfJVFewElIbzle4BBSw(Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->lambda$onNullBinding$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jk9yK-gkOJYXDkhlGGaMNM8bV9g(Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->lambda$onServiceConnected$0(Landroid/os/IBinder;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->mIsServiceConnectionDead:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Lcom/android/internal/telephony/domainselection/DomainSelectionController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    return-void
.end method

.method private synthetic blacklist lambda$onBindingDied$2()V
    .registers 1

    .line 157
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->onBindingDiedInternal()V

    return-void
.end method

.method private synthetic blacklist lambda$onNullBinding$3()V
    .registers 1

    .line 166
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->onNullBindingInternal()V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceConnected$0(Landroid/os/IBinder;)V
    .registers 2

    .line 138
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->onServiceConnectedInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceDisconnected$1()V
    .registers 1

    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->onServiceDisconnectedInternal()V

    return-void
.end method

.method private blacklist onBindingDiedInternal()V
    .registers 5

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->mIsServiceConnectionDead:Z

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    iget-object v0, v0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_8
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Z)V

    .line 191
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->setServiceController(Landroid/os/IBinder;)V

    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$munbindService(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$mnotifyBindFailure(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    .line 194
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_4a

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied starting retrying in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$fgetmBackoff(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)Lcom/android/internal/telephony/ExponentialBackoff;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$mloge(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Ljava/lang/String;)V

    .line 197
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$mnotifyServiceDisconnected(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    return-void

    :catchall_4a
    move-exception p0

    .line 194
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method private blacklist onNullBindingInternal()V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNullBinding serviceDead="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->mIsServiceConnectionDead:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$mloge(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Ljava/lang/String;)V

    .line 204
    iget-boolean v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->mIsServiceConnectionDead:Z

    if-eqz v0, :cond_1d

    return-void

    .line 205
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    iget-object v0, v0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_22
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Z)V

    .line 207
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->setServiceController(Landroid/os/IBinder;)V

    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$munbindService(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    .line 209
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_3a

    .line 210
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$mnotifyServiceDisconnected(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    return-void

    :catchall_3a
    move-exception p0

    .line 209
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method private blacklist onServiceConnectedInternal(Landroid/os/IBinder;)V
    .registers 6

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    iget-object v0, v0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->stopBackoffTimer()V

    .line 173
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected with binder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$mlogi(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->setServiceController(Landroid/os/IBinder;)V

    .line 175
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2c

    .line 176
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$mnotifyServiceConnected(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    return-void

    :catchall_2c
    move-exception p0

    .line 175
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method private blacklist onServiceDisconnectedInternal()V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    iget-object v0, v0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->setServiceController(Landroid/os/IBinder;)V

    .line 182
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_19

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$mlogi(Lcom/android/internal/telephony/domainselection/DomainSelectionController;Ljava/lang/String;)V

    .line 184
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$mnotifyServiceDisconnected(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    return-void

    :catchall_19
    move-exception p0

    .line 182
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 3

    .line 154
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->onBindingDiedInternal()V

    return-void

    .line 157
    :cond_14
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 3

    .line 163
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 164
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->onNullBindingInternal()V

    return-void

    .line 166
    :cond_14
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 135
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 136
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->onServiceConnectedInternal(Landroid/os/IBinder;)V

    return-void

    .line 138
    :cond_14
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 145
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 146
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->onServiceDisconnectedInternal()V

    return-void

    .line 148
    :cond_14
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
