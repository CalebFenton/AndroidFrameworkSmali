.class public Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool;
.super Ljava/lang/Object;
.source "DiscardableReferencePool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mPool:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 26
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 35
    .local v0, "map":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference<*>;Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool;->mPool:Ljava/util/Set;

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist drain()V
    .registers 3

    .line 96
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool;->mPool:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;

    .line 97
    .local v1, "ref":Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;, "Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference<*>;"
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;->-$$Nest$mdiscard(Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;)V

    .line 98
    .end local v1    # "ref":Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;, "Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference<*>;"
    goto :goto_6

    .line 99
    :cond_16
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool;->mPool:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 100
    return-void
.end method

.method public blacklist put(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference<",
            "TT;>;"
        }
    .end annotation

    .line 71
    .local p1, "payload":Ljava/lang/Object;, "TT;"
    nop

    .line 72
    new-instance v0, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;-><init>(Ljava/lang/Object;Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool-IA;)V

    .line 73
    .local v0, "reference":Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;, "Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference<TT;>;"
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool;->mPool:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    return-object v0
.end method

.method public blacklist remove(Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference<",
            "*>;)V"
        }
    .end annotation

    .line 83
    .local p1, "ref":Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;, "Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference<*>;"
    nop

    .line 84
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool;->mPool:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 85
    :cond_a
    nop

    .line 87
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;->-$$Nest$mdiscard(Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;)V

    .line 88
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool;->mPool:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method
