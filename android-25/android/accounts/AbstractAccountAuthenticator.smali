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
.field private static final KEY_ACCOUNT:Ljava/lang/String; = "android.accounts.AbstractAccountAuthenticator.KEY_ACCOUNT"

.field private static final KEY_AUTH_TOKEN_TYPE:Ljava/lang/String; = "android.accounts.AbstractAccountAuthenticato.KEY_AUTH_TOKEN_TYPE"

.field public static final KEY_CUSTOM_TOKEN_EXPIRY:Ljava/lang/String; = "android.accounts.expiry"

.field private static final KEY_OPTIONS:Ljava/lang/String; = "android.accounts.AbstractAccountAuthenticator.KEY_OPTIONS"

.field private static final KEY_REQUIRED_FEATURES:Ljava/lang/String; = "android.accounts.AbstractAccountAuthenticator.KEY_REQUIRED_FEATURES"

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
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 519
    new-instance v0, Landroid/accounts/AbstractAccountAuthenticator$Transport;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, v1}, Landroid/accounts/AbstractAccountAuthenticator$Transport;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AbstractAccountAuthenticator$Transport;)V

    #@9
    iput-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator;->mTransport:Landroid/accounts/AbstractAccountAuthenticator$Transport;

    #@b
    .line 152
    iput-object p1, p0, Landroid/accounts/AbstractAccountAuthenticator;->mContext:Landroid/content/Context;

    #@d
    .line 151
    return-void
.end method

