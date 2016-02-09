.class Ljava/util/PriorityQueue$PriorityIterator;
.super Ljava/lang/Object;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/PriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PriorityIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private allowRemove:Z

.field private currentIndex:I

.field final synthetic this$0:Ljava/util/PriorityQueue;


# direct methods
.method private constructor <init>(Ljava/util/PriorityQueue;)V
    .locals 1

    #@0
    .prologue
    .line 273
    .local p0, "this":Ljava/util/PriorityQueue$PriorityIterator;, "Ljava/util/PriorityQueue<TE;>.PriorityIterator;"
    .local p1, "this$0":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iput-object p1, p0, Ljava/util/PriorityQueue$PriorityIterator;->this$0:Ljava/util/PriorityQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 275
    const/4 v0, -0x1

    #@6
    iput v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->currentIndex:I

    #@8
    .line 277
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->allowRemove:Z

    #@b
    .line 273
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/PriorityQueue;Ljava/util/PriorityQueue$PriorityIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/PriorityQueue;

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue$PriorityIterator;, "Ljava/util/PriorityQueue<TE;>.PriorityIterator;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue$PriorityIterator;-><init>(Ljava/util/PriorityQueue;)V

    #@3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 280
    .local p0, "this":Ljava/util/PriorityQueue$PriorityIterator;, "Ljava/util/PriorityQueue<TE;>.PriorityIterator;"
    iget v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->currentIndex:I

    #@2
    iget-object v1, p0, Ljava/util/PriorityQueue$PriorityIterator;->this$0:Ljava/util/PriorityQueue;

    #@4
    invoke-static {v1}, Ljava/util/PriorityQueue;->-get1(Ljava/util/PriorityQueue;)I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 284
    .local p0, "this":Ljava/util/PriorityQueue$PriorityIterator;, "Ljava/util/PriorityQueue<TE;>.PriorityIterator;"
    invoke-virtual {p0}, Ljava/util/PriorityQueue$PriorityIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 285
    new-instance v0, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v0

    #@c
    .line 287
    :cond_0
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->allowRemove:Z

    #@f
    .line 288
    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->this$0:Ljava/util/PriorityQueue;

    #@11
    invoke-static {v0}, Ljava/util/PriorityQueue;->-get0(Ljava/util/PriorityQueue;)[Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    iget v1, p0, Ljava/util/PriorityQueue$PriorityIterator;->currentIndex:I

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    iput v1, p0, Ljava/util/PriorityQueue$PriorityIterator;->currentIndex:I

    #@1b
    aget-object v0, v0, v1

    #@1d
    return-object v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .line 292
    .local p0, "this":Ljava/util/PriorityQueue$PriorityIterator;, "Ljava/util/PriorityQueue<TE;>.PriorityIterator;"
    iget-boolean v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->allowRemove:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 293
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 295
    :cond_0
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->allowRemove:Z

    #@d
    .line 296
    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->this$0:Ljava/util/PriorityQueue;

    #@f
    iget v1, p0, Ljava/util/PriorityQueue$PriorityIterator;->currentIndex:I

    #@11
    add-int/lit8 v2, v1, -0x1

    #@13
    iput v2, p0, Ljava/util/PriorityQueue$PriorityIterator;->currentIndex:I

    #@15
    invoke-static {v0, v1}, Ljava/util/PriorityQueue;->-wrap0(Ljava/util/PriorityQueue;I)V

    #@18
    .line 291
    return-void
.end method
