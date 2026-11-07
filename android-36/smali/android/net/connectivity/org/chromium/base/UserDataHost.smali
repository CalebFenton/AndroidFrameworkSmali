.class public final Landroid/net/connectivity/org/chromium/base/UserDataHost;
.super Ljava/lang/Object;
.source "UserDataHost.java"


# instance fields
.field private final blacklist mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

.field private blacklist mUserDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/net/connectivity/org/chromium/base/UserData;",
            ">;",
            "Landroid/net/connectivity/org/chromium/base/UserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/UserDataHost;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/UserDataHost;->mUserDataMap:Ljava/util/HashMap;

    return-void
.end method

.method private static blacklist checkArgument(Z)V
    .registers 3
    .param p0, "condition"    # Z

    .line 57
    if-eqz p0, :cond_3

    .line 61
    return-void

    .line 58
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither key nor object of UserDataHost can be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkThreadAndState()V
    .registers 3

    .line 64
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UserDataHost;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 65
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UserDataHost;->mUserDataMap:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    .line 68
    return-void

    .line 66
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation is not allowed after destroy()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 4

    .line 120
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/UserDataHost;->checkThreadAndState()V

    .line 124
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UserDataHost;->mUserDataMap:Ljava/util/HashMap;

    .line 125
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<+Landroid/net/connectivity/org/chromium/base/UserData;>;Landroid/net/connectivity/org/chromium/base/UserData;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/UserDataHost;->mUserDataMap:Ljava/util/HashMap;

    .line 126
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/base/UserData;

    .local v2, "userData":Landroid/net/connectivity/org/chromium/base/UserData;
    invoke-interface {v2}, Landroid/net/connectivity/org/chromium/base/UserData;->destroy()V

    .end local v2    # "userData":Landroid/net/connectivity/org/chromium/base/UserData;
    goto :goto_10

    .line 127
    :cond_20
    return-void
.end method

.method public blacklist getUserData(Ljava/lang/Class;)Landroid/net/connectivity/org/chromium/base/UserData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/net/connectivity/org/chromium/base/UserData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 92
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/UserDataHost;->checkThreadAndState()V

    .line 93
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/UserDataHost;->checkArgument(Z)V

    .line 95
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UserDataHost;->mUserDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/UserData;

    return-object v0
.end method

.method public blacklist removeUserData(Ljava/lang/Class;)Landroid/net/connectivity/org/chromium/base/UserData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/net/connectivity/org/chromium/base/UserData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 105
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/UserDataHost;->checkThreadAndState()V

    .line 106
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/UserDataHost;->checkArgument(Z)V

    .line 108
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UserDataHost;->mUserDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 111
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UserDataHost;->mUserDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/UserData;

    return-object v0

    .line 109
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UserData for the key is not present."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setUserData(Ljava/lang/Class;Landroid/net/connectivity/org/chromium/base/UserData;)Landroid/net/connectivity/org/chromium/base/UserData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/net/connectivity/org/chromium/base/UserData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 77
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "object":Landroid/net/connectivity/org/chromium/base/UserData;, "TT;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/UserDataHost;->checkThreadAndState()V

    .line 78
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/UserDataHost;->checkArgument(Z)V

    .line 80
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UserDataHost;->mUserDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/base/UserDataHost;->getUserData(Ljava/lang/Class;)Landroid/net/connectivity/org/chromium/base/UserData;

    move-result-object v0

    return-object v0
.end method
