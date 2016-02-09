.class Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
.super Landroid/app/IActivityContainer$Stub;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityContainer"
.end annotation


# static fields
.field static final CONTAINER_STATE_FINISHING:I = 0x2

.field static final CONTAINER_STATE_HAS_SURFACE:I = 0x0

.field static final CONTAINER_STATE_NO_SURFACE:I = 0x1

.field static final FORCE_NEW_TASK_FLAGS:I = 0x18010000


# instance fields
.field mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

.field mCallback:Landroid/app/IActivityContainerCallback;

.field mContainerState:I

.field mIdString:Ljava/lang/String;

.field mParentActivity:Lcom/android/server/am/ActivityRecord;

.field final mStack:Lcom/android/server/am/ActivityStack;

.field final mStackId:I

.field mVisible:Z

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "stackId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4200
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@3
    invoke-direct {p0}, Landroid/app/IActivityContainer$Stub;-><init>()V

    #@6
    .line 4185
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    #@8
    .line 4187
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@a
    .line 4190
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mVisible:Z

    #@d
    .line 4198
    const/4 v0, 0x0

    #@e
    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mContainerState:I

    #@10
    .line 4201
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@12
    monitor-enter v1

    #@13
    .line 4202
    :try_start_0
    iput p2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    #@15
    .line 4203
    new-instance v0, Lcom/android/server/am/ActivityStack;

    #@17
    invoke-static {p1}, Lcom/android/server/am/ActivityStackSupervisor;->-get4(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/RecentTasks;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v0, p0, v2}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;)V

    #@1e
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@20
    .line 4204
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "ActivtyContainer{"

    #@28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    #@2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    const-string/jumbo v2, "}"

    #@35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mIdString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    monitor-exit v1

    #@40
    .line 4200
    return-void

    #@41
    .line 4201
    :catchall_0
    move-exception v0

    #@42
    monitor-exit v1

    #@43
    throw v0
.end method

