.class Ljava/util/IdentityHashMap$EntryIterator;
.super Ljava/util/IdentityHashMap$IdentityHashMapIterator;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/IdentityHashMap$EntryIterator$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/IdentityHashMap",
        "<TK;TV;>.IdentityHashMapIterator<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>.EntryIterator.Entry;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    .local p1, "this$0":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 842
    iput-object p1, p0, Ljava/util/IdentityHashMap$EntryIterator;->this$0:Ljava/util/IdentityHashMap;

    #@3
    invoke-direct {p0, p1, v0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$IdentityHashMapIterator;)V

    #@6
    .line 845
    iput-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    #@8
    .line 842
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$EntryIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/IdentityHashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$EntryIterator;-><init>(Ljava/util/IdentityHashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 847
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 848
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    new-instance v0, Ljava/util/IdentityHashMap$EntryIterator$Entry;

    #@2
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntryIterator;->nextIndex()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v0, p0, v1, v2}, Ljava/util/IdentityHashMap$EntryIterator$Entry;-><init>(Ljava/util/IdentityHashMap$EntryIterator;ILjava/util/IdentityHashMap$EntryIterator$Entry;)V

    #@a
    iput-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    #@c
    .line 849
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    #@e
    return-object v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    const/4 v2, 0x0

    #@1
    .line 854
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    #@3
    if-nez v0, :cond_0

    #@5
    const/4 v0, -0x1

    #@6
    .line 853
    :goto_0
    iput v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedIndex:I

    #@8
    .line 855
    invoke-super {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->remove()V

    #@b
    .line 856
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    #@d
    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedIndex:I

    #@f
    invoke-static {v0, v1}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->-set0(Ljava/util/IdentityHashMap$EntryIterator$Entry;I)I

    #@12
    .line 857
    iput-object v2, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    #@14
    .line 852
    return-void

    #@15
    .line 854
    :cond_0
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    #@17
    invoke-static {v0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->-get0(Ljava/util/IdentityHashMap$EntryIterator$Entry;)I

    #@1a
    move-result v0

    #@1b
    goto :goto_0
.end method
