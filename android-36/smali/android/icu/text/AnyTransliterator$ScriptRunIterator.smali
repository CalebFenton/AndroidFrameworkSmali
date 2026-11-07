.class Landroid/icu/text/AnyTransliterator$ScriptRunIterator;
.super Ljava/lang/Object;
.source "AnyTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AnyTransliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScriptRunIterator"
.end annotation


# instance fields
.field public blacklist limit:I

.field public blacklist scriptCode:I

.field public blacklist start:I

.field private blacklist text:Landroid/icu/text/Replaceable;

.field private blacklist textLimit:I

.field private blacklist textStart:I


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/Replaceable;II)V
    .registers 4
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->text:Landroid/icu/text/Replaceable;

    .line 342
    iput p2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textStart:I

    .line 343
    iput p3, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    .line 344
    iput p2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    .line 345
    return-void
.end method


# virtual methods
.method public blacklist adjustLimit(I)V
    .registers 3
    .param p1, "delta"    # I

    .line 402
    iget v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    .line 403
    iget v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    .line 404
    return-void
.end method

.method public blacklist next()Z
    .registers 6

    .line 357
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    .line 358
    iget v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    iput v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    .line 361
    iget v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    if-ne v1, v2, :cond_f

    .line 362
    const/4 v0, 0x0

    return v0

    .line 367
    :cond_f
    :goto_f
    iget v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textStart:I

    const/4 v3, 0x1

    if-le v1, v2, :cond_2d

    .line 368
    iget-object v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->text:Landroid/icu/text/Replaceable;

    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v1

    .line 369
    .local v1, "ch":I
    invoke-static {v1}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v2

    .line 370
    .local v2, "s":I
    if-eqz v2, :cond_27

    if-ne v2, v3, :cond_2d

    .line 371
    :cond_27
    iget v4, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    sub-int/2addr v4, v3

    iput v4, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    goto :goto_f

    .line 379
    .end local v1    # "ch":I
    .end local v2    # "s":I
    :cond_2d
    :goto_2d
    iget v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    if-ge v1, v2, :cond_55

    .line 380
    iget-object v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->text:Landroid/icu/text/Replaceable;

    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    invoke-interface {v1, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v1

    .line 381
    .restart local v1    # "ch":I
    invoke-static {v1}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v2

    .line 382
    .restart local v2    # "s":I
    if-eqz v2, :cond_4f

    if-eq v2, v3, :cond_4f

    .line 383
    iget v4, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    if-ne v4, v0, :cond_4a

    .line 384
    iput v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    goto :goto_4f

    .line 385
    :cond_4a
    iget v4, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    if-eq v2, v4, :cond_4f

    .line 386
    goto :goto_55

    .line 389
    :cond_4f
    :goto_4f
    iget v4, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    goto :goto_2d

    .line 394
    .end local v1    # "ch":I
    .end local v2    # "s":I
    :cond_55
    :goto_55
    return v3
.end method
