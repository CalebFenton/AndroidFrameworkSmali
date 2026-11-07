.class Landroid/icu/text/UnicodeSet$CodePointIteratorInt;
.super Ljava/lang/Object;
.source "UnicodeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodePointIteratorInt"
.end annotation


# instance fields
.field private blacklist currentRange:I

.field private final blacklist lastRange:I

.field private final blacklist list:[I

.field private blacklist rangeLimit:I

.field private blacklist rangeStart:I


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/UnicodeSet;)V
    .registers 5
    .param p1, "unicodeSet"    # Landroid/icu/text/UnicodeSet;

    .line 5213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5209
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->currentRange:I

    .line 5214
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->-$$Nest$fgetlist(Landroid/icu/text/UnicodeSet;)[I

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->list:[I

    .line 5215
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->-$$Nest$fgetlen(Landroid/icu/text/UnicodeSet;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->lastRange:I

    .line 5216
    iput v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->currentRange:I

    .line 5217
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->list:[I

    iget v1, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->currentRange:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->currentRange:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->rangeStart:I

    .line 5218
    iget v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->lastRange:I

    if-lez v0, :cond_33

    .line 5219
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->list:[I

    iget v1, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->currentRange:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->currentRange:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->rangeLimit:I

    goto :goto_37

    .line 5221
    :cond_33
    iget v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->rangeStart:I

    iput v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->rangeLimit:I

    .line 5223
    :goto_37
    return-void
.end method


# virtual methods
.method public blacklist hasNext()Z
    .registers 3

    .line 5226
    iget v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->rangeStart:I

    iget v1, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->rangeLimit:I

    if-lt v0, v1, :cond_f

    iget v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->currentRange:I

    iget v1, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->lastRange:I

    if-ge v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist next()I
    .registers 4

    .line 5230
    iget v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->rangeStart:I

    iget v1, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->rangeLimit:I

    if-lt v0, v1, :cond_2b

    .line 5231
    iget v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->currentRange:I

    iget v1, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->lastRange:I

    if-ge v0, v1, :cond_25

    .line 5234
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->list:[I

    iget v1, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->currentRange:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->currentRange:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->rangeStart:I

    .line 5235
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->list:[I

    iget v1, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->currentRange:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->currentRange:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->rangeLimit:I

    goto :goto_2b

    .line 5232
    :cond_25
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 5237
    :cond_2b
    :goto_2b
    iget v0, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->rangeStart:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->rangeStart:I

    return v0
.end method
