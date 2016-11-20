.class final Landroid/util/MapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic this$0:Landroid/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/util/MapCollections;I)V
    .locals 1
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 43
    .local p0, "this":Landroid/util/MapCollections$ArrayIterator;, "Landroid/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    .local p1, "this$0":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    iput-object p1, p0, Landroid/util/MapCollections$ArrayIterator;->this$0:Landroid/util/MapCollections;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 41
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/util/MapCollections$ArrayIterator;->mCanRemove:Z

    #@8
    .line 44
    iput p2, p0, Landroid/util/MapCollections$ArrayIterator;->mOffset:I

    #@a
    .line 45
    invoke-virtual {p1}, Landroid/util/MapCollections;->colGetSize()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/util/MapCollections$ArrayIterator;->mSize:I

    #@10
    .line 43
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 50
    .local p0, "this":Landroid/util/MapCollections$ArrayIterator;, "Landroid/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget v0, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    #@2
    iget v1, p0, Landroid/util/MapCollections$ArrayIterator;->mSize:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 55
    .local p0, "this":Landroid/util/MapCollections$ArrayIterator;, "Landroid/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-object v1, p0, Landroid/util/MapCollections$ArrayIterator;->this$0:Landroid/util/MapCollections;

    #@2
    iget v2, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    #@4
    iget v3, p0, Landroid/util/MapCollections$ArrayIterator;->mOffset:I

    #@6
    invoke-virtual {v1, v2, v3}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    .line 56
    .local v0, "res":Ljava/lang/Object;
    iget v1, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    iput v1, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    #@10
    .line 57
    const/4 v1, 0x1

    #@11
    iput-boolean v1, p0, Landroid/util/MapCollections$ArrayIterator;->mCanRemove:Z

    #@13
    .line 58
    return-object v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 63
    .local p0, "this":Landroid/util/MapCollections$ArrayIterator;, "Landroid/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-boolean v0, p0, Landroid/util/MapCollections$ArrayIterator;->mCanRemove:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 66
    :cond_0
    iget v0, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    iput v0, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    #@10
    .line 67
    iget v0, p0, Landroid/util/MapCollections$ArrayIterator;->mSize:I

    #@12
    add-int/lit8 v0, v0, -0x1

    #@14
    iput v0, p0, Landroid/util/MapCollections$ArrayIterator;->mSize:I

    #@16
    .line 68
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Landroid/util/MapCollections$ArrayIterator;->mCanRemove:Z

    #@19
    .line 69
    iget-object v0, p0, Landroid/util/MapCollections$ArrayIterator;->this$0:Landroid/util/MapCollections;

    #@1b
    iget v1, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    #@1d
    invoke-virtual {v0, v1}, Landroid/util/MapCollections;->colRemoveAt(I)V

    #@20
    .line 62
    return-void
.end method
