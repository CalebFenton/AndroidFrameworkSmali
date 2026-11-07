.class public final Landroid/icu/text/Edits;
.super Ljava/lang/Object;
.source "Edits.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Edits$Iterator;
    }
.end annotation


# static fields
.field private static final greylist-max-o LENGTH_IN_1TRAIL:I = 0x3d

.field private static final greylist-max-o LENGTH_IN_2TRAIL:I = 0x3e

.field private static final greylist-max-o MAX_SHORT_CHANGE:I = 0x6fff

.field private static final greylist-max-o MAX_SHORT_CHANGE_NEW_LENGTH:I = 0x7

.field private static final greylist-max-o MAX_SHORT_CHANGE_OLD_LENGTH:I = 0x6

.field private static final greylist-max-o MAX_UNCHANGED:I = 0xfff

.field private static final greylist-max-o MAX_UNCHANGED_LENGTH:I = 0x1000

.field private static final greylist-max-o SHORT_CHANGE_NUM_MASK:I = 0x1ff

.field private static final greylist-max-o STACK_CAPACITY:I = 0x64


# instance fields
.field private greylist-max-o array:[C

.field private greylist-max-o delta:I

.field private greylist-max-o length:I

.field private greylist-max-o numChanges:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/16 v0, 0x64

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/text/Edits;->array:[C

    .line 88
    return-void
.end method

.method private greylist-max-o append(I)V
    .registers 5
    .param p1, "r"    # I

    .line 207
    iget v0, p0, Landroid/icu/text/Edits;->length:I

    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    array-length v1, v1

    if-lt v0, v1, :cond_d

    invoke-direct {p0}, Landroid/icu/text/Edits;->growArray()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 208
    :cond_d
    iget-object v0, p0, Landroid/icu/text/Edits;->array:[C

    iget v1, p0, Landroid/icu/text/Edits;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/Edits;->length:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 210
    :cond_18
    return-void
.end method

.method private greylist-max-o growArray()Z
    .registers 4

    .line 214
    iget-object v0, p0, Landroid/icu/text/Edits;->array:[C

    array-length v0, v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_a

    .line 215
    const/16 v0, 0x7d0

    .local v0, "newCapacity":I
    goto :goto_23

    .line 216
    .end local v0    # "newCapacity":I
    :cond_a
    iget-object v0, p0, Landroid/icu/text/Edits;->array:[C

    array-length v0, v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3b

    .line 218
    iget-object v0, p0, Landroid/icu/text/Edits;->array:[C

    array-length v0, v0

    const v1, 0x3fffffff    # 1.9999999f

    if-lt v0, v1, :cond_1e

    .line 219
    const v0, 0x7fffffff

    .restart local v0    # "newCapacity":I
    goto :goto_23

    .line 221
    .end local v0    # "newCapacity":I
    :cond_1e
    iget-object v0, p0, Landroid/icu/text/Edits;->array:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 224
    .restart local v0    # "newCapacity":I
    :goto_23
    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    array-length v1, v1

    sub-int v1, v0, v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_35

    .line 227
    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/Edits;->array:[C

    .line 228
    const/4 v1, 0x1

    return v1

    .line 225
    :cond_35
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 217
    .end local v0    # "newCapacity":I
    :cond_3b
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method private greylist-max-o lastUnit()I
    .registers 3

    .line 101
    iget v0, p0, Landroid/icu/text/Edits;->length:I

    if-lez v0, :cond_d

    iget-object v0, p0, Landroid/icu/text/Edits;->array:[C

    iget v1, p0, Landroid/icu/text/Edits;->length:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    goto :goto_10

    :cond_d
    const v0, 0xffff

    :goto_10
    return v0
.end method

.method private greylist-max-o setLastUnit(I)V
    .registers 5
    .param p1, "last"    # I

    .line 98
    iget-object v0, p0, Landroid/icu/text/Edits;->array:[C

    iget v1, p0, Landroid/icu/text/Edits;->length:I

    add-int/lit8 v1, v1, -0x1

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 99
    return-void
.end method


# virtual methods
.method public whitelist test-api addReplace(II)V
    .registers 12
    .param p1, "oldLength"    # I
    .param p2, "newLength"    # I

    .line 140
    if-ltz p1, :cond_f7

    if-ltz p2, :cond_f7

    .line 145
    if-nez p1, :cond_9

    if-nez p2, :cond_9

    .line 146
    return-void

    .line 148
    :cond_9
    iget v0, p0, Landroid/icu/text/Edits;->numChanges:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/Edits;->numChanges:I

    .line 149
    sub-int v0, p2, p1

    .line 150
    .local v0, "newDelta":I
    if-eqz v0, :cond_3a

    .line 151
    if-lez v0, :cond_21

    iget v1, p0, Landroid/icu/text/Edits;->delta:I

    if-ltz v1, :cond_21

    const v1, 0x7fffffff

    iget v2, p0, Landroid/icu/text/Edits;->delta:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2f

    :cond_21
    if-gez v0, :cond_35

    iget v1, p0, Landroid/icu/text/Edits;->delta:I

    if-gez v1, :cond_35

    const/high16 v1, -0x80000000

    iget v2, p0, Landroid/icu/text/Edits;->delta:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2f

    goto :goto_35

    .line 154
    :cond_2f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 156
    :cond_35
    :goto_35
    iget v1, p0, Landroid/icu/text/Edits;->delta:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/text/Edits;->delta:I

    .line 159
    :cond_3a
    const/4 v1, 0x6

    if-lez p1, :cond_67

    if-gt p1, v1, :cond_67

    const/4 v2, 0x7

    if-gt p2, v2, :cond_67

    .line 162
    shl-int/lit8 v1, p1, 0xc

    shl-int/lit8 v2, p2, 0x9

    or-int/2addr v1, v2

    .line 163
    .local v1, "u":I
    invoke-direct {p0}, Landroid/icu/text/Edits;->lastUnit()I

    move-result v2

    .line 164
    .local v2, "last":I
    const/16 v3, 0xfff

    if-ge v3, v2, :cond_63

    const/16 v3, 0x6fff

    if-ge v2, v3, :cond_63

    and-int/lit16 v3, v2, -0x200

    if-ne v3, v1, :cond_63

    and-int/lit16 v3, v2, 0x1ff

    const/16 v4, 0x1ff

    if-ge v3, v4, :cond_63

    .line 167
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Landroid/icu/text/Edits;->setLastUnit(I)V

    .line 168
    return-void

    .line 170
    :cond_63
    invoke-direct {p0, v1}, Landroid/icu/text/Edits;->append(I)V

    .line 171
    return-void

    .line 174
    .end local v1    # "u":I
    .end local v2    # "last":I
    :cond_67
    const/16 v2, 0x7000

    .line 175
    .local v2, "head":I
    const/16 v3, 0x3d

    if-ge p1, v3, :cond_79

    if-ge p2, v3, :cond_79

    .line 176
    shl-int/lit8 v1, p1, 0x6

    or-int/2addr v1, v2

    .line 177
    .end local v2    # "head":I
    .local v1, "head":I
    or-int v2, v1, p2

    .line 178
    .end local v1    # "head":I
    .restart local v2    # "head":I
    invoke-direct {p0, v2}, Landroid/icu/text/Edits;->append(I)V

    goto/16 :goto_f6

    .line 179
    :cond_79
    iget-object v4, p0, Landroid/icu/text/Edits;->array:[C

    array-length v4, v4

    iget v5, p0, Landroid/icu/text/Edits;->length:I

    sub-int/2addr v4, v5

    const/4 v5, 0x5

    if-ge v4, v5, :cond_88

    invoke-direct {p0}, Landroid/icu/text/Edits;->growArray()Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 180
    :cond_88
    iget v4, p0, Landroid/icu/text/Edits;->length:I

    add-int/lit8 v4, v4, 0x1

    .line 181
    .local v4, "limit":I
    const/16 v5, 0x7fff

    const v6, 0x8000

    if-ge p1, v3, :cond_97

    .line 182
    shl-int/lit8 v1, p1, 0x6

    or-int/2addr v1, v2

    .end local v2    # "head":I
    .restart local v1    # "head":I
    goto :goto_c0

    .line 183
    .end local v1    # "head":I
    .restart local v2    # "head":I
    :cond_97
    if-gt p1, v5, :cond_a6

    .line 184
    or-int/lit16 v1, v2, 0xf40

    .line 185
    .end local v2    # "head":I
    .restart local v1    # "head":I
    iget-object v2, p0, Landroid/icu/text/Edits;->array:[C

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "limit":I
    .local v7, "limit":I
    or-int v8, p1, v6

    int-to-char v8, v8

    aput-char v8, v2, v4

    move v4, v7

    goto :goto_c0

    .line 187
    .end local v1    # "head":I
    .end local v7    # "limit":I
    .restart local v2    # "head":I
    .restart local v4    # "limit":I
    :cond_a6
    shr-int/lit8 v7, p1, 0x1e

    add-int/lit8 v7, v7, 0x3e

    shl-int/lit8 v1, v7, 0x6

    or-int/2addr v1, v2

    .line 188
    .end local v2    # "head":I
    .restart local v1    # "head":I
    iget-object v2, p0, Landroid/icu/text/Edits;->array:[C

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "limit":I
    .restart local v7    # "limit":I
    shr-int/lit8 v8, p1, 0xf

    or-int/2addr v8, v6

    int-to-char v8, v8

    aput-char v8, v2, v4

    .line 189
    iget-object v2, p0, Landroid/icu/text/Edits;->array:[C

    add-int/lit8 v4, v7, 0x1

    .end local v7    # "limit":I
    .restart local v4    # "limit":I
    or-int v8, p1, v6

    int-to-char v8, v8

    aput-char v8, v2, v7

    .line 191
    :goto_c0
    if-ge p2, v3, :cond_c5

    .line 192
    or-int/2addr v1, p2

    move v2, v1

    goto :goto_ed

    .line 193
    :cond_c5
    if-gt p2, v5, :cond_d4

    .line 194
    or-int/2addr v1, v3

    .line 195
    iget-object v2, p0, Landroid/icu/text/Edits;->array:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .local v3, "limit":I
    or-int v5, p2, v6

    int-to-char v5, v5

    aput-char v5, v2, v4

    move v2, v1

    move v4, v3

    goto :goto_ed

    .line 197
    .end local v3    # "limit":I
    .restart local v4    # "limit":I
    :cond_d4
    shr-int/lit8 v2, p2, 0x1e

    add-int/lit8 v2, v2, 0x3e

    or-int/2addr v1, v2

    .line 198
    iget-object v2, p0, Landroid/icu/text/Edits;->array:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    shr-int/lit8 v5, p2, 0xf

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v2, v4

    .line 199
    iget-object v2, p0, Landroid/icu/text/Edits;->array:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .restart local v4    # "limit":I
    or-int v5, p2, v6

    int-to-char v5, v5

    aput-char v5, v2, v3

    move v2, v1

    .line 201
    .end local v1    # "head":I
    .restart local v2    # "head":I
    :goto_ed
    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    iget v3, p0, Landroid/icu/text/Edits;->length:I

    int-to-char v5, v2

    aput-char v5, v1, v3

    .line 202
    iput v4, p0, Landroid/icu/text/Edits;->length:I

    .line 204
    .end local v4    # "limit":I
    :cond_f6
    :goto_f6
    return-void

    .line 141
    .end local v0    # "newDelta":I
    .end local v2    # "head":I
    :cond_f7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addReplace("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): both lengths must be non-negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api addUnchanged(I)V
    .registers 5
    .param p1, "unchangedLength"    # I

    .line 109
    if-ltz p1, :cond_2a

    .line 114
    invoke-direct {p0}, Landroid/icu/text/Edits;->lastUnit()I

    move-result v0

    .line 115
    .local v0, "last":I
    const/16 v1, 0xfff

    if-ge v0, v1, :cond_18

    .line 116
    rsub-int v2, v0, 0xfff

    .line 117
    .local v2, "remaining":I
    if-lt v2, p1, :cond_14

    .line 118
    add-int v1, v0, p1

    invoke-direct {p0, v1}, Landroid/icu/text/Edits;->setLastUnit(I)V

    .line 119
    return-void

    .line 121
    :cond_14
    invoke-direct {p0, v1}, Landroid/icu/text/Edits;->setLastUnit(I)V

    .line 122
    sub-int/2addr p1, v2

    .line 125
    .end local v2    # "remaining":I
    :cond_18
    :goto_18
    const/16 v2, 0x1000

    if-lt p1, v2, :cond_22

    .line 126
    invoke-direct {p0, v1}, Landroid/icu/text/Edits;->append(I)V

    .line 127
    add-int/lit16 p1, p1, -0x1000

    goto :goto_18

    .line 130
    :cond_22
    if-lez p1, :cond_29

    .line 131
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Landroid/icu/text/Edits;->append(I)V

    .line 133
    :cond_29
    return-void

    .line 110
    .end local v0    # "last":I
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUnchanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): length must not be negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getCoarseChangesIterator()Landroid/icu/text/Edits$Iterator;
    .registers 7

    .line 839
    new-instance v0, Landroid/icu/text/Edits$Iterator;

    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    iget v2, p0, Landroid/icu/text/Edits;->length:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Edits$Iterator;-><init>([CIZZLandroid/icu/text/Edits-IA;)V

    return-object v0
.end method

.method public whitelist test-api getCoarseIterator()Landroid/icu/text/Edits$Iterator;
    .registers 7

    .line 850
    new-instance v0, Landroid/icu/text/Edits$Iterator;

    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    iget v2, p0, Landroid/icu/text/Edits;->length:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Edits$Iterator;-><init>([CIZZLandroid/icu/text/Edits-IA;)V

    return-object v0
.end method

.method public whitelist test-api getFineChangesIterator()Landroid/icu/text/Edits$Iterator;
    .registers 7

    .line 861
    new-instance v0, Landroid/icu/text/Edits$Iterator;

    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    iget v2, p0, Landroid/icu/text/Edits;->length:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Edits$Iterator;-><init>([CIZZLandroid/icu/text/Edits-IA;)V

    return-object v0
.end method

.method public whitelist test-api getFineIterator()Landroid/icu/text/Edits$Iterator;
    .registers 7

    .line 871
    new-instance v0, Landroid/icu/text/Edits$Iterator;

    iget-object v1, p0, Landroid/icu/text/Edits;->array:[C

    iget v2, p0, Landroid/icu/text/Edits;->length:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Edits$Iterator;-><init>([CIZZLandroid/icu/text/Edits-IA;)V

    return-object v0
.end method

.method public whitelist test-api hasChanges()Z
    .registers 2

    .line 239
    iget v0, p0, Landroid/icu/text/Edits;->numChanges:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api lengthDelta()I
    .registers 2

    .line 235
    iget v0, p0, Landroid/icu/text/Edits;->delta:I

    return v0
.end method

.method public whitelist test-api mergeAndAppend(Landroid/icu/text/Edits;Landroid/icu/text/Edits;)Landroid/icu/text/Edits;
    .registers 16
    .param p1, "ab"    # Landroid/icu/text/Edits;
    .param p2, "bc"    # Landroid/icu/text/Edits;

    .line 900
    invoke-virtual {p1}, Landroid/icu/text/Edits;->getFineIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object v0

    .line 901
    .local v0, "abIter":Landroid/icu/text/Edits$Iterator;
    invoke-virtual {p2}, Landroid/icu/text/Edits;->getFineIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object v1

    .line 902
    .local v1, "bcIter":Landroid/icu/text/Edits$Iterator;
    const/4 v2, 0x1

    .local v2, "abHasNext":Z
    const/4 v3, 0x1

    .line 905
    .local v3, "bcHasNext":Z
    const/4 v4, 0x0

    .local v4, "aLength":I
    const/4 v5, 0x0

    .local v5, "ab_bLength":I
    const/4 v6, 0x0

    .local v6, "bc_bLength":I
    const/4 v7, 0x0

    .line 907
    .local v7, "cLength":I
    const/4 v8, 0x0

    .local v8, "pending_aLength":I
    const/4 v9, 0x0

    .line 921
    .local v9, "pending_cLength":I
    :goto_10
    const/4 v10, 0x0

    if-nez v6, :cond_39

    .line 922
    if-eqz v3, :cond_39

    invoke-virtual {v1}, Landroid/icu/text/Edits$Iterator;->next()Z

    move-result v11

    move v3, v11

    if-eqz v11, :cond_39

    .line 923
    invoke-virtual {v1}, Landroid/icu/text/Edits$Iterator;->oldLength()I

    move-result v6

    .line 924
    invoke-virtual {v1}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result v7

    .line 925
    if-nez v6, :cond_39

    .line 927
    if-eqz v5, :cond_31

    invoke-virtual {v0}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v11

    if-nez v11, :cond_2f

    goto :goto_31

    .line 931
    :cond_2f
    add-int/2addr v9, v7

    .line 933
    goto :goto_10

    .line 928
    :cond_31
    :goto_31
    add-int v11, v9, v7

    invoke-virtual {p0, v8, v11}, Landroid/icu/text/Edits;->addReplace(II)V

    .line 929
    move v9, v10

    move v8, v10

    goto :goto_10

    .line 938
    :cond_39
    if-nez v5, :cond_78

    .line 939
    if-eqz v2, :cond_65

    invoke-virtual {v0}, Landroid/icu/text/Edits$Iterator;->next()Z

    move-result v11

    move v2, v11

    if-eqz v11, :cond_65

    .line 940
    invoke-virtual {v0}, Landroid/icu/text/Edits$Iterator;->oldLength()I

    move-result v4

    .line 941
    invoke-virtual {v0}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result v5

    .line 942
    if-nez v5, :cond_78

    .line 944
    invoke-virtual {v1}, Landroid/icu/text/Edits$Iterator;->oldLength()I

    move-result v11

    if-eq v6, v11, :cond_5d

    invoke-virtual {v1}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v11

    if-nez v11, :cond_5b

    goto :goto_5d

    .line 948
    :cond_5b
    add-int/2addr v8, v4

    .line 950
    goto :goto_10

    .line 945
    :cond_5d
    :goto_5d
    add-int v11, v8, v4

    invoke-virtual {p0, v11, v9}, Landroid/icu/text/Edits;->addReplace(II)V

    .line 946
    move v9, v10

    move v8, v10

    goto :goto_10

    .line 952
    :cond_65
    if-nez v6, :cond_70

    .line 955
    nop

    .line 1029
    if-nez v8, :cond_6c

    if-eqz v9, :cond_6f

    .line 1030
    :cond_6c
    invoke-virtual {p0, v8, v9}, Landroid/icu/text/Edits;->addReplace(II)V

    .line 1032
    :cond_6f
    return-object p0

    .line 957
    :cond_70
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "The ab output string is shorter than the bc input string."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 961
    :cond_78
    if-eqz v6, :cond_fa

    .line 973
    invoke-virtual {v0}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v11

    if-nez v11, :cond_a1

    invoke-virtual {v1}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v11

    if-nez v11, :cond_a1

    .line 975
    if-nez v8, :cond_8a

    if-eqz v9, :cond_8f

    .line 976
    :cond_8a
    invoke-virtual {p0, v8, v9}, Landroid/icu/text/Edits;->addReplace(II)V

    .line 977
    move v9, v10

    move v8, v10

    .line 979
    :cond_8f
    if-gt v4, v7, :cond_93

    move v10, v4

    goto :goto_94

    :cond_93
    move v10, v7

    .line 980
    .local v10, "unchangedLength":I
    :goto_94
    invoke-virtual {p0, v10}, Landroid/icu/text/Edits;->addUnchanged(I)V

    .line 981
    sub-int v11, v4, v10

    move v4, v11

    move v5, v11

    .line 982
    sub-int v11, v7, v10

    move v7, v11

    move v6, v11

    .line 984
    goto/16 :goto_10

    .line 986
    .end local v10    # "unchangedLength":I
    :cond_a1
    invoke-virtual {v0}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v11

    if-nez v11, :cond_bf

    invoke-virtual {v1}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v11

    if-eqz v11, :cond_bf

    .line 988
    if-lt v5, v6, :cond_ec

    .line 990
    add-int v11, v8, v6

    add-int v12, v9, v7

    invoke-virtual {p0, v11, v12}, Landroid/icu/text/Edits;->addReplace(II)V

    .line 991
    move v9, v10

    move v8, v10

    .line 992
    sub-int v10, v5, v6

    move v5, v10

    move v4, v10

    .line 993
    const/4 v6, 0x0

    .line 994
    goto/16 :goto_10

    .line 997
    :cond_bf
    invoke-virtual {v0}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v11

    if-eqz v11, :cond_dd

    invoke-virtual {v1}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v11

    if-nez v11, :cond_dd

    .line 999
    if-gt v5, v6, :cond_ec

    .line 1001
    add-int v11, v8, v4

    add-int v12, v9, v5

    invoke-virtual {p0, v11, v12}, Landroid/icu/text/Edits;->addReplace(II)V

    .line 1002
    move v9, v10

    move v8, v10

    .line 1003
    sub-int v10, v6, v5

    move v6, v10

    move v7, v10

    .line 1004
    const/4 v5, 0x0

    .line 1005
    goto/16 :goto_10

    .line 1009
    :cond_dd
    if-ne v5, v6, :cond_ec

    .line 1011
    add-int v11, v8, v4

    add-int v12, v9, v7

    invoke-virtual {p0, v11, v12}, Landroid/icu/text/Edits;->addReplace(II)V

    .line 1012
    move v9, v10

    move v8, v10

    .line 1013
    move v6, v10

    move v5, v10

    .line 1014
    goto/16 :goto_10

    .line 1019
    :cond_ec
    add-int/2addr v8, v4

    .line 1020
    add-int/2addr v9, v7

    .line 1021
    if-ge v5, v6, :cond_f5

    .line 1022
    sub-int/2addr v6, v5

    .line 1023
    move v5, v10

    move v7, v10

    goto/16 :goto_10

    .line 1025
    :cond_f5
    sub-int/2addr v5, v6

    .line 1026
    move v6, v10

    move v4, v10

    goto/16 :goto_10

    .line 962
    :cond_fa
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "The bc input string is shorter than the ab output string."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public whitelist test-api numberOfChanges()I
    .registers 2

    .line 244
    iget v0, p0, Landroid/icu/text/Edits;->numChanges:I

    return v0
.end method

.method public whitelist test-api reset()V
    .registers 2

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/Edits;->numChanges:I

    iput v0, p0, Landroid/icu/text/Edits;->delta:I

    iput v0, p0, Landroid/icu/text/Edits;->length:I

    .line 95
    return-void
.end method
