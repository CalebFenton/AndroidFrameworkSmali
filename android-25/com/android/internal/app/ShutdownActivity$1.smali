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
    .line 46
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
    const/4 v2, 0x0

    #@1
    .line 50
    const-string/jumbo v3, "power"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v3

    #@8
    .line 49
    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    #@b
    move-result-object v1

    #@c
    .line 52
    .local v1, "pm":Landroid/os/IPowerManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    #@e
    invoke-static {v3}, Lcom/android/internal/app/ShutdownActivity;->-get1(Lcom/android/internal/app/ShutdownActivity;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 53
    iget-object v2, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    #@16
    invoke-static {v2}, Lcom/android/internal/app/ShutdownActivity;->-get0(Lcom/android/internal/app/ShutdownActivity;)Z

    #@19
    move-result v2

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    #@1f
    .line 48
    :goto_0
    return-void

    #@20
    .line 55
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    #@22
    invoke-static {v3}, Lcom/android/internal/app/ShutdownActivity;->-get0(Lcom/android/internal/app/ShutdownActivity;)Z

    #@25
    move-result v3

    #@26
    .line 56
    iget-object v4, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    #@28
    invoke-static {v4}, Lcom/android/internal/app/ShutdownActivity;->-get2(Lcom/android/internal/app/ShutdownActivity;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_1

    #@2e
    const-string/jumbo v2, "userrequested"

    #@31
    .line 57
    :cond_1
    const/4 v4, 0x0

    #@32
    .line 55
    invoke-interface {v1, v3, v2, v4}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    goto :goto_0

    #@36
    .line 59
    :catch_0
    move-exception v0

    #@37
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
