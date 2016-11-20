.class public Lcom/android/server/wifi/WifiConfigurationUtil;
.super Ljava/lang/Object;
.source "WifiConfigurationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z
    .locals 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x1

    #@1
    .line 38
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 39
    return v4

    #@6
    .line 41
    :cond_0
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@8
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@b
    move-result v0

    #@c
    .line 42
    .local v0, "creatorUserId":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .local v2, "profile$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/content/pm/UserInfo;

    #@1c
    .line 43
    .local v1, "profile":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    #@1e
    if-ne v3, v0, :cond_1

    #@20
    .line 44
    return v4

    #@21
    .line 47
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v3, 0x0

    #@22
    return v3
.end method
