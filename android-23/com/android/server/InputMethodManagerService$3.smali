.class Lcom/android/server/InputMethodManagerService$3;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    #@0
    .prologue
    .line 814
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$3;->this$0:Lcom/android/server/InputMethodManagerService;

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
    .line 833
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
    .line 829
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 3
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    #@0
    .prologue
    .line 817
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$3;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2
    iget-object v2, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@4
    monitor-enter v2

    #@5
    .line 818
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$3;->this$0:Lcom/android/server/InputMethodManagerService;

    #@7
    invoke-static {v1, p1}, Lcom/android/server/InputMethodManagerService;->-wrap4(Lcom/android/server/InputMethodManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v2

    #@b
    .line 820
    if-eqz p2, :cond_0

    #@d
    .line 822
    const/4 v1, 0x0

    #@e
    :try_start_1
    invoke-interface {p2, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@11
    .line 816
    :cond_0
    :goto_0
    return-void

    #@12
    .line 817
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1

    #@15
    .line 823
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
