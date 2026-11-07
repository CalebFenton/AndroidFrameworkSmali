.class Landroid/icu/text/UnicodeSet$CodePointSpliterator;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodePointSpliterator"
.end annotation


# static fields
.field private static final blacklist CHARACTERISTICS:I = 0x151


# instance fields
.field private final blacklist cpi:Landroid/icu/text/UnicodeSet$CodePointIteratorInt;

.field private final blacklist unicodeSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "unicodeSet"    # Landroid/icu/text/UnicodeSet;

    .line 5162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5163
    iput-object p1, p0, Landroid/icu/text/UnicodeSet$CodePointSpliterator;->unicodeSet:Landroid/icu/text/UnicodeSet;

    .line 5164
    new-instance v0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;

    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;-><init>(Landroid/icu/text/UnicodeSet;)V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet$CodePointSpliterator;->cpi:Landroid/icu/text/UnicodeSet$CodePointIteratorInt;

    .line 5165
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 5174
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$CodePointSpliterator;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x551

    goto :goto_d

    :cond_b
    const/16 v0, 0x151

    :goto_d
    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 5169
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$CodePointSpliterator;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$CodePointSpliterator;->unicodeSet:Landroid/icu/text/UnicodeSet;

    iget-object v1, v1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 5156
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet$CodePointSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 5188
    if-eqz p1, :cond_17

    .line 5192
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$CodePointSpliterator;->cpi:Landroid/icu/text/UnicodeSet$CodePointIteratorInt;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5193
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$CodePointSpliterator;->cpi:Landroid/icu/text/UnicodeSet$CodePointIteratorInt;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->next()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 5194
    const/4 v0, 0x1

    return v0

    .line 5196
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 5189
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 5183
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 5156
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet$CodePointSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 5156
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet$CodePointSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
