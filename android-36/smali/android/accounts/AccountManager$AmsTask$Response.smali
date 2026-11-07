.class Landroid/accounts/AccountManager$AmsTask$Response;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager$AmsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Response"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/accounts/AccountManager$AmsTask;


# direct methods
.method private constructor blacklist <init>(Landroid/accounts/AccountManager$AmsTask;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2441
    iput-object p1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/accounts/AccountManager$AmsTask;Landroid/accounts/AccountManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accounts/AccountManager$AmsTask$Response;-><init>(Landroid/accounts/AccountManager$AmsTask;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onError(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 2467
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x65

    if-ne p1, v0, :cond_c

    goto :goto_1a

    .line 2474
    :cond_c
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v1, p1, p2}, Landroid/accounts/AccountManager;->-$$Nest$mconvertErrorToException(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    # invokes: Landroid/accounts/AccountManager$AmsTask;->setException(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Landroid/accounts/AccountManager$AmsTask;->access$000(Landroid/accounts/AccountManager$AmsTask;Ljava/lang/Throwable;)V

    .line 2475
    return-void

    .line 2471
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    .line 2472
    return-void
.end method

.method public greylist-max-o onResult(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2444
    if-nez p1, :cond_a

    .line 2445
    const/4 v0, 0x5

    const-string/jumbo v1, "null bundle returned"

    invoke-virtual {p0, v0, v1}, Landroid/accounts/AccountManager$AmsTask$Response;->onError(ILjava/lang/String;)V

    .line 2446
    return-void

    .line 2448
    :cond_a
    const-string/jumbo v0, "intent"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 2449
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_25

    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_25

    .line 2452
    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3f

    .line 2454
    :cond_25
    const-string/jumbo v1, "retry"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 2456
    :try_start_2e
    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-virtual {v1}, Landroid/accounts/AccountManager$AmsTask;->doWork()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_34

    .line 2459
    goto :goto_3f

    .line 2457
    :catch_34
    move-exception v1

    .line 2458
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2461
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3a
    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager$AmsTask;->set(Landroid/os/Bundle;)V

    .line 2463
    :goto_3f
    return-void
.end method
