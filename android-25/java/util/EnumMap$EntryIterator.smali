.class Ljava/util/EnumMap$EntryIterator;
.super Ljava/util/EnumMap$EnumMapIterator;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumMap$EntryIterator$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<TK;TV;>.EnumMapIterator<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TK;TV;>.EntryIterator.Entry;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap$EntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator;"
    .local p1, "this$0":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 564
    iput-object p1, p0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    #@3
    invoke-direct {p0, p1, v0}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EnumMapIterator;)V

    #@6
    .line 565
    iput-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    #@8
    .line 564
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EntryIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/EnumMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap$EntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap$EntryIterator;-><init>(Ljava/util/EnumMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 567
    .local p0, "this":Ljava/util/EnumMap$EntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EntryIterator;->next()Ljava/util/Map$Entry;

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
    .line 568
    .local p0, "this":Ljava/util/EnumMap$EntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EntryIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 569
    new-instance v0, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v0

    #@c
    .line 570
    :cond_0
    new-instance v0, Ljava/util/EnumMap$EntryIterator$Entry;

    #@e
    iget v1, p0, Ljava/util/EnumMap$EntryIterator;->index:I

    #@10
    add-int/lit8 v2, v1, 0x1

    #@12
    iput v2, p0, Ljava/util/EnumMap$EntryIterator;->index:I

    #@14
    const/4 v2, 0x0

    #@15
    invoke-direct {v0, p0, v1, v2}, Ljava/util/EnumMap$EntryIterator$Entry;-><init>(Ljava/util/EnumMap$EntryIterator;ILjava/util/EnumMap$EntryIterator$Entry;)V

    #@18
    iput-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    #@1a
    .line 571
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    #@1c
    return-object v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap$EntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator;"
    const/4 v2, 0x0

    #@1
    .line 576
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    #@3
    if-nez v0, :cond_0

    #@5
    const/4 v0, -0x1

    #@6
    .line 575
    :goto_0
    iput v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedIndex:I

    #@8
    .line 577
    invoke-super {p0}, Ljava/util/EnumMap$EnumMapIterator;->remove()V

    #@b
    .line 578
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    #@d
    iget v1, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedIndex:I

    #@f
    invoke-static {v0, v1}, Ljava/util/EnumMap$EntryIterator$Entry;->-set0(Ljava/util/EnumMap$EntryIterator$Entry;I)I

    #@12
    .line 579
    iput-object v2, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    #@14
    .line 574
    return-void

    #@15
    .line 576
    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    #@17
    invoke-static {v0}, Ljava/util/EnumMap$EntryIterator$Entry;->-get0(Ljava/util/EnumMap$EntryIterator$Entry;)I

    #@1a
    move-result v0

    #@1b
    goto :goto_0
.end method
