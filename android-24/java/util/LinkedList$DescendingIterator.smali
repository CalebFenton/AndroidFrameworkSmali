.class Ljava/util/LinkedList$DescendingIterator;
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
    name = "DescendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final itr:Ljava/util/LinkedList$ListItr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>.",
            "ListItr;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/LinkedList;


# direct methods
.method private constructor <init>(Ljava/util/LinkedList;)V
    .locals 3

    #@0
    .prologue
    .line 993
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    .local p1, "this$0":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iput-object p1, p0, Ljava/util/LinkedList$DescendingIterator;->this$0:Ljava/util/LinkedList;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 994
    new-instance v0, Ljava/util/LinkedList$ListItr;

    #@7
    iget-object v1, p0, Ljava/util/LinkedList$DescendingIterator;->this$0:Ljava/util/LinkedList;

    #@9
    iget-object v2, p0, Ljava/util/LinkedList$DescendingIterator;->this$0:Ljava/util/LinkedList;

    #@b
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    #@e
    move-result v2

    #@f
    invoke-direct {v0, v1, v2}, Ljava/util/LinkedList$ListItr;-><init>(Ljava/util/LinkedList;I)V

    #@12
    iput-object v0, p0, Ljava/util/LinkedList$DescendingIterator;->itr:Ljava/util/LinkedList$ListItr;

    #@14
    .line 993
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/LinkedList;Ljava/util/LinkedList$DescendingIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/LinkedList;

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList$DescendingIterator;-><init>(Ljava/util/LinkedList;)V

    #@3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 996
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/LinkedList$DescendingIterator;->itr:Ljava/util/LinkedList$ListItr;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList$ListItr;->hasPrevious()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 999
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/LinkedList$DescendingIterator;->itr:Ljava/util/LinkedList$ListItr;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList$ListItr;->previous()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 1002
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/LinkedList$DescendingIterator;->itr:Ljava/util/LinkedList$ListItr;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList$ListItr;->remove()V

    #@5
    .line 1001
    return-void
.end method
