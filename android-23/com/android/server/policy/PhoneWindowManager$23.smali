.class Lcom/android/server/policy/PhoneWindowManager$23;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$needsMenu:Z

.field final synthetic val$visibility:I

.field final synthetic val$win:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;ILandroid/view/WindowManagerPolicy$WindowState;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "val$visibility"    # I
    .param p3, "val$win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "val$needsMenu"    # Z

    #@0
    .prologue
    .line 6593
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$visibility:I

    #@4
    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    #@6
    iput-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$needsMenu:Z

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 6597
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@3
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@6
    move-result-object v1

    #@7
    .line 6598
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@9
    .line 6599
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$visibility:I

    #@b
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    #@d
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    const/4 v4, -0x1

    #@12
    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(IILjava/lang/String;)V

    #@15
    .line 6600
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$needsMenu:Z

    #@17
    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 6595
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 6602
    :catch_0
    move-exception v0

    #@1c
    .line 6604
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@1e
    iput-object v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@20
    goto :goto_0
.end method
