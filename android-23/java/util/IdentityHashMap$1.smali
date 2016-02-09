.class Ljava/util/IdentityHashMap$1;
.super Ljava/util/AbstractSet;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0

    #@0
    .prologue
    .line 611
    .local p1, "this$0":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$1;->this$0:Ljava/util/IdentityHashMap;

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
    .line 624
    iget-object v0, p0, Ljava/util/IdentityHashMap$1;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    #@5
    .line 623
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 614
    iget-object v0, p0, Ljava/util/IdentityHashMap$1;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

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
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 638
    new-instance v0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;

    #@2
    .line 639
    new-instance v1, Ljava/util/IdentityHashMap$1$1;

    #@4
    invoke-direct {v1, p0}, Ljava/util/IdentityHashMap$1$1;-><init>(Ljava/util/IdentityHashMap$1;)V

    #@7
    .line 643
    iget-object v2, p0, Ljava/util/IdentityHashMap$1;->this$0:Ljava/util/IdentityHashMap;

    #@9
    .line 638
    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/IdentityHashMap;)V

    #@c
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 629
    iget-object v0, p0, Ljava/util/IdentityHashMap$1;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 630
    iget-object v0, p0, Ljava/util/IdentityHashMap$1;->this$0:Ljava/util/IdentityHashMap;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 631
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 633
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 619
    iget-object v0, p0, Ljava/util/IdentityHashMap$1;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
