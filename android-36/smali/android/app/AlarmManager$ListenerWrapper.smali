.class final Landroid/app/AlarmManager$ListenerWrapper;
.super Landroid/app/IAlarmListener$Stub;
.source "AlarmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ListenerWrapper"
.end annotation


# instance fields
.field greylist-max-o mCompletion:Landroid/app/IAlarmCompleteListener;

.field blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final greylist-max-o mListener:Landroid/app/AlarmManager$OnAlarmListener;

.field final synthetic blacklist this$0:Landroid/app/AlarmManager;


# direct methods
.method public constructor blacklist <init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/AlarmManager;
    .param p2, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 348
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->this$0:Landroid/app/AlarmManager;

    invoke-direct {p0}, Landroid/app/IAlarmListener$Stub;-><init>()V

    .line 349
    iput-object p2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 350
    return-void
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .registers 3

    .line 358
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager$ListenerWrapper;->this$0:Landroid/app/AlarmManager;

    invoke-static {v0}, Landroid/app/AlarmManager;->-$$Nest$fgetmService(Landroid/app/AlarmManager;)Landroid/app/IAlarmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 361
    nop

    .line 362
    return-void

    .line 359
    :catch_c
    move-exception v0

    .line 360
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .registers 3
    .param p1, "alarmManager"    # Landroid/app/IAlarmCompleteListener;

    .line 366
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    .line 368
    iget-object v0, p0, Landroid/app/AlarmManager$ListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

.method public whitelist test-api run()V
    .registers 5

    .line 375
    const-string v0, "Unable to report completion to Alarm Manager!"

    const-string v1, "AlarmManager"

    :try_start_4
    iget-object v2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-interface {v2}, Landroid/app/AlarmManager$OnAlarmListener;->onAlarm()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_15

    .line 381
    :try_start_9
    iget-object v2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    invoke-interface {v2, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    .line 384
    goto :goto_14

    .line 382
    :catch_f
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .end local v2    # "e":Ljava/lang/Exception;
    nop

    .line 386
    :goto_14
    return-void

    .line 380
    :catchall_15
    move-exception v2

    .line 381
    :try_start_16
    iget-object v3, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    invoke-interface {v3, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 384
    goto :goto_20

    .line 382
    :catch_1c
    move-exception v3

    .line 383
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_20
    throw v2
.end method

.method blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "e"    # Ljava/util/concurrent/Executor;

    .line 353
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 354
    return-void
.end method
