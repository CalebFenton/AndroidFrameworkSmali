.class Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;
.super Ljava/lang/Object;
.source "SatelliteModemInterface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteModemInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SatelliteServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 363
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Lcom/android/internal/telephony/satellite/SatelliteModemInterface-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 4

    .line 395
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const-string v0, "onBindingDied: Unbinding and rebinding service."

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 397
    :try_start_e
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V

    .line 399
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_27

    .line 400
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->unbindService()V

    .line 401
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    return-void

    :catchall_27
    move-exception p0

    .line 399
    :try_start_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: ComponentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 368
    :try_start_1d
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V

    .line 370
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_7a

    .line 371
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p2}, Landroid/telephony/satellite/stub/ISatellite$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatellite;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fputmSatelliteService(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/telephony/satellite/stub/ISatellite;)V

    .line 372
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    iget-object p1, p1, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    .line 374
    :try_start_3a
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmSatelliteService(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Landroid/telephony/satellite/stub/ISatellite;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmVendorListener(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/telephony/satellite/stub/ISatellite;->setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V

    .line 375
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmDemoSimulator(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/DemoSimulator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmDemoListener(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/satellite/DemoSimulator;->setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_58} :catch_59

    goto :goto_70

    :catch_59
    move-exception p1

    .line 378
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatelliteListener: RemoteException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V

    .line 380
    :goto_70
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->onSatelliteServiceConnected()V

    return-void

    :catchall_7a
    move-exception p0

    .line 370
    :try_start_7b
    monitor-exit p1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 385
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const-string v0, "onServiceDisconnected: Waiting for reconnect."

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V

    .line 386
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 387
    :try_start_e
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V

    .line 388
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1b

    .line 390
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mdisconnectSatelliteService(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)V

    return-void

    :catchall_1b
    move-exception p0

    .line 388
    :try_start_1c
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method
