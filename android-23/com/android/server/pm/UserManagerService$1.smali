.class Lcom/android/server/pm/UserManagerService$1;
.super Landroid/app/IStopUserCallback$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->removeUser(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    #@0
    .prologue
    .line 1439
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1445
    return-void
.end method

.method public userStopped(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->finishRemoveUser(I)V

    #@5
    .line 1441
    return-void
.end method
