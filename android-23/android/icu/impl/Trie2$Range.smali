.class public Landroid/icu/impl/Trie2$Range;
.super Ljava/lang/Object;
.source "Trie2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public endCodePoint:I

.field public leadSurrogate:Z

.field public startCodePoint:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 353
    if-eqz p1, :cond_1

    #@3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {p0}, Landroid/icu/impl/Trie2$Range;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    move-object v0, p1

    #@12
    .line 356
    check-cast v0, Landroid/icu/impl/Trie2$Range;

    #@14
    .line 357
    .local v0, "tother":Landroid/icu/impl/Trie2$Range;
    iget v2, p0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@16
    iget v3, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@18
    if-ne v2, v3, :cond_0

    #@1a
    .line 358
    iget v2, p0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@1c
    iget v3, v0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@1e
    if-ne v2, v3, :cond_0

    #@20
    .line 359
    iget v2, p0, Landroid/icu/impl/Trie2$Range;->value:I

    #@22
    iget v3, v0, Landroid/icu/impl/Trie2$Range;->value:I

    #@24
    if-ne v2, v3, :cond_0

    #@26
    .line 360
    iget-boolean v2, p0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@28
    iget-boolean v3, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@2a
    if-ne v2, v3, :cond_0

    #@2c
    const/4 v1, 0x1

    #@2d
    .line 357
    :cond_0
    return v1

    #@2e
    .line 354
    .end local v0    # "tother":Landroid/icu/impl/Trie2$Range;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 365
    invoke-static {}, Landroid/icu/impl/Trie2;->-wrap3()I

    #@3
    move-result v0

    #@4
    .line 366
    .local v0, "h":I
    iget v1, p0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@6
    invoke-static {v0, v1}, Landroid/icu/impl/Trie2;->-wrap2(II)I

    #@9
    move-result v0

    #@a
    .line 367
    iget v1, p0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@c
    invoke-static {v0, v1}, Landroid/icu/impl/Trie2;->-wrap2(II)I

    #@f
    move-result v0

    #@10
    .line 368
    iget v1, p0, Landroid/icu/impl/Trie2$Range;->value:I

    #@12
    invoke-static {v0, v1}, Landroid/icu/impl/Trie2;->-wrap1(II)I

    #@15
    move-result v0

    #@16
    .line 369
    iget-boolean v1, p0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@18
    if-eqz v1, :cond_0

    #@1a
    const/4 v1, 0x1

    #@1b
    :goto_0
    invoke-static {v0, v1}, Landroid/icu/impl/Trie2;->-wrap0(II)I

    #@1e
    move-result v0

    #@1f
    .line 370
    return v0

    #@20
    .line 369
    :cond_0
    const/4 v1, 0x0

    #@21
    goto :goto_0
.end method
