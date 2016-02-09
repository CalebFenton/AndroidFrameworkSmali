.class final Lcom/android/server/power/PowerManagerService$BinderService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    #@0
    .prologue
    .line 3001
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    .locals 12
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3024
    if-nez p1, :cond_0

    #@2
    .line 3025
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "lock must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 3027
    :cond_0
    if-nez p4, :cond_1

    #@d
    .line 3028
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "packageName must not be null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 3030
    :cond_1
    invoke-static {p2, p3}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    #@19
    .line 3032
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@1b
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "android.permission.WAKE_LOCK"

    #@22
    const/4 v2, 0x0

    #@23
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 3033
    and-int/lit8 v0, p2, 0x40

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 3034
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2c
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@2f
    move-result-object v0

    #@30
    .line 3035
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    #@33
    const/4 v2, 0x0

    #@34
    .line 3034
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    .line 3037
    :cond_2
    if-eqz p5, :cond_3

    #@39
    invoke-virtual/range {p5 .. p5}, Landroid/os/WorkSource;->size()I

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_3

    #@3f
    .line 3038
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@41
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@44
    move-result-object v0

    #@45
    .line 3039
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    #@48
    const/4 v2, 0x0

    #@49
    .line 3038
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@4c
    .line 3044
    .end local p5    # "ws":Landroid/os/WorkSource;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4f
    move-result v7

    #@50
    .line 3045
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@53
    move-result v8

    #@54
    .line 3046
    .local v8, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@57
    move-result-wide v10

    #@58
    .line 3048
    .local v10, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@5a
    move-object v1, p1

    #@5b
    move v2, p2

    #@5c
    move-object v3, p3

    #@5d
    move-object/from16 v4, p4

    #@5f
    move-object/from16 v5, p5

    #@61
    move-object/from16 v6, p6

    #@63
    invoke-static/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->-wrap8(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    .line 3050
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@69
    .line 3023
    return-void

    #@6a
    .line 3041
    .end local v7    # "uid":I
    .end local v8    # "pid":I
    .end local v10    # "ident":J
    .restart local p5    # "ws":Landroid/os/WorkSource;
    :cond_3
    const/16 p5, 0x0

    #@6c
    .local p5, "ws":Landroid/os/WorkSource;
    goto :goto_0

    #@6d
    .line 3049
    .end local p5    # "ws":Landroid/os/WorkSource;
    .restart local v7    # "uid":I
    .restart local v8    # "pid":I
    .restart local v10    # "ident":J
    :catchall_0
    move-exception v0

    #@6e
    .line 3050
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@71
    .line 3049
    throw v0
.end method

.method public acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I

    #@0
    .prologue
    .line 3005
    if-gez p5, :cond_0

    #@2
    .line 3006
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result p5

    #@6
    .line 3008
    :cond_0
    new-instance v5, Landroid/os/WorkSource;

    #@8
    invoke-direct {v5, p5}, Landroid/os/WorkSource;-><init>(I)V

    #@b
    const/4 v6, 0x0

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    move v2, p2

    #@f
    move-object v3, p3

    #@10
    move-object v4, p4

    #@11
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    #@14
    .line 3004
    return-void
.end method

.method public boostScreenBrightness(J)V
    .locals 7
    .param p1, "eventTime"    # J

    #@0
    .prologue
    .line 3408
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v4

    #@4
    cmp-long v3, p1, v4

    #@6
    if-lez v3, :cond_0

    #@8
    .line 3409
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v4, "event time must not be in the future"

    #@d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 3412
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@13
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@16
    move-result-object v3

    #@17
    .line 3413
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    #@1a
    const/4 v5, 0x0

    #@1b
    .line 3412
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 3415
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@21
    move-result v2

    #@22
    .line 3416
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@25
    move-result-wide v0

    #@26
    .line 3418
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@28
    invoke-static {v3, p1, p2, v2}, Lcom/android/server/power/PowerManagerService;->-wrap9(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 3420
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 3407
    return-void

    #@2f
    .line 3419
    :catchall_0
    move-exception v3

    #@30
    .line 3420
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 3419
    throw v3
.end method

.method public crash(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3297
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "android.permission.REBOOT"

    #@9
    const/4 v4, 0x0

    #@a
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 3299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 3301
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@13
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap10(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 3303
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 3296
    return-void

    #@1a
    .line 3302
    :catchall_0
    move-exception v2

    #@1b
    .line 3303
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 3302
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3436
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "android.permission.DUMP"

    #@9
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 3438
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Permission Denial: can\'t dump PowerManager from from pid="

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 3439
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v3

    #@1f
    .line 3438
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 3440
    const-string/jumbo v3, ", uid="

    #@26
    .line 3438
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 3440
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v3

    #@2e
    .line 3438
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 3441
    return-void

    #@3a
    .line 3444
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3d
    move-result-wide v0

    #@3e
    .line 3446
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@40
    invoke-static {v2, p2}, Lcom/android/server/power/PowerManagerService;->-wrap11(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 3448
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@46
    .line 3435
    return-void

    #@47
    .line 3447
    :catchall_0
    move-exception v2

    #@48
    .line 3448
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4b
    .line 3447
    throw v2
.end method

.method public goToSleep(JII)V
    .locals 11
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 3175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    cmp-long v0, p1, v0

    #@6
    if-lez v0, :cond_0

    #@8
    .line 3176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "event time must not be in the future"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 3179
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@13
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@16
    move-result-object v0

    #@17
    .line 3180
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    #@1a
    const/4 v2, 0x0

    #@1b
    .line 3179
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 3182
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@21
    move-result v6

    #@22
    .line 3183
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@25
    move-result-wide v8

    #@26
    .line 3185
    .local v8, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@28
    move-wide v2, p1

    #@29
    move v4, p3

    #@2a
    move v5, p4

    #@2b
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->-wrap12(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 3187
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 3174
    return-void

    #@32
    .line 3186
    :catchall_0
    move-exception v0

    #@33
    .line 3187
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 3186
    throw v0
.end method

.method public isDeviceIdleMode()Z
    .locals 3

    #@0
    .prologue
    .line 3243
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3245
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@6
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap1(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v2

    #@a
    .line 3247
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 3245
    return v2

    #@e
    .line 3246
    :catchall_0
    move-exception v2

    #@f
    .line 3247
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 3246
    throw v2
.end method

.method public isInteractive()Z
    .locals 3

    #@0
    .prologue
    .line 3211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3213
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@6
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap2(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v2

    #@a
    .line 3215
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 3213
    return v2

    #@e
    .line 3214
    :catchall_0
    move-exception v2

    #@f
    .line 3215
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 3214
    throw v2
.end method

.method public isPowerSaveMode()Z
    .locals 3

    #@0
    .prologue
    .line 3221
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3223
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@6
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap3(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v2

    #@a
    .line 3225
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 3223
    return v2

    #@e
    .line 3224
    :catchall_0
    move-exception v2

    #@f
    .line 3225
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 3224
    throw v2
.end method

.method public isScreenBrightnessBoosted()Z
    .locals 3

    #@0
    .prologue
    .line 3426
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3428
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@6
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap4(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v2

    #@a
    .line 3430
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 3428
    return v2

    #@e
    .line 3429
    :catchall_0
    move-exception v2

    #@f
    .line 3430
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 3429
    throw v2
.end method

.method public isWakeLockLevelSupported(I)Z
    .locals 3
    .param p1, "level"    # I

    #@0
    .prologue
    .line 3110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3112
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@6
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap5(Lcom/android/server/power/PowerManagerService;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v2

    #@a
    .line 3114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 3112
    return v2

    #@e
    .line 3113
    :catchall_0
    move-exception v2

    #@f
    .line 3114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 3113
    throw v2
.end method

.method public nap(J)V
    .locals 7
    .param p1, "eventTime"    # J

    #@0
    .prologue
    .line 3193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v4

    #@4
    cmp-long v3, p1, v4

    #@6
    if-lez v3, :cond_0

    #@8
    .line 3194
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v4, "event time must not be in the future"

    #@d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 3197
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@13
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@16
    move-result-object v3

    #@17
    .line 3198
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    #@1a
    const/4 v5, 0x0

    #@1b
    .line 3197
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 3200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@21
    move-result v2

    #@22
    .line 3201
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@25
    move-result-wide v0

    #@26
    .line 3203
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@28
    invoke-static {v3, p1, p2, v2}, Lcom/android/server/power/PowerManagerService;->-wrap19(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 3205
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 3192
    return-void

    #@2f
    .line 3204
    :catchall_0
    move-exception v3

    #@30
    .line 3205
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 3204
    throw v3
.end method

.method public powerHint(II)V
    .locals 3
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    #@0
    .prologue
    .line 3013
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get10(Lcom/android/server/power/PowerManagerService;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 3015
    return-void

    #@9
    .line 3017
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@b
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    #@12
    const/4 v2, 0x0

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 3018
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@18
    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap22(Lcom/android/server/power/PowerManagerService;II)V

    #@1b
    .line 3012
    return-void
.end method

.method public reboot(ZLjava/lang/String;Z)V
    .locals 5
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3260
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@3
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@6
    move-result-object v2

    #@7
    const-string/jumbo v3, "android.permission.REBOOT"

    #@a
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 3261
    const-string/jumbo v2, "recovery"

    #@10
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 3262
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@18
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, "android.permission.RECOVERY"

    #@1f
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 3265
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@25
    move-result-wide v0

    #@26
    .line 3267
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@28
    const/4 v3, 0x0

    #@29
    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-wrap33(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 3269
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 3259
    return-void

    #@30
    .line 3268
    :catchall_0
    move-exception v2

    #@31
    .line 3269
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 3268
    throw v2
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3056
    if-nez p1, :cond_0

    #@3
    .line 3057
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "lock must not be null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 3060
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@e
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, "android.permission.WAKE_LOCK"

    #@15
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 3062
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v0

    #@1c
    .line 3064
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@1e
    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap23(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 3066
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 3055
    return-void

    #@25
    .line 3065
    :catchall_0
    move-exception v2

    #@26
    .line 3066
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 3065
    throw v2
.end method

.method public setAttentionLight(ZI)V
    .locals 5
    .param p1, "on"    # Z
    .param p2, "color"    # I

    #@0
    .prologue
    .line 3395
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    .line 3396
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    #@9
    const/4 v4, 0x0

    #@a
    .line 3395
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 3398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 3400
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@13
    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap25(Lcom/android/server/power/PowerManagerService;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 3402
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 3394
    return-void

    #@1a
    .line 3401
    :catchall_0
    move-exception v2

    #@1b
    .line 3402
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 3401
    throw v2
.end method

.method public setPowerSaveMode(Z)Z
    .locals 5
    .param p1, "mode"    # Z

    #@0
    .prologue
    .line 3231
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    .line 3232
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    #@9
    const/4 v4, 0x0

    #@a
    .line 3231
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 3233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 3235
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@13
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap6(Lcom/android/server/power/PowerManagerService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v2

    #@17
    .line 3237
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 3235
    return v2

    #@1b
    .line 3236
    :catchall_0
    move-exception v2

    #@1c
    .line 3237
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 3236
    throw v2
.end method

.method public setStayOnSetting(I)V
    .locals 6
    .param p1, "val"    # I

    #@0
    .prologue
    .line 3323
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    .line 3325
    .local v2, "uid":I
    if-eqz v2, :cond_0

    #@6
    .line 3326
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@8
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@b
    move-result-object v3

    #@c
    .line 3327
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@e
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@11
    move-result-object v4

    #@12
    invoke-static {v4, v2}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    const/4 v5, 0x1

    #@17
    .line 3326
    invoke-static {v3, v2, v4, v5}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    #@1a
    move-result v3

    #@1b
    if-nez v3, :cond_0

    #@1d
    .line 3328
    return-void

    #@1e
    .line 3332
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@21
    move-result-wide v0

    #@22
    .line 3334
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@24
    invoke-virtual {v3, p1}, Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 3336
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 3322
    return-void

    #@2b
    .line 3335
    :catchall_0
    move-exception v3

    #@2c
    .line 3336
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 3335
    throw v3
.end method

.method public setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    .locals 5
    .param p1, "adj"    # F

    #@0
    .prologue
    .line 3379
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    .line 3380
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    #@9
    const/4 v4, 0x0

    #@a
    .line 3379
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 3382
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 3384
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@13
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap30(Lcom/android/server/power/PowerManagerService;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 3386
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 3378
    return-void

    #@1a
    .line 3385
    :catchall_0
    move-exception v2

    #@1b
    .line 3386
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 3385
    throw v2
.end method

.method public setTemporaryScreenBrightnessSettingOverride(I)V
    .locals 5
    .param p1, "brightness"    # I

    #@0
    .prologue
    .line 3354
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    .line 3355
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    #@9
    const/4 v4, 0x0

    #@a
    .line 3354
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 3357
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 3359
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@13
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap31(Lcom/android/server/power/PowerManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 3361
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 3353
    return-void

    #@1a
    .line 3360
    :catchall_0
    move-exception v2

    #@1b
    .line 3361
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 3360
    throw v2
.end method

.method public shutdown(ZZ)V
    .locals 5
    .param p1, "confirm"    # Z
    .param p2, "wait"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3281
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@3
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@6
    move-result-object v2

    #@7
    const-string/jumbo v3, "android.permission.REBOOT"

    #@a
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 3283
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 3285
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@13
    const/4 v3, 0x1

    #@14
    const/4 v4, 0x0

    #@15
    invoke-static {v2, v3, p1, v4, p2}, Lcom/android/server/power/PowerManagerService;->-wrap33(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 3287
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 3280
    return-void

    #@1c
    .line 3286
    :catchall_0
    move-exception v2

    #@1d
    .line 3287
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 3286
    throw v2
.end method

.method public updateWakeLockUids(Landroid/os/IBinder;[I)V
    .locals 4
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "uids"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3072
    const/4 v1, 0x0

    #@2
    .line 3074
    .local v1, "ws":Landroid/os/WorkSource;
    if-eqz p2, :cond_0

    #@4
    .line 3075
    new-instance v1, Landroid/os/WorkSource;

    #@6
    .end local v1    # "ws":Landroid/os/WorkSource;
    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    #@9
    .line 3078
    .local v1, "ws":Landroid/os/WorkSource;
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    #@b
    if-ge v0, v2, :cond_0

    #@d
    .line 3079
    aget v2, p2, v0

    #@f
    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->add(I)Z

    #@12
    .line 3078
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 3082
    .end local v0    # "i":I
    .end local v1    # "ws":Landroid/os/WorkSource;
    :cond_0
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    #@18
    .line 3071
    return-void
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    .locals 6
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3087
    if-nez p1, :cond_0

    #@3
    .line 3088
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v4, "lock must not be null"

    #@8
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 3091
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@e
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v4, "android.permission.WAKE_LOCK"

    #@15
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 3092
    if-eqz p2, :cond_1

    #@1a
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 3093
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@22
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@25
    move-result-object v1

    #@26
    .line 3094
    const-string/jumbo v4, "android.permission.UPDATE_DEVICE_STATS"

    #@29
    .line 3093
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 3099
    .end local p2    # "ws":Landroid/os/WorkSource;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2f
    move-result v0

    #@30
    .line 3100
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@33
    move-result-wide v2

    #@34
    .line 3102
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@36
    invoke-static {v1, p1, p2, p3, v0}, Lcom/android/server/power/PowerManagerService;->-wrap35(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 3104
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 3086
    return-void

    #@3d
    .line 3096
    .end local v0    # "callingUid":I
    .end local v2    # "ident":J
    .restart local p2    # "ws":Landroid/os/WorkSource;
    :cond_1
    const/4 p2, 0x0

    #@3e
    .local p2, "ws":Landroid/os/WorkSource;
    goto :goto_0

    #@3f
    .line 3103
    .end local p2    # "ws":Landroid/os/WorkSource;
    .restart local v0    # "callingUid":I
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v1

    #@40
    .line 3104
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@43
    .line 3103
    throw v1
.end method

.method public userActivity(JII)V
    .locals 13
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 3120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v10

    #@4
    .line 3121
    .local v10, "now":J
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@6
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 3123
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@15
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@18
    move-result-object v0

    #@19
    .line 3124
    const-string/jumbo v1, "android.permission.USER_ACTIVITY"

    #@1c
    .line 3123
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 3129
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@24
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    monitor-enter v1

    #@29
    .line 3130
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2b
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get6(Lcom/android/server/power/PowerManagerService;)J

    #@2e
    move-result-wide v2

    #@2f
    const-wide/32 v4, 0x493e0

    #@32
    add-long/2addr v2, v4

    #@33
    cmp-long v0, v10, v2

    #@35
    if-ltz v0, :cond_0

    #@37
    .line 3131
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@39
    invoke-static {v0, v10, v11}, Lcom/android/server/power/PowerManagerService;->-set2(Lcom/android/server/power/PowerManagerService;J)J

    #@3c
    .line 3132
    const-string/jumbo v0, "PowerManagerService"

    #@3f
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v3, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER or USER_ACTIVITY permission.  Please fix your app!   pid="

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    .line 3135
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@4e
    move-result v3

    #@4f
    .line 3132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    .line 3136
    const-string/jumbo v3, " uid="

    #@56
    .line 3132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    .line 3136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5d
    move-result v3

    #@5e
    .line 3132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v2

    #@66
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@69
    :cond_0
    monitor-exit v1

    #@6a
    .line 3139
    return-void

    #@6b
    .line 3129
    :catchall_0
    move-exception v0

    #@6c
    monitor-exit v1

    #@6d
    throw v0

    #@6e
    .line 3142
    :cond_1
    cmp-long v0, p1, v10

    #@70
    if-lez v0, :cond_2

    #@72
    .line 3143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@74
    const-string/jumbo v1, "event time must not be in the future"

    #@77
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v0

    #@7b
    .line 3146
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7e
    move-result v6

    #@7f
    .line 3147
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@82
    move-result-wide v8

    #@83
    .line 3149
    .local v8, "ident":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@85
    move-wide v2, p1

    #@86
    move/from16 v4, p3

    #@88
    move/from16 v5, p4

    #@8a
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->-wrap36(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@8d
    .line 3151
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@90
    .line 3119
    return-void

    #@91
    .line 3150
    :catchall_1
    move-exception v0

    #@92
    .line 3151
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@95
    .line 3150
    throw v0
.end method

.method public wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    cmp-long v0, p1, v0

    #@6
    if-lez v0, :cond_0

    #@8
    .line 3158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "event time must not be in the future"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 3161
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@13
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@16
    move-result-object v0

    #@17
    .line 3162
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    #@1a
    const/4 v2, 0x0

    #@1b
    .line 3161
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 3164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@21
    move-result v5

    #@22
    .line 3165
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@25
    move-result-wide v8

    #@26
    .line 3167
    .local v8, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    #@28
    move-wide v2, p1

    #@29
    move-object v4, p3

    #@2a
    move-object v6, p4

    #@2b
    move v7, v5

    #@2c
    invoke-static/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->-wrap37(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 3169
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 3156
    return-void

    #@33
    .line 3168
    :catchall_0
    move-exception v0

    #@34
    .line 3169
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 3168
    throw v0
.end method
