.class final Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SecurityPolicy"
.end annotation


# static fields
.field public static final INVALID_WINDOW_ID:I = -0x1

.field private static final RETRIEVAL_ALLOWING_EVENT_TYPES:I = 0x3b9bf


# instance fields
.field public mAccessibilityFocusNodeId:J

.field public mAccessibilityFocusedWindowId:I

.field public mActiveWindowId:I

.field public mFocusedWindowId:I

.field private mTouchInteractionInProgress:Z

.field public mWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1
    .param p1, "windowId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 3731
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 3752
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@8
    .line 3753
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    #@a
    .line 3754
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    #@c
    .line 3755
    const-wide/32 v0, 0x7fffffff

    #@f
    iput-wide v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    #@11
    .line 3731
    return-void
.end method

.method private canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 3760
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@3
    move-result v0

    #@4
    .line 3761
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 3788
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    #@a
    move-result v1

    #@b
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindow(I)Z

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 3781
    :sswitch_0
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 3761
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
        0x4000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
        0x100000 -> :sswitch_0
        0x200000 -> :sswitch_0
        0x400000 -> :sswitch_0
        0x1000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4161
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get0()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 4162
    return-void

    #@b
    .line 4164
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    .line 4165
    new-instance v0, Ljava/lang/SecurityException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "You do not have "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 4166
    const-string/jumbo v2, " required to call "

    #@26
    .line 4165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 4166
    const-string/jumbo v2, " from pid="

    #@31
    .line 4165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 4167
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@38
    move-result v2

    #@39
    .line 4165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 4167
    const-string/jumbo v2, ", uid="

    #@40
    .line 4165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 4167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@47
    move-result v2

    #@48
    .line 4165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@53
    throw v0

    #@54
    .line 4160
    :cond_1
    return-void
.end method

.method private findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 5
    .param p1, "windowId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4148
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 4149
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@a
    move-result v2

    #@b
    .line 4150
    .local v2, "windowCount":I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@e
    .line 4151
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@10
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@16
    .line 4152
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    #@19
    move-result v3

    #@1a
    if-ne v3, p1, :cond_0

    #@1c
    .line 4153
    return-object v1

    #@1d
    .line 4150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 4157
    .end local v0    # "i":I
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v2    # "windowCount":I
    :cond_1
    return-object v4
.end method

