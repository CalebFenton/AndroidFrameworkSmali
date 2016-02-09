.class Ljava/util/IdentityHashMap$2;
.super Ljava/util/AbstractCollection;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0

    #@0
    .prologue
    .line 672
    .local p1, "this$0":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$2;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 685
    iget-object v0, p0, Ljava/util/IdentityHashMap$2;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    #@5
    .line 684
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 675
    iget-object v0, p0, Ljava/util/IdentityHashMap$2;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsValue(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 690
    new-instance v0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;

    #@2
    .line 691
    new-instance v1, Ljava/util/IdentityHashMap$2$1;

    #@4
    invoke-direct {v1, p0}, Ljava/util/IdentityHashMap$2$1;-><init>(Ljava/util/IdentityHashMap$2;)V

    #@7
    .line 695
    iget-object v2, p0, Ljava/util/IdentityHashMap$2;->this$0:Ljava/util/IdentityHashMap;

    #@9
    .line 690
    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/IdentityHashMap;)V

    #@c
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 700
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$2;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 701
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 702
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    if-ne p1, v1, :cond_0

    #@10
    .line 703
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@13
    .line 704
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 707
    :cond_1
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 680
    iget-object v0, p0, Ljava/util/IdentityHashMap$2;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
