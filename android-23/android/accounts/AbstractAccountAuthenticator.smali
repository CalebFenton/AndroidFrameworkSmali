.class public abstract Landroid/accounts/AbstractAccountAuthenticator;
.super Ljava/lang/Object;
.source "AbstractAccountAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AbstractAccountAuthenticator$Transport;
    }
.end annotation


# static fields
.field public static final KEY_CUSTOM_TOKEN_EXPIRY:Ljava/lang/String; = "android.accounts.expiry"

.field private static final TAG:Ljava/lang/String; = "AccountAuthenticator"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTransport:Landroid/accounts/AbstractAccountAuthenticator$Transport;


# direct methods
.method static synthetic -wrap0(Landroid/accounts/AbstractAccountAuthenticator;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 375
    new-instance v0, Landroid/accounts/AbstractAccountAuthenticator$Transport;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, v1}, Landroid/accounts/AbstractAccountAuthenticator$Transport;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AbstractAccountAuthenticator$Transport;)V

    #@9
    iput-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator;->mTransport:Landroid/accounts/AbstractAccountAuthenticator$Transport;

    #@b
    .line 122
    iput-object p1, p0, Landroid/accounts/AbstractAccountAuthenticator;->mContext:Landroid/content/Context;

    #@d
    .line 121
    return-void
.end method

.method private checkBinderPermission()V
    .locals 5

    #@0
    .prologue
    .line 368
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 369
    .local v1, "uid":I
    const-string/jumbo v0, "android.permission.ACCOUNT_MANAGER"

    #@7
    .line 370
    .local v0, "perm":Ljava/lang/String;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator;->mContext:Landroid/content/Context;

    #@9
    const-string/jumbo v3, "android.permission.ACCOUNT_MANAGER"

    #@c
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 371
    new-instance v2, Ljava/lang/SecurityException;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "caller uid "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    const-string/jumbo v4, " lacks "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    const-string/jumbo v4, "android.permission.ACCOUNT_MANAGER"

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@39
    throw v2

    #@3a
    .line 367
    :cond_0
    return-void
.end method

.method private handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 343
    instance-of v0, p4, Landroid/accounts/NetworkErrorException;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 344
    const-string/jumbo v0, "AccountAuthenticator"

    #@8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 345
    const-string/jumbo v0, "AccountAuthenticator"

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "("

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, ")"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@33
    .line 347
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    const/4 v1, 0x3

    #@38
    invoke-interface {p1, v1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    #@3b
    .line 342
    :goto_0
    return-void

    #@3c
    .line 348
    :cond_1
    instance-of v0, p4, Ljava/lang/UnsupportedOperationException;

    #@3e
    if-eqz v0, :cond_3

    #@40
    .line 349
    const-string/jumbo v0, "AccountAuthenticator"

    #@43
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_2

    #@49
    .line 350
    const-string/jumbo v0, "AccountAuthenticator"

    #@4c
    new-instance v1, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    const-string/jumbo v2, "("

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    const-string/jumbo v2, ")"

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    invoke-static {v0, v1, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6e
    .line 353
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    const-string/jumbo v1, " not supported"

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v0

    #@82
    .line 352
    const/4 v1, 0x6

    #@83
    invoke-interface {p1, v1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    #@86
    goto :goto_0

    #@87
    .line 354
    :cond_3
    instance-of v0, p4, Ljava/lang/IllegalArgumentException;

    #@89
    if-eqz v0, :cond_5

    #@8b
    .line 355
    const-string/jumbo v0, "AccountAuthenticator"

    #@8e
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@91
    move-result v0

    #@92
    if-eqz v0, :cond_4

    #@94
    .line 356
    const-string/jumbo v0, "AccountAuthenticator"

    #@97
    new-instance v1, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    const-string/jumbo v2, "("

    #@a3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v1

    #@a7
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v1

    #@ab
    const-string/jumbo v2, ")"

    #@ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v1

    #@b2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v1

    #@b6
    invoke-static {v0, v1, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b9
    .line 359
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v0

    #@c2
    const-string/jumbo v1, " not supported"

    #@c5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v0

    #@c9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v0

    #@cd
    .line 358
    const/4 v1, 0x7

    #@ce
    invoke-interface {p1, v1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    #@d1
    goto/16 :goto_0

    #@d3
    .line 361
    :cond_5
    const-string/jumbo v0, "AccountAuthenticator"

    #@d6
    new-instance v1, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v1

    #@df
    const-string/jumbo v2, "("

    #@e2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v1

    #@e6
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v1

    #@ea
    const-string/jumbo v2, ")"

    #@ed
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v1

    #@f1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v1

    #@f5
    invoke-static {v0, v1, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f8
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v0

    #@101
    const-string/jumbo v1, " failed"

    #@104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v0

    #@108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v0

    #@10c
    .line 362
    const/4 v1, 0x1

    #@10d
    invoke-interface {p1, v1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    #@110
    goto/16 :goto_0
.end method


# virtual methods
.method public abstract addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method

.method public addAccountFromCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "accountCredentials"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    #@0
    .prologue
    .line 596
    new-instance v0, Ljava/lang/Thread;

    #@2
    new-instance v1, Landroid/accounts/AbstractAccountAuthenticator$2;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/accounts/AbstractAccountAuthenticator$2;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AccountAuthenticatorResponse;)V

    #@7
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@a
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@d
    .line 604
    const/4 v0, 0x0

    #@e
    return-object v0
.end method

.method public abstract confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method

.method public abstract editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public getAccountCredentialsForCloning(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 2
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    #@0
    .prologue
    .line 570
    new-instance v0, Ljava/lang/Thread;

    #@2
    new-instance v1, Landroid/accounts/AbstractAccountAuthenticator$1;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/accounts/AbstractAccountAuthenticator$1;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AccountAuthenticatorResponse;)V

    #@7
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@a
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@d
    .line 578
    const/4 v0, 0x0

    #@e
    return-object v0
.end method

.method public getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 3
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    #@0
    .prologue
    .line 552
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 553
    .local v0, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "booleanResult"

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c
    .line 554
    return-object v0
.end method

.method public abstract getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method

.method public abstract getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final getIBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator;->mTransport:Landroid/accounts/AbstractAccountAuthenticator$Transport;

    #@2
    invoke-virtual {v0}, Landroid/accounts/AbstractAccountAuthenticator$Transport;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public abstract hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method

.method public abstract updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method
