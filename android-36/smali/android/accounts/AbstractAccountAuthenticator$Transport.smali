.class Landroid/accounts/AbstractAccountAuthenticator$Transport;
.super Landroid/accounts/IAccountAuthenticator$Stub;
.source "AbstractAccountAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AbstractAccountAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transport"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accounts/AbstractAccountAuthenticator;


# direct methods
.method private constructor blacklist <init>(Landroid/accounts/AbstractAccountAuthenticator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 148
    iput-object p1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticator$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AbstractAccountAuthenticator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator$Transport;-><init>(Landroid/accounts/AbstractAccountAuthenticator;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 15
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "features"    # [Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-super {p0}, Landroid/accounts/IAccountAuthenticator$Stub;->addAccount_enforcePermission()V

    .line 156
    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccount: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    if-nez p4, :cond_30

    const-string v3, "[]"

    goto :goto_34

    :cond_30
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_3f
    :try_start_3f
    iget-object v3, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v4, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v4, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_46} :catch_84

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .end local p2    # "accountType":Ljava/lang/String;
    .end local p3    # "authTokenType":Ljava/lang/String;
    .end local p4    # "features":[Ljava/lang/String;
    .end local p5    # "options":Landroid/os/Bundle;
    .local v5, "accountType":Ljava/lang/String;
    .local v6, "authTokenType":Ljava/lang/String;
    .local v7, "features":[Ljava/lang/String;
    .local v8, "options":Landroid/os/Bundle;
    :try_start_4a
    invoke-virtual/range {v3 .. v8}, Landroid/accounts/AbstractAccountAuthenticator;->addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 165
    .local p2, "result":Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_73

    .line 166
    if-eqz p2, :cond_59

    .line 167
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 169
    :cond_59
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "addAccount: result "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_73
    if-eqz p2, :cond_79

    .line 172
    invoke-interface {p1, p2}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    goto :goto_80

    .line 174
    :cond_79
    const-string/jumbo p3, "null bundle returned"

    const/4 p4, 0x5

    invoke-interface {p1, p4, p3}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_80} :catch_81

    .line 179
    .end local p2    # "result":Landroid/os/Bundle;
    :goto_80
    goto :goto_91

    .line 177
    :catch_81
    move-exception v0

    move-object p2, v0

    goto :goto_8a

    .end local v5    # "accountType":Ljava/lang/String;
    .end local v6    # "authTokenType":Ljava/lang/String;
    .end local v7    # "features":[Ljava/lang/String;
    .end local v8    # "options":Landroid/os/Bundle;
    .local p2, "accountType":Ljava/lang/String;
    .restart local p3    # "authTokenType":Ljava/lang/String;
    .restart local p4    # "features":[Ljava/lang/String;
    .restart local p5    # "options":Landroid/os/Bundle;
    :catch_84
    move-exception v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object p2, v0

    .line 178
    .end local p3    # "authTokenType":Ljava/lang/String;
    .end local p4    # "features":[Ljava/lang/String;
    .end local p5    # "options":Landroid/os/Bundle;
    .restart local v5    # "accountType":Ljava/lang/String;
    .restart local v6    # "authTokenType":Ljava/lang/String;
    .restart local v7    # "features":[Ljava/lang/String;
    .restart local v8    # "options":Landroid/os/Bundle;
    .local p2, "e":Ljava/lang/Exception;
    :goto_8a
    iget-object p3, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string p4, "addAccount"

    invoke-static {p3, p1, p4, v5, p2}, Landroid/accounts/AbstractAccountAuthenticator;->-$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    .end local p2    # "e":Ljava/lang/Exception;
    :goto_91
    return-void
.end method

.method public greylist-max-o addAccountFromCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "accountCredentials"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    invoke-super {p0}, Landroid/accounts/IAccountAuthenticator$Stub;->addAccountFromCredentials_enforcePermission()V

    .line 374
    :try_start_3
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    .line 375
    invoke-virtual {v0, v1, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->addAccountFromCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 378
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_13

    .line 379
    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    .line 383
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_13
    goto :goto_20

    .line 381
    :catch_14
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "addAccountFromCredentials"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 384
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method public greylist-max-o confirmCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-super {p0}, Landroid/accounts/IAccountAuthenticator$Stub;->confirmCredentials_enforcePermission()V

    .line 188
    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmCredentials: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_22
    :try_start_22
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 194
    .local v2, "result":Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 195
    if-eqz v2, :cond_38

    .line 196
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 198
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmCredentials: result "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    invoke-static {v2}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_52
    if-eqz v2, :cond_57

    .line 202
    invoke-interface {p1, v2}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_57} :catch_58

    .line 206
    .end local v2    # "result":Landroid/os/Bundle;
    :cond_57
    goto :goto_64

    .line 204
    :catch_58
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "confirmCredentials"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_64
    return-void
.end method

.method public greylist-max-o editProperties(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V
    .registers 6
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    invoke-super {p0}, Landroid/accounts/IAccountAuthenticator$Stub;->editProperties_enforcePermission()V

    .line 304
    :try_start_3
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v0, v1, p2}, Landroid/accounts/AbstractAccountAuthenticator;->editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 306
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_13

    .line 307
    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    .line 311
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_13
    goto :goto_1c

    .line 309
    :catch_14
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "editProperties"

    invoke-static {v1, p1, v2, p2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method

.method public greylist-max-o finishSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "sessionBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    invoke-super {p0}, Landroid/accounts/IAccountAuthenticator$Stub;->finishSession_enforcePermission()V

    .line 467
    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSession: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_22
    :try_start_22
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->finishSession(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 473
    .local v2, "result":Landroid/os/Bundle;
    if-eqz v2, :cond_32

    .line 474
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 476
    :cond_32
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSession: result "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_52
    if-eqz v2, :cond_57

    .line 480
    invoke-interface {p1, v2}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_57} :catch_58

    .line 485
    .end local v2    # "result":Landroid/os/Bundle;
    :cond_57
    goto :goto_60

    .line 482
    :catch_58
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "finishSession"

    invoke-static {v1, p1, v2, p2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 486
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_60
    return-void
.end method

.method public greylist-max-o getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V
    .registers 7
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-super {p0}, Landroid/accounts/IAccountAuthenticator$Stub;->getAccountCredentialsForCloning_enforcePermission()V

    .line 355
    :try_start_3
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    .line 356
    invoke-virtual {v0, v1, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAccountCredentialsForCloning(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v0

    .line 358
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_13

    .line 359
    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    .line 363
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_13
    goto :goto_20

    .line 361
    :catch_14
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "getAccountCredentialsForCloning"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method public greylist-max-o getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V
    .registers 7
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    invoke-super {p0}, Landroid/accounts/IAccountAuthenticator$Stub;->getAccountRemovalAllowed_enforcePermission()V

    .line 338
    :try_start_3
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v0, v1, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v0

    .line 340
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_13

    .line 341
    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    .line 345
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_13
    goto :goto_20

    .line 343
    :catch_14
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "getAccountRemovalAllowed"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 346
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method public greylist-max-o getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "loginOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    invoke-super {p0}, Landroid/accounts/IAccountAuthenticator$Stub;->getAuthToken_enforcePermission()V

    .line 243
    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 251
    .local v2, "result":Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 252
    if-eqz v2, :cond_42

    .line 253
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 255
    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthToken: result "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_5c
    if-eqz v2, :cond_61

    .line 258
    invoke-interface {p1, v2}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_61} :catch_62

    .line 263
    .end local v2    # "result":Landroid/os/Bundle;
    :cond_61
    goto :goto_85

    .line 260
    :catch_62
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    const-string v3, "getAuthToken"

    invoke-static {v1, p1, v3, v2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_85
    return-void
.end method

.method public greylist-max-o getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V
    .registers 8
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-super {p0}, Landroid/accounts/IAccountAuthenticator$Stub;->getAuthTokenLabel_enforcePermission()V

    .line 216
    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthTokenLabel: authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_22
    :try_start_22
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "authTokenLabelKey"

    iget-object v4, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    .line 222
    invoke-virtual {v4, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 224
    nop

    .line 225
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthTokenLabel: result "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    invoke-static {v2}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_56
    invoke-interface {p1, v2}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_59} :catch_5a

    .line 233
    .end local v2    # "result":Landroid/os/Bundle;
    goto :goto_62

    .line 231
    :catch_5a
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v2, "getAuthTokenLabel"

    invoke-static {v1, p1, v2, p2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_62
    return-void
.end method

.method public greylist-max-o hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .registers 8
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    invoke-super {p0}, Landroid/accounts/IAccountAuthenticator$Stub;->hasFeatures_enforcePermission()V

    .line 321
    :try_start_3
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 323
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_13

    .line 324
    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    .line 328
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_13
    goto :goto_21

    .line 326
    :catch_14
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string/jumbo v2, "hasFeatures"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method public greylist-max-o isCredentialsUpdateSuggested(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 8
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "statusToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    invoke-super {p0}, Landroid/accounts/IAccountAuthenticator$Stub;->isCredentialsUpdateSuggested_enforcePermission()V

    .line 497
    :try_start_3
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    .line 498
    invoke-virtual {v0, v1, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->isCredentialsUpdateSuggested(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 500
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_13

    .line 501
    invoke-interface {p1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    .line 505
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_13
    goto :goto_21

    .line 503
    :catch_14
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string/jumbo v2, "isCredentialsUpdateSuggested"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 506
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method public greylist-max-o startAddAccountSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 15
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "features"    # [Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    invoke-super {p0}, Landroid/accounts/IAccountAuthenticator$Stub;->startAddAccountSession_enforcePermission()V

    .line 393
    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAddAccountSession: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 397
    if-nez p4, :cond_31

    const-string v3, "[]"

    goto :goto_35

    :cond_31
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_40
    :try_start_40
    iget-object v3, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v4, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v4, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_47} :catch_7e

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .end local p2    # "accountType":Ljava/lang/String;
    .end local p3    # "authTokenType":Ljava/lang/String;
    .end local p4    # "features":[Ljava/lang/String;
    .end local p5    # "options":Landroid/os/Bundle;
    .local v5, "accountType":Ljava/lang/String;
    .local v6, "authTokenType":Ljava/lang/String;
    .local v7, "features":[Ljava/lang/String;
    .local v8, "options":Landroid/os/Bundle;
    :try_start_4b
    invoke-virtual/range {v3 .. v8}, Landroid/accounts/AbstractAccountAuthenticator;->startAddAccountSession(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 403
    .local p2, "result":Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_75

    .line 404
    if-eqz p2, :cond_5a

    .line 405
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 407
    :cond_5a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "startAddAccountSession: result "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 408
    invoke-static {p2}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 407
    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_75
    if-eqz p2, :cond_7a

    .line 411
    invoke-interface {p1, p2}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_7a} :catch_7b

    .line 415
    .end local p2    # "result":Landroid/os/Bundle;
    :cond_7a
    goto :goto_8c

    .line 413
    :catch_7b
    move-exception v0

    move-object p2, v0

    goto :goto_84

    .end local v5    # "accountType":Ljava/lang/String;
    .end local v6    # "authTokenType":Ljava/lang/String;
    .end local v7    # "features":[Ljava/lang/String;
    .end local v8    # "options":Landroid/os/Bundle;
    .local p2, "accountType":Ljava/lang/String;
    .restart local p3    # "authTokenType":Ljava/lang/String;
    .restart local p4    # "features":[Ljava/lang/String;
    .restart local p5    # "options":Landroid/os/Bundle;
    :catch_7e
    move-exception v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object p2, v0

    .line 414
    .end local p3    # "authTokenType":Ljava/lang/String;
    .end local p4    # "features":[Ljava/lang/String;
    .end local p5    # "options":Landroid/os/Bundle;
    .restart local v5    # "accountType":Ljava/lang/String;
    .restart local v6    # "authTokenType":Ljava/lang/String;
    .restart local v7    # "features":[Ljava/lang/String;
    .restart local v8    # "options":Landroid/os/Bundle;
    .local p2, "e":Ljava/lang/Exception;
    :goto_84
    iget-object p3, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string/jumbo p4, "startAddAccountSession"

    invoke-static {p3, p1, p4, v5, p2}, Landroid/accounts/AbstractAccountAuthenticator;->-$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 416
    .end local p2    # "e":Ljava/lang/Exception;
    :goto_8c
    return-void
.end method

.method public greylist-max-o startUpdateCredentialsSession(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "loginOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    invoke-super {p0}, Landroid/accounts/IAccountAuthenticator$Stub;->startUpdateCredentialsSession_enforcePermission()V

    .line 427
    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startUpdateCredentialsSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    .line 435
    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->startUpdateCredentialsSession(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 440
    .local v2, "result":Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 442
    if-eqz v2, :cond_43

    .line 443
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 445
    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startUpdateCredentialsSession: result "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 446
    invoke-static {v2}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_5e
    if-eqz v2, :cond_63

    .line 450
    invoke-interface {p1, v2}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_63} :catch_64

    .line 456
    .end local v2    # "result":Landroid/os/Bundle;
    :cond_63
    goto :goto_88

    .line 452
    :catch_64
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    const-string/jumbo v3, "startUpdateCredentialsSession"

    invoke-static {v1, p1, v3, v2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 457
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_88
    return-void
.end method

.method public greylist-max-o updateCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "loginOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-super {p0}, Landroid/accounts/IAccountAuthenticator$Stub;->updateCredentials_enforcePermission()V

    .line 272
    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCredentials: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 280
    .local v2, "result":Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 282
    if-eqz v2, :cond_43

    .line 283
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 285
    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCredentials: result "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    invoke-static {v2}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_5e
    if-eqz v2, :cond_63

    .line 289
    invoke-interface {p1, v2}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_63} :catch_64

    .line 294
    .end local v2    # "result":Landroid/os/Bundle;
    :cond_63
    goto :goto_88

    .line 291
    :catch_64
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    const-string/jumbo v3, "updateCredentials"

    invoke-static {v1, p1, v3, v2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 295
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_88
    return-void
.end method
