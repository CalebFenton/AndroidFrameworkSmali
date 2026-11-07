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
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field greylist-max-o mCanRemove:Z

.field greylist-max-o mIndex:I

.field final greylist-max-o mOffset:I

.field greylist-max-o mSize:I

.field final synthetic blacklist this$0:Landroid/util/MapCollections;


# direct methods
.method constructor blacklist <init>(Landroid/util/MapCollections;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/util/MapCollections;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 46
    .local p0, "this":Landroid/util/MapCollections$ArrayIterator;, "Landroid/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iput-object p1, p0, Landroid/util/MapCollections$ArrayIterator;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 47
    iput p2, p0, Landroid/util/MapCollections$ArrayIterator;->mOffset:I

    .line 48
    invoke-virtual {p1}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    iput v0, p0, Landroid/util/MapCollections$ArrayIterator;->mSize:I

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 53
    .local p0, "this":Landroid/util/MapCollections$ArrayIterator;, "Landroid/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget v0, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    iget v1, p0, Landroid/util/MapCollections$ArrayIterator;->mSize:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 58
    .local p0, "this":Landroid/util/MapCollections$ArrayIterator;, "Landroid/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    invoke-virtual {p0}, Landroid/util/MapCollections$ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 59
    iget-object v0, p0, Landroid/util/MapCollections$ArrayIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    iget v2, p0, Landroid/util/MapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "res":Ljava/lang/Object;
    iget v1, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    .line 61
    iput-boolean v2, p0, Landroid/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 62
    return-object v0

    .line 58
    .end local v0    # "res":Ljava/lang/Object;
    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 67
    .local p0, "this":Landroid/util/MapCollections$ArrayIterator;, "Landroid/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-boolean v0, p0, Landroid/util/MapCollections$ArrayIterator;->mCanRemove:Z

    if-eqz v0, :cond_1b

    .line 70
    iget v0, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    .line 71
    iget v0, p0, Landroid/util/MapCollections$ArrayIterator;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$ArrayIterator;->mSize:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 73
    iget-object v0, p0, Landroid/util/MapCollections$ArrayIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 74
    return-void

    .line 68
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
