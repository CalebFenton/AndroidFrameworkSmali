.class Lcom/android/server/UiModeManagerService$5;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    #@0
    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@2
    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public disableCarMode(I)V
    .locals 6
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 217
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 219
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@6
    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    .line 220
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@b
    const/4 v4, 0x0

    #@c
    const/4 v5, 0x0

    #@d
    invoke-virtual {v2, v4, v5}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    #@10
    .line 221
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@12
    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 222
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@18
    const/4 v4, 0x0

    #@19
    invoke-virtual {v2, v4, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1d
    .line 226
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 216
    return-void

    #@21
    .line 219
    :catchall_0
    move-exception v2

    #@22
    :try_start_3
    monitor-exit v3

    #@23
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@24
    .line 225
    :catchall_1
    move-exception v2

    #@25
    .line 226
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 225
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.DUMP"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v1, "Permission Denial: can\'t dump uimode service from from pid="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 281
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v1

    #@1f
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 282
    const-string/jumbo v1, ", uid="

    #@26
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 282
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v1

    #@2e
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 283
    return-void

    #@3a
    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@3c
    invoke-virtual {v0, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    #@3f
    .line 276
    return-void
.end method

.method public enableCarMode(I)V
    .locals 5
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 204
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@6
    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    .line 205
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@b
    const/4 v4, 0x1

    #@c
    invoke-virtual {v2, v4, p1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    #@f
    .line 206
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@11
    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 207
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@17
    const/4 v4, 0x0

    #@18
    invoke-virtual {v2, p1, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1c
    .line 211
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 201
    return-void

    #@20
    .line 204
    :catchall_0
    move-exception v2

    #@21
    :try_start_3
    monitor-exit v3

    #@22
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@23
    .line 210
    :catchall_1
    move-exception v2

    #@24
    .line 211
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 210
    throw v2
.end method

.method public getCurrentModeType()I
    .locals 4

    #@0
    .prologue
    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 234
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@6
    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    .line 235
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@b
    iget v2, v2, Lcom/android/server/UiModeManagerService;->mCurUiMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    and-int/lit8 v2, v2, 0xf

    #@f
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@10
    .line 238
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13
    .line 235
    return v2

    #@14
    .line 234
    :catchall_0
    move-exception v2

    #@15
    :try_start_3
    monitor-exit v3

    #@16
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@17
    .line 237
    :catchall_1
    move-exception v2

    #@18
    .line 238
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 237
    throw v2
.end method

.method public getNightMode()I
    .locals 2

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@7
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-get0(Lcom/android/server/UiModeManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    monitor-exit v1

    #@c
    return v0

    #@d
    .line 270
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public setNightMode(I)V
    .locals 6
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 244
    packed-switch p1, :pswitch_data_0

    #@3
    .line 250
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v4, "Unknown mode: "

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 253
    :pswitch_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@20
    move-result-wide v0

    #@21
    .line 255
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@23
    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    #@25
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@26
    .line 256
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@28
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-get0(Lcom/android/server/UiModeManagerService;)I

    #@2b
    move-result v2

    #@2c
    if-eq v2, p1, :cond_0

    #@2e
    .line 257
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@30
    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@37
    move-result-object v2

    #@38
    .line 258
    const-string/jumbo v4, "ui_night_mode"

    #@3b
    .line 257
    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@3e
    .line 259
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@40
    invoke-static {v2, p1}, Lcom/android/server/UiModeManagerService;->-set1(Lcom/android/server/UiModeManagerService;I)I

    #@43
    .line 260
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    #@45
    const/4 v4, 0x0

    #@46
    const/4 v5, 0x0

    #@47
    invoke-virtual {v2, v4, v5}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4b
    .line 264
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 243
    return-void

    #@4f
    .line 255
    :catchall_0
    move-exception v2

    #@50
    :try_start_3
    monitor-exit v3

    #@51
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@52
    .line 263
    :catchall_1
    move-exception v2

    #@53
    .line 264
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@56
    .line 263
    throw v2

    #@57
    .line 244
    nop

    #@58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
