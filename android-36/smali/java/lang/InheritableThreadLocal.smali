.class public Ljava/lang/InheritableThreadLocal;
.super Ljava/lang/ThreadLocal;
.source "InheritableThreadLocal.java"


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


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 53
    .local p0, "this":Ljava/lang/InheritableThreadLocal;, "Ljava/lang/InheritableThreadLocal<TT;>;"
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 67
    .local p0, "this":Ljava/lang/InheritableThreadLocal;, "Ljava/lang/InheritableThreadLocal<TT;>;"
    .local p1, "parentValue":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

.method greylist-max-o createMap(Ljava/lang/Thread;Ljava/lang/Object;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "TT;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Ljava/lang/InheritableThreadLocal;, "Ljava/lang/InheritableThreadLocal<TT;>;"
    .local p2, "firstValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/ThreadLocal$ThreadLocalMap;

    invoke-direct {v0, p0, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    iput-object v0, p1, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 87
    return-void
.end method

.method greylist-max-o getMap(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$ThreadLocalMap;
    .registers 3
    .param p1, "t"    # Ljava/lang/Thread;

    .line 76
    .local p0, "this":Ljava/lang/InheritableThreadLocal;, "Ljava/lang/InheritableThreadLocal<TT;>;"
    iget-object v0, p1, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    return-object v0
.end method
