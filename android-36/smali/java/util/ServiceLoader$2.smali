.class Ljava/util/ServiceLoader$2;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final blacklist expectedReloadCount:I

.field blacklist index:I

.field final synthetic blacklist this$0:Ljava/util/ServiceLoader;


# direct methods
.method constructor blacklist <init>(Ljava/util/ServiceLoader;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/ServiceLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1345
    .local p0, "this":Ljava/util/ServiceLoader$2;, "Ljava/util/ServiceLoader$2;"
    iput-object p1, p0, Ljava/util/ServiceLoader$2;->this$0:Ljava/util/ServiceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    iget-object v0, p0, Ljava/util/ServiceLoader$2;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v0}, Ljava/util/ServiceLoader;->-$$Nest$fgetreloadCount(Ljava/util/ServiceLoader;)I

    move-result v0

    iput v0, p0, Ljava/util/ServiceLoader$2;->expectedReloadCount:I

    return-void
.end method

.method private blacklist checkReloadCount()V
    .registers 3

    .line 1358
    .local p0, "this":Ljava/util/ServiceLoader$2;, "Ljava/util/ServiceLoader$2;"
    iget-object v0, p0, Ljava/util/ServiceLoader$2;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v0}, Ljava/util/ServiceLoader;->-$$Nest$fgetreloadCount(Ljava/util/ServiceLoader;)I

    move-result v0

    iget v1, p0, Ljava/util/ServiceLoader$2;->expectedReloadCount:I

    if-ne v0, v1, :cond_b

    .line 1360
    return-void

    .line 1359
    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 1364
    .local p0, "this":Ljava/util/ServiceLoader$2;, "Ljava/util/ServiceLoader$2;"
    invoke-direct {p0}, Ljava/util/ServiceLoader$2;->checkReloadCount()V

    .line 1365
    iget v0, p0, Ljava/util/ServiceLoader$2;->index:I

    iget-object v1, p0, Ljava/util/ServiceLoader$2;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v1}, Ljava/util/ServiceLoader;->-$$Nest$fgetinstantiatedProviders(Ljava/util/ServiceLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1366
    const/4 v0, 0x1

    return v0

    .line 1367
    :cond_13
    iget-object v0, p0, Ljava/util/ServiceLoader$2;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v0}, Ljava/util/ServiceLoader;->-$$Nest$fgetlookupIterator1(Ljava/util/ServiceLoader;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1372
    .local p0, "this":Ljava/util/ServiceLoader$2;, "Ljava/util/ServiceLoader$2;"
    invoke-direct {p0}, Ljava/util/ServiceLoader$2;->checkReloadCount()V

    .line 1374
    iget v0, p0, Ljava/util/ServiceLoader$2;->index:I

    iget-object v1, p0, Ljava/util/ServiceLoader$2;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v1}, Ljava/util/ServiceLoader;->-$$Nest$fgetinstantiatedProviders(Ljava/util/ServiceLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1375
    iget-object v0, p0, Ljava/util/ServiceLoader$2;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v0}, Ljava/util/ServiceLoader;->-$$Nest$fgetinstantiatedProviders(Ljava/util/ServiceLoader;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Ljava/util/ServiceLoader$2;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "next":Ljava/lang/Object;, "TS;"
    goto :goto_37

    .line 1377
    .end local v0    # "next":Ljava/lang/Object;, "TS;"
    :cond_1e
    iget-object v0, p0, Ljava/util/ServiceLoader$2;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v0}, Ljava/util/ServiceLoader;->-$$Nest$fgetlookupIterator1(Ljava/util/ServiceLoader;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ServiceLoader$Provider;

    invoke-interface {v0}, Ljava/util/ServiceLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1378
    .restart local v0    # "next":Ljava/lang/Object;, "TS;"
    iget-object v1, p0, Ljava/util/ServiceLoader$2;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v1}, Ljava/util/ServiceLoader;->-$$Nest$fgetinstantiatedProviders(Ljava/util/ServiceLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    :goto_37
    iget v1, p0, Ljava/util/ServiceLoader$2;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ServiceLoader$2;->index:I

    .line 1381
    return-object v0
.end method
