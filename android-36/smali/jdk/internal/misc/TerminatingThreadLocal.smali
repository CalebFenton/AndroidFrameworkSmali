.class public Ljdk/internal/misc/TerminatingThreadLocal;
.super Ljava/lang/ThreadLocal;
.source "TerminatingThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ThreadLocal<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final blacklist REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Collection<",
            "Ljdk/internal/misc/TerminatingThreadLocal<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Ljdk/internal/misc/TerminatingThreadLocal$1;

    invoke-direct {v0}, Ljdk/internal/misc/TerminatingThreadLocal$1;-><init>()V

    sput-object v0, Ljdk/internal/misc/TerminatingThreadLocal;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    .local p0, "this":Ljdk/internal/misc/TerminatingThreadLocal;, "Ljdk/internal/misc/TerminatingThreadLocal<TT;>;"
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private blacklist _threadTerminated()V
    .registers 2

    .line 74
    .local p0, "this":Ljdk/internal/misc/TerminatingThreadLocal;, "Ljdk/internal/misc/TerminatingThreadLocal<TT;>;"
    invoke-virtual {p0}, Ljdk/internal/misc/TerminatingThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljdk/internal/misc/TerminatingThreadLocal;->threadTerminated(Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist register(Ljdk/internal/misc/TerminatingThreadLocal;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljdk/internal/misc/TerminatingThreadLocal<",
            "*>;)V"
        }
    .end annotation

    .line 82
    .local p0, "tl":Ljdk/internal/misc/TerminatingThreadLocal;, "Ljdk/internal/misc/TerminatingThreadLocal<*>;"
    sget-object v0, Ljdk/internal/misc/TerminatingThreadLocal;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public static blacklist threadTerminated()V
    .registers 2

    .line 69
    sget-object v0, Ljdk/internal/misc/TerminatingThreadLocal;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdk/internal/misc/TerminatingThreadLocal;

    .line 70
    .local v1, "ttl":Ljdk/internal/misc/TerminatingThreadLocal;, "Ljdk/internal/misc/TerminatingThreadLocal<*>;"
    invoke-direct {v1}, Ljdk/internal/misc/TerminatingThreadLocal;->_threadTerminated()V

    .line 71
    .end local v1    # "ttl":Ljdk/internal/misc/TerminatingThreadLocal;, "Ljdk/internal/misc/TerminatingThreadLocal<*>;"
    goto :goto_c

    .line 72
    :cond_1c
    return-void
.end method

.method private static blacklist unregister(Ljdk/internal/misc/TerminatingThreadLocal;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljdk/internal/misc/TerminatingThreadLocal<",
            "*>;)V"
        }
    .end annotation

    .line 91
    .local p0, "tl":Ljdk/internal/misc/TerminatingThreadLocal;, "Ljdk/internal/misc/TerminatingThreadLocal<*>;"
    sget-object v0, Ljdk/internal/misc/TerminatingThreadLocal;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method


# virtual methods
.method public whitelist test-api remove()V
    .registers 1

    .line 46
    .local p0, "this":Ljdk/internal/misc/TerminatingThreadLocal;, "Ljdk/internal/misc/TerminatingThreadLocal<TT;>;"
    invoke-super {p0}, Ljava/lang/ThreadLocal;->remove()V

    .line 47
    invoke-static {p0}, Ljdk/internal/misc/TerminatingThreadLocal;->unregister(Ljdk/internal/misc/TerminatingThreadLocal;)V

    .line 48
    return-void
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Ljdk/internal/misc/TerminatingThreadLocal;, "Ljdk/internal/misc/TerminatingThreadLocal<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 41
    invoke-static {p0}, Ljdk/internal/misc/TerminatingThreadLocal;->register(Ljdk/internal/misc/TerminatingThreadLocal;)V

    .line 42
    return-void
.end method

.method protected blacklist threadTerminated(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Ljdk/internal/misc/TerminatingThreadLocal;, "Ljdk/internal/misc/TerminatingThreadLocal<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    return-void
.end method
