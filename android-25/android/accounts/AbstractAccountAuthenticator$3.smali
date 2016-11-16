.class Landroid/accounts/AbstractAccountAuthenticator$3;
.super Ljava/lang/Object;
.source "AbstractAccountAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AbstractAccountAuthenticator;->startAddAccountSession(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AbstractAccountAuthenticator;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$requiredFeatures:[Ljava/lang/String;

.field final synthetic val$response:Landroid/accounts/AccountAuthenticatorResponse;


# direct methods
.method constructor <init>(Landroid/accounts/AbstractAccountAuthenticator;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/accounts/AccountAuthenticatorResponse;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AbstractAccountAuthenticator;
    .param p2, "val$authTokenType"    # Ljava/lang/String;
    .param p3, "val$requiredFeatures"    # [Ljava/lang/String;
    .param p4, "val$options"    # Landroid/os/Bundle;
    .param p5, "val$response"    # Landroid/accounts/AccountAuthenticatorResponse;

    #@0
    .prologue
    .line 795
    iput-object p1, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@2
    iput-object p2, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$authTokenType:Ljava/lang/String;

    #@4
    iput-object p3, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$requiredFeatures:[Ljava/lang/String;

    #@6
    iput-object p4, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$options:Landroid/os/Bundle;

    #@8
    iput-object p5, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$response:Landroid/accounts/AccountAuthenticatorResponse;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 798
    new-instance v1, Landroid/os/Bundle;

    #@2
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 799
    .local v1, "sessionBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "android.accounts.AbstractAccountAuthenticato.KEY_AUTH_TOKEN_TYPE"

    #@8
    iget-object v3, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$authTokenType:Ljava/lang/String;

    #@a
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 800
    const-string/jumbo v2, "android.accounts.AbstractAccountAuthenticator.KEY_REQUIRED_FEATURES"

    #@10
    iget-object v3, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$requiredFeatures:[Ljava/lang/String;

    #@12
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@15
    .line 801
    const-string/jumbo v2, "android.accounts.AbstractAccountAuthenticator.KEY_OPTIONS"

    #@18
    iget-object v3, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$options:Landroid/os/Bundle;

    #@1a
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1d
    .line 802
    new-instance v0, Landroid/os/Bundle;

    #@1f
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@22
    .line 803
    .local v0, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "accountSessionBundle"

    #@25
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@28
    .line 804
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$response:Landroid/accounts/AccountAuthenticatorResponse;

    #@2a
    invoke-virtual {v2, v0}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    #@2d
    .line 797
    return-void
.end method
