.class Lcom/android/server/pm/UserManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->finishRemoveUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "val$userHandle"    # I

    #@0
    .prologue
    .line 1468
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    iput p2, p0, Lcom/android/server/pm/UserManagerService$2;->val$userHandle:I

    #@4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1476
    new-instance v0, Lcom/android/server/pm/UserManagerService$2$1;

    #@2
    iget v1, p0, Lcom/android/server/pm/UserManagerService$2;->val$userHandle:I

    #@4
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$2$1;-><init>(Lcom/android/server/pm/UserManagerService$2;I)V

    #@7
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$2$1;->start()V

    #@a
    .line 1470
    return-void
.end method
