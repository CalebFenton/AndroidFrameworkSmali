.class Landroid/icu/impl/Deque$DescendingIterator;
.super Ljava/lang/Object;
.source "Deque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Deque;
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
.field private litr:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/icu/impl/Deque;


# direct methods
.method constructor <init>(Landroid/icu/impl/Deque;)V
    .locals 2

    #@0
    .prologue
    .line 193
    .local p0, "this":Landroid/icu/impl/Deque$DescendingIterator;, "Landroid/icu/impl/Deque<TE;>.DescendingIterator;"
    .local p1, "this$0":Landroid/icu/impl/Deque;, "Lcom/ibm/icu/impl/Deque<TE;>;"
    iput-object p1, p0, Landroid/icu/impl/Deque$DescendingIterator;->this$0:Landroid/icu/impl/Deque;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 194
    invoke-static {p1}, Landroid/icu/impl/Deque;->-get0(Landroid/icu/impl/Deque;)Ljava/util/LinkedList;

    #@8
    move-result-object v0

    #@9
    invoke-static {p1}, Landroid/icu/impl/Deque;->-get0(Landroid/icu/impl/Deque;)Ljava/util/LinkedList;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    #@10
    move-result v1

    #@11
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/icu/impl/Deque$DescendingIterator;->litr:Ljava/util/ListIterator;

    #@17
    .line 193
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 201
    .local p0, "this":Landroid/icu/impl/Deque$DescendingIterator;, "Landroid/icu/impl/Deque<TE;>.DescendingIterator;"
    iget-object v0, p0, Landroid/icu/impl/Deque$DescendingIterator;->litr:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

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
    .line 208
    .local p0, "this":Landroid/icu/impl/Deque$DescendingIterator;, "Landroid/icu/impl/Deque<TE;>.DescendingIterator;"
    iget-object v0, p0, Landroid/icu/impl/Deque$DescendingIterator;->litr:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 215
    .local p0, "this":Landroid/icu/impl/Deque$DescendingIterator;, "Landroid/icu/impl/Deque<TE;>.DescendingIterator;"
    iget-object v0, p0, Landroid/icu/impl/Deque$DescendingIterator;->litr:Ljava/util/ListIterator;

    #@2
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    #@5
    .line 214
    return-void
.end method
