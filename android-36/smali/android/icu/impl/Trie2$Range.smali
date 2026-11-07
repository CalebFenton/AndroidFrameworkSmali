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
.field public blacklist endCodePoint:I

.field public blacklist leadSurrogate:Z

.field public blacklist startCodePoint:I

.field public blacklist value:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 351
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_2f

    .line 354
    :cond_12
    move-object v1, p1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    .line 355
    .local v1, "tother":Landroid/icu/impl/Trie2$Range;
    iget v2, p0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v3, v1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/icu/impl/Trie2$Range;->value:I

    iget v3, v1, Landroid/icu/impl/Trie2$Range;->value:I

    if-ne v2, v3, :cond_2e

    iget-boolean v2, p0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    iget-boolean v3, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-ne v2, v3, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    return v0

    .line 352
    .end local v1    # "tother":Landroid/icu/impl/Trie2$Range;
    :cond_2f
    :goto_2f
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 364
    invoke-static {}, Landroid/icu/impl/Trie2;->-$$Nest$sminitHash()I

    move-result v0

    .line 365
    .local v0, "h":I
    iget v1, p0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-static {v0, v1}, Landroid/icu/impl/Trie2;->-$$Nest$smhashUChar32(II)I

    move-result v0

    .line 366
    iget v1, p0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    invoke-static {v0, v1}, Landroid/icu/impl/Trie2;->-$$Nest$smhashUChar32(II)I

    move-result v0

    .line 367
    iget v1, p0, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-static {v0, v1}, Landroid/icu/impl/Trie2;->-$$Nest$smhashInt(II)I

    move-result v0

    .line 368
    iget-boolean v1, p0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    invoke-static {v0, v1}, Landroid/icu/impl/Trie2;->-$$Nest$smhashByte(II)I

    move-result v0

    .line 369
    return v0
.end method
