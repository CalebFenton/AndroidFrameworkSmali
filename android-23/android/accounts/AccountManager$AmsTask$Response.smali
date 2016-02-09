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
.field final synthetic this$1:Landroid/accounts/AccountManager$AmsTask;


# direct methods
.method private constructor <init>(Landroid/accounts/AccountManager$AmsTask;)V
    .locals 0
    .param p1, "this$1"    # Landroid/accounts/AccountManager$AmsTask;

    #@0
    .prologue
    .line 1962
    iput-object p1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    #@2
    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/accounts/AccountManager$AmsTask;Landroid/accounts/AccountManager$AmsTask$Response;)V
    .locals 0
    .param p1, "this$1"    # Landroid/accounts/AccountManager$AmsTask;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/accounts/AccountManager$AmsTask$Response;-><init>(Landroid/accounts/AccountManager$AmsTask;)V

    #@3
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1983
    const/4 v0, 0x4

    #@1
    if-eq p1, v0, :cond_0

    #@3
    const/16 v0, 0x64

    #@5
    if-ne p1, v0, :cond_1

    #@7
    .line 1987
    :cond_0
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    #@9
    const/4 v1, 0x1

    #@a
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    #@d
    .line 1988
    return-void

    #@e
    .line 1984
    :cond_1
    const/16 v0, 0x65

    #@10
    if-eq p1, v0, :cond_0

    #@12
    .line 1990
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    #@14
    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    #@16
    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    #@18
    invoke-static {v1, p1, p2}, Landroid/accounts/AccountManager;->-wrap0(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/accounts/AccountManager$AmsTask;->-wrap0(Landroid/accounts/AccountManager$AmsTask;Ljava/lang/Throwable;)V

    #@1f
    .line 1982
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1964
    const-string/jumbo v2, "intent"

    #@3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/content/Intent;

    #@9
    .line 1965
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    #@b
    iget-object v2, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    #@d
    iget-object v2, v2, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 1968
    iget-object v2, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    #@13
    iget-object v2, v2, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    #@15
    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@18
    .line 1963
    :goto_0
    return-void

    #@19
    .line 1970
    :cond_0
    const-string/jumbo v2, "retry"

    #@1c
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 1972
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    #@24
    invoke-virtual {v2}, Landroid/accounts/AccountManager$AmsTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    goto :goto_0

    #@28
    .line 1973
    :catch_0
    move-exception v0

    #@29
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@2a
    .line 1978
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    #@2c
    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager$AmsTask;->set(Landroid/os/Bundle;)V

    #@2f
    goto :goto_0
.end method
