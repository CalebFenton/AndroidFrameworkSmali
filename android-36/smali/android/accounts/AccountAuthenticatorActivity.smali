.class public Landroid/accounts/AccountAuthenticatorActivity;
.super Landroid/app/Activity;
.source "AccountAuthenticatorActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

.field private greylist-max-o mResultBundle:Landroid/os/Bundle;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 42
    iput-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist finish()V
    .registers 4

    .line 74
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_1b

    .line 76
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_10

    .line 77
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    iget-object v1, p0, Landroid/accounts/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    goto :goto_18

    .line 79
    :cond_10
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 82
    :goto_18
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 84
    :cond_1b
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 85
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    nop

    .line 63
    invoke-virtual {p0}, Landroid/accounts/AccountAuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountAuthenticatorResponse"

    const-class v2, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 65
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_1d

    .line 66
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v0}, Landroid/accounts/AccountAuthenticatorResponse;->onRequestContinued()V

    .line 68
    :cond_1d
    return-void
.end method

.method public final whitelist setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Bundle;

    .line 51
    iput-object p1, p0, Landroid/accounts/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    .line 52
    return-void
.end method
