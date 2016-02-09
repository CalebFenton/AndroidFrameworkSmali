.class Ljava/util/WeakHashMap$2;
.super Ljava/util/AbstractSet;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;
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
.field final synthetic this$0:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;)V
    .locals 0

    #@0
    .prologue
    .line 354
    .local p1, "this$0":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/WeakHashMap$2;->this$0:Ljava/util/WeakHashMap;

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
    .line 367
    iget-object v0, p0, Ljava/util/WeakHashMap$2;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    #@5
    .line 366
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Ljava/util/WeakHashMap$2;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

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
    .line 381
    new-instance v0, Ljava/util/WeakHashMap$HashIterator;

    #@2
    iget-object v1, p0, Ljava/util/WeakHashMap$2;->this$0:Ljava/util/WeakHashMap;

    #@4
    new-instance v2, Ljava/util/WeakHashMap$2$1;

    #@6
    invoke-direct {v2, p0}, Ljava/util/WeakHashMap$2$1;-><init>(Ljava/util/WeakHashMap$2;)V

    #@9
    invoke-direct {v0, v1, v2}, Ljava/util/WeakHashMap$HashIterator;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Entry$Type;)V

    #@c
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Ljava/util/WeakHashMap$2;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 373
    iget-object v0, p0, Ljava/util/WeakHashMap$2;->this$0:Ljava/util/WeakHashMap;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 374
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 376
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Ljava/util/WeakHashMap$2;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
