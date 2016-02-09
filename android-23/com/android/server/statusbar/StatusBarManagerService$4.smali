.class Lcom/android/server/statusbar/StatusBarManagerService$4;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$backDisposition:I

.field final synthetic val$showImeSwitcher:Z

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/os/IBinder;IIZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "val$token"    # Landroid/os/IBinder;
    .param p3, "val$vis"    # I
    .param p4, "val$backDisposition"    # I
    .param p5, "val$showImeSwitcher"    # Z

    #@0
    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->val$token:Landroid/os/IBinder;

    #@4
    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->val$vis:I

    #@6
    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->val$backDisposition:I

    #@8
    iput-boolean p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->val$showImeSwitcher:Z

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    #@a
    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->val$token:Landroid/os/IBinder;

    #@10
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->val$vis:I

    #@12
    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->val$backDisposition:I

    #@14
    iget-boolean v5, p0, Lcom/android/server/statusbar/StatusBarManagerService$4;->val$showImeSwitcher:Z

    #@16
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 406
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 410
    :catch_0
    move-exception v0

    #@1b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
