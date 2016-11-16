.class Lcom/android/server/pm/UserManagerService$2;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$effective:Landroid/os/Bundle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "val$effective"    # Landroid/os/Bundle;
    .param p3, "val$userId"    # I

    #@0
    .prologue
    .line 1327
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService$2;->val$effective:Landroid/os/Bundle;

    #@4
    iput p3, p0, Lcom/android/server/pm/UserManagerService$2;->val$userId:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 1331
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get0(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$2;->val$effective:Landroid/os/Bundle;

    #@8
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->-get7()Landroid/os/IBinder;

    #@b
    move-result-object v3

    #@c
    iget v4, p0, Lcom/android/server/pm/UserManagerService$2;->val$userId:I

    #@e
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1329
    :goto_0
    return-void

    #@12
    .line 1332
    :catch_0
    move-exception v0

    #@13
    .line 1333
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UserManagerService"

    #@16
    const-string/jumbo v2, "Unable to notify AppOpsService of UserRestrictions"

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    goto :goto_0
.end method
