.class Lcom/android/server/am/UserController$5;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->finishUserStopping(ILcom/android/server/am/UserState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/UserController;
    .param p2, "val$uss"    # Lcom/android/server/am/UserState;

    #@0
    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/server/am/UserController$5;->this$0:Lcom/android/server/am/UserController;

    #@2
    iput-object p2, p0, Lcom/android/server/am/UserController$5;->val$uss:Lcom/android/server/am/UserState;

    #@4
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    #@0
    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/server/am/UserController$5;->this$0:Lcom/android/server/am/UserController;

    #@2
    invoke-static {v0}, Lcom/android/server/am/UserController;->-get1(Lcom/android/server/am/UserController;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Lcom/android/server/am/UserController$5$1;

    #@8
    iget-object v2, p0, Lcom/android/server/am/UserController$5;->val$uss:Lcom/android/server/am/UserState;

    #@a
    invoke-direct {v1, p0, v2}, Lcom/android/server/am/UserController$5$1;-><init>(Lcom/android/server/am/UserController$5;Lcom/android/server/am/UserState;)V

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@10
    .line 557
    return-void
.end method
