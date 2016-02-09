.class public Landroid/icu/impl/Trie2$CharSequenceIterator;
.super Ljava/lang/Object;
.source "Trie2.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CharSequenceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/icu/impl/Trie2$CharSequenceValues;",
        ">;"
    }
.end annotation


# instance fields
.field private fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

.field private index:I

.field private text:Ljava/lang/CharSequence;

.field private textLength:I

.field final synthetic this$0:Landroid/icu/impl/Trie2;


# direct methods
.method constructor <init>(Landroid/icu/impl/Trie2;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/icu/impl/Trie2;
    .param p2, "t"    # Ljava/lang/CharSequence;
    .param p3, "index"    # I

    #@0
    .prologue
    .line 539
    iput-object p1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->this$0:Landroid/icu/impl/Trie2;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 548
    new-instance v0, Landroid/icu/impl/Trie2$CharSequenceValues;

    #@7
    invoke-direct {v0}, Landroid/icu/impl/Trie2$CharSequenceValues;-><init>()V

    #@a
    iput-object v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    #@c
    .line 540
    iput-object p2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    #@e
    .line 541
    iget-object v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    #@10
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->textLength:I

    #@16
    .line 542
    invoke-virtual {p0, p3}, Landroid/icu/impl/Trie2$CharSequenceIterator;->set(I)V

    #@19
    .line 539
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 560
    iget v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@2
    iget v1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->textLength:I

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

.method public final hasPrevious()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 565
    iget v1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public next()Landroid/icu/impl/Trie2$CharSequenceValues;
    .locals 4

    #@0
    .prologue
    .line 570
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    #@2
    iget v3, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@4
    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@7
    move-result v0

    #@8
    .line 571
    .local v0, "c":I
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->this$0:Landroid/icu/impl/Trie2;

    #@a
    invoke-virtual {v2, v0}, Landroid/icu/impl/Trie2;->get(I)I

    #@d
    move-result v1

    #@e
    .line 573
    .local v1, "val":I
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    #@10
    iget v3, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@12
    iput v3, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->index:I

    #@14
    .line 574
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    #@16
    iput v0, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->codePoint:I

    #@18
    .line 575
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    #@1a
    iput v1, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->value:I

    #@1c
    .line 576
    iget v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@1e
    add-int/lit8 v2, v2, 0x1

    #@20
    iput v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@22
    .line 577
    const/high16 v2, 0x10000

    #@24
    if-lt v0, v2, :cond_0

    #@26
    .line 578
    iget v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@28
    add-int/lit8 v2, v2, 0x1

    #@2a
    iput v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@2c
    .line 580
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    #@2e
    return-object v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 569
    invoke-virtual {p0}, Landroid/icu/impl/Trie2$CharSequenceIterator;->next()Landroid/icu/impl/Trie2$CharSequenceValues;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public previous()Landroid/icu/impl/Trie2$CharSequenceValues;
    .locals 4

    #@0
    .prologue
    .line 585
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    #@2
    iget v3, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@4
    invoke-static {v2, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@7
    move-result v0

    #@8
    .line 586
    .local v0, "c":I
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->this$0:Landroid/icu/impl/Trie2;

    #@a
    invoke-virtual {v2, v0}, Landroid/icu/impl/Trie2;->get(I)I

    #@d
    move-result v1

    #@e
    .line 587
    .local v1, "val":I
    iget v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@10
    add-int/lit8 v2, v2, -0x1

    #@12
    iput v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@14
    .line 588
    const/high16 v2, 0x10000

    #@16
    if-lt v0, v2, :cond_0

    #@18
    .line 589
    iget v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@1a
    add-int/lit8 v2, v2, -0x1

    #@1c
    iput v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@1e
    .line 591
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    #@20
    iget v3, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@22
    iput v3, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->index:I

    #@24
    .line 592
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    #@26
    iput v0, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->codePoint:I

    #@28
    .line 593
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    #@2a
    iput v1, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->value:I

    #@2c
    .line 594
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    #@2e
    return-object v2
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 603
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Trie2.CharSequenceIterator does not support remove()."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public set(I)V
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 552
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->textLength:I

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 553
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 555
    :cond_1
    iput p1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    #@e
    .line 551
    return-void
.end method
