.class final Lcom/android/server/power/PowerManagerService$LocalService;
.super Landroid/os/PowerManagerInternal;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    #@0
    .prologue
    .line 3453
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/PowerManagerInternal;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public getLowPowerModeEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 3501
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3502
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get8(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 3501
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/PowerManagerInternal$LowPowerModeListener;

    #@0
    .prologue
    .line 3508
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3509
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get9(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 3507
    return-void

    #@12
    .line 3508
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public setButtonBrightnessOverrideFromWindowManager(I)V
    .locals 0
    .param p1, "screenBrightness"    # I

    #@0
    .prologue
    .line 3464
    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 3515
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleModeInternal(Z)V

    #@5
    .line 3514
    return-void
.end method

.method public setDeviceIdleTempWhitelist([I)V
    .locals 1
    .param p1, "appids"    # [I

    #@0
    .prologue
    .line 3525
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleTempWhitelistInternal([I)V

    #@5
    .line 3524
    return-void
.end method

.method public setDeviceIdleWhitelist([I)V
    .locals 1
    .param p1, "appids"    # [I

    #@0
    .prologue
    .line 3520
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleWhitelistInternal([I)V

    #@5
    .line 3519
    return-void
.end method

.method public setDozeOverrideFromDreamManager(II)V
    .locals 1
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    #@0
    .prologue
    .line 3471
    packed-switch p1, :pswitch_data_0

    #@3
    .line 3479
    const/4 p1, 0x0

    #@4
    .line 3482
    :pswitch_0
    const/4 v0, -0x1

    #@5
    if-lt p2, v0, :cond_0

    #@7
    .line 3483
    const/16 v0, 0xff

    #@9
    if-le p2, v0, :cond_1

    #@b
    .line 3484
    :cond_0
    const/4 p2, -0x1

    #@c
    .line 3486
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@e
    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap26(Lcom/android/server/power/PowerManagerService;II)V

    #@11
    .line 3470
    return-void

    #@12
    .line 3471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    .locals 1
    .param p1, "timeMs"    # I

    #@0
    .prologue
    .line 3496
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V

    #@5
    .line 3495
    return-void
.end method

.method public setScreenBrightnessOverrideFromWindowManager(I)V
    .locals 1
    .param p1, "screenBrightness"    # I

    #@0
    .prologue
    .line 3456
    const/4 v0, -0x1

    #@1
    if-lt p1, v0, :cond_0

    #@3
    .line 3457
    const/16 v0, 0xff

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 3458
    :cond_0
    const/4 p1, -0x1

    #@8
    .line 3460
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@a
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->-wrap29(Lcom/android/server/power/PowerManagerService;I)V

    #@d
    .line 3455
    return-void
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .locals 1
    .param p1, "timeoutMillis"    # J

    #@0
    .prologue
    .line 3491
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap32(Lcom/android/server/power/PowerManagerService;J)V

    #@5
    .line 3490
    return-void
.end method

.method public uidGone(I)V
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3535
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidGoneInternal(I)V

    #@5
    .line 3534
    return-void
.end method

.method public updateUidProcState(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    #@0
    .prologue
    .line 3530
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateUidProcStateInternal(II)V

    #@5
    .line 3529
    return-void
.end method
