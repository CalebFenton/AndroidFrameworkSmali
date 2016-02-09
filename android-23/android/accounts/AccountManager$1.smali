.class Landroid/accounts/AccountManager$1;
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
.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;

    #@0
    .prologue
    .line 2486
    iput-object p1, p0, Landroid/accounts/AccountManager$1;->this$0:Landroid/accounts/AccountManager;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2488
    iget-object v3, p0, Landroid/accounts/AccountManager$1;->this$0:Landroid/accounts/AccountManager;

    #@2
    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    #@5
    move-result-object v0

    #@6
    .line 2490
    .local v0, "accounts":[Landroid/accounts/Account;
    iget-object v3, p0, Landroid/accounts/AccountManager$1;->this$0:Landroid/accounts/AccountManager;

    #@8
    invoke-static {v3}, Landroid/accounts/AccountManager;->-get0(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    #@b
    move-result-object v5

    #@c
    monitor-enter v5

    #@d
    .line 2492
    :try_start_0
    iget-object v3, p0, Landroid/accounts/AccountManager$1;->this$0:Landroid/accounts/AccountManager;

    #@f
    invoke-static {v3}, Landroid/accounts/AccountManager;->-get0(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@16
    move-result-object v3

    #@17
    .line 2491
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v2

    #@1b
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Ljava/util/Map$Entry;

    #@27
    .line 2493
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;>;"
    iget-object v6, p0, Landroid/accounts/AccountManager$1;->this$0:Landroid/accounts/AccountManager;

    #@29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, Landroid/os/Handler;

    #@2f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, Landroid/accounts/OnAccountsUpdateListener;

    #@35
    invoke-static {v6, v3, v4, v0}, Landroid/accounts/AccountManager;->-wrap3(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 2490
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit v5

    #@3b
    throw v3

    #@3c
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v5

    #@3d
    .line 2487
    return-void
.end method
