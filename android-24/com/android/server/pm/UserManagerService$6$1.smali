.class Lcom/android/server/pm/UserManagerService$6$1;
.super Ljava/lang/Thread;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/UserManagerService$6;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService$6;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/UserManagerService$6;
    .param p2, "val$userHandle"    # I

    #@0
    .prologue
    .line 2481
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$6$1;->this$1:Lcom/android/server/pm/UserManagerService$6;

    #@2
    iput p2, p0, Lcom/android/server/pm/UserManagerService$6$1;->val$userHandle:I

    #@4
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 2485
    const-class v0, Landroid/app/ActivityManagerInternal;

    #@2
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityManagerInternal;

    #@8
    .line 2486
    iget v1, p0, Lcom/android/server/pm/UserManagerService$6$1;->val$userHandle:I

    #@a
    .line 2485
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->onUserRemoved(I)V

    #@d
    .line 2487
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$6$1;->this$1:Lcom/android/server/pm/UserManagerService$6;

    #@f
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    #@11
    iget v1, p0, Lcom/android/server/pm/UserManagerService$6$1;->val$userHandle:I

    #@13
    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->-wrap5(Lcom/android/server/pm/UserManagerService;I)V

    #@16
    .line 2483
    return-void
.end method
