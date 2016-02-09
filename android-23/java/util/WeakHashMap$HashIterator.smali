.class Ljava/util/WeakHashMap$HashIterator;
.super Ljava/lang/Object;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private currentEntry:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private expectedModCount:I

.field private nextEntry:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private nextKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private position:I

.field final synthetic this$0:Ljava/util/WeakHashMap;

.field final type:Ljava/util/WeakHashMap$Entry$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry$Type",
            "<TR;TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Entry$Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap$Entry$Type",
            "<TR;TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 124
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TR;>;"
    .local p1, "this$0":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p2, "type":Ljava/util/WeakHashMap$Entry$Type;, "Ljava/util/WeakHashMap$Entry$Type<TR;TK;TV;>;"
    iput-object p1, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 116
    const/4 v0, 0x0

    #@6
    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->position:I

    #@8
    .line 125
    iput-object p2, p0, Ljava/util/WeakHashMap$HashIterator;->type:Ljava/util/WeakHashMap$Entry$Type;

    #@a
    .line 126
    iget v0, p1, Ljava/util/WeakHashMap;->modCount:I

    #@c
    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    #@e
    .line 124
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TR;>;"
    const/4 v3, 0x1

    #@1
    .line 130
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    #@3
    if-eqz v0, :cond_2

    #@5
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    #@7
    if-nez v0, :cond_0

    #@9
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    #@b
    iget-boolean v0, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 131
    :cond_0
    return v3

    #@10
    .line 149
    :cond_1
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    #@12
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@14
    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    #@16
    .line 134
    :cond_2
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    #@18
    if-nez v0, :cond_5

    #@1a
    .line 135
    :cond_3
    iget v0, p0, Ljava/util/WeakHashMap$HashIterator;->position:I

    #@1c
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    #@1e
    iget-object v1, v1, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@20
    array-length v1, v1

    #@21
    if-ge v0, v1, :cond_4

    #@23
    .line 136
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    #@25
    iget-object v0, v0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@27
    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->position:I

    #@29
    add-int/lit8 v2, v1, 0x1

    #@2b
    iput v2, p0, Ljava/util/WeakHashMap$HashIterator;->position:I

    #@2d
    aget-object v0, v0, v1

    #@2f
    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    #@31
    if-eqz v0, :cond_3

    #@33
    .line 140
    :cond_4
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    #@35
    if-nez v0, :cond_5

    #@37
    .line 141
    const/4 v0, 0x0

    #@38
    return v0

    #@39
    .line 145
    :cond_5
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    #@3b
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    #@41
    .line 146
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    #@43
    if-nez v0, :cond_6

    #@45
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    #@47
    iget-boolean v0, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    #@49
    if-eqz v0, :cond_1

    #@4b
    .line 147
    :cond_6
    return v3
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    #@0
    .prologue
    .line 154
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TR;>;"
    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    #@2
    iget-object v2, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    #@4
    iget v2, v2, Ljava/util/WeakHashMap;->modCount:I

    #@6
    if-ne v1, v2, :cond_1

    #@8
    .line 155
    invoke-virtual {p0}, Ljava/util/WeakHashMap$HashIterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 156
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    #@10
    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    #@12
    .line 157
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    #@14
    iget-object v1, v1, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@16
    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    #@18
    .line 158
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->type:Ljava/util/WeakHashMap$Entry$Type;

    #@1a
    iget-object v2, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    #@1c
    invoke-interface {v1, v2}, Ljava/util/WeakHashMap$Entry$Type;->get(Ljava/util/Map$Entry;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    .line 160
    .local v0, "result":Ljava/lang/Object;, "TR;"
    const/4 v1, 0x0

    #@21
    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    #@23
    .line 161
    return-object v0

    #@24
    .line 163
    .end local v0    # "result":Ljava/lang/Object;, "TR;"
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@26
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@29
    throw v1

    #@2a
    .line 165
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@2c
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2f
    throw v1
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TR;>;"
    const/4 v2, 0x0

    #@1
    .line 169
    iget v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    #@3
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    #@5
    iget v1, v1, Ljava/util/WeakHashMap;->modCount:I

    #@7
    if-ne v0, v1, :cond_1

    #@9
    .line 170
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 171
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    #@f
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    #@11
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->removeEntry(Ljava/util/WeakHashMap$Entry;)V

    #@14
    .line 172
    iput-object v2, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    #@16
    .line 173
    iget v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    #@1c
    .line 168
    return-void

    #@1d
    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1f
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@22
    throw v0

    #@23
    .line 179
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@25
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@28
    throw v0
.end method
