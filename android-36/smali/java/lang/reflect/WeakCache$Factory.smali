.class final Ljava/lang/reflect/WeakCache$Factory;
.super Ljava/lang/Object;
.source "WeakCache.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/WeakCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final greylist-max-o key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final greylist-max-o parameter:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final greylist-max-o subKey:Ljava/lang/Object;

.field final synthetic blacklist this$0:Ljava/lang/reflect/WeakCache;

.field private final greylist-max-o valuesMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Object;",
            "Ljava/util/function/Supplier<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 198
    const-class v0, Ljava/lang/reflect/WeakCache;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/reflect/WeakCache;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 6
    .param p4, "subKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TP;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Object;",
            "Ljava/util/function/Supplier<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 206
    .local p0, "this":Ljava/lang/reflect/WeakCache$Factory;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>.Factory;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "parameter":Ljava/lang/Object;, "TP;"
    .local p5, "valuesMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Object;Ljava/util/function/Supplier<TV;>;>;"
    iput-object p1, p0, Ljava/lang/reflect/WeakCache$Factory;->this$0:Ljava/lang/reflect/WeakCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p2, p0, Ljava/lang/reflect/WeakCache$Factory;->key:Ljava/lang/Object;

    .line 208
    iput-object p3, p0, Ljava/lang/reflect/WeakCache$Factory;->parameter:Ljava/lang/Object;

    .line 209
    iput-object p4, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    .line 210
    iput-object p5, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    .line 211
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api get()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .local p0, "this":Ljava/lang/reflect/WeakCache$Factory;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>.Factory;"
    monitor-enter p0

    .line 216
    :try_start_1
    iget-object v0, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_5c

    .line 217
    .local v0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TV;>;"
    if-eq v0, p0, :cond_10

    .line 223
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 228
    :cond_10
    const/4 v1, 0x0

    .line 230
    .local v1, "value":Ljava/lang/Object;, "TV;"
    :try_start_11
    iget-object v2, p0, Ljava/lang/reflect/WeakCache$Factory;->this$0:Ljava/lang/reflect/WeakCache;

    invoke-static {v2}, Ljava/lang/reflect/WeakCache;->-$$Nest$fgetvalueFactory(Ljava/lang/reflect/WeakCache;)Ljava/util/function/BiFunction;

    move-result-object v2

    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->key:Ljava/lang/Object;

    iget-object v4, p0, Ljava/lang/reflect/WeakCache$Factory;->parameter:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_51

    .line 232
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    .local v2, "value":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_2c

    .line 233
    :try_start_25
    iget-object v1, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    invoke-interface {v1, v3, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .end local p0    # "this":Ljava/lang/reflect/WeakCache$Factory;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>.Factory;"
    :cond_2c
    nop

    .line 240
    new-instance v1, Ljava/lang/reflect/WeakCache$CacheValue;

    invoke-direct {v1, v2}, Ljava/lang/reflect/WeakCache$CacheValue;-><init>(Ljava/lang/Object;)V

    .line 243
    .local v1, "cacheValue":Ljava/lang/reflect/WeakCache$CacheValue;, "Ljava/lang/reflect/WeakCache$CacheValue<TV;>;"
    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    invoke-interface {v3, v4, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 245
    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->this$0:Ljava/lang/reflect/WeakCache;

    invoke-static {v3}, Ljava/lang/reflect/WeakCache;->-$$Nest$fgetreverseMap(Ljava/lang/reflect/WeakCache;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_25 .. :try_end_47} :catchall_5c

    .line 252
    monitor-exit p0

    return-object v2

    .line 247
    :cond_49
    :try_start_49
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Should not reach here"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 232
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    .local v1, "value":Ljava/lang/Object;, "TV;"
    :catchall_51
    move-exception v2

    if-nez v1, :cond_5b

    .line 233
    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    invoke-interface {v3, v4, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    :cond_5b
    throw v2

    .line 215
    .end local v0    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TV;>;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :catchall_5c
    move-exception v0

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_49 .. :try_end_5e} :catchall_5c

    throw v0
.end method
