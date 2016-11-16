.class Ljava/util/ServiceLoader$1;
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
        "Ljava/util/Iterator",
        "<TS;>;"
    }
.end annotation


# instance fields
.field knownProviders:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TS;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/ServiceLoader;


# direct methods
.method constructor <init>(Ljava/util/ServiceLoader;)V
    .locals 1

    #@0
    .prologue
    .line 434
    .local p1, "this$0":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    iput-object p1, p0, Ljava/util/ServiceLoader$1;->this$0:Ljava/util/ServiceLoader;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 437
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->this$0:Ljava/util/ServiceLoader;

    #@7
    invoke-static {v0}, Ljava/util/ServiceLoader;->-get1(Ljava/util/ServiceLoader;)Ljava/util/LinkedHashMap;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v0

    #@13
    .line 436
    iput-object v0, p0, Ljava/util/ServiceLoader$1;->knownProviders:Ljava/util/Iterator;

    #@15
    .line 434
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 440
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->knownProviders:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 441
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 442
    :cond_0
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->this$0:Ljava/util/ServiceLoader;

    #@c
    invoke-static {v0}, Ljava/util/ServiceLoader;->-get0(Ljava/util/ServiceLoader;)Ljava/util/ServiceLoader$LazyIterator;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/util/ServiceLoader$LazyIterator;->hasNext()Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->knownProviders:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 447
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->knownProviders:Ljava/util/Iterator;

    #@a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/Map$Entry;

    #@10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 448
    :cond_0
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->this$0:Ljava/util/ServiceLoader;

    #@17
    invoke-static {v0}, Ljava/util/ServiceLoader;->-get0(Ljava/util/ServiceLoader;)Ljava/util/ServiceLoader$LazyIterator;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/util/ServiceLoader$LazyIterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 452
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
