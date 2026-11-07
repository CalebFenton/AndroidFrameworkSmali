.class Landroid/accounts/AccountManager$23;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->finishSessionAsUser(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/UserHandle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;

.field final synthetic blacklist val$activity:Landroid/app/Activity;

.field final synthetic blacklist val$appInfo:Landroid/os/Bundle;

.field final synthetic blacklist val$sessionBundle:Landroid/os/Bundle;

.field final synthetic blacklist val$userHandle:Landroid/os/UserHandle;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 9
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 3355
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$23;->this$0:Landroid/accounts/AccountManager;

    iput-object p5, p0, Landroid/accounts/AccountManager$23;->val$sessionBundle:Landroid/os/Bundle;

    iput-object p6, p0, Landroid/accounts/AccountManager$23;->val$activity:Landroid/app/Activity;

    iput-object p7, p0, Landroid/accounts/AccountManager$23;->val$appInfo:Landroid/os/Bundle;

    iput-object p8, p0, Landroid/accounts/AccountManager$23;->val$userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist doWork()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3358
    iget-object v0, p0, Landroid/accounts/AccountManager$23;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-$$Nest$fgetmService(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/AccountManager$23;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v3, p0, Landroid/accounts/AccountManager$23;->val$sessionBundle:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/accounts/AccountManager$23;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    move v4, v0

    iget-object v5, p0, Landroid/accounts/AccountManager$23;->val$appInfo:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/accounts/AccountManager$23;->val$userHandle:Landroid/os/UserHandle;

    .line 3363
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 3358
    invoke-interface/range {v1 .. v6}, Landroid/accounts/IAccountManager;->finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V

    .line 3364
    return-void
.end method
