.class final Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnPermissionChangeListeners"
.end annotation


# static fields
.field private static final MSG_ON_PERMISSIONS_CHANGED:I = 0x1


# instance fields
.field private final mPermissionListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/pm/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 16469
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    .line 16470
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 16467
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@7
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@a
    .line 16466
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    #@c
    .line 16469
    return-void
.end method

.method private handleOnPermissionsChanged(I)V
    .locals 6
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 16499
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v1

    #@6
    .line 16501
    .local v1, "count":I
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@9
    .line 16502
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/content/pm/IOnPermissionsChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 16505
    .local v0, "callback":Landroid/content/pm/IOnPermissionsChangeListener;
    :try_start_1
    invoke-interface {v0, p1}, Landroid/content/pm/IOnPermissionsChangeListener;->onPermissionsChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    .line 16501
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 16506
    :catch_0
    move-exception v2

    #@18
    .line 16507
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "PackageManager"

    #@1b
    const-string/jumbo v5, "Permission listener is dead"

    #@1e
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    goto :goto_1

    #@22
    .line 16510
    .end local v0    # "callback":Landroid/content/pm/IOnPermissionsChangeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@23
    .line 16511
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    #@25
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@28
    .line 16510
    throw v4

    #@29
    .line 16511
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    #@2b
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@2e
    .line 16498
    return-void
.end method


# virtual methods
.method public addListenerLocked(Landroid/content/pm/IOnPermissionsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/pm/IOnPermissionsChangeListener;

    #@0
    .prologue
    .line 16484
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@5
    .line 16483
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 16475
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 16474
    :goto_0
    return-void

    #@6
    .line 16477
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@8
    .line 16478
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->handleOnPermissionsChanged(I)V

    #@b
    goto :goto_0

    #@c
    .line 16475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPermissionsChanged(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 16493
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    #@3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_0

    #@9
    .line 16494
    const/4 v0, 0x1

    #@a
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->obtainMessage(III)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@11
    .line 16492
    :cond_0
    return-void
.end method

.method public removeListenerLocked(Landroid/content/pm/IOnPermissionsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/pm/IOnPermissionsChangeListener;

    #@0
    .prologue
    .line 16489
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@5
    .line 16488
    return-void
.end method
