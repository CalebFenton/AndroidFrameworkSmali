.class Lcom/android/server/TextServicesManagerService$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/TextServicesManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TextServicesManagerService;

    #@0
    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    #@2
    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newProfileId"    # I

    #@0
    .prologue
    .line 124
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 3
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    #@0
    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    #@9
    invoke-static {v1, p1}, Lcom/android/server/TextServicesManagerService;->-wrap3(Lcom/android/server/TextServicesManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v2

    #@d
    .line 111
    if-eqz p2, :cond_0

    #@f
    .line 113
    const/4 v1, 0x0

    #@10
    :try_start_1
    invoke-interface {p2, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@13
    .line 107
    :cond_0
    :goto_0
    return-void

    #@14
    .line 108
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1

    #@17
    .line 114
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
