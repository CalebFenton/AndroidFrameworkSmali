.class public abstract Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;
.super Ljava/lang/Object;
.source "CollationKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SortKeyByteSink"
.end annotation


# instance fields
.field private appended_:I

.field protected buffer_:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "dest"    # [B

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    #@6
    .line 28
    iput-object p1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    #@8
    .line 27
    return-void
.end method


# virtual methods
.method public Append(I)V
    .locals 3
    .param p1, "b"    # I

    #@0
    .prologue
    .line 84
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    #@2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    #@4
    array-length v1, v1

    #@5
    if-lt v0, v1, :cond_0

    #@7
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    #@9
    const/4 v1, 0x1

    #@a
    invoke-virtual {p0, v1, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Resize(II)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 85
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    #@12
    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    #@14
    int-to-byte v2, p1

    #@15
    aput-byte v2, v0, v1

    #@17
    .line 87
    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    iput v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    #@1d
    .line 80
    return-void
.end method

.method public Append([BI)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "n"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 53
    if-lez p2, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 54
    :cond_0
    return-void

    #@6
    .line 69
    :cond_1
    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    #@8
    .line 70
    .local v1, "length":I
    iget v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    #@a
    add-int/2addr v2, p2

    #@b
    iput v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    #@d
    .line 72
    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    #@f
    array-length v2, v2

    #@10
    sub-int v0, v2, v1

    #@12
    .line 73
    .local v0, "available":I
    if-gt p2, v0, :cond_2

    #@14
    .line 74
    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    #@16
    invoke-static {p1, v3, v2, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@19
    .line 52
    :goto_0
    return-void

    #@1a
    .line 76
    :cond_2
    invoke-virtual {p0, p1, v3, p2, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->AppendBeyondCapacity([BIII)V

    #@1d
    goto :goto_0
.end method

.method protected abstract AppendBeyondCapacity([BIII)V
.end method

.method public GetRemainingCapacity()I
    .locals 2

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    #@2
    array-length v0, v0

    #@3
    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    #@5
    sub-int/2addr v0, v1

    #@6
    return v0
.end method

.method public NumberOfBytesAppended()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    #@2
    return v0
.end method

.method public Overflowed()Z
    .locals 2

    #@0
    .prologue
    .line 107
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    #@2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    #@4
    array-length v1, v1

    #@5
    if-le v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method protected abstract Resize(II)Z
.end method

.method public setBufferAndAppended([BI)V
    .locals 0
    .param p1, "dest"    # [B
    .param p2, "app"    # I

    #@0
    .prologue
    .line 38
    iput-object p1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    #@2
    .line 39
    iput p2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    #@4
    .line 37
    return-void
.end method
