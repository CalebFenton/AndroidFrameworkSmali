.class Ljava/util/WeakHashMap$1;
.super Ljava/util/AbstractSet;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;)V
    .locals 0

    #@0
    .prologue
    .line 295
    .local p1, "this$0":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    #@5
    .line 302
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 318
    instance-of v2, p1, Ljava/util/Map$Entry;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 319
    iget-object v3, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    #@6
    move-object v2, p1

    #@7
    check-cast v2, Ljava/util/Map$Entry;

    #@9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    #@10
    move-result-object v0

    #@11
    .line 321
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<**>;"
    if-eqz v0, :cond_1

    #@13
    .line 322
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    .line 323
    .local v1, "key":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@19
    iget-boolean v2, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 324
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    return v2

    #@22
    .line 328
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<**>;"
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    #@23
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 333
    new-instance v0, Ljava/util/WeakHashMap$HashIterator;

    #@2
    iget-object v1, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    #@4
    .line 334
    new-instance v2, Ljava/util/WeakHashMap$1$1;

    #@6
    invoke-direct {v2, p0}, Ljava/util/WeakHashMap$1$1;-><init>(Ljava/util/WeakHashMap$1;)V

    #@9
    .line 333
    invoke-direct {v0, v1, v2}, Ljava/util/WeakHashMap$HashIterator;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Entry$Type;)V

    #@c
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 308
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap$1;->contains(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 309
    iget-object v0, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    #@8
    .line 310
    check-cast p1, Ljava/util/Map$Entry;

    #@a
    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    .line 309
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 311
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 313
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
