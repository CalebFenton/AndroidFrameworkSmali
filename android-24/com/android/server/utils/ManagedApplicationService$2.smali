.class Lcom/android/server/utils/ManagedApplicationService$2;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/utils/ManagedApplicationService;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/ManagedApplicationService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/utils/ManagedApplicationService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/utils/ManagedApplicationService;
    .param p2, "val$intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@2
    iput-object p2, p0, Lcom/android/server/utils/ManagedApplicationService$2;->val$intent:Landroid/content/Intent;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 202
    const/4 v2, 0x0

    #@1
    .line 203
    .local v2, "iface":Landroid/os/IInterface;
    const/4 v3, 0x0

    #@2
    .line 204
    .local v3, "pendingEvent":Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@4
    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get5(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    #@7
    move-result-object v5

    #@8
    monitor-enter v5

    #@9
    .line 205
    :try_start_0
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@b
    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get6(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;

    #@e
    move-result-object v4

    #@f
    if-ne v4, p0, :cond_2

    #@11
    .line 207
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@13
    const/4 v6, 0x0

    #@14
    invoke-static {v4, v6}, Lcom/android/server/utils/ManagedApplicationService;->-set2(Lcom/android/server/utils/ManagedApplicationService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    #@17
    .line 208
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@19
    invoke-static {v4, p0}, Lcom/android/server/utils/ManagedApplicationService;->-set1(Lcom/android/server/utils/ManagedApplicationService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 216
    :try_start_1
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@1e
    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get4(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IBinder$DeathRecipient;

    #@21
    move-result-object v4

    #@22
    const/4 v6, 0x0

    #@23
    invoke-interface {p2, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@26
    .line 217
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@28
    iget-object v6, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@2a
    invoke-static {v6}, Lcom/android/server/utils/ManagedApplicationService;->-get2(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    #@2d
    move-result-object v6

    #@2e
    invoke-interface {v6, p2}, Lcom/android/server/utils/ManagedApplicationService$BinderChecker;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    #@31
    move-result-object v6

    #@32
    invoke-static {v4, v6}, Lcom/android/server/utils/ManagedApplicationService;->-set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    #@35
    .line 218
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@37
    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get2(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    #@3a
    move-result-object v4

    #@3b
    iget-object v6, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@3d
    invoke-static {v6}, Lcom/android/server/utils/ManagedApplicationService;->-get1(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;

    #@40
    move-result-object v6

    #@41
    invoke-interface {v4, v6}, Lcom/android/server/utils/ManagedApplicationService$BinderChecker;->checkType(Landroid/os/IInterface;)Z

    #@44
    move-result v4

    #@45
    if-nez v4, :cond_0

    #@47
    .line 220
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@49
    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get3(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/Context;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@50
    .line 221
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@52
    const/4 v6, 0x0

    #@53
    invoke-static {v4, v6}, Lcom/android/server/utils/ManagedApplicationService;->-set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    #@56
    .line 223
    :cond_0
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@58
    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get1(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;

    #@5b
    move-result-object v2

    #@5c
    .line 224
    .local v2, "iface":Landroid/os/IInterface;
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@5e
    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get7(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    #@61
    move-result-object v3

    #@62
    .line 225
    .local v3, "pendingEvent":Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@64
    const/4 v6, 0x0

    #@65
    invoke-static {v4, v6}, Lcom/android/server/utils/ManagedApplicationService;->-set3(Lcom/android/server/utils/ManagedApplicationService;Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    .end local v2    # "iface":Landroid/os/IInterface;
    .end local v3    # "pendingEvent":Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    :goto_0
    monitor-exit v5

    #@69
    .line 232
    if-eqz v2, :cond_1

    #@6b
    if-eqz v3, :cond_1

    #@6d
    .line 234
    :try_start_2
    invoke-interface {v3, v2}, Lcom/android/server/utils/ManagedApplicationService$PendingEvent;->runEvent(Landroid/os/IInterface;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@70
    .line 201
    :cond_1
    :goto_1
    return-void

    #@71
    .line 211
    .local v2, "iface":Landroid/os/IInterface;
    .local v3, "pendingEvent":Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@73
    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get3(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/Context;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7a
    monitor-exit v5

    #@7b
    .line 212
    return-void

    #@7c
    .line 226
    .end local v2    # "iface":Landroid/os/IInterface;
    .end local v3    # "pendingEvent":Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    :catch_0
    move-exception v0

    #@7d
    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@7f
    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    new-instance v6, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v7, "Unable to bind service: "

    #@8b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    iget-object v7, p0, Lcom/android/server/utils/ManagedApplicationService$2;->val$intent:Landroid/content/Intent;

    #@91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v6

    #@95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v6

    #@99
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9c
    .line 229
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@9e
    const/4 v6, 0x0

    #@9f
    invoke-static {v4, v6}, Lcom/android/server/utils/ManagedApplicationService;->-set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a2
    goto :goto_0

    #@a3
    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@a4
    monitor-exit v5

    #@a5
    throw v4

    #@a6
    .line 235
    :catch_1
    move-exception v1

    #@a7
    .line 236
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@a9
    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    #@ac
    move-result-object v4

    #@ad
    const-string/jumbo v5, "Received exception from user service: "

    #@b0
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b3
    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 243
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@3
    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->-get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Service disconnected: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$2;->val$intent:Landroid/content/Intent;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 244
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@22
    invoke-static {v0, v3}, Lcom/android/server/utils/ManagedApplicationService;->-set1(Lcom/android/server/utils/ManagedApplicationService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    #@25
    .line 245
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    #@27
    invoke-static {v0, v3}, Lcom/android/server/utils/ManagedApplicationService;->-set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    #@2a
    .line 242
    return-void
.end method
