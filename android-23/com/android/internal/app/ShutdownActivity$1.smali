.class Lcom/android/internal/app/ShutdownActivity$1;
.super Ljava/lang/Thread;
.source "ShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ShutdownActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ShutdownActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ShutdownActivity;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    #@2
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 47
    const-string/jumbo v2, "power"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    .line 46
    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    #@a
    move-result-object v1

    #@b
    .line 49
    .local v1, "pm":Landroid/os/IPowerManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    #@d
    invoke-static {v2}, Lcom/android/internal/app/ShutdownActivity;->-get1(Lcom/android/internal/app/ShutdownActivity;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 50
    iget-object v2, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    #@15
    invoke-static {v2}, Lcom/android/internal/app/ShutdownActivity;->-get0(Lcom/android/internal/app/ShutdownActivity;)Z

    #@18
    move-result v2

    #@19
    const/4 v3, 0x0

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    #@1e
    .line 45
    :goto_0
    return-void

    #@1f
    .line 52
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    #@21
    invoke-static {v2}, Lcom/android/internal/app/ShutdownActivity;->-get0(Lcom/android/internal/app/ShutdownActivity;)Z

    #@24
    move-result v2

    #@25
    const/4 v3, 0x0

    #@26
    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    goto :goto_0

    #@2a
    .line 54
    :catch_0
    move-exception v0

    #@2b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
