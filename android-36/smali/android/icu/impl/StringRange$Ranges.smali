.class final Landroid/icu/impl/StringRange$Ranges;
.super Ljava/lang/Object;
.source "StringRange.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/StringRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ranges"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/impl/StringRange$Ranges;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist ranges:[Landroid/icu/impl/StringRange$Range;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "s"    # Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-static {p1}, Landroid/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    move-result-object v0

    .line 174
    .local v0, "array":[I
    array-length v1, v0

    new-array v1, v1, [Landroid/icu/impl/StringRange$Range;

    iput-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    .line 175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_20

    .line 176
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    new-instance v3, Landroid/icu/impl/StringRange$Range;

    aget v4, v0, v1

    aget v5, v0, v1

    invoke-direct {v3, v4, v5}, Landroid/icu/impl/StringRange$Range;-><init>(II)V

    aput-object v3, v2, v1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 178
    .end local v1    # "i":I
    :cond_20
    return-void
.end method


# virtual methods
.method public blacklist compareTo(Landroid/icu/impl/StringRange$Ranges;)I
    .registers 6
    .param p1, "other"    # Landroid/icu/impl/StringRange$Ranges;

    .line 229
    iget-object v0, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v0, v0

    iget-object v1, p1, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 230
    .local v0, "diff":I
    if-eqz v0, :cond_a

    .line 231
    return v0

    .line 233
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v2, v2

    if-ge v1, v2, :cond_22

    .line 234
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v2, v2, v1

    iget-object v3, p1, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/icu/impl/StringRange$Range;->compareTo(Landroid/icu/impl/StringRange$Range;)I

    move-result v0

    .line 235
    if-eqz v0, :cond_1f

    .line 236
    return v0

    .line 233
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 239
    .end local v1    # "i":I
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 170
    check-cast p1, Landroid/icu/impl/StringRange$Ranges;

    invoke-virtual {p0, p1}, Landroid/icu/impl/StringRange$Ranges;->compareTo(Landroid/icu/impl/StringRange$Ranges;)I

    move-result p1

    return p1
.end method

.method public blacklist end(Z)Ljava/lang/String;
    .registers 6
    .param p1, "mostCompact"    # Z

    .line 206
    invoke-virtual {p0}, Landroid/icu/impl/StringRange$Ranges;->firstDifference()I

    move-result v0

    .line 207
    .local v0, "firstDiff":I
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v1, v1

    if-ne v0, v1, :cond_b

    .line 208
    const/4 v1, 0x0

    return-object v1

    .line 210
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v1, "result":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v3, v3

    if-ge v2, v3, :cond_26

    .line 212
    iget-object v3, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/icu/impl/StringRange$Range;->max:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 214
    .end local v2    # "i":I
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist firstDifference()I
    .registers 4

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 218
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/impl/StringRange$Range;->min:I

    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/icu/impl/StringRange$Range;->max:I

    if-eq v1, v2, :cond_15

    .line 219
    return v0

    .line 217
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v0, v0

    return v0
.end method

.method public blacklist merge(ILandroid/icu/impl/StringRange$Ranges;)Z
    .registers 8
    .param p1, "pivot"    # I
    .param p2, "other"    # Landroid/icu/impl/StringRange$Ranges;

    .line 181
    iget-object v0, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_2c

    .line 182
    const/4 v2, 0x0

    if-ne v0, p1, :cond_1a

    .line 183
    iget-object v3, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/icu/impl/StringRange$Range;->max:I

    iget-object v4, p2, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/icu/impl/StringRange$Range;->min:I

    sub-int/2addr v4, v1

    if-eq v3, v4, :cond_29

    .line 184
    return v2

    .line 187
    :cond_1a
    iget-object v3, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v3, v3, v0

    iget-object v4, p2, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/icu/impl/StringRange$Range;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 188
    return v2

    .line 181
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 193
    .end local v0    # "i":I
    :cond_2c
    iget-object v0, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v0, v0, p1

    iget-object v2, p2, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/icu/impl/StringRange$Range;->max:I

    iput v2, v0, Landroid/icu/impl/StringRange$Range;->max:I

    .line 195
    return v1
.end method

.method public blacklist size()Ljava/lang/Integer;
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist start()Ljava/lang/String;
    .registers 4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 201
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/icu/impl/StringRange$Range;->min:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 203
    .end local v1    # "i":I
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 243
    invoke-virtual {p0}, Landroid/icu/impl/StringRange$Ranges;->start()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "start":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/icu/impl/StringRange$Ranges;->end(Z)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "end":Ljava/lang/String;
    if-nez v1, :cond_d

    move-object v2, v0

    goto :goto_24

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_24
    return-object v2
.end method