.method private checkEmbeddedAllowedInner(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 4337
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@4
    move-object v1, p2

    #@5
    move-object v2, p3

    #@6
    move v5, p1

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    #@a
    move-result-object v6

    #@b
    .line 4338
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_0

    #@d
    iget v0, v6, Landroid/content/pm/ActivityInfo;->flags:I

    #@f
    const/high16 v1, -0x80000000

    #@11
    and-int/2addr v0, v1

    #@12
    if-nez v0, :cond_0

    #@14
    .line 4339
    new-instance v0, Ljava/lang/SecurityException;

    #@16
    .line 4340
    const-string/jumbo v1, "Attempt to embed activity that has not set allowEmbedded=\"true\""

    #@19
    .line 4339
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 4336
    :cond_0
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 4346
    return-object p0
.end method

.method public attachToDisplay(I)V
    .locals 3
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 4222
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v2

    #@5
    .line 4223
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@7
    invoke-static {v1}, Lcom/android/server/am/ActivityStackSupervisor;->-get0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 4224
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v0, :cond_0

    #@13
    monitor-exit v2

    #@14
    .line 4225
    return-void

    #@15
    .line 4227
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit v2

    #@19
    .line 4221
    return-void

    #@1a
    .line 4222
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V
    .locals 3
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@0
    .prologue
    .line 4212
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@2
    .line 4213
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@4
    iget v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    #@6
    iput v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    #@8
    .line 4214
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@a
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@c
    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@e
    .line 4216
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@10
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->attachActivities(Lcom/android/server/am/ActivityStack;)V

    #@13
    .line 4217
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@15
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@17
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    #@19
    iget v2, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    #@1b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->attachStack(II)V

    #@1e
    .line 4209
    return-void
.end method

.method protected detachLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4286
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 4287
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@7
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V

    #@c
    .line 4288
    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@e
    .line 4289
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@10
    const/4 v1, -0x1

    #@11
    iput v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    #@13
    .line 4290
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@15
    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@17
    .line 4291
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@19
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1b
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    #@1d
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->detachStack(I)V

    #@20
    .line 4283
    :cond_0
    return-void
.end method

.method getBounds(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "outBounds"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 4363
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v1

    #@5
    .line 4364
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 4365
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@b
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->getBounds(Landroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :goto_0
    monitor-exit v1

    #@f
    .line 4362
    return-void

    #@10
    .line 4367
    :cond_0
    const/4 v0, 0x0

    #@11
    const/4 v2, 0x0

    #@12
    :try_start_1
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Point;->set(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    goto :goto_0

    #@16
    .line 4363
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public getDisplayId()I
    .locals 2

    #@0
    .prologue
    .line 4233
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v1

    #@5
    .line 4234
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 4235
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@b
    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 4238
    const/4 v0, -0x1

    #@11
    return v0

    #@12
    .line 4233
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method getOuter()Lcom/android/server/am/ActivityStackSupervisor;
    .locals 1

    #@0
    .prologue
    .line 4355
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    return-object v0
.end method

.method public getStackId()I
    .locals 2

    #@0
    .prologue
    .line 4243
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v0

    #@5
    .line 4244
    :try_start_0
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 4243
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public injectEvent(Landroid/view/InputEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4
    move-result-wide v0

    #@5
    .line 4252
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@7
    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@9
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@a
    .line 4253
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 4254
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@10
    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    #@12
    .line 4255
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@14
    iget v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    #@16
    .line 4256
    const/4 v5, 0x0

    #@17
    .line 4254
    invoke-virtual {v2, p1, v4, v5}, Landroid/hardware/input/InputManagerInternal;->injectInputEvent(Landroid/view/InputEvent;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result v2

    #@1b
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1c
    .line 4261
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 4254
    return v2

    #@20
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@21
    .line 4261
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 4259
    return v4

    #@25
    .line 4252
    :catchall_0
    move-exception v2

    #@26
    :try_start_4
    monitor-exit v3

    #@27
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@28
    .line 4260
    :catchall_1
    move-exception v2

    #@29
    .line 4261
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 4260
    throw v2
.end method

.method isAttachedLocked()Z
    .locals 1

    #@0
    .prologue
    .line 4359
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method isEligibleForNewTasks()Z
    .locals 1

    #@0
    .prologue
    .line 4388
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method onTaskListEmptyLocked()V
    .locals 2

    #@0
    .prologue
    .line 4392
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachLocked()V

    #@3
    .line 4393
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    #@8
    .line 4394
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@a
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@c
    const/16 v1, 0x6f

    #@e
    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@15
    .line 4391
    return-void
.end method

.method public release()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 4267
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@3
    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5
    monitor-enter v3

    #@6
    .line 4268
    :try_start_0
    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mContainerState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    if-ne v2, v4, :cond_0

    #@a
    monitor-exit v3

    #@b
    .line 4269
    return-void

    #@c
    .line 4271
    :cond_0
    const/4 v2, 0x2

    #@d
    :try_start_1
    iput v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mContainerState:I

    #@f
    .line 4273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@12
    move-result-wide v0

    #@13
    .line 4275
    .local v0, "origId":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@15
    const/4 v4, 0x0

    #@16
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    #@19
    .line 4276
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1b
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@1d
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    .line 4278
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@23
    monitor-exit v3

    #@24
    .line 4266
    return-void

    #@25
    .line 4277
    :catchall_0
    move-exception v2

    #@26
    .line 4278
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 4277
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2a
    .line 4267
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    #@2b
    monitor-exit v3

    #@2c
    throw v2
.end method

.method setDrawn()V
    .locals 0

    #@0
    .prologue
    .line 4383
    return-void
.end method

.method public setSurface(Landroid/view/Surface;III)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    #@0
    .prologue
    .line 4351
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    const-string/jumbo v1, "ActivityContainer.attachToSurface"

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    #@a
    .line 4350
    return-void
.end method

.method setVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4374
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mVisible:Z

    #@3
    if-eq v0, p1, :cond_0

    #@5
    .line 4375
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mVisible:Z

    #@7
    .line 4376
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 4377
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@d
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@f
    if-eqz p1, :cond_1

    #@11
    const/4 v0, 0x1

    #@12
    :goto_0
    const/16 v3, 0x6c

    #@14
    invoke-virtual {v2, v3, v0, v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1b
    .line 4373
    :cond_0
    return-void

    #@1c
    :cond_1
    move v0, v1

    #@1d
    .line 4377
    goto :goto_0
.end method

.method public final startActivity(Landroid/content/Intent;)I
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4297
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@4
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6
    const-string/jumbo v4, "ActivityContainer.startActivity"

    #@9
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    #@c
    .line 4298
    move-object/from16 v0, p0

    #@e
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@10
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@15
    move-result v4

    #@16
    .line 4299
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@19
    move-result v5

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1e
    invoke-static {v6}, Lcom/android/server/am/ActivityStackSupervisor;->-get1(Lcom/android/server/am/ActivityStackSupervisor;)I

    #@21
    move-result v6

    #@22
    .line 4300
    const-string/jumbo v9, "ActivityContainer"

    #@25
    .line 4299
    const/4 v7, 0x0

    #@26
    .line 4300
    const/4 v8, 0x2

    #@27
    const/4 v10, 0x0

    #@28
    .line 4298
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    #@2b
    move-result v20

    #@2c
    .line 4303
    .local v20, "userId":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@2f
    move-result-object v8

    #@30
    .line 4304
    .local v8, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@33
    move-result-object v23

    #@34
    .line 4305
    .local v23, "data":Landroid/net/Uri;
    if-nez v8, :cond_0

    #@36
    if-eqz v23, :cond_0

    #@38
    const-string/jumbo v3, "content"

    #@3b
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_0

    #@45
    .line 4306
    move-object/from16 v0, p0

    #@47
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@49
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4b
    move-object/from16 v0, v23

    #@4d
    move/from16 v1, v20

    #@4f
    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/ActivityManagerService;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    #@52
    move-result-object v8

    #@53
    .line 4308
    :cond_0
    move-object/from16 v0, p0

    #@55
    move/from16 v1, v20

    #@57
    move-object/from16 v2, p1

    #@59
    invoke-direct {v0, v1, v2, v8}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->checkEmbeddedAllowedInner(ILandroid/content/Intent;Ljava/lang/String;)V

    #@5c
    .line 4310
    const/high16 v3, 0x18010000

    #@5e
    move-object/from16 v0, p1

    #@60
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@63
    .line 4311
    move-object/from16 v0, p0

    #@65
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@67
    const/4 v4, 0x0

    #@68
    const/4 v5, -0x1

    #@69
    const/4 v6, 0x0

    #@6a
    const/4 v9, 0x0

    #@6b
    const/4 v10, 0x0

    #@6c
    const/4 v11, 0x0

    #@6d
    const/4 v12, 0x0

    #@6e
    .line 4312
    const/4 v13, 0x0

    #@6f
    const/4 v14, 0x0

    #@70
    const/4 v15, 0x0

    #@71
    const/16 v16, 0x0

    #@73
    const/16 v17, 0x0

    #@75
    const/16 v18, 0x0

    #@77
    const/16 v19, 0x0

    #@79
    const/16 v22, 0x0

    #@7b
    move-object/from16 v7, p1

    #@7d
    move-object/from16 v21, p0

    #@7f
    .line 4311
    invoke-virtual/range {v3 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    #@82
    move-result v3

    #@83
    return v3
.end method

.method public final startActivityIntentSender(Landroid/content/IIntentSender;)I
    .locals 14
    .param p1, "intentSender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    #@0
    .prologue
    .line 4318
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    const-string/jumbo v2, "ActivityContainer.startActivityIntentSender"

    #@7
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    #@a
    .line 4320
    instance-of v1, p1, Lcom/android/server/am/PendingIntentRecord;

    #@c
    if-nez v1, :cond_0

    #@e
    .line 4321
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "Bad PendingIntent object"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 4324
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@19
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v1

    #@1f
    .line 4325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@22
    move-result v2

    #@23
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@25
    invoke-static {v3}, Lcom/android/server/am/ActivityStackSupervisor;->-get1(Lcom/android/server/am/ActivityStackSupervisor;)I

    #@28
    move-result v3

    #@29
    .line 4326
    const-string/jumbo v6, "ActivityContainer"

    #@2c
    .line 4325
    const/4 v4, 0x0

    #@2d
    .line 4326
    const/4 v5, 0x2

    #@2e
    const/4 v7, 0x0

    #@2f
    .line 4324
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    #@32
    move-result v13

    #@33
    .local v13, "userId":I
    move-object v0, p1

    #@34
    .line 4328
    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    #@36
    .line 4329
    .local v0, "pendingIntent":Lcom/android/server/am/PendingIntentRecord;
    iget-object v1, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@38
    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@3a
    .line 4330
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    #@3c
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    #@3e
    .line 4329
    invoke-direct {p0, v13, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->checkEmbeddedAllowedInner(ILandroid/content/Intent;Ljava/lang/String;)V

    #@41
    .line 4332
    const/4 v1, 0x0

    #@42
    const/4 v2, 0x0

    #@43
    const/4 v3, 0x0

    #@44
    const/4 v4, 0x0

    #@45
    const/4 v5, 0x0

    #@46
    const/4 v6, 0x0

    #@47
    const/4 v7, 0x0

    #@48
    const/4 v8, 0x0

    #@49
    .line 4333
    const/high16 v9, 0x18010000

    #@4b
    const/high16 v10, 0x18010000

    #@4d
    const/4 v11, 0x0

    #@4e
    move-object v12, p0

    #@4f
    .line 4332
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I

    #@52
    move-result v1

    #@53
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 4399
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mIdString:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@d
    if-nez v0, :cond_0

    #@f
    const-string/jumbo v0, "N"

    #@12
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    :cond_0
    const-string/jumbo v0, "A"

    #@1e
    goto :goto_0
.end method
