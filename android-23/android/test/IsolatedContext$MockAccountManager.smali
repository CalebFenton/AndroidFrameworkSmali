.class Landroid/test/IsolatedContext$MockAccountManager;
.super Landroid/accounts/AccountManager;
.source "IsolatedContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/IsolatedContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MockAccountManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/IsolatedContext;


# direct methods
.method public constructor <init>(Landroid/test/IsolatedContext;)V
    .locals 1
    .param p1, "this$0"    # Landroid/test/IsolatedContext;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 124
    iput-object p1, p0, Landroid/test/IsolatedContext$MockAccountManager;->this$0:Landroid/test/IsolatedContext;

    #@3
    .line 125
    invoke-direct {p0, p1, v0, v0}, Landroid/accounts/AccountManager;-><init>(Landroid/content/Context;Landroid/accounts/IAccountManager;Landroid/os/Handler;)V

    #@6
    .line 124
    return-void
.end method


# virtual methods
.method public addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "listener"    # Landroid/accounts/OnAccountsUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "updateImmediately"    # Z

    #@0
    .prologue
    .line 129
    return-void
.end method

.method public blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "notifyAuthFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getAccounts()[Landroid/accounts/Account;
    .locals 1

    #@0
    .prologue
    .line 134
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Landroid/accounts/Account;

    #@3
    return-object v0
.end method

.method public getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "features"    # [Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback",
            "<[",
            "Landroid/accounts/Account;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 140
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    new-instance v0, Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;

    #@2
    const/4 v1, 0x0

    #@3
    new-array v1, v1, [Landroid/accounts/Account;

    #@5
    invoke-direct {v0, p0, v1}, Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;-><init>(Landroid/test/IsolatedContext$MockAccountManager;Ljava/lang/Object;)V

    #@8
    return-object v0
.end method