.method private checkBinderPermission()V
    .locals 5

    #@0
    .prologue
    .line 512
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 513
    .local v1, "uid":I
    const-string/jumbo v0, "android.permission.ACCOUNT_MANAGER"

    #@7
    .line 514
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
    .line 515
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
    .line 511
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
    .line 487
    instance-of v0, p4, Landroid/accounts/NetworkErrorException;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 488
    const-string/jumbo v0, "AccountAuthenticator"

    #@8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 489
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
    .line 491
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    const/4 v1, 0x3

    #@38
    invoke-interface {p1, v1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    #@3b
    .line 486
    :goto_0
    return-void

    #@3c
    .line 492
    :cond_1
    instance-of v0, p4, Ljava/lang/UnsupportedOperationException;

    #@3e
    if-eqz v0, :cond_3

    #@40
    .line 493
    const-string/jumbo v0, "AccountAuthenticator"

    #@43
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_2

    #@49
    .line 494
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
    .line 497
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
    .line 496
    const/4 v1, 0x6

    #@83
    invoke-interface {p1, v1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    #@86
    goto :goto_0

    #@87
    .line 498
    :cond_3
    instance-of v0, p4, Ljava/lang/IllegalArgumentException;

    #@89
    if-eqz v0, :cond_5

    #@8b
    .line 499
    const-string/jumbo v0, "AccountAuthenticator"

    #@8e
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@91
    move-result v0

    #@92
    if-eqz v0, :cond_4

    #@94
    .line 500
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
    .line 503
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
    .line 502
    const/4 v1, 0x7

    #@ce
    invoke-interface {p1, v1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    #@d1
    goto/16 :goto_0

    #@d3
    .line 505
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
    .line 507
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
    .line 506
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
    .line 740
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
    .line 748
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

.method public finishSession(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "sessionBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x7

    #@1
    .line 905
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 906
    const-string/jumbo v0, "AccountAuthenticator"

    #@a
    const-string/jumbo v1, "Account type cannot be empty."

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 907
    new-instance v9, Landroid/os/Bundle;

    #@12
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@15
    .line 908
    .local v9, "result":Landroid/os/Bundle;
    const-string/jumbo v0, "errorCode"

    #@18
    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1b
    .line 909
    const-string/jumbo v0, "errorMessage"

    #@1e
    .line 910
    const-string/jumbo v1, "accountType cannot be empty."

    #@21
    .line 909
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 911
    return-object v9

    #@25
    .line 914
    .end local v9    # "result":Landroid/os/Bundle;
    :cond_0
    if-nez p3, :cond_1

    #@27
    .line 915
    const-string/jumbo v0, "AccountAuthenticator"

    #@2a
    const-string/jumbo v1, "Session bundle cannot be null."

    #@2d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 916
    new-instance v9, Landroid/os/Bundle;

    #@32
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@35
    .line 917
    .restart local v9    # "result":Landroid/os/Bundle;
    const-string/jumbo v0, "errorCode"

    #@38
    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@3b
    .line 918
    const-string/jumbo v0, "errorMessage"

    #@3e
    .line 919
    const-string/jumbo v1, "sessionBundle cannot be null."

    #@41
    .line 918
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@44
    .line 920
    return-object v9

    #@45
    .line 923
    .end local v9    # "result":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v0, "android.accounts.AbstractAccountAuthenticato.KEY_AUTH_TOKEN_TYPE"

    #@48
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@4b
    move-result v0

    #@4c
    if-nez v0, :cond_2

    #@4e
    .line 926
    new-instance v9, Landroid/os/Bundle;

    #@50
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@53
    .line 927
    .restart local v9    # "result":Landroid/os/Bundle;
    const-string/jumbo v0, "errorCode"

    #@56
    .line 928
    const/4 v1, 0x6

    #@57
    .line 927
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@5a
    .line 929
    const-string/jumbo v0, "errorMessage"

    #@5d
    .line 930
    const-string/jumbo v1, "Authenticator must override finishSession if startAddAccountSession or startUpdateCredentialsSession is overridden."

    #@60
    .line 929
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@63
    .line 932
    invoke-virtual {p1, v9}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    #@66
    .line 933
    return-object v9

    #@67
    .line 935
    .end local v9    # "result":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v0, "android.accounts.AbstractAccountAuthenticato.KEY_AUTH_TOKEN_TYPE"

    #@6a
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    .line 936
    .local v3, "authTokenType":Ljava/lang/String;
    const-string/jumbo v0, "android.accounts.AbstractAccountAuthenticator.KEY_OPTIONS"

    #@71
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@74
    move-result-object v8

    #@75
    .line 937
    .local v8, "options":Landroid/os/Bundle;
    const-string/jumbo v0, "android.accounts.AbstractAccountAuthenticator.KEY_REQUIRED_FEATURES"

    #@78
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@7b
    move-result-object v4

    #@7c
    .line 938
    .local v4, "requiredFeatures":[Ljava/lang/String;
    const-string/jumbo v0, "android.accounts.AbstractAccountAuthenticator.KEY_ACCOUNT"

    #@7f
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@82
    move-result-object v6

    #@83
    check-cast v6, Landroid/accounts/Account;

    #@85
    .line 939
    .local v6, "account":Landroid/accounts/Account;
    const-string/jumbo v0, "android.accounts.AbstractAccountAuthenticator.KEY_ACCOUNT"

    #@88
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@8b
    move-result v7

    #@8c
    .line 942
    .local v7, "containsKeyAccount":Z
    new-instance v5, Landroid/os/Bundle;

    #@8e
    invoke-direct {v5, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@91
    .line 945
    .local v5, "sessionOptions":Landroid/os/Bundle;
    const-string/jumbo v0, "android.accounts.AbstractAccountAuthenticato.KEY_AUTH_TOKEN_TYPE"

    #@94
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@97
    .line 946
    const-string/jumbo v0, "android.accounts.AbstractAccountAuthenticator.KEY_REQUIRED_FEATURES"

    #@9a
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@9d
    .line 947
    const-string/jumbo v0, "android.accounts.AbstractAccountAuthenticator.KEY_OPTIONS"

    #@a0
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@a3
    .line 948
    const-string/jumbo v0, "android.accounts.AbstractAccountAuthenticator.KEY_ACCOUNT"

    #@a6
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@a9
    .line 950
    if-eqz v8, :cond_3

    #@ab
    .line 955
    invoke-virtual {v8, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@ae
    .line 956
    move-object v5, v8

    #@af
    .line 961
    :cond_3
    if-eqz v7, :cond_4

    #@b1
    .line 962
    invoke-virtual {p0, p1, v6, v3, v8}, Landroid/accounts/AbstractAccountAuthenticator;->updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@b4
    move-result-object v0

    #@b5
    return-object v0

    #@b6
    :cond_4
    move-object v0, p0

    #@b7
    move-object v1, p1

    #@b8
    move-object v2, p2

    #@b9
    .line 965
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AbstractAccountAuthenticator;->addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@bc
    move-result-object v0

    #@bd
    return-object v0
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
    .line 714
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
    .line 722
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
    .line 696
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 697
    .local v0, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "booleanResult"

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c
    .line 698
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
    .line 525
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

.method public isCredentialsUpdateSuggested(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "statusToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    #@0
    .prologue
    .line 991
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 992
    .local v0, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "booleanResult"

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c
    .line 993
    return-object v0
.end method

.method public startAddAccountSession(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    #@0
    .prologue
    .line 795
    new-instance v6, Ljava/lang/Thread;

    #@2
    new-instance v0, Landroid/accounts/AbstractAccountAuthenticator$3;

    #@4
    move-object v1, p0

    #@5
    move-object v2, p3

    #@6
    move-object v3, p4

    #@7
    move-object v4, p5

    #@8
    move-object v5, p1

    #@9
    invoke-direct/range {v0 .. v5}, Landroid/accounts/AbstractAccountAuthenticator$3;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/accounts/AccountAuthenticatorResponse;)V

    #@c
    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@f
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    #@12
    .line 808
    const/4 v0, 0x0

    #@13
    return-object v0
.end method

.method public startUpdateCredentialsSession(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    #@0
    .prologue
    .line 851
    new-instance v6, Ljava/lang/Thread;

    #@2
    new-instance v0, Landroid/accounts/AbstractAccountAuthenticator$4;

    #@4
    move-object v1, p0

    #@5
    move-object v2, p3

    #@6
    move-object v3, p2

    #@7
    move-object v4, p4

    #@8
    move-object v5, p1

    #@9
    invoke-direct/range {v0 .. v5}, Landroid/accounts/AbstractAccountAuthenticator$4;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/accounts/AccountAuthenticatorResponse;)V

    #@c
    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@f
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    #@12
    .line 864
    const/4 v0, 0x0

    #@13
    return-object v0
.end method

.method public abstract updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method
