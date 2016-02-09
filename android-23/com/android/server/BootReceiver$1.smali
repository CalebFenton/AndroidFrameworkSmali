.class Lcom/android/server/BootReceiver$1;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BootReceiver;
    .param p2, "val$context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    #@2
    iput-object p2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    #@4
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 70
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    #@2
    iget-object v4, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    #@4
    invoke-static {v3, v4}, Lcom/android/server/BootReceiver;->-wrap1(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 75
    :goto_0
    const/4 v2, 0x0

    #@8
    .line 78
    .local v2, "onlyCore":Z
    :try_start_1
    const-string/jumbo v3, "package"

    #@b
    .line 77
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@e
    move-result-object v3

    #@f
    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@16
    move-result v2

    #@17
    .line 81
    .end local v2    # "onlyCore":Z
    :goto_1
    if-nez v2, :cond_0

    #@19
    .line 82
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    #@1b
    iget-object v4, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    #@1d
    invoke-static {v3, v4}, Lcom/android/server/BootReceiver;->-wrap2(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@20
    .line 68
    :cond_0
    :goto_2
    return-void

    #@21
    .line 71
    :catch_0
    move-exception v1

    #@22
    .line 72
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BootReceiver"

    #@25
    const-string/jumbo v4, "Can\'t log boot events"

    #@28
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_0

    #@2c
    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@2d
    .line 85
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BootReceiver"

    #@30
    const-string/jumbo v4, "Can\'t remove old update packages"

    #@33
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    goto :goto_2

    #@37
    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "onlyCore":Z
    :catch_2
    move-exception v0

    #@38
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method
