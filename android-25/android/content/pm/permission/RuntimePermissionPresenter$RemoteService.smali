.class final Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;
.super Landroid/os/Handler;
.source "RuntimePermissionPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/permission/RuntimePermissionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoteService"
.end annotation


# static fields
.field public static final MSG_GET_APPS_USING_PERMISSIONS:I = 0x2

.field public static final MSG_GET_APP_PERMISSIONS:I = 0x1

.field public static final MSG_UNBIND:I = 0x3

.field private static final UNBIND_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field private mBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingWork:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@9
    .line 161
    new-instance v0, Ljava/lang/Object;

    #@b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e
    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    #@10
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    #@12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@15
    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    #@17
    .line 176
    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    #@19
    .line 174
    return-void
.end method

.method private scheduleNextMessageIfNeededLocked()V
    .locals 3

    #@0
    .prologue
    .line 319
    iget-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    #@a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 318
    :cond_0
    :goto_0
    return-void

    #@11
    .line 320
    :cond_1
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    #@13
    const/4 v2, 0x0

    #@14
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/os/Message;

    #@1a
    .line 321
    .local v0, "nextMessage":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1d
    goto :goto_0
.end method

.method private scheduleUnbind()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 326
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@4
    .line 327
    const-wide/16 v0, 0x2710

    #@6
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@9
    .line 325
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 211
    iget v7, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v7, :pswitch_data_0

    #@5
    .line 313
    :goto_0
    iget-object v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v7

    #@8
    .line 314
    :try_start_0
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    #@b
    monitor-exit v7

    #@c
    .line 210
    return-void

    #@d
    .line 213
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@11
    .line 214
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@13
    check-cast v3, Ljava/lang/String;

    #@15
    .line 215
    .local v3, "packageName":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@17
    check-cast v1, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    #@19
    .line 216
    .local v1, "callback":Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@1b
    check-cast v2, Landroid/os/Handler;

    #@1d
    .line 217
    .local v2, "handler":Landroid/os/Handler;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@20
    .line 219
    iget-object v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    #@22
    monitor-enter v7

    #@23
    .line 220
    :try_start_1
    iget-object v5, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .local v5, "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    monitor-exit v7

    #@26
    .line 222
    if-nez v5, :cond_0

    #@28
    .line 223
    return-void

    #@29
    .line 219
    .end local v5    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :catchall_0
    move-exception v8

    #@2a
    monitor-exit v7

    #@2b
    throw v8

    #@2c
    .line 227
    .restart local v5    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :cond_0
    :try_start_2
    new-instance v7, Landroid/os/RemoteCallback;

    #@2e
    new-instance v8, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;

    #@30
    invoke-direct {v8, p0, v2, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;-><init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;Landroid/os/Handler;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;)V

    #@33
    invoke-direct {v7, v8, p0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    #@36
    .line 226
    invoke-interface {v5, v3, v7}, Landroid/content/pm/permission/IRuntimePermissionPresenter;->getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@39
    .line 254
    :goto_1
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleUnbind()V

    #@3c
    goto :goto_0

    #@3d
    .line 251
    :catch_0
    move-exception v4

    #@3e
    .line 252
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v7, "RuntimePermPresenter"

    #@41
    const-string/jumbo v8, "Error getting app permissions"

    #@44
    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    goto :goto_1

    #@48
    .line 258
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "callback":Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "re":Landroid/os/RemoteException;
    .end local v5    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4a
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@4c
    .line 259
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@4e
    check-cast v1, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    #@50
    .line 260
    .restart local v1    # "callback":Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@52
    check-cast v2, Landroid/os/Handler;

    #@54
    .line 261
    .restart local v2    # "handler":Landroid/os/Handler;
    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@56
    const/4 v8, 0x1

    #@57
    if-ne v7, v8, :cond_1

    #@59
    const/4 v6, 0x1

    #@5a
    .line 262
    .local v6, "system":Z
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@5d
    .line 264
    iget-object v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    #@5f
    monitor-enter v7

    #@60
    .line 265
    :try_start_3
    iget-object v5, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@62
    .restart local v5    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    monitor-exit v7

    #@63
    .line 267
    if-nez v5, :cond_2

    #@65
    .line 268
    return-void

    #@66
    .line 261
    .end local v5    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    .end local v6    # "system":Z
    :cond_1
    const/4 v6, 0x0

    #@67
    .restart local v6    # "system":Z
    goto :goto_2

    #@68
    .line 264
    :catchall_1
    move-exception v8

    #@69
    monitor-exit v7

    #@6a
    throw v8

    #@6b
    .line 271
    .restart local v5    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :cond_2
    :try_start_4
    new-instance v7, Landroid/os/RemoteCallback;

    #@6d
    .line 272
    new-instance v8, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;

    #@6f
    invoke-direct {v8, p0, v2, v1, v6}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;-><init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;Landroid/os/Handler;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;Z)V

    #@72
    .line 271
    invoke-direct {v7, v8, p0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    #@75
    invoke-interface {v5, v6, v7}, Landroid/content/pm/permission/IRuntimePermissionPresenter;->getAppsUsingPermissions(ZLandroid/os/RemoteCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@78
    .line 299
    :goto_3
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleUnbind()V

    #@7b
    goto :goto_0

    #@7c
    .line 296
    :catch_1
    move-exception v4

    #@7d
    .line 297
    .restart local v4    # "re":Landroid/os/RemoteException;
    const-string/jumbo v7, "RuntimePermPresenter"

    #@80
    const-string/jumbo v8, "Error getting apps using permissions"

    #@83
    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@86
    goto :goto_3

    #@87
    .line 303
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "callback":Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v4    # "re":Landroid/os/RemoteException;
    .end local v5    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    .end local v6    # "system":Z
    :pswitch_2
    iget-object v8, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    #@89
    monitor-enter v8

    #@8a
    .line 304
    :try_start_5
    iget-boolean v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    #@8c
    if-eqz v7, :cond_3

    #@8e
    .line 305
    iget-object v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    #@90
    invoke-virtual {v7, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@93
    .line 306
    const/4 v7, 0x0

    #@94
    iput-boolean v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    #@96
    .line 308
    :cond_3
    const/4 v7, 0x0

    #@97
    iput-object v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@99
    monitor-exit v8

    #@9a
    goto/16 :goto_0

    #@9c
    .line 303
    :catchall_2
    move-exception v7

    #@9d
    monitor-exit v8

    #@9e
    throw v7

    #@9f
    .line 313
    :catchall_3
    move-exception v8

    #@a0
    monitor-exit v7

    #@a1
    throw v8

    #@a2
    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 196
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 197
    :try_start_0
    invoke-static {p2}, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/permission/IRuntimePermissionPresenter;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    #@9
    .line 198
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 195
    return-void

    #@e
    .line 196
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 205
    const/4 v1, 0x0

    #@4
    :try_start_0
    iput-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 203
    return-void

    #@8
    .line 204
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public processMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 180
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 181
    :try_start_0
    iget-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 182
    new-instance v0, Landroid/content/Intent;

    #@9
    .line 183
    const-string/jumbo v1, "android.permissionpresenterservice.RuntimePermissionPresenterService"

    #@c
    .line 182
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f
    .line 184
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@1c
    .line 186
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    #@1e
    .line 187
    const/4 v3, 0x1

    #@1f
    .line 186
    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@22
    move-result v1

    #@23
    iput-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    #@25
    .line 189
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    #@27
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    .line 190
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit v2

    #@2e
    .line 179
    return-void

    #@2f
    .line 180
    :catchall_0
    move-exception v1

    #@30
    monitor-exit v2

    #@31
    throw v1
.end method
