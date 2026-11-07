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
.field private static final greylist-max-o KEY_ACCOUNT:Ljava/lang/String; = "android.accounts.AbstractAccountAuthenticator.KEY_ACCOUNT"

.field private static final greylist-max-o KEY_AUTH_TOKEN_TYPE:Ljava/lang/String; = "android.accounts.AbstractAccountAuthenticato.KEY_AUTH_TOKEN_TYPE"

.field public static final whitelist KEY_CUSTOM_TOKEN_EXPIRY:Ljava/lang/String; = "android.accounts.expiry"

.field private static final greylist-max-o KEY_OPTIONS:Ljava/lang/String; = "android.accounts.AbstractAccountAuthenticator.KEY_OPTIONS"

.field private static final greylist-max-o KEY_REQUIRED_FEATURES:Ljava/lang/String; = "android.accounts.AbstractAccountAuthenticator.KEY_REQUIRED_FEATURES"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AccountAuthenticator"


# instance fields
.field private greylist-max-o mTransport:Landroid/accounts/AbstractAccountAuthenticator$Transport;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhandleException(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    new-instance v0, Landroid/accounts/AbstractAccountAuthenticator$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/accounts/AbstractAccountAuthenticator$Transport;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AbstractAccountAuthenticator-IA;)V

    iput-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator;->mTransport:Landroid/accounts/AbstractAccountAuthenticator$Transport;

    .line 146
    return-void
.end method