.method private getFocusedWindowId()I
    .locals 3

    #@0
    .prologue
    .line 4176
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get16(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->getFocusedWindowToken()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    .line 4177
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@c
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    monitor-enter v2

    #@11
    .line 4178
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@13
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap14(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v1

    #@17
    monitor-exit v2

    #@18
    return v1

    #@19
    .line 4177
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4172
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method private isRetrievalAllowingWindow(I)Z
    .locals 3
    .param p1, "windowId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 4138
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0x3e8

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 4139
    return v0

    #@a
    .line 4141
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@c
    if-ne p1, v1, :cond_1

    #@e
    .line 4142
    return v0

    #@f
    .line 4144
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@12
    move-result-object v1

    #@13
    if-eqz v1, :cond_2

    #@15
    :goto_0
    return v0

    #@16
    :cond_2
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method private notifyWindowsChanged()V
    .locals 6

    #@0
    .prologue
    .line 4040
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get17(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 4041
    return-void

    #@9
    .line 4043
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c
    move-result-wide v2

    #@d
    .line 4047
    .local v2, "identity":J
    const/high16 v1, 0x400000

    #@f
    .line 4046
    :try_start_0
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@12
    move-result-object v0

    #@13
    .line 4048
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v4

    #@17
    invoke-virtual {v0, v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    #@1a
    .line 4049
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1c
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1e
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    #@21
    move-result v4

    #@22
    invoke-virtual {v1, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 4051
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 4039
    return-void

    #@29
    .line 4050
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :catchall_0
    move-exception v1

    #@2a
    .line 4051
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 4050
    throw v1
.end method

.method private resolveProfileParentLocked(I)I
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4079
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    #@5
    move-result v3

    #@6
    if-eq p1, v3, :cond_1

    #@8
    .line 4080
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v0

    #@c
    .line 4082
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@e
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get15(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@15
    move-result-object v2

    #@16
    .line 4083
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    #@18
    .line 4084
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    .line 4087
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 4084
    return v3

    #@24
    .line 4087
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 4090
    .end local v0    # "identity":J
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :cond_1
    return p1

    #@28
    .line 4086
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    #@29
    .line 4087
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 4086
    throw v3
.end method

.method private setAccessibilityFocusedWindowLocked(I)V
    .locals 4
    .param p1, "windowId"    # I

    #@0
    .prologue
    .line 4025
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    #@2
    if-eq v3, p1, :cond_2

    #@4
    .line 4026
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    #@6
    .line 4027
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 4028
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@c
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@f
    move-result v2

    #@10
    .line 4029
    .local v2, "windowCount":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@13
    .line 4030
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@15
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@1b
    .line 4031
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    #@1e
    move-result v3

    #@1f
    if-ne v3, p1, :cond_0

    #@21
    const/4 v3, 0x1

    #@22
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    #@25
    .line 4029
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 4031
    :cond_0
    const/4 v3, 0x0

    #@29
    goto :goto_1

    #@2a
    .line 4035
    .end local v0    # "i":I
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v2    # "windowCount":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->notifyWindowsChanged()V

    #@2d
    .line 4024
    :cond_2
    return-void
.end method

.method private setActiveWindowLocked(I)V
    .locals 4
    .param p1, "windowId"    # I

    #@0
    .prologue
    .line 4011
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@2
    if-eq v3, p1, :cond_2

    #@4
    .line 4012
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@6
    .line 4013
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 4014
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@c
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@f
    move-result v2

    #@10
    .line 4015
    .local v2, "windowCount":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@13
    .line 4016
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@15
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@1b
    .line 4017
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    #@1e
    move-result v3

    #@1f
    if-ne v3, p1, :cond_0

    #@21
    const/4 v3, 0x1

    #@22
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    #@25
    .line 4015
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 4017
    :cond_0
    const/4 v3, 0x0

    #@29
    goto :goto_1

    #@2a
    .line 4020
    .end local v0    # "i":I
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v2    # "windowCount":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->notifyWindowsChanged()V

    #@2d
    .line 4010
    :cond_2
    return-void
.end method


# virtual methods
.method public canControlMagnification(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 2
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4069
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@3
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    #@6
    move-result v1

    #@7
    and-int/lit8 v1, v1, 0x10

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    .locals 1
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "windowId"    # I

    #@0
    .prologue
    .line 4056
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindow(I)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public canPerformGestures(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 2
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4074
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@3
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    #@6
    move-result v1

    #@7
    and-int/lit8 v1, v1, 0x20

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 2
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4064
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@3
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    #@6
    move-result v1

    #@7
    and-int/lit8 v1, v1, 0x1

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public canRetrieveWindowsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 1
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@0
    .prologue
    .line 4060
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRetrieveInteractiveWindows:Z

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public clearWindowsLocked()V
    .locals 3

    #@0
    .prologue
    .line 3794
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 3795
    .local v1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@6
    .line 3796
    .local v0, "activeWindowId":I
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    #@9
    .line 3797
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@b
    .line 3798
    const/4 v2, 0x0

    #@c
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@e
    .line 3793
    return-void
.end method

.method public computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .locals 8
    .param p1, "windowId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3862
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@3
    if-nez v6, :cond_0

    #@5
    .line 3863
    return v7

    #@6
    .line 3870
    :cond_0
    const/4 v4, 0x0

    #@7
    .line 3871
    .local v4, "windowInteractiveRegion":Landroid/graphics/Region;
    const/4 v5, 0x0

    #@8
    .line 3873
    .local v5, "windowInteractiveRegionChanged":Z
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@a
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@d
    move-result v3

    #@e
    .line 3874
    .local v3, "windowCount":I
    add-int/lit8 v2, v3, -0x1

    #@10
    .end local v4    # "windowInteractiveRegion":Landroid/graphics/Region;
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    #@12
    .line 3875
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@14
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@1a
    .line 3876
    .local v0, "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v4, :cond_2

    #@1c
    .line 3877
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    #@1f
    move-result v6

    #@20
    if-ne v6, p1, :cond_1

    #@22
    .line 3878
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@24
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get13(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    #@27
    move-result-object v1

    #@28
    .line 3879
    .local v1, "currentWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@2b
    .line 3880
    invoke-virtual {p2, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    #@2e
    .line 3881
    move-object v4, p2

    #@2f
    .line 3874
    .end local v1    # "currentWindowBounds":Landroid/graphics/Rect;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@31
    goto :goto_0

    #@32
    .line 3884
    :cond_2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    #@35
    move-result v6

    #@36
    .line 3885
    const/4 v7, 0x4

    #@37
    .line 3884
    if-eq v6, v7, :cond_1

    #@39
    .line 3886
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3b
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get13(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    #@3e
    move-result-object v1

    #@3f
    .line 3887
    .restart local v1    # "currentWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@42
    .line 3888
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@44
    invoke-virtual {v4, v1, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@47
    move-result v6

    #@48
    if-eqz v6, :cond_1

    #@4a
    .line 3889
    const/4 v5, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 3894
    .end local v0    # "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v1    # "currentWindowBounds":Landroid/graphics/Rect;
    :cond_3
    return v5
.end method

.method public getActiveWindowId()I
    .locals 2

    #@0
    .prologue
    .line 4004
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 4007
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@b
    return v0

    #@c
    .line 4005
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@12
    goto :goto_0
.end method

.method public isCallerInteractingAcrossUsers(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 4129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v0

    #@5
    .line 4130
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@8
    move-result v2

    #@9
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@c
    move-result v3

    #@d
    if-eq v2, v3, :cond_0

    #@f
    .line 4131
    const/16 v2, 0x7d0

    #@11
    if-ne v0, v2, :cond_1

    #@13
    .line 4130
    :cond_0
    :goto_0
    return v1

    #@14
    .line 4132
    :cond_1
    const/4 v2, -0x2

    #@15
    if-eq p1, v2, :cond_0

    #@17
    .line 4133
    const/4 v2, -0x3

    #@18
    if-eq p1, v2, :cond_0

    #@1a
    const/4 v1, 0x0

    #@1b
    goto :goto_0
.end method

.method public onTouchInteractionEnd()V
    .locals 5

    #@0
    .prologue
    .line 3977
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 3978
    const/4 v1, 0x0

    #@8
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    #@a
    .line 3987
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@c
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@f
    move-result-object v1

    #@10
    iget v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@12
    .line 3988
    .local v0, "oldActiveWindow":I
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    #@14
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setActiveWindowLocked(I)V

    #@17
    .line 3994
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@19
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@1c
    move-result-object v1

    #@1d
    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@1f
    if-eq v0, v1, :cond_0

    #@21
    .line 3995
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    #@23
    if-ne v1, v0, :cond_0

    #@25
    .line 3996
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@27
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@2a
    move-result-object v1

    #@2b
    iget-boolean v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    #@2d
    .line 3994
    if-eqz v1, :cond_0

    #@2f
    .line 3997
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@31
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@34
    move-result-object v1

    #@35
    const/16 v3, 0x9

    #@37
    .line 3998
    const/4 v4, 0x0

    #@38
    .line 3997
    invoke-virtual {v1, v3, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    :cond_0
    monitor-exit v2

    #@40
    .line 3976
    return-void

    #@41
    .line 3977
    .end local v0    # "oldActiveWindow":I
    :catchall_0
    move-exception v1

    #@42
    monitor-exit v2

    #@43
    throw v1
.end method

.method public onTouchInteractionStart()V
    .locals 2

    #@0
    .prologue
    .line 3971
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    monitor-enter v0

    #@7
    .line 3972
    const/4 v1, 0x1

    #@8
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v0

    #@b
    .line 3970
    return-void

    #@c
    .line 3971
    :catchall_0
    move-exception v1

    #@d
    monitor-exit v0

    #@e
    throw v1
.end method

.method public resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v5, -0x2

    #@1
    const/4 v4, -0x3

    #@2
    .line 4094
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v0

    #@6
    .line 4095
    .local v0, "callingUid":I
    if-eqz v0, :cond_0

    #@8
    .line 4096
    const/16 v3, 0x3e8

    #@a
    if-ne v0, v3, :cond_2

    #@c
    .line 4098
    :cond_0
    if-eq p1, v5, :cond_1

    #@e
    .line 4099
    if-ne p1, v4, :cond_3

    #@10
    .line 4100
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@12
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    #@15
    move-result v3

    #@16
    return v3

    #@17
    .line 4097
    :cond_2
    const/16 v3, 0x7d0

    #@19
    if-eq v0, v3, :cond_0

    #@1b
    .line 4104
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@1e
    move-result v1

    #@1f
    .line 4105
    .local v1, "callingUserId":I
    if-ne v1, p1, :cond_4

    #@21
    .line 4106
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    #@24
    move-result v3

    #@25
    return v3

    #@26
    .line 4102
    .end local v1    # "callingUserId":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    #@29
    move-result v3

    #@2a
    return v3

    #@2b
    .line 4108
    .restart local v1    # "callingUserId":I
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    #@2e
    move-result v2

    #@2f
    .line 4109
    .local v2, "callingUserParentId":I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@31
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    #@34
    move-result v3

    #@35
    if-ne v2, v3, :cond_6

    #@37
    .line 4110
    if-eq p1, v5, :cond_5

    #@39
    .line 4111
    if-ne p1, v4, :cond_6

    #@3b
    .line 4112
    :cond_5
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3d
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    #@40
    move-result v3

    #@41
    return v3

    #@42
    .line 4114
    :cond_6
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS"

    #@45
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    #@48
    move-result v3

    #@49
    if-nez v3, :cond_7

    #@4b
    .line 4115
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@4e
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_9

    #@54
    .line 4120
    :cond_7
    if-eq p1, v5, :cond_8

    #@56
    .line 4121
    if-ne p1, v4, :cond_a

    #@58
    .line 4122
    :cond_8
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@5a
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    #@5d
    move-result v3

    #@5e
    return v3

    #@5f
    .line 4116
    :cond_9
    new-instance v3, Ljava/lang/SecurityException;

    #@61
    new-instance v4, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v5, "Call from user "

    #@69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    const-string/jumbo v5, " as user "

    #@74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    .line 4117
    const-string/jumbo v5, " without permission INTERACT_ACROSS_USERS or "

    #@7f
    .line 4116
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    .line 4118
    const-string/jumbo v5, "INTERACT_ACROSS_USERS_FULL not allowed."

    #@86
    .line 4116
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@91
    throw v3

    #@92
    .line 4124
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@94
    const-string/jumbo v4, "Calling user can be changed to only UserHandle.USER_CURRENT or UserHandle.USER_CURRENT_OR_SELF."

    #@97
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v3
.end method

.method public updateActiveAndAccessibilityFocusedWindowLocked(IJII)V
    .locals 6
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J
    .param p4, "eventType"    # I
    .param p5, "eventAction"    # I

    #@0
    .prologue
    const-wide/32 v4, 0x7fffffff

    #@3
    .line 3913
    sparse-switch p4, :sswitch_data_0

    #@6
    .line 3904
    :goto_0
    return-void

    #@7
    .line 3921
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    monitor-enter v1

    #@e
    .line 3922
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@10
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get17(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_0

    #@16
    .line 3923
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    #@1c
    .line 3924
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    #@1e
    if-ne p1, v0, :cond_0

    #@20
    .line 3925
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :cond_0
    :goto_1
    monitor-exit v1

    #@23
    goto :goto_0

    #@24
    .line 3921
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0

    #@27
    .line 3934
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@29
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    monitor-enter v1

    #@2e
    .line 3935
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    #@30
    if-eqz v0, :cond_0

    #@32
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@34
    if-eq v0, p1, :cond_0

    #@36
    .line 3936
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setActiveWindowLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@39
    goto :goto_1

    #@3a
    .line 3934
    :catchall_1
    move-exception v0

    #@3b
    monitor-exit v1

    #@3c
    throw v0

    #@3d
    .line 3942
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3f
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@42
    move-result-object v1

    #@43
    monitor-enter v1

    #@44
    .line 3943
    :try_start_2
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    #@46
    if-eq v0, p1, :cond_0

    #@48
    .line 3944
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@4a
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    #@4d
    move-result-object v0

    #@4e
    .line 3945
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    #@50
    .line 3944
    const/16 v3, 0x9

    #@52
    .line 3945
    const/4 v4, 0x0

    #@53
    .line 3944
    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@5a
    .line 3946
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@5c
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@5f
    move-result-object v0

    #@60
    invoke-direct {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setAccessibilityFocusedWindowLocked(I)V

    #@63
    .line 3947
    iput-wide p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@65
    goto :goto_1

    #@66
    .line 3942
    :catchall_2
    move-exception v0

    #@67
    monitor-exit v1

    #@68
    throw v0

    #@69
    .line 3953
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@6b
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@6e
    move-result-object v1

    #@6f
    monitor-enter v1

    #@70
    .line 3954
    :try_start_3
    iget-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    #@72
    cmp-long v0, v2, p2

    #@74
    if-nez v0, :cond_1

    #@76
    .line 3955
    const-wide/32 v2, 0x7fffffff

    #@79
    iput-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    #@7b
    .line 3959
    :cond_1
    iget-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    #@7d
    cmp-long v0, v2, v4

    #@7f
    if-nez v0, :cond_0

    #@81
    .line 3960
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    #@83
    if-ne v0, p1, :cond_0

    #@85
    .line 3961
    const/16 v0, 0x40

    #@87
    if-eq p5, v0, :cond_0

    #@89
    .line 3963
    const/4 v0, -0x1

    #@8a
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@8c
    goto :goto_1

    #@8d
    .line 3953
    :catchall_3
    move-exception v0

    #@8e
    monitor-exit v1

    #@8f
    throw v0

    #@90
    .line 3913
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
        0x8000 -> :sswitch_2
        0x10000 -> :sswitch_3
    .end sparse-switch
.end method

.method public updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 3898
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@3
    move-result v0

    #@4
    const v1, 0x3b9bf

    #@7
    and-int/2addr v0, v1

    #@8
    if-nez v0, :cond_0

    #@a
    .line 3899
    const/4 v0, 0x0

    #@b
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    #@e
    .line 3897
    :cond_0
    return-void
.end method

.method public updateWindowsLocked(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    const/4 v7, -0x1

    #@1
    const/4 v8, 0x1

    #@2
    .line 3802
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@4
    if-nez v6, :cond_0

    #@6
    .line 3803
    new-instance v6, Ljava/util/ArrayList;

    #@8
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@d
    .line 3806
    :cond_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@f
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@12
    move-result v2

    #@13
    .line 3807
    .local v2, "oldWindowCount":I
    add-int/lit8 v1, v2, -0x1

    #@15
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@17
    .line 3808
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@19
    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1c
    move-result-object v6

    #@1d
    check-cast v6, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@1f
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    #@22
    .line 3807
    add-int/lit8 v1, v1, -0x1

    #@24
    goto :goto_0

    #@25
    .line 3811
    :cond_1
    iput v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    #@27
    .line 3812
    iget-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    #@29
    if-nez v6, :cond_2

    #@2b
    .line 3813
    iput v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@2d
    .line 3821
    :cond_2
    const/4 v0, 0x1

    #@2e
    .line 3823
    .local v0, "activeWindowGone":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@31
    move-result v4

    #@32
    .line 3824
    .local v4, "windowCount":I
    if-lez v4, :cond_9

    #@34
    .line 3825
    const/4 v1, 0x0

    #@35
    :goto_1
    if-ge v1, v4, :cond_5

    #@37
    .line 3826
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@3d
    .line 3827
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    #@40
    move-result v5

    #@41
    .line 3828
    .local v5, "windowId":I
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    #@44
    move-result v6

    #@45
    if-eqz v6, :cond_3

    #@47
    .line 3829
    iput v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    #@49
    .line 3830
    iget-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    #@4b
    if-nez v6, :cond_4

    #@4d
    .line 3831
    iput v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@4f
    .line 3832
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    #@52
    .line 3837
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@54
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@57
    .line 3825
    add-int/lit8 v1, v1, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 3833
    :cond_4
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@5c
    if-ne v5, v6, :cond_3

    #@5e
    .line 3834
    const/4 v0, 0x0

    #@5f
    goto :goto_2

    #@60
    .line 3840
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v5    # "windowId":I
    :cond_5
    iget-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    #@62
    if-eqz v6, :cond_6

    #@64
    if-eqz v0, :cond_6

    #@66
    .line 3841
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    #@68
    iput v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@6a
    .line 3846
    :cond_6
    const/4 v1, 0x0

    #@6b
    :goto_3
    if-ge v1, v4, :cond_9

    #@6d
    .line 3847
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    #@6f
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@72
    move-result-object v3

    #@73
    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@75
    .line 3848
    .restart local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    #@78
    move-result v6

    #@79
    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    #@7b
    if-ne v6, v7, :cond_7

    #@7d
    .line 3849
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    #@80
    .line 3851
    :cond_7
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    #@83
    move-result v6

    #@84
    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    #@86
    if-ne v6, v7, :cond_8

    #@88
    .line 3852
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    #@8b
    .line 3846
    :cond_8
    add-int/lit8 v1, v1, 0x1

    #@8d
    goto :goto_3

    #@8e
    .line 3857
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_9
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->notifyWindowsChanged()V

    #@91
    .line 3801
    return-void
.end method
