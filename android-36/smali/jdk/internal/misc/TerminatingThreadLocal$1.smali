.class Ljdk/internal/misc/TerminatingThreadLocal$1;
.super Ljava/lang/ThreadLocal;
.source "TerminatingThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/misc/TerminatingThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/Collection<",
        "Ljdk/internal/misc/TerminatingThreadLocal<",
        "*>;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2

    .line 99
    invoke-virtual {p0}, Ljdk/internal/misc/TerminatingThreadLocal$1;->initialValue()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist initialValue()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljdk/internal/misc/TerminatingThreadLocal<",
            "*>;>;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/IdentityHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
