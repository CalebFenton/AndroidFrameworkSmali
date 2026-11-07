.class Landroid/accounts/AccountManager$18;
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
.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;

.field final synthetic blacklist val$accountsCopy:[Landroid/accounts/Account;

.field final synthetic blacklist val$listener:Landroid/accounts/OnAccountsUpdateListener;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .registers 4
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2313
    iput-object p1, p0, Landroid/accounts/AccountManager$18;->this$0:Landroid/accounts/AccountManager;

    iput-object p2, p0, Landroid/accounts/AccountManager$18;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    iput-object p3, p0, Landroid/accounts/AccountManager$18;->val$accountsCopy:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 9

    .line 2316
    iget-object v0, p0, Landroid/accounts/AccountManager$18;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-$$Nest$fgetmAccountsUpdatedListeners(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 2318
    :try_start_7
    iget-object v1, p0, Landroid/accounts/AccountManager$18;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v1}, Landroid/accounts/AccountManager;->-$$Nest$fgetmAccountsUpdatedListeners(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/AccountManager$18;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2319
    iget-object v1, p0, Landroid/accounts/AccountManager$18;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v1}, Landroid/accounts/AccountManager;->-$$Nest$fgetmAccountsUpdatedListenersTypes(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/AccountManager$18;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 2320
    .local v1, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_52

    .line 2322
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2323
    .local v2, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    iget-object v3, p0, Landroid/accounts/AccountManager$18;->val$accountsCopy:[Landroid/accounts/Account;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v4, :cond_40

    aget-object v6, v3, v5

    .line 2324
    .local v6, "account":Landroid/accounts/Account;
    iget-object v7, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 2325
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2323
    .end local v6    # "account":Landroid/accounts/Account;
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 2328
    :cond_40
    iget-object v3, p0, Landroid/accounts/AccountManager$18;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    .line 2329
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/accounts/Account;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    .line 2328
    invoke-interface {v3, v4}, Landroid/accounts/OnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 2330
    .end local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    goto :goto_59

    .line 2331
    :cond_52
    iget-object v2, p0, Landroid/accounts/AccountManager$18;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    iget-object v3, p0, Landroid/accounts/AccountManager$18;->val$accountsCopy:[Landroid/accounts/Account;

    invoke-interface {v2, v3}, Landroid/accounts/OnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V
    :try_end_59
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_59} :catch_5c
    .catchall {:try_start_7 .. :try_end_59} :catchall_5a

    .line 2338
    .end local v1    # "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_59
    :goto_59
    goto :goto_64

    .line 2339
    :catchall_5a
    move-exception v1

    goto :goto_66

    .line 2334
    :catch_5c
    move-exception v1

    .line 2337
    .local v1, "e":Landroid/database/SQLException;
    :try_start_5d
    const-string v2, "AccountManager"

    const-string v3, "Can\'t update accounts"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2339
    .end local v1    # "e":Landroid/database/SQLException;
    :goto_64
    monitor-exit v0

    .line 2340
    return-void

    .line 2339
    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_5a

    throw v1
.end method
