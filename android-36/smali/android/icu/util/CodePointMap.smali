.class public abstract Landroid/icu/util/CodePointMap;
.super Ljava/lang/Object;
.source "CodePointMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/CodePointMap$ValueFilter;,
        Landroid/icu/util/CodePointMap$Range;,
        Landroid/icu/util/CodePointMap$RangeOption;,
        Landroid/icu/util/CodePointMap$RangeIterator;,
        Landroid/icu/util/CodePointMap$StringIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/icu/util/CodePointMap$Range;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 18
    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    return-void
.end method


# virtual methods
.method public abstract blacklist get(I)I
.end method

.method public blacklist getRange(ILandroid/icu/util/CodePointMap$RangeOption;ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z
    .registers 11
    .param p1, "start"    # I
    .param p2, "option"    # Landroid/icu/util/CodePointMap$RangeOption;
    .param p3, "surrogateValue"    # I
    .param p4, "filter"    # Landroid/icu/util/CodePointMap$ValueFilter;
    .param p5, "range"    # Landroid/icu/util/CodePointMap$Range;

    .line 356
    nop

    .line 357
    invoke-virtual {p0, p1, p4, p5}, Landroid/icu/util/CodePointMap;->getRange(ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 358
    const/4 v0, 0x0

    return v0

    .line 360
    :cond_9
    sget-object v0, Landroid/icu/util/CodePointMap$RangeOption;->NORMAL:Landroid/icu/util/CodePointMap$RangeOption;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_f

    .line 361
    return v1

    .line 363
    :cond_f
    sget-object v0, Landroid/icu/util/CodePointMap$RangeOption;->FIXED_ALL_SURROGATES:Landroid/icu/util/CodePointMap$RangeOption;

    if-ne p2, v0, :cond_17

    const v0, 0xdfff

    goto :goto_1a

    :cond_17
    const v0, 0xdbff

    .line 364
    .local v0, "surrEnd":I
    :goto_1a
    invoke-static {p5}, Landroid/icu/util/CodePointMap$Range;->-$$Nest$fgetend(Landroid/icu/util/CodePointMap$Range;)I

    move-result v2

    .line 365
    .local v2, "end":I
    const v3, 0xd7ff

    if-lt v2, v3, :cond_5a

    if-le p1, v0, :cond_26

    goto :goto_5a

    .line 369
    :cond_26
    invoke-static {p5}, Landroid/icu/util/CodePointMap$Range;->-$$Nest$fgetvalue(Landroid/icu/util/CodePointMap$Range;)I

    move-result v4

    if-ne v4, p3, :cond_2f

    .line 370
    if-lt v2, v0, :cond_3e

    .line 373
    return v1

    .line 376
    :cond_2f
    if-gt p1, v3, :cond_35

    .line 377
    invoke-static {p5, v3}, Landroid/icu/util/CodePointMap$Range;->-$$Nest$fputend(Landroid/icu/util/CodePointMap$Range;I)V

    .line 378
    return v1

    .line 382
    :cond_35
    invoke-static {p5, p3}, Landroid/icu/util/CodePointMap$Range;->-$$Nest$fputvalue(Landroid/icu/util/CodePointMap$Range;I)V

    .line 383
    if-le v2, v0, :cond_3e

    .line 384
    invoke-static {p5, v0}, Landroid/icu/util/CodePointMap$Range;->-$$Nest$fputend(Landroid/icu/util/CodePointMap$Range;I)V

    .line 385
    return v1

    .line 390
    :cond_3e
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3, p4, p5}, Landroid/icu/util/CodePointMap;->getRange(ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-static {p5}, Landroid/icu/util/CodePointMap$Range;->-$$Nest$fgetvalue(Landroid/icu/util/CodePointMap$Range;)I

    move-result v3

    if-ne v3, p3, :cond_50

    .line 391
    invoke-static {p5, p1}, Landroid/icu/util/CodePointMap$Range;->-$$Nest$fputstart(Landroid/icu/util/CodePointMap$Range;I)V

    .line 392
    return v1

    .line 394
    :cond_50
    invoke-static {p5, p1}, Landroid/icu/util/CodePointMap$Range;->-$$Nest$fputstart(Landroid/icu/util/CodePointMap$Range;I)V

    .line 395
    invoke-static {p5, v0}, Landroid/icu/util/CodePointMap$Range;->-$$Nest$fputend(Landroid/icu/util/CodePointMap$Range;I)V

    .line 396
    invoke-static {p5, p3}, Landroid/icu/util/CodePointMap$Range;->-$$Nest$fputvalue(Landroid/icu/util/CodePointMap$Range;I)V

    .line 397
    return v1

    .line 366
    :cond_5a
    :goto_5a
    return v1
.end method

.method public abstract blacklist getRange(ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/util/CodePointMap$Range;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Landroid/icu/util/CodePointMap$RangeIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/util/CodePointMap$RangeIterator;-><init>(Landroid/icu/util/CodePointMap;Landroid/icu/util/CodePointMap-IA;)V

    return-object v0
.end method

.method public blacklist stringIterator(Ljava/lang/CharSequence;I)Landroid/icu/util/CodePointMap$StringIterator;
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "sIndex"    # I

    .line 424
    new-instance v0, Landroid/icu/util/CodePointMap$StringIterator;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/util/CodePointMap$StringIterator;-><init>(Landroid/icu/util/CodePointMap;Ljava/lang/CharSequence;I)V

    return-object v0
.end method
