.class Ljava/util/WeakHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
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
.method private constructor <init>(Ljava/util/WeakHashMap;)V
    .locals 0

    #@0
    .prologue
    .line 903
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    .local p1, "this$0":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Values;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/WeakHashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$Values;-><init>(Ljava/util/WeakHashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 917
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    #@5
    .line 916
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 913
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

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
    .line 905
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/WeakHashMap$ValueIterator;

    #@2
    iget-object v1, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Ljava/util/WeakHashMap$ValueIterator;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$ValueIterator;)V

    #@8
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 909
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    const/4 v2, 0x0

    #@1
    .line 921
    new-instance v0, Ljava/util/WeakHashMap$ValueSpliterator;

    #@3
    iget-object v1, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    #@5
    const/4 v3, -0x1

    #@6
    move v4, v2

    #@7
    move v5, v2

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$ValueSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    #@b
    return-object v0
.end method
