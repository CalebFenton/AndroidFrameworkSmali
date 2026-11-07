.class Ljava/util/ServiceLoader$ProviderSpliterator;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProviderSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "Ljava/util/ServiceLoader$Provider<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final blacklist expectedReloadCount:I

.field blacklist index:I

.field final blacklist iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/ServiceLoader$Provider<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/ServiceLoader;


# direct methods
.method constructor blacklist <init>(Ljava/util/ServiceLoader;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/ServiceLoader$Provider<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1448
    .local p0, "this":Ljava/util/ServiceLoader$ProviderSpliterator;, "Ljava/util/ServiceLoader<TS;>.ProviderSpliterator<TT;>;"
    .local p2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/ServiceLoader$Provider<TT;>;>;"
    iput-object p1, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->this$0:Ljava/util/ServiceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1444
    iget-object p1, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {p1}, Ljava/util/ServiceLoader;->-$$Nest$fgetreloadCount(Ljava/util/ServiceLoader;)I

    move-result p1

    iput p1, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->expectedReloadCount:I

    .line 1449
    iput-object p2, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->iterator:Ljava/util/Iterator;

    .line 1450
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1485
    .local p0, "this":Ljava/util/ServiceLoader$ProviderSpliterator;, "Ljava/util/ServiceLoader<TS;>.ProviderSpliterator<TT;>;"
    const/16 v0, 0x10

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1490
    .local p0, "this":Ljava/util/ServiceLoader$ProviderSpliterator;, "Ljava/util/ServiceLoader<TS;>.ProviderSpliterator<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/ServiceLoader$Provider<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 1460
    .local p0, "this":Ljava/util/ServiceLoader$ProviderSpliterator;, "Ljava/util/ServiceLoader<TS;>.ProviderSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/ServiceLoader$Provider<TT;>;>;"
    iget-object v0, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v0}, Ljava/util/ServiceLoader;->-$$Nest$fgetreloadCount(Ljava/util/ServiceLoader;)I

    move-result v0

    iget v1, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->expectedReloadCount:I

    if-ne v0, v1, :cond_5b

    .line 1462
    const/4 v0, 0x0

    .line 1463
    .local v0, "next":Ljava/util/ServiceLoader$Provider;, "Ljava/util/ServiceLoader$Provider<TT;>;"
    iget v1, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->index:I

    iget-object v2, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v2}, Ljava/util/ServiceLoader;->-$$Nest$fgetloadedProviders(Ljava/util/ServiceLoader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2e

    .line 1464
    iget-object v1, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v1}, Ljava/util/ServiceLoader;->-$$Nest$fgetloadedProviders(Ljava/util/ServiceLoader;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->index:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ServiceLoader$Provider;

    goto :goto_53

    .line 1465
    :cond_2e
    iget-object v1, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1466
    iget-object v1, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ServiceLoader$Provider;

    .line 1467
    iget-object v1, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v1}, Ljava/util/ServiceLoader;->-$$Nest$fgetloadedProviders(Ljava/util/ServiceLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1468
    iget v1, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->index:I

    add-int/2addr v1, v3

    iput v1, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->index:I

    goto :goto_53

    .line 1470
    :cond_4e
    iget-object v1, p0, Ljava/util/ServiceLoader$ProviderSpliterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v1, v3}, Ljava/util/ServiceLoader;->-$$Nest$fputloadedAllProviders(Ljava/util/ServiceLoader;Z)V

    .line 1472
    :goto_53
    if-eqz v0, :cond_59

    .line 1473
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1474
    return v3

    .line 1476
    :cond_59
    const/4 v1, 0x0

    return v1

    .line 1461
    .end local v0    # "next":Ljava/util/ServiceLoader$Provider;, "Ljava/util/ServiceLoader$Provider<TT;>;"
    :cond_5b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/ServiceLoader$Provider<",
            "TT;>;>;"
        }
    .end annotation

    .line 1454
    .local p0, "this":Ljava/util/ServiceLoader$ProviderSpliterator;, "Ljava/util/ServiceLoader<TS;>.ProviderSpliterator<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
