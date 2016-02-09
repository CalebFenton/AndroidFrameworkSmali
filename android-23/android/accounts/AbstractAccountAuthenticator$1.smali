.class Landroid/accounts/AbstractAccountAuthenticator$1;
.super Ljava/lang/Object;
.source "AbstractAccountAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AbstractAccountAuthenticator;->getAccountCredentialsForCloning(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AbstractAccountAuthenticator;

.field final synthetic val$response:Landroid/accounts/AccountAuthenticatorResponse;


# direct methods
.method constructor <init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AccountAuthenticatorResponse;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AbstractAccountAuthenticator;
    .param p2, "val$response"    # Landroid/accounts/AccountAuthenticatorResponse;

    #@0
    .prologue
    .line 570
    iput-object p1, p0, Landroid/accounts/AbstractAccountAuthenticator$1;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@2
    iput-object p2, p0, Landroid/accounts/AbstractAccountAuthenticator$1;->val$response:Landroid/accounts/AccountAuthenticatorResponse;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 573
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 574
    .local v0, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "booleanResult"

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c
    .line 575
    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$1;->val$response:Landroid/accounts/AccountAuthenticatorResponse;

    #@e
    invoke-virtual {v1, v0}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    #@11
    .line 572
    return-void
.end method
