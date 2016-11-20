.class Lcom/android/server/policy/BarController$1;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BarController;->updateStateLw(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BarController;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/BarController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/BarController;
    .param p2, "val$state"    # I

    #@0
    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/server/policy/BarController$1;->this$0:Lcom/android/server/policy/BarController;

    #@2
    iput p2, p0, Lcom/android/server/policy/BarController$1;->val$state:I

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
    .line 189
    iget-object v1, p0, Lcom/android/server/policy/BarController$1;->this$0:Lcom/android/server/policy/BarController;

    #@2
    invoke-virtual {v1}, Lcom/android/server/policy/BarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@5
    move-result-object v0

    #@6
    .line 190
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@8
    .line 191
    iget-object v1, p0, Lcom/android/server/policy/BarController$1;->this$0:Lcom/android/server/policy/BarController;

    #@a
    invoke-static {v1}, Lcom/android/server/policy/BarController;->-get0(Lcom/android/server/policy/BarController;)I

    #@d
    move-result v1

    #@e
    iget v2, p0, Lcom/android/server/policy/BarController$1;->val$state:I

    #@10
    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setWindowState(II)V

    #@13
    .line 188
    :cond_0
    return-void
.end method
