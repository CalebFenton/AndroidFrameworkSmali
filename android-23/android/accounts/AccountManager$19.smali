.class Landroid/accounts/AccountManager$19;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$accountsCopy:[Landroid/accounts/Account;

.field final synthetic val$listener:Landroid/accounts/OnAccountsUpdateListener;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "val$listener"    # Landroid/accounts/OnAccountsUpdateListener;
    .param p3, "val$accountsCopy"    # [Landroid/accounts/Account;

    #@0
    .prologue
    .line 1855
    iput-object p1, p0, Landroid/accounts/AccountManager$19;->this$0:Landroid/accounts/AccountManager;

    #@2
    iput-object p2, p0, Landroid/accounts/AccountManager$19;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    #@4
    iput-object p3, p0, Landroid/accounts/AccountManager$19;->val$accountsCopy:[Landroid/accounts/Account;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 1858
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager$19;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    #@2
    iget-object v2, p0, Landroid/accounts/AccountManager$19;->val$accountsCopy:[Landroid/accounts/Account;

    #@4
    invoke-interface {v1, v2}, Landroid/accounts/OnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1856
    :goto_0
    return-void

    #@8
    .line 1859
    :catch_0
    move-exception v0

    #@9
    .line 1862
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v1, "AccountManager"

    #@c
    const-string/jumbo v2, "Can\'t update accounts"

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    goto :goto_0
.end method
