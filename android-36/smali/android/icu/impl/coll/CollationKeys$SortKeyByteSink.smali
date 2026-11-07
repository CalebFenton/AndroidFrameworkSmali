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
.field private blacklist appended_:I

.field protected blacklist buffer_:[B


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "dest"    # [B

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    .line 37
    iput-object p1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist Append(I)V
    .registers 6
    .param p1, "b"    # I

    .line 93
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_10

    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    invoke-virtual {p0, v2, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Resize(II)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 94
    :cond_10
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 96
    :cond_17
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    .line 98
    return-void
.end method

.method public blacklist Append([BI)V
    .registers 7
    .param p1, "bytes"    # [B
    .param p2, "n"    # I

    .line 62
    if-lez p2, :cond_1d

    if-nez p1, :cond_5

    goto :goto_1d

    .line 78
    :cond_5
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    .line 79
    .local v0, "length":I
    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    add-int/2addr v1, p2

    iput v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    .line 81
    iget-object v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    .line 82
    .local v1, "available":I
    const/4 v2, 0x0

    if-gt p2, v1, :cond_19

    .line 83
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    invoke-static {p1, v2, v3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1c

    .line 85
    :cond_19
    invoke-virtual {p0, p1, v2, p2, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->AppendBeyondCapacity([BIII)V

    .line 87
    :goto_1c
    return-void

    .line 63
    .end local v0    # "length":I
    .end local v1    # "available":I
    :cond_1d
    :goto_1d
    return-void
.end method

.method protected abstract blacklist AppendBeyondCapacity([BIII)V
.end method

.method public blacklist GetRemainingCapacity()I
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    array-length v0, v0

    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist NumberOfBytesAppended()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    return v0
.end method

.method public blacklist Overflowed()Z
    .registers 3

    .line 116
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    array-length v1, v1

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected abstract blacklist Resize(II)Z
.end method

.method public blacklist setBufferAndAppended([BI)V
    .registers 3
    .param p1, "dest"    # [B
    .param p2, "app"    # I

    .line 47
    iput-object p1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    .line 48
    iput p2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    .line 49
    return-void
.end method
