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
.field final synthetic this$0:Landroid/accounts/AbstractAccountAuthenticator;


# direct methods
.method private constructor <init>(Landroid/accounts/AbstractAccountAuthenticator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AbstractAccountAuthenticator;

    #@0
    .prologue
    .line 125
    iput-object p1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@2
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticator$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AbstractAccountAuthenticator$Transport;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AbstractAccountAuthenticator;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator$Transport;-><init>(Landroid/accounts/AbstractAccountAuthenticator;)V

    #@3
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
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

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 130
    const-string/jumbo v0, "AccountAuthenticator"

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 131
    const-string/jumbo v1, "AccountAuthenticator"

    #@d
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "addAccount: accountType "

    #@15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 132
    const-string/jumbo v2, ", authTokenType "

    #@20
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 133
    const-string/jumbo v2, ", features "

    #@2b
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 133
    if-nez p4, :cond_4

    #@31
    const-string/jumbo v0, "[]"

    #@34
    .line 131
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 135
    :cond_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@41
    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap0(Landroid/accounts/AbstractAccountAuthenticator;)V

    #@44
    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@46
    .line 138
    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    #@48
    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    #@4b
    move-object v2, p2

    #@4c
    move-object v3, p3

    #@4d
    move-object v4, p4

    #@4e
    move-object v5, p5

    #@4f
    .line 137
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AbstractAccountAuthenticator;->addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@52
    move-result-object v7

    #@53
    .line 140
    .local v7, "result":Landroid/os/Bundle;
    const-string/jumbo v0, "AccountAuthenticator"

    #@56
    const/4 v1, 0x2

    #@57
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_2

    #@5d
    .line 141
    if-eqz v7, :cond_1

    #@5f
    .line 142
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@62
    .line 144
    :cond_1
    const-string/jumbo v0, "AccountAuthenticator"

    #@65
    new-instance v1, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v2, "addAccount: result "

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-static {v7}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 146
    :cond_2
    if-eqz v7, :cond_3

    #@82
    .line 147
    invoke-interface {p1, v7}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@85
    .line 129
    .end local v7    # "result":Landroid/os/Bundle;
    :cond_3
    :goto_1
    return-void

    #@86
    .line 133
    :cond_4
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@89
    move-result-object v0

    #@8a
    goto :goto_0

    #@8b
    .line 149
    :catch_0
    move-exception v6

    #@8c
    .line 150
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@8e
    const-string/jumbo v1, "addAccount"

    #@91
    invoke-static {v0, p1, v1, p2, v6}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap1(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@94
    goto :goto_1
.end method

.method public addAccountFromCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "accountCredentials"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@2
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap0(Landroid/accounts/AbstractAccountAuthenticator;)V

    #@5
    .line 329
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@7
    .line 330
    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    #@9
    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    #@c
    .line 329
    invoke-virtual {v2, v3, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->addAccountFromCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@f
    move-result-object v1

    #@10
    .line 332
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    #@12
    .line 333
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 325
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    #@16
    .line 335
    :catch_0
    move-exception v0

    #@17
    .line 336
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@19
    const-string/jumbo v3, "addAccountFromCredentials"

    #@1c
    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v2, p1, v3, v4, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap1(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@23
    goto :goto_0
.end method

.method public confirmCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 157
    const-string/jumbo v2, "AccountAuthenticator"

    #@4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 158
    const-string/jumbo v2, "AccountAuthenticator"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "confirmCredentials: "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 160
    :cond_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@26
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap0(Landroid/accounts/AbstractAccountAuthenticator;)V

    #@29
    .line 162
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@2b
    .line 163
    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    #@2d
    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    #@30
    .line 162
    invoke-virtual {v2, v3, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@33
    move-result-object v1

    #@34
    .line 164
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "AccountAuthenticator"

    #@37
    const/4 v3, 0x2

    #@38
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_2

    #@3e
    .line 165
    if-eqz v1, :cond_1

    #@40
    .line 166
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@43
    .line 168
    :cond_1
    const-string/jumbo v2, "AccountAuthenticator"

    #@46
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v4, "confirmCredentials: result "

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    .line 169
    invoke-static {v1}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@55
    move-result-object v4

    #@56
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 171
    :cond_2
    if-eqz v1, :cond_3

    #@63
    .line 172
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@66
    .line 156
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    #@67
    .line 174
    :catch_0
    move-exception v0

    #@68
    .line 175
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@6a
    const-string/jumbo v3, "confirmCredentials"

    #@6d
    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    invoke-static {v2, p1, v3, v4, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap1(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@74
    goto :goto_0
.end method

.method public editProperties(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@2
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap0(Landroid/accounts/AbstractAccountAuthenticator;)V

    #@5
    .line 266
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@7
    .line 267
    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    #@9
    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    #@c
    .line 266
    invoke-virtual {v2, v3, p2}, Landroid/accounts/AbstractAccountAuthenticator;->editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;

    #@f
    move-result-object v1

    #@10
    .line 268
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    #@12
    .line 269
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 263
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    #@16
    .line 271
    :catch_0
    move-exception v0

    #@17
    .line 272
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@19
    const-string/jumbo v3, "editProperties"

    #@1c
    invoke-static {v2, p1, v3, p2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap1(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@1f
    goto :goto_0
.end method

.method public getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 309
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@2
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap0(Landroid/accounts/AbstractAccountAuthenticator;)V

    #@5
    .line 312
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@7
    .line 313
    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    #@9
    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    #@c
    .line 312
    invoke-virtual {v2, v3, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAccountCredentialsForCloning(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;

    #@f
    move-result-object v1

    #@10
    .line 314
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    #@12
    .line 315
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 308
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    #@16
    .line 317
    :catch_0
    move-exception v0

    #@17
    .line 318
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@19
    const-string/jumbo v3, "getAccountCredentialsForCloning"

    #@1c
    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v2, p1, v3, v4, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap1(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@23
    goto :goto_0
.end method

.method public getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@2
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap0(Landroid/accounts/AbstractAccountAuthenticator;)V

    #@5
    .line 296
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@7
    .line 297
    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    #@9
    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    #@c
    .line 296
    invoke-virtual {v2, v3, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;

    #@f
    move-result-object v1

    #@10
    .line 298
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    #@12
    .line 299
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 293
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    #@16
    .line 301
    :catch_0
    move-exception v0

    #@17
    .line 302
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@19
    const-string/jumbo v3, "getAccountRemovalAllowed"

    #@1c
    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v2, p1, v3, v4, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap1(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@23
    goto :goto_0
.end method

.method public getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "loginOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 208
    const-string/jumbo v2, "AccountAuthenticator"

    #@4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 209
    const-string/jumbo v2, "AccountAuthenticator"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "getAuthToken: "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    .line 210
    const-string/jumbo v4, ", authTokenType "

    #@20
    .line 209
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 212
    :cond_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@31
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap0(Landroid/accounts/AbstractAccountAuthenticator;)V

    #@34
    .line 214
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@36
    .line 215
    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    #@38
    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    #@3b
    .line 214
    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@3e
    move-result-object v1

    #@3f
    .line 217
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "AccountAuthenticator"

    #@42
    const/4 v3, 0x2

    #@43
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_2

    #@49
    .line 218
    if-eqz v1, :cond_1

    #@4b
    .line 219
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@4e
    .line 221
    :cond_1
    const-string/jumbo v2, "AccountAuthenticator"

    #@51
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v4, "getAuthToken: result "

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-static {v1}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 223
    :cond_2
    if-eqz v1, :cond_3

    #@6e
    .line 224
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@71
    .line 207
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    #@72
    .line 226
    :catch_0
    move-exception v0

    #@73
    .line 227
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@75
    const-string/jumbo v3, "getAuthToken"

    #@78
    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    const-string/jumbo v5, ","

    #@88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v4

    #@94
    .line 227
    invoke-static {v2, p1, v3, v4, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap1(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@97
    goto :goto_0
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 183
    const-string/jumbo v2, "AccountAuthenticator"

    #@4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 184
    const-string/jumbo v2, "AccountAuthenticator"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "getAuthTokenLabel: authTokenType "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 186
    :cond_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@26
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap0(Landroid/accounts/AbstractAccountAuthenticator;)V

    #@29
    .line 188
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    #@2b
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@2e
    .line 189
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "authTokenLabelKey"

    #@31
    .line 190
    iget-object v3, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@33
    invoke-virtual {v3, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 189
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    .line 191
    const-string/jumbo v2, "AccountAuthenticator"

    #@3d
    const/4 v3, 0x2

    #@3e
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_2

    #@44
    .line 192
    if-eqz v1, :cond_1

    #@46
    .line 193
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@49
    .line 195
    :cond_1
    const-string/jumbo v2, "AccountAuthenticator"

    #@4c
    new-instance v3, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v4, "getAuthTokenLabel: result "

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    .line 196
    invoke-static {v1}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@5b
    move-result-object v4

    #@5c
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 198
    :cond_2
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6a
    .line 182
    .end local v1    # "result":Landroid/os/Bundle;
    :goto_0
    return-void

    #@6b
    .line 199
    :catch_0
    move-exception v0

    #@6c
    .line 200
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@6e
    const-string/jumbo v3, "getAuthTokenLabel"

    #@71
    invoke-static {v2, p1, v3, p2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap1(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@74
    goto :goto_0
.end method

.method public hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 279
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@2
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap0(Landroid/accounts/AbstractAccountAuthenticator;)V

    #@5
    .line 281
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@7
    .line 282
    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    #@9
    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    #@c
    .line 281
    invoke-virtual {v2, v3, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;

    #@f
    move-result-object v1

    #@10
    .line 283
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    #@12
    .line 284
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 278
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    #@16
    .line 286
    :catch_0
    move-exception v0

    #@17
    .line 287
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@19
    const-string/jumbo v3, "hasFeatures"

    #@1c
    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v2, p1, v3, v4, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap1(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@23
    goto :goto_0
.end method

.method public updateCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "loginOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 235
    const-string/jumbo v2, "AccountAuthenticator"

    #@4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 236
    const-string/jumbo v2, "AccountAuthenticator"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "updateCredentials: "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    .line 237
    const-string/jumbo v4, ", authTokenType "

    #@20
    .line 236
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 239
    :cond_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@31
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap0(Landroid/accounts/AbstractAccountAuthenticator;)V

    #@34
    .line 241
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@36
    .line 242
    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    #@38
    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    #@3b
    .line 241
    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@3e
    move-result-object v1

    #@3f
    .line 244
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "AccountAuthenticator"

    #@42
    const/4 v3, 0x2

    #@43
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_2

    #@49
    .line 246
    if-eqz v1, :cond_1

    #@4b
    .line 247
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@4e
    .line 249
    :cond_1
    const-string/jumbo v2, "AccountAuthenticator"

    #@51
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v4, "updateCredentials: result "

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    .line 250
    invoke-static {v1}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@60
    move-result-object v4

    #@61
    .line 249
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 252
    :cond_2
    if-eqz v1, :cond_3

    #@6e
    .line 253
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@71
    .line 234
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    #@72
    .line 255
    :catch_0
    move-exception v0

    #@73
    .line 256
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #@75
    const-string/jumbo v3, "updateCredentials"

    #@78
    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    const-string/jumbo v5, ","

    #@88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v4

    #@94
    .line 256
    invoke-static {v2, p1, v3, v4, v0}, Landroid/accounts/AbstractAccountAuthenticator;->-wrap1(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@97
    goto :goto_0
.end method
