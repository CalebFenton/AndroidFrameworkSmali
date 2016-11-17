.class final Lcom/android/server/wm/Session;
.super Landroid/view/IWindowSession$Stub;
.source "Session.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final mCallback:Landroid/view/IWindowSessionCallback;

.field final mClient:Lcom/android/internal/view/IInputMethodClient;

.field mClientDead:Z

.field final mInputContext:Lcom/android/internal/view/IInputContext;

.field mLastReportedAnimatorScale:F

.field mNumWindow:I

.field final mPid:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mStringName:Ljava/lang/String;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Landroid/view/IWindowSessionCallback;
    .param p3, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p4, "inputContext"    # Lcom/android/internal/view/IInputContext;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 75
    invoke-direct {p0}, Landroid/view/IWindowSession$Stub;-><init>()V

    #@4
    .line 71
    iput v6, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    #@6
    .line 72
    iput-boolean v6, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    #@8
    .line 77
    iput-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a
    .line 78
    iput-object p2, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    #@c
    .line 79
    iput-object p3, p0, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    #@e
    .line 80
    iput-object p4, p0, Lcom/android/server/wm/Session;->mInputContext:Lcom/android/internal/view/IInputContext;

    #@10
    .line 81
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v6

    #@14
    iput v6, p0, Lcom/android/server/wm/Session;->mUid:I

    #@16
    .line 82
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@19
    move-result v6

    #@1a
    iput v6, p0, Lcom/android/server/wm/Session;->mPid:I

    #@1c
    .line 83
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    #@1f
    move-result v6

    #@20
    iput v6, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    #@22
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    .line 85
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "Session{"

    #@2a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 86
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@30
    move-result v6

    #@31
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 87
    const-string/jumbo v6, " "

    #@3b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 88
    iget v6, p0, Lcom/android/server/wm/Session;->mPid:I

    #@40
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    .line 89
    iget v6, p0, Lcom/android/server/wm/Session;->mUid:I

    #@45
    const/16 v7, 0x2710

    #@47
    if-ge v6, v7, :cond_1

    #@49
    .line 90
    const-string/jumbo v6, ":"

    #@4c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 91
    iget v6, p0, Lcom/android/server/wm/Session;->mUid:I

    #@51
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    .line 98
    :goto_0
    const-string/jumbo v6, "}"

    #@57
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    iput-object v6, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    #@60
    .line 101
    iget-object v6, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@62
    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@64
    monitor-enter v7

    #@65
    .line 102
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@67
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    #@69
    if-nez v6, :cond_0

    #@6b
    iget-object v6, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6d
    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    #@6f
    if-eqz v6, :cond_0

    #@71
    .line 104
    const-string/jumbo v6, "input_method"

    #@74
    .line 103
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@77
    move-result-object v0

    #@78
    .line 105
    .local v0, "b":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7a
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    #@7d
    move-result-object v8

    #@7e
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@80
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    monitor-exit v7

    #@81
    .line 108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@84
    move-result-wide v4

    #@85
    .line 112
    .local v4, "ident":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@87
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    #@89
    if-eqz v6, :cond_2

    #@8b
    .line 113
    iget-object v6, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8d
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    #@8f
    .line 114
    iget v7, p0, Lcom/android/server/wm/Session;->mUid:I

    #@91
    iget v8, p0, Lcom/android/server/wm/Session;->mPid:I

    #@93
    .line 113
    invoke-interface {v6, p3, p4, v7, v8}, Lcom/android/internal/view/IInputMethodManager;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    #@96
    .line 118
    :goto_1
    invoke-interface {p3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@99
    move-result-object v6

    #@9a
    const/4 v7, 0x0

    #@9b
    invoke-interface {v6, p0, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@9e
    .line 128
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a1
    .line 76
    :goto_2
    return-void

    #@a2
    .line 93
    .end local v4    # "ident":J
    :cond_1
    const-string/jumbo v6, ":u"

    #@a5
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    .line 94
    iget v6, p0, Lcom/android/server/wm/Session;->mUid:I

    #@aa
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    #@ad
    move-result v6

    #@ae
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b1
    .line 95
    const/16 v6, 0x61

    #@b3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b6
    .line 96
    iget v6, p0, Lcom/android/server/wm/Session;->mUid:I

    #@b8
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    #@bb
    move-result v6

    #@bc
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bf
    goto :goto_0

    #@c0
    .line 101
    :catchall_0
    move-exception v6

    #@c1
    monitor-exit v7

    #@c2
    throw v6

    #@c3
    .line 116
    .restart local v4    # "ident":J
    :cond_2
    const/4 v6, 0x0

    #@c4
    :try_start_2
    invoke-interface {p3, v6}, Lcom/android/internal/view/IInputMethodClient;->setUsingInputMethod(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@c7
    goto :goto_1

    #@c8
    .line 119
    :catch_0
    move-exception v1

    #@c9
    .line 122
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v6, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@cb
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    #@cd
    if-eqz v6, :cond_3

    #@cf
    .line 123
    iget-object v6, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d1
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    #@d3
    invoke-interface {v6, p3}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@d6
    .line 128
    :cond_3
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d9
    goto :goto_2

    #@da
    .line 127
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    #@db
    .line 128
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@de
    .line 127
    throw v6

    #@df
    .line 125
    .restart local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@e0
    .local v2, "ee":Landroid/os/RemoteException;
    goto :goto_3
.end method


# virtual methods
.method public add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    .locals 10
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "outContentInsets"    # Landroid/graphics/Rect;
    .param p6, "outStableInsets"    # Landroid/graphics/Rect;
    .param p7, "outInputChannel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    .line 166
    const/4 v5, 0x0

    #@1
    .line 167
    const/4 v8, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v3, p3

    #@6
    move v4, p4

    #@7
    move-object v6, p5

    #@8
    move-object/from16 v7, p6

    #@a
    move-object/from16 v9, p7

    #@c
    .line 166
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/Session;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    .locals 11
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "displayId"    # I
    .param p6, "outContentInsets"    # Landroid/graphics/Rect;
    .param p7, "outStableInsets"    # Landroid/graphics/Rect;
    .param p8, "outOutsets"    # Landroid/graphics/Rect;
    .param p9, "outInputChannel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move-object v4, p3

    #@6
    move v5, p4

    #@7
    move/from16 v6, p5

    #@9
    move-object/from16 v7, p6

    #@b
    move-object/from16 v8, p7

    #@d
    move-object/from16 v9, p8

    #@f
    move-object/from16 v10, p9

    #@11
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 11
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "displayId"    # I
    .param p6, "outContentInsets"    # Landroid/graphics/Rect;
    .param p7, "outStableInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    .line 189
    const/4 v9, 0x0

    #@3
    const/4 v10, 0x0

    #@4
    move-object v1, p0

    #@5
    move-object v2, p1

    #@6
    move v3, p2

    #@7
    move-object v4, p3

    #@8
    move v5, p4

    #@9
    move/from16 v6, p5

    #@b
    move-object/from16 v7, p6

    #@d
    move-object/from16 v8, p7

    #@f
    .line 188
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 8
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "outContentInsets"    # Landroid/graphics/Rect;
    .param p6, "outStableInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 182
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move-object v6, p5

    #@7
    move-object v7, p6

    #@8
    .line 181
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/Session;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public binderDied()V
    .locals 4

    #@0
    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 151
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    #@a
    iget-object v2, p0, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    #@c
    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 155
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@11
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@13
    monitor-enter v2

    #@14
    .line 156
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    #@16
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    const/4 v3, 0x0

    #@1b
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@1e
    .line 157
    const/4 v1, 0x1

    #@1f
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    #@21
    .line 158
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit v2

    #@25
    .line 146
    return-void

    #@26
    .line 155
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1

    #@29
    .line 153
    :catch_0
    move-exception v0

    #@2a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public cancelDragAndDrop(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "dragToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v3

    #@5
    .line 426
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    move-result-wide v0

    #@9
    .line 428
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@d
    if-nez v2, :cond_0

    #@f
    .line 429
    const-string/jumbo v2, "WindowManager"

    #@12
    const-string/jumbo v4, "cancelDragAndDrop() without prepareDrag()"

    #@15
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 430
    new-instance v2, Ljava/lang/IllegalStateException;

    #@1a
    const-string/jumbo v4, "cancelDragAndDrop() without prepareDrag()"

    #@1d
    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .line 442
    :catchall_0
    move-exception v2

    #@22
    .line 443
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 442
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 425
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    #@27
    monitor-exit v3

    #@28
    throw v2

    #@29
    .line 433
    .restart local v0    # "ident":J
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2b
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@2d
    iget-object v2, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    #@2f
    if-eq v2, p1, :cond_1

    #@31
    .line 434
    const-string/jumbo v2, "WindowManager"

    #@34
    .line 435
    const-string/jumbo v4, "cancelDragAndDrop() does not match prepareDrag()"

    #@37
    .line 434
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 436
    new-instance v2, Ljava/lang/IllegalStateException;

    #@3c
    .line 437
    const-string/jumbo v4, "cancelDragAndDrop() does not match prepareDrag()"

    #@3f
    .line 436
    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2

    #@43
    .line 440
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@45
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@47
    const/4 v4, 0x0

    #@48
    iput-boolean v4, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    #@4a
    .line 441
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4c
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@4e
    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->cancelDragLw()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@51
    .line 443
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@54
    monitor-exit v3

    #@55
    .line 420
    return-void
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    #@0
    .prologue
    .line 448
    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    #@0
    .prologue
    .line 454
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 588
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mNumWindow="

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@e
    .line 589
    const-string/jumbo v0, " mClientDead="

    #@11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    #@16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@19
    .line 590
    const-string/jumbo v0, " mSurfaceSession="

    #@1c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@24
    .line 587
    return-void
.end method

.method public finishDrawing(Landroid/view/IWindow;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    #@5
    .line 246
    return-void
.end method

.method public getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "outDisplayFrame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V

    #@5
    .line 242
    return-void
.end method

.method public getInTouchMode()Z
    .locals 2

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 259
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .locals 1
    .param p1, "window"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method killSessionLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 567
    iget v1, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    #@3
    if-gtz v1, :cond_0

    #@5
    iget-boolean v1, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 568
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    #@d
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@10
    .line 569
    iget-object v1, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@16
    invoke-virtual {v1}, Landroid/view/SurfaceSession;->kill()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 582
    :goto_0
    iput-object v4, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@1b
    .line 566
    :cond_0
    return-void

    #@1c
    .line 577
    :catch_0
    move-exception v0

    #@1d
    .line 578
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WindowManager"

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Exception thrown when killing surface session "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 579
    iget-object v3, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@2e
    .line 578
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 579
    const-string/jumbo v3, " in session "

    #@35
    .line 578
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    .line 580
    const-string/jumbo v3, ": "

    #@40
    .line 578
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 580
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    .line 578
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    goto :goto_0
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "rectangle"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 512
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v3

    #@5
    .line 513
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    move-result-wide v0

    #@9
    .line 515
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .line 517
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@11
    monitor-exit v3

    #@12
    .line 511
    return-void

    #@13
    .line 516
    :catchall_0
    move-exception v2

    #@14
    .line 517
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 516
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@18
    .line 512
    .end local v0    # "identity":J
    :catchall_1
    move-exception v2

    #@19
    monitor-exit v3

    #@1a
    throw v2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 137
    :catch_0
    move-exception v0

    #@6
    .line 139
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 140
    const-string/jumbo v1, "WindowManager"

    #@d
    const-string/jumbo v2, "Window Session Crash"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 142
    :cond_0
    throw v0
.end method

.method public outOfMemory(Landroid/view/IWindow;)Z
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public performDeferredDestroy(Landroid/view/IWindow;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->performDeferredDestroyWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    #@5
    .line 224
    return-void
.end method

.method public performDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z
    .locals 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "dragToken"    # Landroid/os/IBinder;
    .param p3, "touchSource"    # I
    .param p4, "touchX"    # F
    .param p5, "touchY"    # F
    .param p6, "thumbCenterX"    # F
    .param p7, "thumbCenterY"    # F
    .param p8, "data"    # Landroid/content/ClipData;

    #@0
    .prologue
    .line 292
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v6

    #@5
    .line 293
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@9
    if-nez v5, :cond_0

    #@b
    .line 294
    const-string/jumbo v5, "WindowManager"

    #@e
    const-string/jumbo v7, "No drag prepared"

    #@11
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 295
    new-instance v5, Ljava/lang/IllegalStateException;

    #@16
    const-string/jumbo v7, "performDrag() without prepareDrag()"

    #@19
    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 292
    :catchall_0
    move-exception v5

    #@1e
    monitor-exit v6

    #@1f
    throw v5

    #@20
    .line 298
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@22
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@24
    iget-object v5, v5, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    #@26
    if-eq p2, v5, :cond_1

    #@28
    .line 299
    const-string/jumbo v5, "WindowManager"

    #@2b
    const-string/jumbo v7, "Performing mismatched drag"

    #@2e
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 300
    new-instance v5, Ljava/lang/IllegalStateException;

    #@33
    const-string/jumbo v7, "performDrag() does not match prepareDrag()"

    #@36
    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@39
    throw v5

    #@3a
    .line 303
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3c
    const/4 v7, 0x0

    #@3d
    const/4 v8, 0x0

    #@3e
    invoke-virtual {v5, v7, p1, v8}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    #@41
    move-result-object v1

    #@42
    .line 304
    .local v1, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_2

    #@44
    .line 305
    const-string/jumbo v5, "WindowManager"

    #@47
    new-instance v7, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v8, "Bad requesting window "

    #@4f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v7

    #@53
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    .line 306
    const/4 v5, 0x0

    #@5f
    monitor-exit v6

    #@60
    return v5

    #@61
    .line 313
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@63
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@65
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@68
    move-result-object v7

    #@69
    const/16 v8, 0x14

    #@6b
    invoke-virtual {v5, v8, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    #@6e
    .line 321
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@71
    move-result-object v3

    #@72
    .line 322
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v3, :cond_3

    #@74
    .line 323
    const/4 v5, 0x0

    #@75
    monitor-exit v6

    #@76
    return v5

    #@77
    .line 325
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    #@7a
    move-result-object v2

    #@7b
    .line 326
    .local v2, "display":Landroid/view/Display;
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7d
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@7f
    invoke-virtual {v5, v2}, Lcom/android/server/wm/DragState;->register(Landroid/view/Display;)V

    #@82
    .line 327
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@84
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    #@86
    const/4 v7, 0x1

    #@87
    invoke-virtual {v5, v7}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    #@8a
    .line 328
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8c
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@8e
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@90
    .line 329
    iget-object v8, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@92
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@94
    iget-object v8, v8, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    #@96
    .line 328
    invoke-virtual {v5, v7, v8}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    #@99
    move-result v5

    #@9a
    if-nez v5, :cond_4

    #@9c
    .line 330
    const-string/jumbo v5, "WindowManager"

    #@9f
    const-string/jumbo v7, "Unable to transfer touch focus"

    #@a2
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    .line 331
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a7
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@a9
    invoke-virtual {v5}, Lcom/android/server/wm/DragState;->unregister()V

    #@ac
    .line 332
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@ae
    const/4 v7, 0x0

    #@af
    iput-object v7, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@b1
    .line 333
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b3
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    #@b5
    const/4 v7, 0x1

    #@b6
    invoke-virtual {v5, v7}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b9
    .line 334
    const/4 v5, 0x0

    #@ba
    monitor-exit v6

    #@bb
    return v5

    #@bc
    .line 337
    :cond_4
    :try_start_4
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@be
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@c0
    move-object/from16 v0, p8

    #@c2
    iput-object v0, v5, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    #@c4
    .line 338
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@c6
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@c8
    invoke-virtual {v5, p4, p5}, Lcom/android/server/wm/DragState;->broadcastDragStartedLw(FF)V

    #@cb
    .line 339
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@cd
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@cf
    invoke-virtual {v5, p3}, Lcom/android/server/wm/DragState;->overridePointerIconLw(I)V

    #@d2
    .line 342
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d4
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@d6
    iput p6, v5, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    #@d8
    .line 343
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@da
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@dc
    move/from16 v0, p7

    #@de
    iput v0, v5, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    #@e0
    .line 346
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e2
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@e4
    iget-object v4, v5, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@e6
    .line 349
    .local v4, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@e9
    .line 351
    sub-float v5, p4, p6

    #@eb
    .line 352
    sub-float v7, p5, p7

    #@ed
    .line 351
    :try_start_5
    invoke-virtual {v4, v5, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@f0
    .line 353
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f2
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@f4
    invoke-virtual {v5}, Lcom/android/server/wm/DragState;->getDragLayerLw()I

    #@f7
    move-result v5

    #@f8
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@fb
    .line 354
    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    #@fe
    move-result v5

    #@ff
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@102
    .line 355
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->show()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@105
    .line 357
    :try_start_6
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@108
    .line 362
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@10a
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@10c
    invoke-virtual {v5, p4, p5}, Lcom/android/server/wm/DragState;->notifyLocationLw(FF)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@10f
    monitor-exit v6

    #@110
    .line 365
    const/4 v5, 0x1

    #@111
    return v5

    #@112
    .line 356
    :catchall_1
    move-exception v5

    #@113
    .line 357
    :try_start_7
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@116
    .line 356
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public performHapticFeedback(Landroid/view/IWindow;IZ)Z
    .locals 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    #@0
    .prologue
    .line 266
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v3

    #@5
    .line 267
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    move-result-wide v0

    #@9
    .line 269
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@d
    .line 270
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f
    const/4 v5, 0x1

    #@10
    invoke-virtual {v4, p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    #@13
    move-result-object v4

    #@14
    .line 269
    invoke-interface {v2, v4, p2, p3}, Landroid/view/WindowManagerPolicy;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result v2

    #@18
    .line 273
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1b
    monitor-exit v3

    #@1c
    .line 269
    return v2

    #@1d
    .line 272
    :catchall_0
    move-exception v2

    #@1e
    .line 273
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 272
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@22
    .line 266
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    #@23
    monitor-exit v3

    #@24
    throw v2
.end method

.method public pokeDrawLock(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "window"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 528
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 530
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowManagerService;->pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 532
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c
    .line 527
    return-void

    #@d
    .line 531
    :catchall_0
    move-exception v2

    #@e
    .line 532
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 531
    throw v2
.end method

.method public prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;
    .locals 7
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "flags"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "outSurface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v2, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@4
    move-object v1, p1

    #@5
    move v3, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    move-object v6, p5

    #@9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->prepareDragSurface(Landroid/view/IWindow;Landroid/view/SurfaceSession;IIILandroid/view/Surface;)Landroid/os/IBinder;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "childrenOnly"    # Z

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setReplacingWindows(Landroid/os/IBinder;Z)V

    #@5
    .line 204
    return-void
.end method

.method public relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .locals 20
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "requestedWidth"    # I
    .param p5, "requestedHeight"    # I
    .param p6, "viewFlags"    # I
    .param p7, "flags"    # I
    .param p8, "outFrame"    # Landroid/graphics/Rect;
    .param p9, "outOverscanInsets"    # Landroid/graphics/Rect;
    .param p10, "outContentInsets"    # Landroid/graphics/Rect;
    .param p11, "outVisibleInsets"    # Landroid/graphics/Rect;
    .param p12, "outStableInsets"    # Landroid/graphics/Rect;
    .param p13, "outsets"    # Landroid/graphics/Rect;
    .param p14, "outBackdropFrame"    # Landroid/graphics/Rect;
    .param p15, "outConfig"    # Landroid/content/res/Configuration;
    .param p16, "outSurface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 215
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    move-object/from16 v2, p0

    #@6
    move-object/from16 v3, p1

    #@8
    move/from16 v4, p2

    #@a
    move-object/from16 v5, p3

    #@c
    move/from16 v6, p4

    #@e
    move/from16 v7, p5

    #@10
    move/from16 v8, p6

    #@12
    move/from16 v9, p7

    #@14
    move-object/from16 v10, p8

    #@16
    move-object/from16 v11, p9

    #@18
    move-object/from16 v12, p10

    #@1a
    move-object/from16 v13, p11

    #@1c
    move-object/from16 v14, p12

    #@1e
    move-object/from16 v15, p13

    #@20
    move-object/from16 v16, p14

    #@22
    move-object/from16 v17, p15

    #@24
    move-object/from16 v18, p16

    #@26
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/wm/WindowManagerService;->relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    #@29
    move-result v19

    #@2a
    .line 221
    .local v19, "res":I
    return v19
.end method

.method public remove(Landroid/view/IWindow;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    #@5
    .line 192
    return-void
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .locals 8
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    #@0
    .prologue
    .line 381
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v1

    #@4
    .line 386
    .local v1, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@8
    monitor-enter v5

    #@9
    .line 387
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    move-result-wide v2

    #@d
    .line 389
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@11
    if-nez v4, :cond_0

    #@13
    .line 392
    const-string/jumbo v4, "WindowManager"

    #@16
    const-string/jumbo v6, "Drop result given but no drag in progress"

    #@19
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 415
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    monitor-exit v5

    #@20
    .line 393
    return-void

    #@21
    .line 396
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@23
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@25
    iget-object v4, v4, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    #@27
    if-eq v4, v1, :cond_1

    #@29
    .line 398
    const-string/jumbo v4, "WindowManager"

    #@2c
    new-instance v6, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v7, "Invalid drop-result claim by "

    #@34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 399
    new-instance v4, Ljava/lang/IllegalStateException;

    #@45
    const-string/jumbo v6, "reportDropResult() by non-recipient"

    #@48
    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4c
    .line 414
    :catchall_0
    move-exception v4

    #@4d
    .line 415
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@50
    .line 414
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@51
    .line 386
    .end local v2    # "ident":J
    :catchall_1
    move-exception v4

    #@52
    monitor-exit v5

    #@53
    throw v4

    #@54
    .line 405
    .restart local v2    # "ident":J
    :cond_1
    :try_start_5
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@56
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@58
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@5b
    move-result-object v6

    #@5c
    const/16 v7, 0x15

    #@5e
    invoke-virtual {v4, v7, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    #@61
    .line 406
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@63
    const/4 v6, 0x0

    #@64
    const/4 v7, 0x0

    #@65
    invoke-virtual {v4, v6, p1, v7}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    #@68
    move-result-object v0

    #@69
    .line 407
    .local v0, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_2

    #@6b
    .line 408
    const-string/jumbo v4, "WindowManager"

    #@6e
    new-instance v6, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v7, "Bad result-reporting window "

    #@76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v6

    #@82
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@85
    .line 415
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@88
    monitor-exit v5

    #@89
    .line 409
    return-void

    #@8a
    .line 412
    :cond_2
    :try_start_7
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8c
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@8e
    iput-boolean p2, v4, Lcom/android/server/wm/DragState;->mDragResult:Z

    #@90
    .line 413
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@92
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@94
    invoke-virtual {v4}, Lcom/android/server/wm/DragState;->endDragLw()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@97
    .line 415
    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@9a
    monitor-exit v5

    #@9b
    .line 380
    return-void
.end method

.method public repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V
    .locals 12
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "deferTransactionUntilFrame"    # J
    .param p8, "outFrame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    move-object v2, p0

    #@3
    move-object v3, p1

    #@4
    move v4, p2

    #@5
    move v5, p3

    #@6
    move/from16 v6, p4

    #@8
    move/from16 v7, p5

    #@a
    move-wide/from16 v8, p6

    #@c
    move-object/from16 v10, p8

    #@e
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/WindowManagerService;->repositionChild(Lcom/android/server/wm/Session;Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V

    #@11
    .line 198
    return-void
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 11
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    #@0
    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v10

    #@5
    .line 494
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    move-result-wide v8

    #@9
    .line 496
    .local v8, "ident":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@d
    .line 497
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f
    const/4 v2, 0x1

    #@10
    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    #@13
    move-result-object v1

    #@14
    move-object v2, p2

    #@15
    move v3, p3

    #@16
    move v4, p4

    #@17
    move/from16 v5, p5

    #@19
    move-object/from16 v6, p6

    #@1b
    move/from16 v7, p7

    #@1d
    .line 496
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result-object v0

    #@21
    .line 500
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@24
    monitor-exit v10

    #@25
    .line 496
    return-object v0

    #@26
    .line 499
    :catchall_0
    move-exception v0

    #@27
    .line 500
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 499
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2b
    .line 493
    .end local v8    # "ident":J
    :catchall_1
    move-exception v0

    #@2c
    monitor-exit v10

    #@2d
    throw v0
.end method

.method public setInTouchMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7
    iput-boolean p1, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 252
    return-void

    #@b
    .line 253
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .locals 7
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "touchableInsets"    # I
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "touchableArea"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    move-object v6, p5

    #@8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    #@b
    .line 237
    return-void
.end method

.method public setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    #@5
    .line 232
    return-void
.end method

.method public setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .locals 6
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    #@0
    .prologue
    .line 480
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v3

    #@5
    .line 481
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    move-result-wide v0

    #@9
    .line 483
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@d
    .line 484
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f
    const/4 v5, 0x1

    #@10
    invoke-virtual {v4, p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    #@13
    move-result-object v4

    #@14
    .line 483
    invoke-virtual {v2, v4, p2, p3}, Lcom/android/server/wm/WallpaperController;->setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    .line 486
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1a
    monitor-exit v3

    #@1b
    .line 479
    return-void

    #@1c
    .line 485
    :catchall_0
    move-exception v2

    #@1d
    .line 486
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 485
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@21
    .line 480
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .locals 9
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xStep"    # F
    .param p5, "yStep"    # F

    #@0
    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v8

    #@5
    .line 462
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    move-result-wide v6

    #@9
    .line 464
    .local v6, "ident":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@d
    .line 465
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f
    const/4 v2, 0x1

    #@10
    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    #@13
    move-result-object v1

    #@14
    move v2, p2

    #@15
    move v3, p3

    #@16
    move v4, p4

    #@17
    move v5, p5

    #@18
    .line 464
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WallpaperController;->setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 468
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1e
    monitor-exit v8

    #@1f
    .line 460
    return-void

    #@20
    .line 467
    :catchall_0
    move-exception v0

    #@21
    .line 468
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 467
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@25
    .line 461
    .end local v6    # "ident":J
    :catchall_1
    move-exception v0

    #@26
    monitor-exit v8

    #@27
    throw v0
.end method

.method public startMovingTask(Landroid/view/IWindow;FF)Z
    .locals 3
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "startX"    # F
    .param p3, "startY"    # F

    #@0
    .prologue
    .line 372
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 374
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->startMovingTask(Landroid/view/IWindow;FF)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v2

    #@a
    .line 376
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 374
    return v2

    #@e
    .line 375
    :catchall_0
    move-exception v2

    #@f
    .line 376
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 375
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public updatePointerIcon(Landroid/view/IWindow;)V
    .locals 3
    .param p1, "window"    # Landroid/view/IWindow;

    #@0
    .prologue
    .line 538
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 540
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->updatePointerIcon(Landroid/view/IWindow;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 542
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c
    .line 537
    return-void

    #@d
    .line 541
    :catchall_0
    move-exception v2

    #@e
    .line 542
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 541
    throw v2
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@9
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController;->wallpaperCommandComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 505
    return-void

    #@e
    .line 506
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "window"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@9
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 473
    return-void

    #@e
    .line 474
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method windowAddedLocked()V
    .locals 2

    #@0
    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 550
    new-instance v0, Landroid/view/SurfaceSession;

    #@6
    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    #@b
    .line 553
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    #@f
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@12
    .line 554
    iget v0, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    #@14
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@16
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    #@19
    move-result v1

    #@1a
    cmpl-float v0, v0, v1

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 555
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    #@20
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    #@23
    .line 558
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    #@29
    .line 546
    return-void
.end method

.method windowRemovedLocked()V
    .locals 1

    #@0
    .prologue
    .line 562
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    #@6
    .line 563
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    #@9
    .line 561
    return-void
.end method
