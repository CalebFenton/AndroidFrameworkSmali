.class public Landroid/accounts/AccountAuthenticatorActivity;
.super Landroid/app/Activity;
.source "AccountAuthenticatorActivity.java"


# instance fields
.field private mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

.field private mResultBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@4
    .line 37
    iput-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    #@6
    .line 38
    iput-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    #@8
    .line 36
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 70
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 72
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 73
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    #@b
    iget-object v1, p0, Landroid/accounts/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    #@10
    .line 78
    :goto_0
    iput-object v3, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    #@12
    .line 80
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    #@15
    .line 69
    return-void

    #@16
    .line 75
    :cond_1
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    #@18
    .line 76
    const-string/jumbo v1, "canceled"

    #@1b
    .line 75
    const/4 v2, 0x4

    #@1c
    invoke-virtual {v0, v2, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    #@1f
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 59
    invoke-virtual {p0}, Landroid/accounts/AccountAuthenticatorActivity;->getIntent()Landroid/content/Intent;

    #@6
    move-result-object v0

    #@7
    const-string/jumbo v1, "accountAuthenticatorResponse"

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    #@10
    .line 58
    iput-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    #@12
    .line 61
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 62
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    #@18
    invoke-virtual {v0}, Landroid/accounts/AccountAuthenticatorResponse;->onRequestContinued()V

    #@1b
    .line 55
    :cond_0
    return-void
.end method

.method public final setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 47
    iput-object p1, p0, Landroid/accounts/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    #@2
    .line 46
    return-void
.end method
