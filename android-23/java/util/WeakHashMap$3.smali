.class Ljava/util/WeakHashMap$3;
.super Ljava/util/AbstractCollection;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/WeakHashMap;->values()Ljava/util/Collection;
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
.field final synthetic this$0:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;)V
    .locals 0

    #@0
    .prologue
    .line 415
    .local p1, "this$0":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/WeakHashMap$3;->this$0:Ljava/util/WeakHashMap;

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
    .line 423
    iget-object v0, p0, Ljava/util/WeakHashMap$3;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    #@5
    .line 422
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Ljava/util/WeakHashMap$3;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsValue(Ljava/lang/Object;)Z

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
    .line 433
    new-instance v0, Ljava/util/WeakHashMap$HashIterator;

    #@2
    iget-object v1, p0, Ljava/util/WeakHashMap$3;->this$0:Ljava/util/WeakHashMap;

    #@4
    new-instance v2, Ljava/util/WeakHashMap$3$1;

    #@6
    invoke-direct {v2, p0}, Ljava/util/WeakHashMap$3$1;-><init>(Ljava/util/WeakHashMap$3;)V

    #@9
    invoke-direct {v0, v1, v2}, Ljava/util/WeakHashMap$HashIterator;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Entry$Type;)V

    #@c
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 418
    iget-object v0, p0, Ljava/util/WeakHashMap$3;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
