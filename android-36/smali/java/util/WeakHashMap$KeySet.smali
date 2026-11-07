.class Ljava/util/WeakHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
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

    .line 884
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$KeySet;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 907
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 908
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 894
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 886
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/WeakHashMap$KeyIterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/WeakHashMap$KeyIterator;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap-IA;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 898
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 899
    iget-object v0, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const/4 v0, 0x1

    return v0

    .line 903
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 890
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

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
            "TK;>;"
        }
    .end annotation

    .line 911
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/WeakHashMap$KeySpliterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$KeySpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    return-object v0
.end method
