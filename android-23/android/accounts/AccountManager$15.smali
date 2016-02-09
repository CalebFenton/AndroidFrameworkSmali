.class Landroid/accounts/AccountManager$15;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "this$0_1"    # Landroid/accounts/AccountManager;
    .param p3, "$anonymous0"    # Landroid/app/Activity;
    .param p4, "$anonymous1"    # Landroid/os/Handler;
    .param p6, "val$account"    # Landroid/accounts/Account;
    .param p7, "val$options"    # Landroid/os/Bundle;
    .param p8, "val$activity"    # Landroid/app/Activity;
    .param p9, "val$userId"    # I

    #@0
    .prologue
    .line 1703
    .local p5, "$anonymous2":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p2, p0, Landroid/accounts/AccountManager$15;->this$0:Landroid/accounts/AccountManager;

    #@2
    iput-object p6, p0, Landroid/accounts/AccountManager$15;->val$account:Landroid/accounts/Account;

    #@4
    iput-object p7, p0, Landroid/accounts/AccountManager$15;->val$options:Landroid/os/Bundle;

    #@6
    iput-object p8, p0, Landroid/accounts/AccountManager$15;->val$activity:Landroid/app/Activity;

    #@8
    iput p9, p0, Landroid/accounts/AccountManager$15;->val$userId:I

    #@a
    invoke-direct {p0, p1, p3, p4, p5}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    #@d
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1705
    iget-object v0, p0, Landroid/accounts/AccountManager$15;->this$0:Landroid/accounts/AccountManager;

    #@2
    invoke-static {v0}, Landroid/accounts/AccountManager;->-get2(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/accounts/AccountManager$15;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@8
    iget-object v2, p0, Landroid/accounts/AccountManager$15;->val$account:Landroid/accounts/Account;

    #@a
    iget-object v3, p0, Landroid/accounts/AccountManager$15;->val$options:Landroid/os/Bundle;

    #@c
    iget-object v4, p0, Landroid/accounts/AccountManager$15;->val$activity:Landroid/app/Activity;

    #@e
    if-eqz v4, :cond_0

    #@10
    const/4 v4, 0x1

    #@11
    .line 1706
    :goto_0
    iget v5, p0, Landroid/accounts/AccountManager$15;->val$userId:I

    #@13
    .line 1705
    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountManager;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V

    #@16
    .line 1704
    return-void

    #@17
    .line 1705
    :cond_0
    const/4 v4, 0x0

    #@18
    goto :goto_0
.end method