.method private greylist-max-o handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 11
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    instance-of v0, p4, Landroid/accounts/NetworkErrorException;

    const/4 v1, 0x2

    const-string v2, ")"

    const-string v3, "("

    const-string v4, "AccountAuthenticator"

    if-eqz v0, :cond_37

    .line 512
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    :cond_2d
    const/4 v0, 0x3

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto/16 :goto_e4

    .line 516
    :cond_37
    instance-of v0, p4, Ljava/lang/UnsupportedOperationException;

    const-string v5, " not supported"

    if-eqz v0, :cond_75

    .line 517
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {p1, v1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_e4

    .line 522
    :cond_75
    instance-of v0, p4, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_b1

    .line 523
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    :cond_9b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {p1, v1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_e4

    .line 529
    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 533
    :goto_e4
    return-void
.end method


# virtual methods
.method public abstract whitelist addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method

.method public whitelist addAccountFromCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "accountCredentials"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 761
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/accounts/AbstractAccountAuthenticator$2;

    invoke-direct {v1, p0, p1}, Landroid/accounts/AbstractAccountAuthenticator$2;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AccountAuthenticatorResponse;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 768
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 769
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method

.method public abstract whitelist editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public whitelist finishSession(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 16
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "sessionBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 922
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x7

    const-string v2, "AccountAuthenticator"

    const-string v3, "errorMessage"

    const-string v4, "errorCode"

    if-eqz v0, :cond_20

    .line 923
    const-string v0, "Account type cannot be empty."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 925
    .local v0, "result":Landroid/os/Bundle;
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 926
    const-string v1, "accountType cannot be empty."

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    return-object v0

    .line 931
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_20
    if-nez p3, :cond_36

    .line 932
    const-string v0, "Session bundle cannot be null."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 934
    .restart local v0    # "result":Landroid/os/Bundle;
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 935
    const-string/jumbo v1, "sessionBundle cannot be null."

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    return-object v0

    .line 940
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_36
    const-string v0, "android.accounts.AbstractAccountAuthenticato.KEY_AUTH_TOKEN_TYPE"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 943
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 944
    .restart local v0    # "result":Landroid/os/Bundle;
    const/4 v1, 0x6

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 946
    const-string v1, "Authenticator must override finishSession if startAddAccountSession or startUpdateCredentialsSession is overridden."

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-virtual {p1, v0}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 950
    return-object v0

    .line 952
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_50
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 953
    .local v7, "authTokenType":Ljava/lang/String;
    const-string v1, "android.accounts.AbstractAccountAuthenticator.KEY_OPTIONS"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 954
    .local v2, "options":Landroid/os/Bundle;
    const-string v3, "android.accounts.AbstractAccountAuthenticator.KEY_REQUIRED_FEATURES"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 955
    .local v8, "requiredFeatures":[Ljava/lang/String;
    const-class v4, Landroid/accounts/Account;

    const-string v5, "android.accounts.AbstractAccountAuthenticator.KEY_ACCOUNT"

    invoke-virtual {p3, v5, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/accounts/Account;

    .line 956
    .local v10, "account":Landroid/accounts/Account;
    invoke-virtual {p3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    .line 959
    .local v11, "containsKeyAccount":Z
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 962
    .local v4, "sessionOptions":Landroid/os/Bundle;
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 967
    if-eqz v2, :cond_88

    .line 972
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 973
    move-object v4, v2

    move-object v9, v4

    goto :goto_89

    .line 967
    :cond_88
    move-object v9, v4

    .line 978
    .end local v4    # "sessionOptions":Landroid/os/Bundle;
    .local v9, "sessionOptions":Landroid/os/Bundle;
    :goto_89
    if-eqz v11, :cond_90

    .line 979
    invoke-virtual {p0, p1, v10, v7, v2}, Landroid/accounts/AbstractAccountAuthenticator;->updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 982
    :cond_90
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "response":Landroid/accounts/AccountAuthenticatorResponse;
    .end local p2    # "accountType":Ljava/lang/String;
    .local v5, "response":Landroid/accounts/AccountAuthenticatorResponse;
    .local v6, "accountType":Ljava/lang/String;
    invoke-virtual/range {v4 .. v9}, Landroid/accounts/AbstractAccountAuthenticator;->addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getAccountCredentialsForCloning(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .registers 5
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 735
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/accounts/AbstractAccountAuthenticator$1;

    invoke-direct {v1, p0, p1}, Landroid/accounts/AbstractAccountAuthenticator$1;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AccountAuthenticatorResponse;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 742
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 743
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .registers 6
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 717
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 718
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "booleanResult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 719
    return-object v0
.end method

.method public abstract whitelist getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method

.method public abstract whitelist getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final whitelist getIBinder()Landroid/os/IBinder;
    .registers 2

    .line 541
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator;->mTransport:Landroid/accounts/AbstractAccountAuthenticator$Transport;

    invoke-virtual {v0}, Landroid/accounts/AbstractAccountAuthenticator$Transport;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method

.method public whitelist isCredentialsUpdateSuggested(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "statusToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 1007
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1008
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1009
    return-object v0
.end method

.method public whitelist startAddAccountSession(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
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

    .line 814
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/accounts/AbstractAccountAuthenticator$3;

    move-object v2, p0

    move-object v6, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "response":Landroid/accounts/AccountAuthenticatorResponse;
    .end local p3    # "authTokenType":Ljava/lang/String;
    .end local p4    # "requiredFeatures":[Ljava/lang/String;
    .end local p5    # "options":Landroid/os/Bundle;
    .local v3, "authTokenType":Ljava/lang/String;
    .local v4, "requiredFeatures":[Ljava/lang/String;
    .local v5, "options":Landroid/os/Bundle;
    .local v6, "response":Landroid/accounts/AccountAuthenticatorResponse;
    invoke-direct/range {v1 .. v6}, Landroid/accounts/AbstractAccountAuthenticator$3;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/accounts/AccountAuthenticatorResponse;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 826
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 827
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist startUpdateCredentialsSession(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 868
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/accounts/AbstractAccountAuthenticator$4;

    move-object v2, p0

    move-object v6, p1

    move-object v4, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "response":Landroid/accounts/AccountAuthenticatorResponse;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "authTokenType":Ljava/lang/String;
    .end local p4    # "options":Landroid/os/Bundle;
    .local v3, "authTokenType":Ljava/lang/String;
    .local v4, "account":Landroid/accounts/Account;
    .local v5, "options":Landroid/os/Bundle;
    .local v6, "response":Landroid/accounts/AccountAuthenticatorResponse;
    invoke-direct/range {v1 .. v6}, Landroid/accounts/AbstractAccountAuthenticator$4;-><init>(Landroid/accounts/AbstractAccountAuthenticator;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/accounts/AccountAuthenticatorResponse;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 880
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 881
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract whitelist updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation
.end method
