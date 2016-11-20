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
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/impl/StringRange$Ranges;",
        ">;"
    }
.end annotation


# instance fields
.field private final ranges:[Landroid/icu/impl/StringRange$Range;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 166
    invoke-static {p1}, Landroid/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    #@6
    move-result-object v0

    #@7
    .line 167
    .local v0, "array":[I
    array-length v2, v0

    #@8
    new-array v2, v2, [Landroid/icu/impl/StringRange$Range;

    #@a
    iput-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@c
    .line 168
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@e
    if-ge v1, v2, :cond_0

    #@10
    .line 169
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@12
    new-instance v3, Landroid/icu/impl/StringRange$Range;

    #@14
    aget v4, v0, v1

    #@16
    aget v5, v0, v1

    #@18
    invoke-direct {v3, v4, v5}, Landroid/icu/impl/StringRange$Range;-><init>(II)V

    #@1b
    aput-object v3, v2, v1

    #@1d
    .line 168
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/impl/StringRange$Ranges;)I
    .locals 5
    .param p1, "other"    # Landroid/icu/impl/StringRange$Ranges;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 221
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@3
    array-length v2, v2

    #@4
    iget-object v3, p1, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@6
    array-length v3, v3

    #@7
    sub-int v0, v2, v3

    #@9
    .line 222
    .local v0, "diff":I
    if-eqz v0, :cond_0

    #@b
    .line 223
    return v0

    #@c
    .line 225
    :cond_0
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@f
    array-length v2, v2

    #@10
    if-ge v1, v2, :cond_2

    #@12
    .line 226
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@14
    aget-object v2, v2, v1

    #@16
    iget-object v3, p1, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@18
    aget-object v3, v3, v1

    #@1a
    invoke-virtual {v2, v3}, Landroid/icu/impl/StringRange$Range;->compareTo(Landroid/icu/impl/StringRange$Range;)I

    #@1d
    move-result v0

    #@1e
    .line 227
    if-eqz v0, :cond_1

    #@20
    .line 228
    return v0

    #@21
    .line 225
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 231
    :cond_2
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 220
    check-cast p1, Landroid/icu/impl/StringRange$Ranges;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/impl/StringRange$Ranges;->compareTo(Landroid/icu/impl/StringRange$Ranges;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public end(Z)Ljava/lang/String;
    .locals 4
    .param p1, "mostCompact"    # Z

    #@0
    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/icu/impl/StringRange$Ranges;->firstDifference()I

    #@3
    move-result v0

    #@4
    .line 200
    .local v0, "firstDiff":I
    iget-object v3, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@6
    array-length v3, v3

    #@7
    if-ne v0, v3, :cond_0

    #@9
    .line 201
    const/4 v3, 0x0

    #@a
    return-object v3

    #@b
    .line 203
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 204
    .local v2, "result":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    #@12
    move v1, v0

    #@13
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@15
    array-length v3, v3

    #@16
    if-ge v1, v3, :cond_2

    #@18
    .line 205
    iget-object v3, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@1a
    aget-object v3, v3, v1

    #@1c
    iget v3, v3, Landroid/icu/impl/StringRange$Range;->max:I

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@21
    .line 204
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    #@25
    .restart local v1    # "i":I
    goto :goto_0

    #@26
    .line 207
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    return-object v3
.end method

.method public firstDifference()I
    .locals 3

    #@0
    .prologue
    .line 210
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 211
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@8
    aget-object v1, v1, v0

    #@a
    iget v1, v1, Landroid/icu/impl/StringRange$Range;->min:I

    #@c
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@e
    aget-object v2, v2, v0

    #@10
    iget v2, v2, Landroid/icu/impl/StringRange$Range;->max:I

    #@12
    if-eq v1, v2, :cond_0

    #@14
    .line 212
    return v0

    #@15
    .line 210
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 215
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@1a
    array-length v1, v1

    #@1b
    return v1
.end method

.method public merge(ILandroid/icu/impl/StringRange$Ranges;)Z
    .locals 4
    .param p1, "pivot"    # I
    .param p2, "other"    # Landroid/icu/impl/StringRange$Ranges;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 174
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@3
    array-length v1, v1

    #@4
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@8
    .line 175
    if-ne v0, p1, :cond_0

    #@a
    .line 176
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@c
    aget-object v1, v1, v0

    #@e
    iget v1, v1, Landroid/icu/impl/StringRange$Range;->max:I

    #@10
    iget-object v2, p2, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@12
    aget-object v2, v2, v0

    #@14
    iget v2, v2, Landroid/icu/impl/StringRange$Range;->min:I

    #@16
    add-int/lit8 v2, v2, -0x1

    #@18
    if-eq v1, v2, :cond_1

    #@1a
    .line 177
    return v3

    #@1b
    .line 180
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@1d
    aget-object v1, v1, v0

    #@1f
    iget-object v2, p2, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@21
    aget-object v2, v2, v0

    #@23
    invoke-virtual {v1, v2}, Landroid/icu/impl/StringRange$Range;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_1

    #@29
    .line 181
    return v3

    #@2a
    .line 174
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 186
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@2f
    aget-object v1, v1, p1

    #@31
    iget-object v2, p2, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@33
    aget-object v2, v2, p1

    #@35
    iget v2, v2, Landroid/icu/impl/StringRange$Range;->max:I

    #@37
    iput v2, v1, Landroid/icu/impl/StringRange$Range;->max:I

    #@39
    .line 188
    const/4 v1, 0x1

    #@3a
    return v1
.end method

.method public size()Ljava/lang/Integer;
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@2
    array-length v0, v0

    #@3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public start()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 193
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@8
    array-length v2, v2

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 194
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    #@d
    aget-object v2, v2, v0

    #@f
    iget v2, v2, Landroid/icu/impl/StringRange$Range;->min:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@14
    .line 193
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 196
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/icu/impl/StringRange$Ranges;->start()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 236
    .local v1, "start":Ljava/lang/String;
    const/4 v2, 0x0

    #@5
    invoke-virtual {p0, v2}, Landroid/icu/impl/StringRange$Ranges;->end(Z)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 237
    .local v0, "end":Ljava/lang/String;
    if-nez v0, :cond_0

    #@b
    .end local v1    # "start":Ljava/lang/String;
    :goto_0
    return-object v1

    #@c
    .restart local v1    # "start":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, "~"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    goto :goto_0
.end method
