.class Landroid/accounts/AccountManager$20;
.super Landroid/content/BroadcastReceiver;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2967
    iput-object p1, p0, Landroid/accounts/AccountManager$20;->this$0:Landroid/accounts/AccountManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2970
    iget-object v0, p0, Landroid/accounts/AccountManager$20;->this$0:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 2972
    .local v0, "accounts":[Landroid/accounts/Account;
    iget-object v1, p0, Landroid/accounts/AccountManager$20;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v1}, Landroid/accounts/AccountManager;->-$$Nest$fgetmAccountsUpdatedListeners(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 2974
    :try_start_d
    iget-object v2, p0, Landroid/accounts/AccountManager$20;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v2}, Landroid/accounts/AccountManager;->-$$Nest$fgetmAccountsUpdatedListeners(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2975
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;>;"
    iget-object v4, p0, Landroid/accounts/AccountManager$20;->this$0:Landroid/accounts/AccountManager;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/OnAccountsUpdateListener;

    invoke-static {v4, v5, v6, v0}, Landroid/accounts/AccountManager;->-$$Nest$mpostToHandler(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V

    .line 2976
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;>;"
    goto :goto_1b

    .line 2977
    :cond_39
    monitor-exit v1

    .line 2978
    return-void

    .line 2977
    :catchall_3b
    move-exception v2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_3b

    throw v2
.end method
