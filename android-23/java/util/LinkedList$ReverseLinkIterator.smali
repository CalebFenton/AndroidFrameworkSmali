.class Ljava/util/LinkedList$ReverseLinkIterator;
.super Ljava/lang/Object;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReverseLinkIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ET:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TET;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private expectedModCount:I

.field private link:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TET;>;"
        }
    .end annotation
.end field

.field private final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TET;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<TET;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 197
    .local p0, "this":Ljava/util/LinkedList$ReverseLinkIterator;, "Ljava/util/LinkedList<TE;>.ReverseLinkIterator<TET;>;"
    .local p1, "this$0":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "linkedList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TET;>;"
    iput-object p1, p0, Ljava/util/LinkedList$ReverseLinkIterator;->this$0:Ljava/util/LinkedList;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 198
    iput-object p2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    #@7
    .line 199
    iget-object v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    #@9
    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    #@b
    iput v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->expectedModCount:I

    #@d
    .line 200
    iget-object v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    #@f
    iget-object v0, v0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@11
    iput-object v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    #@13
    .line 201
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->canRemove:Z

    #@16
    .line 197
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 205
    .local p0, "this":Ljava/util/LinkedList$ReverseLinkIterator;, "Ljava/util/LinkedList<TE;>.ReverseLinkIterator<TET;>;"
    iget-object v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    #@2
    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@4
    iget-object v1, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    #@6
    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@8
    if-eq v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TET;"
        }
    .end annotation

    #@0
    .prologue
    .line 209
    .local p0, "this":Ljava/util/LinkedList$ReverseLinkIterator;, "Ljava/util/LinkedList<TE;>.ReverseLinkIterator<TET;>;"
    iget v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->expectedModCount:I

    #@2
    iget-object v1, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    #@4
    iget v1, v1, Ljava/util/LinkedList;->modCount:I

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 210
    invoke-virtual {p0}, Ljava/util/LinkedList$ReverseLinkIterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 211
    iget-object v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    #@10
    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@12
    iput-object v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    #@14
    .line 212
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->canRemove:Z

    #@17
    .line 213
    iget-object v0, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    #@19
    iget-object v0, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@1b
    return-object v0

    #@1c
    .line 215
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    #@1e
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@21
    throw v0

    #@22
    .line 217
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@24
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@27
    throw v0
.end method

.method public remove()V
    .locals 4

    #@0
    .prologue
    .line 222
    .local p0, "this":Ljava/util/LinkedList$ReverseLinkIterator;, "Ljava/util/LinkedList<TE;>.ReverseLinkIterator<TET;>;"
    iget v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->expectedModCount:I

    #@2
    iget-object v3, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    #@4
    iget v3, v3, Ljava/util/LinkedList;->modCount:I

    #@6
    if-ne v2, v3, :cond_1

    #@8
    .line 223
    iget-boolean v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->canRemove:Z

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 224
    iget-object v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    #@e
    iget-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@10
    .line 225
    .local v0, "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    iget-object v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    #@12
    iget-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@14
    .line 226
    .local v1, "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    iput-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@16
    .line 227
    iput-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@18
    .line 228
    iput-object v1, p0, Ljava/util/LinkedList$ReverseLinkIterator;->link:Ljava/util/LinkedList$Link;

    #@1a
    .line 229
    iget-object v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    #@1c
    iget v3, v2, Ljava/util/LinkedList;->size:I

    #@1e
    add-int/lit8 v3, v3, -0x1

    #@20
    iput v3, v2, Ljava/util/LinkedList;->size:I

    #@22
    .line 230
    iget-object v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->list:Ljava/util/LinkedList;

    #@24
    iget v3, v2, Ljava/util/LinkedList;->modCount:I

    #@26
    add-int/lit8 v3, v3, 0x1

    #@28
    iput v3, v2, Ljava/util/LinkedList;->modCount:I

    #@2a
    .line 231
    iget v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->expectedModCount:I

    #@2c
    add-int/lit8 v2, v2, 0x1

    #@2e
    iput v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->expectedModCount:I

    #@30
    .line 232
    const/4 v2, 0x0

    #@31
    iput-boolean v2, p0, Ljava/util/LinkedList$ReverseLinkIterator;->canRemove:Z

    #@33
    .line 233
    return-void

    #@34
    .line 235
    .end local v0    # "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    .end local v1    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TET;>;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    #@36
    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    #@39
    throw v2

    #@3a
    .line 237
    :cond_1
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@3c
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@3f
    throw v2
.end method
