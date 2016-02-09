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
    .line 180
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
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/BarController$1;->this$0:Lcom/android/server/policy/BarController;

    #@3
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@6
    move-result-object v1

    #@7
    .line 185
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@9
    .line 186
    iget-object v2, p0, Lcom/android/server/policy/BarController$1;->this$0:Lcom/android/server/policy/BarController;

    #@b
    invoke-static {v2}, Lcom/android/server/policy/BarController;->-get0(Lcom/android/server/policy/BarController;)I

    #@e
    move-result v2

    #@f
    iget v3, p0, Lcom/android/server/policy/BarController$1;->val$state:I

    #@11
    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->setWindowState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 182
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    #@15
    .line 188
    :catch_0
    move-exception v0

    #@16
    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/policy/BarController$1;->this$0:Lcom/android/server/policy/BarController;

    #@18
    iput-object v4, v2, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@1a
    goto :goto_0
.end method
