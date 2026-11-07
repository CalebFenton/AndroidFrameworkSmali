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
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/WeakHashMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/WeakHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 937
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    iput-object p1, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$Values;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 951
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 952
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 947
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 939
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/WeakHashMap$ValueIterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/WeakHashMap$ValueIterator;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap-IA;)V

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 943
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 955
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/WeakHashMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$ValueSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    return-object v0
.end method
