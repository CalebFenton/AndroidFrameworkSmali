.class Lcom/android/server/statusbar/StatusBarManagerService$5;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLocked(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$mask:I

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "val$vis"    # I
    .param p3, "val$mask"    # I

    #@0
    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$vis:I

    #@4
    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$mask:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    #@a
    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    #@d
    move-result-object v1

    #@e
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$vis:I

    #@10
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$mask:I

    #@12
    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar;->setSystemUiVisibility(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 439
    :cond_0
    :goto_0
    return-void

    #@16
    .line 443
    :catch_0
    move-exception v0

    #@17
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
