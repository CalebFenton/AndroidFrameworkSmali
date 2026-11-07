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
        "Ljava/util/Iterator<",
        "Landroid/icu/impl/Trie2$CharSequenceValues;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

.field private greylist-max-o index:I

.field private greylist-max-o text:Ljava/lang/CharSequence;

.field private greylist-max-o textLength:I

.field final synthetic blacklist this$0:Landroid/icu/impl/Trie2;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/Trie2;Ljava/lang/CharSequence;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/icu/impl/Trie2;
    .param p2, "t"    # Ljava/lang/CharSequence;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 543
    iput-object p1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    new-instance v0, Landroid/icu/impl/Trie2$CharSequenceValues;

    invoke-direct {v0}, Landroid/icu/impl/Trie2$CharSequenceValues;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    .line 544
    iput-object p2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    .line 545
    iget-object v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->textLength:I

    .line 546
    invoke-virtual {p0, p3}, Landroid/icu/impl/Trie2$CharSequenceIterator;->set(I)V

    .line 547
    return-void
.end method


# virtual methods
.method public final whitelist test-api hasNext()Z
    .registers 3

    .line 565
    iget v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    iget v1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->textLength:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final blacklist hasPrevious()Z
    .registers 2

    .line 570
    iget v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist next()Landroid/icu/impl/Trie2$CharSequenceValues;
    .registers 5

    .line 576
    iget-object v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 577
    .local v0, "c":I
    iget-object v1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v1

    .line 579
    .local v1, "val":I
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iget v3, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    iput v3, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->index:I

    .line 580
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iput v0, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->codePoint:I

    .line 581
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iput v1, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->value:I

    .line 582
    iget v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    .line 583
    const/high16 v2, 0x10000

    if-lt v0, v2, :cond_2c

    .line 584
    iget v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    .line 586
    :cond_2c
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    return-object v2
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 539
    invoke-virtual {p0}, Landroid/icu/impl/Trie2$CharSequenceIterator;->next()Landroid/icu/impl/Trie2$CharSequenceValues;

    move-result-object v0

    return-object v0
.end method

.method public blacklist previous()Landroid/icu/impl/Trie2$CharSequenceValues;
    .registers 5

    .line 591
    iget-object v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 592
    .local v0, "c":I
    iget-object v1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v1

    .line 593
    .local v1, "val":I
    iget v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    .line 594
    const/high16 v2, 0x10000

    if-lt v0, v2, :cond_1e

    .line 595
    iget v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    .line 597
    :cond_1e
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iget v3, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    iput v3, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->index:I

    .line 598
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iput v0, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->codePoint:I

    .line 599
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iput v1, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->value:I

    .line 600
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    return-object v2
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 610
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Trie2.CharSequenceIterator does not support remove()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist set(I)V
    .registers 3
    .param p1, "i"    # I

    .line 556
    if-ltz p1, :cond_9

    iget v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->textLength:I

    if-gt p1, v0, :cond_9

    .line 559
    iput p1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    .line 560
    return-void

    .line 557
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
