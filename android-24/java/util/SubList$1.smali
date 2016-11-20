.class Ljava/util/SubList$1;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/SubList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/SubList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Ljava/util/SubList;I)V
    .locals 3
    .param p2, "val$index"    # I

    #@0
    .prologue
    .line 698
    .local p1, "this$0":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    iput-object p1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    #@2
    iput p2, p0, Ljava/util/SubList$1;->val$index:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 699
    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    #@9
    invoke-static {v0}, Ljava/util/SubList;->-get0(Ljava/util/SubList;)Ljava/util/AbstractList;

    #@c
    move-result-object v0

    #@d
    iget v1, p0, Ljava/util/SubList$1;->val$index:I

    #@f
    iget-object v2, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    #@11
    invoke-static {v2}, Ljava/util/SubList;->-get1(Ljava/util/SubList;)I

    #@14
    move-result v2

    #@15
    add-int/2addr v1, v2

    #@16
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    #@1c
    .line 698
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 742
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@5
    .line 743
    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    #@7
    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    #@9
    invoke-static {v1}, Ljava/util/SubList;->-get0(Ljava/util/SubList;)Ljava/util/AbstractList;

    #@c
    move-result-object v1

    #@d
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@f
    iput v1, v0, Ljava/util/SubList;->modCount:I

    #@11
    .line 744
    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    #@13
    invoke-static {v0}, Ljava/util/SubList;->-get2(Ljava/util/SubList;)I

    #@16
    move-result v1

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    invoke-static {v0, v1}, Ljava/util/SubList;->-set0(Ljava/util/SubList;I)I

    #@1c
    .line 741
    return-void
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 702
    invoke-virtual {p0}, Ljava/util/SubList$1;->nextIndex()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    #@6
    invoke-static {v1}, Ljava/util/SubList;->-get2(Ljava/util/SubList;)I

    #@9
    move-result v1

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

.method public hasPrevious()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 713
    invoke-virtual {p0}, Ljava/util/SubList$1;->previousIndex()I

    #@4
    move-result v1

    #@5
    if-ltz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
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
    .line 706
    invoke-virtual {p0}, Ljava/util/SubList$1;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 707
    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    #@8
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 709
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    #@f
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@12
    throw v0
.end method

.method public nextIndex()I
    .locals 2

    #@0
    .prologue
    .line 724
    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    #@8
    invoke-static {v1}, Ljava/util/SubList;->-get1(Ljava/util/SubList;)I

    #@b
    move-result v1

    #@c
    sub-int/2addr v0, v1

    #@d
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 717
    invoke-virtual {p0}, Ljava/util/SubList$1;->hasPrevious()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 718
    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    #@8
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 720
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    #@f
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@12
    throw v0
.end method

.method public previousIndex()I
    .locals 2

    #@0
    .prologue
    .line 728
    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    #@8
    invoke-static {v1}, Ljava/util/SubList;->-get1(Ljava/util/SubList;)I

    #@b
    move-result v1

    #@c
    sub-int/2addr v0, v1

    #@d
    return v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 732
    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    #@5
    .line 733
    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    #@7
    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    #@9
    invoke-static {v1}, Ljava/util/SubList;->-get0(Ljava/util/SubList;)Ljava/util/AbstractList;

    #@c
    move-result-object v1

    #@d
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@f
    iput v1, v0, Ljava/util/SubList;->modCount:I

    #@11
    .line 734
    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    #@13
    invoke-static {v0}, Ljava/util/SubList;->-get2(Ljava/util/SubList;)I

    #@16
    move-result v1

    #@17
    add-int/lit8 v1, v1, -0x1

    #@19
    invoke-static {v0, v1}, Ljava/util/SubList;->-set0(Ljava/util/SubList;I)I

    #@1c
    .line 731
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 738
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@5
    .line 737
    return-void
.end method
