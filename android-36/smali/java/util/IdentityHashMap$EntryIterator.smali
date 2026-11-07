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
        "Ljava/util/IdentityHashMap<",
        "TK;TV;>.IdentityHashMapIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "TK;TV;>.EntryIterator.Entry;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/IdentityHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 858
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$EntryIterator;->this$0:Ljava/util/IdentityHashMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$EntryIterator;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 858
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 864
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    new-instance v0, Ljava/util/IdentityHashMap$EntryIterator$Entry;

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntryIterator;->nextIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava/util/IdentityHashMap$EntryIterator$Entry;-><init>(Ljava/util/IdentityHashMap$EntryIterator;ILjava/util/IdentityHashMap-IA;)V

    iput-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    .line 865
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 869
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    nop

    .line 870
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    if-nez v0, :cond_7

    const/4 v0, -0x1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    invoke-static {v0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->-$$Nest$fgetindex(Ljava/util/IdentityHashMap$EntryIterator$Entry;)I

    move-result v0

    :goto_d
    iput v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedIndex:I

    .line 871
    invoke-super {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->remove()V

    .line 872
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedIndex:I

    invoke-static {v0, v1}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->-$$Nest$fputindex(Ljava/util/IdentityHashMap$EntryIterator$Entry;I)V

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    .line 874
    return-void
.end method
