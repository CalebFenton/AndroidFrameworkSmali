.class Lcom/android/server/policy/PhoneWindowManager$10;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    #@0
    .prologue
    .line 5362
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 5365
    const-string/jumbo v2, "android.intent.action.DOCK_EVENT"

    #@3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 5366
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@f
    const-string/jumbo v3, "android.intent.extra.DOCK_STATE"

    #@12
    .line 5367
    const/4 v4, 0x0

    #@13
    .line 5366
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@16
    move-result v3

    #@17
    iput v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@19
    .line 5376
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@1b
    const/4 v3, 0x1

    #@1c
    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    #@1f
    .line 5377
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@21
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-get2(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    monitor-enter v3

    #@26
    .line 5378
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@28
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v3

    #@2c
    .line 5364
    return-void

    #@2d
    .line 5371
    :cond_0
    :try_start_1
    const-string/jumbo v2, "uimode"

    #@30
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@33
    move-result-object v2

    #@34
    .line 5370
    invoke-static {v2}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    #@37
    move-result-object v1

    #@38
    .line 5372
    .local v1, "uiModeService":Landroid/app/IUiModeManager;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@3a
    invoke-interface {v1}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    #@3d
    move-result v3

    #@3e
    iput v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@40
    goto :goto_0

    #@41
    .line 5373
    .end local v1    # "uiModeService":Landroid/app/IUiModeManager;
    :catch_0
    move-exception v0

    #@42
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@43
    .line 5377
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@44
    monitor-exit v3

    #@45
    throw v2
.end method
