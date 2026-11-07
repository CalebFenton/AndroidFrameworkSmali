.class public Ljava/lang/ThreadLocal;
.super Ljava/lang/Object;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ThreadLocal$SuppliedThreadLocal;,
        Ljava/lang/ThreadLocal$ThreadLocalMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final greylist-max-o HASH_INCREMENT:I = 0x61c88647

.field private static greylist-max-o nextHashCode:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final greylist-max-o threadLocalHashCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetthreadLocalHashCode(Ljava/lang/ThreadLocal;)I
    .registers 1

    iget p0, p0, Ljava/lang/ThreadLocal;->threadLocalHashCode:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Ljava/lang/ThreadLocal;->nextHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 150
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Ljava/lang/ThreadLocal;->nextHashCode()I

    move-result v0

    iput v0, p0, Ljava/lang/ThreadLocal;->threadLocalHashCode:I

    .line 151
    return-void
.end method

.method static greylist-max-o createInheritedMap(Ljava/lang/ThreadLocal$ThreadLocalMap;)Ljava/lang/ThreadLocal$ThreadLocalMap;
    .registers 3
    .param p0, "parentMap"    # Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 276
    new-instance v0, Ljava/lang/ThreadLocal$ThreadLocalMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;-><init>(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal-IA;)V

    return-object v0
.end method

.method private static greylist-max-o nextHashCode()I
    .registers 2

    .line 107
    sget-object v0, Ljava/lang/ThreadLocal;->nextHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x61c88647

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o setInitialValue()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 195
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->initialValue()Ljava/lang/Object;

    move-result-object v0

    .line 196
    .local v0, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 197
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {p0, v1}, Ljava/lang/ThreadLocal;->getMap(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v2

    .line 198
    .local v2, "map":Ljava/lang/ThreadLocal$ThreadLocalMap;
    if-eqz v2, :cond_12

    .line 199
    invoke-static {v2, p0, v0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->-$$Nest$mset(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    goto :goto_15

    .line 201
    :cond_12
    invoke-virtual {p0, v1, v0}, Ljava/lang/ThreadLocal;->createMap(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 203
    :goto_15
    instance-of v3, p0, Ljdk/internal/misc/TerminatingThreadLocal;

    if-eqz v3, :cond_1f

    .line 204
    move-object v3, p0

    check-cast v3, Ljdk/internal/misc/TerminatingThreadLocal;

    invoke-static {v3}, Ljdk/internal/misc/TerminatingThreadLocal;->register(Ljdk/internal/misc/TerminatingThreadLocal;)V

    .line 206
    :cond_1f
    return-object v0
.end method

.method public static whitelist test-api withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+TS;>;)",
            "Ljava/lang/ThreadLocal<",
            "TS;>;"
        }
    .end annotation

    .line 143
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TS;>;"
    new-instance v0, Ljava/lang/ThreadLocal$SuppliedThreadLocal;

    invoke-direct {v0, p0}, Ljava/lang/ThreadLocal$SuppliedThreadLocal;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method


# virtual methods
.method greylist-max-o childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 288
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    .local p1, "parentValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 265
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    .local p2, "firstValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/ThreadLocal$ThreadLocalMap;

    invoke-direct {v0, p0, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    iput-object v0, p1, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 266
    return-void
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 162
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 163
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->getMap(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v1

    .line 164
    .local v1, "map":Ljava/lang/ThreadLocal$ThreadLocalMap;
    if-eqz v1, :cond_13

    .line 165
    invoke-static {v1, p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->-$$Nest$mgetEntry(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    move-result-object v2

    .line 166
    .local v2, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v2, :cond_13

    .line 168
    iget-object v3, v2, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 169
    .local v3, "result":Ljava/lang/Object;, "TT;"
    return-object v3

    .line 172
    .end local v2    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    :cond_13
    invoke-direct {p0}, Ljava/lang/ThreadLocal;->setInitialValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method greylist-max-r getMap(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$ThreadLocalMap;
    .registers 3
    .param p1, "t"    # Ljava/lang/Thread;

    .line 254
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    iget-object v0, p1, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    return-object v0
.end method

.method protected whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 129
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist isPresent()Z
    .registers 4

    .line 183
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 184
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->getMap(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v1

    .line 185
    .local v1, "map":Ljava/lang/ThreadLocal$ThreadLocalMap;
    if-eqz v1, :cond_12

    invoke-static {v1, p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->-$$Nest$mgetEntry(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    move-result-object v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 240
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->getMap(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v0

    .line 241
    .local v0, "m":Ljava/lang/ThreadLocal$ThreadLocalMap;
    if-eqz v0, :cond_d

    .line 242
    invoke-static {v0, p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->-$$Nest$mremove(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)V

    .line 244
    :cond_d
    return-void
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 219
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 220
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->getMap(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v1

    .line 221
    .local v1, "map":Ljava/lang/ThreadLocal$ThreadLocalMap;
    if-eqz v1, :cond_e

    .line 222
    invoke-static {v1, p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->-$$Nest$mset(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    goto :goto_11

    .line 224
    :cond_e
    invoke-virtual {p0, v0, p1}, Ljava/lang/ThreadLocal;->createMap(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 226
    :goto_11
    return-void
.end method
