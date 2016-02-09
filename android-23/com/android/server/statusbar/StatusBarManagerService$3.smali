.class Lcom/android/server/statusbar/StatusBarManagerService$3;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->topAppWindowChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$menuVisible:Z


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "val$menuVisible"    # Z

    #@0
    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2
    iput-boolean p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$menuVisible:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 377
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    #@a
    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    #@d
    move-result-object v1

    #@e
    iget-boolean v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$menuVisible:Z

    #@10
    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->topAppWindowChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 376
    :cond_0
    :goto_0
    return-void

    #@14
    .line 380
    :catch_0
    move-exception v0

    #@15
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
