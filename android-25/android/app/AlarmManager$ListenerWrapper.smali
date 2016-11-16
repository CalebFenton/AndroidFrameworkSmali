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
.field mCompletion:Landroid/app/IAlarmCompleteListener;

.field mHandler:Landroid/os/Handler;

.field final mListener:Landroid/app/AlarmManager$OnAlarmListener;

.field final synthetic this$0:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/AlarmManager;
    .param p2, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    #@0
    .prologue
    .line 191
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->this$0:Landroid/app/AlarmManager;

    #@2
    invoke-direct {p0}, Landroid/app/IAlarmListener$Stub;-><init>()V

    #@5
    .line 192
    iput-object p2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@7
    .line 191
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    #@0
    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager$ListenerWrapper;->this$0:Landroid/app/AlarmManager;

    #@2
    invoke-static {v1}, Landroid/app/AlarmManager;->-get0(Landroid/app/AlarmManager;)Landroid/app/IAlarmManager;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-interface {v1, v2, p0}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 206
    const-class v2, Landroid/app/AlarmManager;

    #@c
    monitor-enter v2

    #@d
    .line 207
    :try_start_1
    invoke-static {}, Landroid/app/AlarmManager;->-get1()Landroid/util/ArrayMap;

    #@10
    move-result-object v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 208
    invoke-static {}, Landroid/app/AlarmManager;->-get1()Landroid/util/ArrayMap;

    #@16
    move-result-object v1

    #@17
    iget-object v3, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@19
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    :cond_0
    monitor-exit v2

    #@1d
    .line 199
    return-void

    #@1e
    .line 202
    :catch_0
    move-exception v0

    #@1f
    .line 203
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@22
    move-result-object v1

    #@23
    throw v1

    #@24
    .line 206
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method

.method public doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .locals 1
    .param p1, "alarmManager"    # Landroid/app/IAlarmCompleteListener;

    #@0
    .prologue
    .line 215
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    #@2
    .line 216
    iget-object v0, p0, Landroid/app/AlarmManager$ListenerWrapper;->mHandler:Landroid/os/Handler;

    #@4
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@7
    .line 214
    return-void
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .line 223
    const-class v2, Landroid/app/AlarmManager;

    #@2
    monitor-enter v2

    #@3
    .line 224
    :try_start_0
    invoke-static {}, Landroid/app/AlarmManager;->-get1()Landroid/util/ArrayMap;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 225
    invoke-static {}, Landroid/app/AlarmManager;->-get1()Landroid/util/ArrayMap;

    #@c
    move-result-object v1

    #@d
    iget-object v3, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@f
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v2

    #@13
    .line 231
    :try_start_1
    iget-object v1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@15
    invoke-interface {v1}, Landroid/app/AlarmManager$OnAlarmListener;->onAlarm()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@18
    .line 237
    :try_start_2
    iget-object v1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    #@1a
    invoke-interface {v1, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@1d
    .line 220
    :goto_0
    return-void

    #@1e
    .line 223
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1

    #@21
    .line 238
    :catch_0
    move-exception v0

    #@22
    .line 239
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlarmManager"

    #@25
    const-string/jumbo v2, "Unable to report completion to Alarm Manager!"

    #@28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_0

    #@2c
    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    #@2d
    .line 237
    :try_start_3
    iget-object v2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    #@2f
    invoke-interface {v2, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@32
    .line 232
    :goto_1
    throw v1

    #@33
    .line 238
    :catch_1
    move-exception v0

    #@34
    .line 239
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AlarmManager"

    #@37
    const-string/jumbo v3, "Unable to report completion to Alarm Manager!"

    #@3a
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    goto :goto_1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 196
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mHandler:Landroid/os/Handler;

    #@2
    .line 195
    return-void
.end method
