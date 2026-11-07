.class Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;
.super Ljava/lang/Object;
.source "HttpNegotiateAuthenticator.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetTokenCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRequestData(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;)Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;
    .param p2, "requestData"    # Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;->this$0:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    .line 184
    return-void
.end method


# virtual methods
.method public whitelist run(Landroid/accounts/AccountManagerFuture;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_6
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_6} :catch_2b
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_6} :catch_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_2b

    .line 200
    .local v0, "result":Landroid/os/Bundle;
    nop

    .line 202
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 203
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 211
    .local v1, "appContext":Landroid/content/Context;
    new-instance v2, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback$1;

    invoke-direct {v2, p0, v1}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback$1;-><init>(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;Landroid/content/Context;)V

    .line 226
    .local v2, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v2    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    goto :goto_2a

    .line 231
    :cond_23
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;->this$0:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    invoke-static {v1, v0, v2}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;->-$$Nest$mprocessResult(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;Landroid/os/Bundle;Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;)V

    .line 233
    :goto_2a
    return-void

    .line 191
    .end local v0    # "result":Landroid/os/Bundle;
    :catch_2b
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "net_auth"

    const-string v2, "ERR_UNEXPECTED: Error while attempting to obtain a token."

    invoke-static {v1, v2, v0}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticatorJni;->get()Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v3

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-wide v4, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    iget-object v6, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;->this$0:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;

    .line 194
    const/16 v7, -0x9

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLandroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    .line 199
    return-void
.end method
