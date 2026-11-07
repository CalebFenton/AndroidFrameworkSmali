.class public final Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;
.super Ljava/lang/Object;
.source "UnownedUserDataKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/net/connectivity/org/chromium/base/UnownedUserData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mWeakHostAttachments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    .line 76
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->mClazz:Ljava/lang/Class;

    .line 77
    return-void
.end method

.method private blacklist assertNoDestroyedAttachments()V
    .registers 4

    .line 188
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<TT;>;"
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_24

    .line 189
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;

    .line 190
    .local v1, "attachedHost":Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 194
    .end local v1    # "attachedHost":Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
    goto :goto_a

    .line 191
    .restart local v1    # "attachedHost":Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
    :cond_1d
    nop

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 196
    .end local v1    # "attachedHost":Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
    :cond_24
    return-void
.end method

.method private blacklist removeHostAttachment(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;)V
    .registers 3
    .param p1, "host"    # Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;

    .line 183
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<TT;>;"
    invoke-virtual {p1, p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->remove(Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;)V

    .line 184
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method


# virtual methods
.method public final blacklist attachToHost(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;Landroid/net/connectivity/org/chromium/base/UnownedUserData;)V
    .registers 4
    .param p1, "host"    # Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;",
            "TT;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<TT;>;"
    .local p2, "object":Landroid/net/connectivity/org/chromium/base/UnownedUserData;, "TT;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p1, p0, p2}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->set(Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;Landroid/net/connectivity/org/chromium/base/UnownedUserData;)V

    .line 97
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->isAttachedToHost(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 98
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_11
    return-void
.end method

.method public final blacklist detachFromAllHosts(Landroid/net/connectivity/org/chromium/base/UnownedUserData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<TT;>;"
    .local p1, "object":Landroid/net/connectivity/org/chromium/base/UnownedUserData;, "TT;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->assertNoDestroyedAttachments()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;

    .line 146
    .local v1, "attachedHost":Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
    invoke-virtual {v1, p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->get(Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;)Landroid/net/connectivity/org/chromium/base/UnownedUserData;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 147
    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->removeHostAttachment(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;)V

    .line 149
    .end local v1    # "attachedHost":Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
    :cond_27
    goto :goto_e

    .line 150
    :cond_28
    return-void
.end method

.method public final blacklist detachFromHost(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;)V
    .registers 5
    .param p1, "host"    # Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;

    .line 129
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<TT;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->assertNoDestroyedAttachments()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;

    .line 131
    .local v1, "attachedHost":Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 132
    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->removeHostAttachment(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;)V

    .line 134
    .end local v1    # "attachedHost":Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
    :cond_23
    goto :goto_e

    .line 135
    :cond_24
    return-void
.end method

.method blacklist getHostAttachmentCount(Landroid/net/connectivity/org/chromium/base/UnownedUserData;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 172
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<TT;>;"
    .local p1, "object":Landroid/net/connectivity/org/chromium/base/UnownedUserData;, "TT;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->assertNoDestroyedAttachments()V

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "ret":I
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;

    .line 175
    .local v2, "attachedHost":Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
    invoke-virtual {v2, p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->get(Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;)Landroid/net/connectivity/org/chromium/base/UnownedUserData;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 176
    add-int/lit8 v0, v0, 0x1

    .line 178
    .end local v2    # "attachedHost":Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
    :cond_22
    goto :goto_a

    .line 179
    :cond_23
    return v0
.end method

.method final blacklist getValueClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 81
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->mClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public final blacklist isAttachedToAnyHost(Landroid/net/connectivity/org/chromium/base/UnownedUserData;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 167
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<TT;>;"
    .local p1, "object":Landroid/net/connectivity/org/chromium/base/UnownedUserData;, "TT;"
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->getHostAttachmentCount(Landroid/net/connectivity/org/chromium/base/UnownedUserData;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final blacklist isAttachedToHost(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;)Z
    .registers 4
    .param p1, "host"    # Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;

    .line 159
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<TT;>;"
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->retrieveDataFromHost(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;)Landroid/net/connectivity/org/chromium/base/UnownedUserData;

    move-result-object v0

    .line 160
    .local v0, "t":Landroid/net/connectivity/org/chromium/base/UnownedUserData;, "TT;"
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public final blacklist retrieveDataFromHost(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;)Landroid/net/connectivity/org/chromium/base/UnownedUserData;
    .registers 5
    .param p1, "host"    # Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;",
            ")TT;"
        }
    .end annotation

    .line 113
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;, "Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey<TT;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->assertNoDestroyedAttachments()V

    .line 114
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;

    .line 115
    .local v1, "attachedHost":Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 116
    invoke-virtual {p1, p0}, Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;->get(Landroid/net/connectivity/org/chromium/base/UnownedUserDataKey;)Landroid/net/connectivity/org/chromium/base/UnownedUserData;

    move-result-object v0

    return-object v0

    .line 118
    .end local v1    # "attachedHost":Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;
    :cond_20
    goto :goto_9

    .line 119
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method
