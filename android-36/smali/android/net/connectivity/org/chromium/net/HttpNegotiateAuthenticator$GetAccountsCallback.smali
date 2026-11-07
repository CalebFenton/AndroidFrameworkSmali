.class Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;
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
    name = "GetAccountsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;


# direct methods
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

    .line 97
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    .line 99
    return-void
.end method


# virtual methods
.method public whitelist run(Landroid/accounts/AccountManagerFuture;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    const-string v1, "net_auth"

    :try_start_2
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;
    :try_end_8
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_8} :catch_93
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_8} :catch_93
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_93

    .line 115
    .local v0, "accounts":[Landroid/accounts/Account;
    nop

    .line 117
    array-length v2, v0

    if-nez v2, :cond_22

    .line 118
    const-string v2, "ERR_MISSING_AUTH_CREDENTIALS: No account provided for the kerberos authentication. Please verify the configuration policies and that the CONTACTS runtime permission is granted. "

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticatorJni;->get()Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v3

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-wide v4, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    iget-object v6, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;

    .line 124
    const/16 v7, -0x155

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLandroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    .line 129
    return-void

    .line 132
    :cond_22
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_41

    .line 133
    array-length v2, v0

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 133
    const-string v3, "ERR_MISSING_AUTH_CREDENTIALS: Found %d accounts eligible for the kerberos authentication. Please fix the configuration by providing a single account."

    invoke-static {v1, v3, v2}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticatorJni;->get()Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v4

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-wide v5, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    iget-object v7, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;

    .line 140
    const/16 v8, -0x155

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLandroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    .line 145
    return-void

    .line 148
    :cond_41
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;

    .line 149
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 148
    const-string v5, "android.permission.USE_CREDENTIALS"

    invoke-virtual {v2, v4, v5, v3}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;->lacksPermission(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 155
    const-string v2, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: USE_CREDENTIALS permission not granted. Aborting authentication."

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticatorJni;->get()Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v3

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-wide v4, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    iget-object v6, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;

    .line 160
    const/16 v7, -0x157

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLandroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    .line 165
    return-void

    .line 167
    :cond_65
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->account:Landroid/accounts/Account;

    .line 168
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-object v2, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->accountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-object v3, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->account:Landroid/accounts/Account;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-object v4, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->authTokenType:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-object v5, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->options:Landroid/os/Bundle;

    new-instance v7, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;

    iget-object v6, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    invoke-direct {v7, v1, v6}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;-><init>(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;)V

    new-instance v8, Landroid/os/Handler;

    .line 174
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 168
    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 175
    return-void

    .line 106
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :catch_93
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ERR_UNEXPECTED: Error while attempting to retrieve accounts."

    invoke-static {v1, v2, v0}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticatorJni;->get()Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v3

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-wide v4, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    iget-object v6, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;

    .line 109
    const/16 v7, -0x9

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLandroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    .line 114
    return-void
.end method
