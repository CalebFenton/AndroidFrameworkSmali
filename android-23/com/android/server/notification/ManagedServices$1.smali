.class Lcom/android/server/notification/ManagedServices$1;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mService:Landroid/os/IInterface;

.field final synthetic this$0:Lcom/android/server/notification/ManagedServices;

.field final synthetic val$servicesBindingTag:Ljava/lang/String;

.field final synthetic val$targetSdkVersion:I

.field final synthetic val$userid:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/ManagedServices;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ManagedServices;
    .param p2, "val$servicesBindingTag"    # Ljava/lang/String;
    .param p3, "val$userid"    # I
    .param p4, "val$targetSdkVersion"    # I

    #@0
    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    #@2
    iput-object p2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    #@6
    iput p4, p0, Lcom/android/server/notification/ManagedServices$1;->val$targetSdkVersion:I

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 478
    const/4 v7, 0x0

    #@1
    .line 479
    .local v7, "added":Z
    const/4 v9, 0x0

    #@2
    .line 480
    .local v9, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    #@4
    iget-object v10, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    #@6
    monitor-enter v10

    #@7
    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    #@9
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-get2(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 483
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    #@14
    invoke-virtual {v0, p2}, Lcom/android/server/notification/ManagedServices;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->mService:Landroid/os/IInterface;

    #@1a
    .line 484
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    #@1c
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->mService:Landroid/os/IInterface;

    #@1e
    .line 485
    iget v3, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    #@20
    iget v6, p0, Lcom/android/server/notification/ManagedServices$1;->val$targetSdkVersion:I

    #@22
    const/4 v4, 0x0

    #@23
    move-object v2, p1

    #@24
    move-object v5, p0

    #@25
    .line 484
    invoke-static/range {v0 .. v6}, Lcom/android/server/notification/ManagedServices;->-wrap0(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@28
    move-result-object v9

    #@29
    .line 486
    .local v9, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    const/4 v0, 0x0

    #@2a
    invoke-interface {p2, v9, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@2d
    .line 487
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    #@2f
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    move-result v7

    #@35
    .end local v7    # "added":Z
    .end local v9    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :goto_0
    monitor-exit v10

    #@36
    .line 492
    if-eqz v7, :cond_0

    #@38
    .line 493
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    #@3a
    invoke-virtual {v0, v9}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    #@3d
    .line 477
    :cond_0
    return-void

    #@3e
    .line 480
    .restart local v7    # "added":Z
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit v10

    #@40
    throw v0

    #@41
    .line 488
    :catch_0
    move-exception v8

    #@42
    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    #@2
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    #@b
    invoke-static {v2}, Lcom/android/server/notification/ManagedServices;->-wrap2(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, " connection lost: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 498
    return-void
.end method
