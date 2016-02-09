.class public final Landroid/icu/text/StringCharacterIterator;
.super Ljava/lang/Object;
.source "StringCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private begin:I

.field private end:I

.field private pos:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 46
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/StringCharacterIterator;-><init>(Ljava/lang/String;I)V

    #@4
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1, v0, p2}, Landroid/icu/text/StringCharacterIterator;-><init>(Ljava/lang/String;III)V

    #@8
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .param p4, "pos"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    if-nez p1, :cond_0

    #@5
    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 77
    :cond_0
    iput-object p1, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    #@d
    .line 79
    if-ltz p2, :cond_1

    #@f
    if-le p2, p3, :cond_2

    #@11
    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Invalid substring range"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 79
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1d
    move-result v0

    #@1e
    if-gt p3, v0, :cond_1

    #@20
    .line 83
    if-lt p4, p2, :cond_3

    #@22
    if-le p4, p3, :cond_4

    #@24
    .line 84
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v1, "Invalid position"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 87
    :cond_4
    iput p2, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    #@2f
    .line 88
    iput p3, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    #@31
    .line 89
    iput p4, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@33
    .line 73
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 291
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/text/StringCharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 292
    .local v1, "other":Landroid/icu/text/StringCharacterIterator;
    return-object v1

    #@7
    .line 294
    .end local v1    # "other":Landroid/icu/text/StringCharacterIterator;
    :catch_0
    move-exception v0

    #@8
    .line 295
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@a
    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v2
.end method

.method public current()C
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 163
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@2
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@8
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 164
    iget-object v0, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    #@e
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 167
    :cond_0
    const v0, 0xffff

    #@18
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 249
    if-ne p0, p1, :cond_0

    #@4
    .line 250
    return v4

    #@5
    .line 252
    :cond_0
    instance-of v1, p1, Landroid/icu/text/StringCharacterIterator;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 253
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 256
    check-cast v0, Landroid/icu/text/StringCharacterIterator;

    #@d
    .line 258
    .local v0, "that":Landroid/icu/text/StringCharacterIterator;
    invoke-virtual {p0}, Landroid/icu/text/StringCharacterIterator;->hashCode()I

    #@10
    move-result v1

    #@11
    invoke-virtual {v0}, Landroid/icu/text/StringCharacterIterator;->hashCode()I

    #@14
    move-result v2

    #@15
    if-eq v1, v2, :cond_2

    #@17
    .line 259
    return v3

    #@18
    .line 261
    :cond_2
    iget-object v1, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    #@1a
    iget-object v2, v0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_3

    #@22
    .line 262
    return v3

    #@23
    .line 264
    :cond_3
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@25
    iget v2, v0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@27
    if-ne v1, v2, :cond_4

    #@29
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    #@2b
    iget v2, v0, Landroid/icu/text/StringCharacterIterator;->begin:I

    #@2d
    if-eq v1, v2, :cond_5

    #@2f
    .line 265
    :cond_4
    return v3

    #@30
    .line 264
    :cond_5
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    #@32
    iget v2, v0, Landroid/icu/text/StringCharacterIterator;->end:I

    #@34
    if-ne v1, v2, :cond_4

    #@36
    .line 267
    return v4
.end method

.method public first()C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 120
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    #@2
    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@4
    .line 121
    invoke-virtual {p0}, Landroid/icu/text/StringCharacterIterator;->current()C

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getBeginIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 214
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    #@2
    return v0
.end method

.method public getEndIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 225
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    #@2
    return v0
.end method

.method public getIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 236
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@8
    xor-int/2addr v0, v1

    #@9
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    #@b
    xor-int/2addr v0, v1

    #@c
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    #@e
    xor-int/2addr v0, v1

    #@f
    return v0
.end method

.method public last()C
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 132
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    #@2
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 133
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@c
    .line 137
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/StringCharacterIterator;->current()C

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 135
    :cond_0
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    #@13
    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@15
    goto :goto_0
.end method

.method public next()C
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 179
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@2
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    if-ge v0, v1, :cond_0

    #@8
    .line 180
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@e
    .line 181
    iget-object v0, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    #@10
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 184
    :cond_0
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    #@19
    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@1b
    .line 185
    const v0, 0xffff

    #@1e
    return v0
.end method

.method public previous()C
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 197
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@2
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    #@4
    if-le v0, v1, :cond_0

    #@6
    .line 198
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@c
    .line 199
    iget-object v0, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    #@e
    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 202
    :cond_0
    const v0, 0xffff

    #@18
    return v0
.end method

.method public setIndex(I)C
    .locals 2
    .param p1, "p"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 148
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Invalid index"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 151
    :cond_1
    iput p1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@13
    .line 152
    invoke-virtual {p0}, Landroid/icu/text/StringCharacterIterator;->current()C

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 103
    if-nez p1, :cond_0

    #@3
    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 106
    :cond_0
    iput-object p1, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    #@b
    .line 107
    iput v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    #@d
    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    #@13
    .line 109
    iput v1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    #@15
    .line 102
    return-void
.end method
