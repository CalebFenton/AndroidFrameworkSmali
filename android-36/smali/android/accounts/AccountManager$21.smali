.class Landroid/accounts/AccountManager$21;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->startAddAccountSession(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;

.field final synthetic blacklist val$accountType:Ljava/lang/String;

.field final synthetic blacklist val$activity:Landroid/app/Activity;

.field final synthetic blacklist val$authTokenType:Ljava/lang/String;

.field final synthetic blacklist val$optionsIn:Landroid/os/Bundle;

.field final synthetic blacklist val$requiredFeatures:[Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 10
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
            null,
            null
        }
    .end annotation

    .line 3176
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$21;->this$0:Landroid/accounts/AccountManager;

    iput-object p5, p0, Landroid/accounts/AccountManager$21;->val$accountType:Ljava/lang/String;

    iput-object p6, p0, Landroid/accounts/AccountManager$21;->val$authTokenType:Ljava/lang/String;

    iput-object p7, p0, Landroid/accounts/AccountManager$21;->val$requiredFeatures:[Ljava/lang/String;

    iput-object p8, p0, Landroid/accounts/AccountManager$21;->val$activity:Landroid/app/Activity;

    iput-object p9, p0, Landroid/accounts/AccountManager$21;->val$optionsIn:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist doWork()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3179
    iget-object v0, p0, Landroid/accounts/AccountManager$21;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-$$Nest$fgetmService(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/AccountManager$21;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v3, p0, Landroid/accounts/AccountManager$21;->val$accountType:Ljava/lang/String;

    iget-object v4, p0, Landroid/accounts/AccountManager$21;->val$authTokenType:Ljava/lang/String;

    iget-object v5, p0, Landroid/accounts/AccountManager$21;->val$requiredFeatures:[Ljava/lang/String;

    iget-object v0, p0, Landroid/accounts/AccountManager$21;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    move v6, v0

    iget-object v7, p0, Landroid/accounts/AccountManager$21;->val$optionsIn:Landroid/os/Bundle;

    invoke-interface/range {v1 .. v7}, Landroid/accounts/IAccountManager;->startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 3186
    return-void
.end method
