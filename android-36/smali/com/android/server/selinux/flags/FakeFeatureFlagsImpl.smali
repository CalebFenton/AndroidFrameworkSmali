.class public Lcom/android/server/selinux/flags/FakeFeatureFlagsImpl;
.super Lcom/android/server/selinux/flags/CustomFeatureFlags;
.source "FakeFeatureFlagsImpl.java"


# instance fields
.field private final blacklist mDefaults:Lcom/android/server/selinux/flags/FeatureFlags;

.field private final blacklist mFlagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/selinux/flags/FakeFeatureFlagsImpl;-><init>(Lcom/android/server/selinux/flags/FeatureFlags;)V

    .line 13
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/server/selinux/flags/FeatureFlags;)V
    .registers 6
    .param p1, "defaults"    # Lcom/android/server/selinux/flags/FeatureFlags;

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/selinux/flags/CustomFeatureFlags;-><init>(Ljava/util/function/BiPredicate;)V

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/selinux/flags/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    .line 17
    iput-object p1, p0, Lcom/android/server/selinux/flags/FakeFeatureFlagsImpl;->mDefaults:Lcom/android/server/selinux/flags/FeatureFlags;

    .line 19
    invoke-virtual {p0}, Lcom/android/server/selinux/flags/FakeFeatureFlagsImpl;->getFlagNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 20
    .local v2, "flagName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/selinux/flags/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .end local v2    # "flagName":Ljava/lang/String;
    goto :goto_15

    .line 22
    :cond_27
    return-void
.end method


# virtual methods
.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 7
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/selinux/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 26
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/selinux/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/server/selinux/flags/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 27
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_f

    .line 28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 30
    :cond_f
    iget-object v1, p0, Lcom/android/server/selinux/flags/FakeFeatureFlagsImpl;->mDefaults:Lcom/android/server/selinux/flags/FeatureFlags;

    if-eqz v1, :cond_1a

    .line 31
    iget-object v1, p0, Lcom/android/server/selinux/flags/FakeFeatureFlagsImpl;->mDefaults:Lcom/android/server/selinux/flags/FeatureFlags;

    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 33
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist resetAll()V
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/android/server/selinux/flags/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    .local v1, "entry":Ljava/util/Map$Entry;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_a

    .line 47
    :cond_1b
    return-void
.end method

.method public blacklist setFlag(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 37
    iget-object v0, p0, Lcom/android/server/selinux/flags/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 40
    iget-object v0, p0, Lcom/android/server/selinux/flags/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void

    .line 38
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
