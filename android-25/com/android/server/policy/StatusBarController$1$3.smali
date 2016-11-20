.class Lcom/android/server/policy/StatusBarController$1$3;
.super Ljava/lang/Object;
.source "StatusBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/StatusBarController$1;->onAppTransitionCancelledLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/StatusBarController$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/StatusBarController$1;

    #@0
    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/policy/StatusBarController$1$3;->this$1:Lcom/android/server/policy/StatusBarController$1;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/server/policy/StatusBarController$1$3;->this$1:Lcom/android/server/policy/StatusBarController$1;

    #@2
    iget-object v1, v1, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    #@4
    invoke-virtual {v1}, Lcom/android/server/policy/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@7
    move-result-object v0

    #@8
    .line 82
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@a
    .line 83
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionCancelled()V

    #@d
    .line 80
    :cond_0
    return-void
.end method
