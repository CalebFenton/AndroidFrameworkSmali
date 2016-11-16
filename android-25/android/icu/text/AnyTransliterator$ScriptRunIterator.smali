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
.field public limit:I

.field public scriptCode:I

.field public start:I

.field private text:Landroid/icu/text/Replaceable;

.field private textLimit:I

.field private textStart:I


# direct methods
.method public constructor <init>(Landroid/icu/text/Replaceable;II)V
    .locals 0
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 334
    iput-object p1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->text:Landroid/icu/text/Replaceable;

    #@5
    .line 335
    iput p2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textStart:I

    #@7
    .line 336
    iput p3, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    #@9
    .line 337
    iput p2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    #@b
    .line 333
    return-void
.end method


# virtual methods
.method public adjustLimit(I)V
    .locals 1
    .param p1, "delta"    # I

    #@0
    .prologue
    .line 395
    iget v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    #@5
    .line 396
    iget v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    #@7
    add-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    #@a
    .line 394
    return-void
.end method

.method public next()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 350
    iput v6, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    #@5
    .line 351
    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    #@7
    iput v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    #@9
    .line 354
    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    #@b
    iget v3, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    #@d
    if-ne v2, v3, :cond_0

    #@f
    .line 355
    return v4

    #@10
    .line 360
    :cond_0
    :goto_0
    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    #@12
    iget v3, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textStart:I

    #@14
    if-le v2, v3, :cond_2

    #@16
    .line 361
    iget-object v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->text:Landroid/icu/text/Replaceable;

    #@18
    iget v3, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    #@1a
    add-int/lit8 v3, v3, -0x1

    #@1c
    invoke-interface {v2, v3}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@1f
    move-result v0

    #@20
    .line 362
    .local v0, "ch":I
    invoke-static {v0}, Landroid/icu/lang/UScript;->getScript(I)I

    #@23
    move-result v1

    #@24
    .line 363
    .local v1, "s":I
    if-eqz v1, :cond_1

    #@26
    if-ne v1, v5, :cond_2

    #@28
    .line 364
    :cond_1
    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    #@2a
    add-int/lit8 v2, v2, -0x1

    #@2c
    iput v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    #@2e
    goto :goto_0

    #@2f
    .line 372
    .end local v0    # "ch":I
    .end local v1    # "s":I
    :cond_2
    :goto_1
    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    #@31
    iget v3, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    #@33
    if-ge v2, v3, :cond_5

    #@35
    .line 373
    iget-object v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->text:Landroid/icu/text/Replaceable;

    #@37
    iget v3, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    #@39
    invoke-interface {v2, v3}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@3c
    move-result v0

    #@3d
    .line 374
    .restart local v0    # "ch":I
    invoke-static {v0}, Landroid/icu/lang/UScript;->getScript(I)I

    #@40
    move-result v1

    #@41
    .line 375
    .restart local v1    # "s":I
    if-eqz v1, :cond_3

    #@43
    if-eq v1, v5, :cond_3

    #@45
    .line 376
    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    #@47
    if-ne v2, v6, :cond_4

    #@49
    .line 377
    iput v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    #@4b
    .line 382
    :cond_3
    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    #@4d
    add-int/lit8 v2, v2, 0x1

    #@4f
    iput v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    #@51
    goto :goto_1

    #@52
    .line 378
    :cond_4
    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    #@54
    if-eq v1, v2, :cond_3

    #@56
    .line 387
    .end local v0    # "ch":I
    .end local v1    # "s":I
    :cond_5
    return v5
.end method
