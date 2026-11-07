.class Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback$1;
.super Landroid/content/BroadcastReceiver;
.source "HttpNegotiateAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

.field final synthetic blacklist val$appContext:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$1"    # Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback$1;->this$1:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 216
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback$1;->this$1:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;->-$$Nest$fgetmRequestData(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;)Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    move-result-object v0

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->accountManager:Landroid/accounts/AccountManager;

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback$1;->this$1:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;->-$$Nest$fgetmRequestData(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;)Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    move-result-object v0

    iget-object v2, v0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->account:Landroid/accounts/Account;

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback$1;->this$1:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;->-$$Nest$fgetmRequestData(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;)Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    move-result-object v0

    iget-object v3, v0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->authTokenType:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback$1;->this$1:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;->-$$Nest$fgetmRequestData(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;)Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    move-result-object v0

    iget-object v4, v0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->options:Landroid/os/Bundle;

    new-instance v6, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback$1;->this$1:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

    iget-object v0, v0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;->this$0:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;

    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback$1;->this$1:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

    invoke-static {v5}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;->-$$Nest$fgetmRequestData(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;)Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    move-result-object v5

    invoke-direct {v6, v0, v5}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;-><init>(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;)V

    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 224
    return-void
.end method
