.class public final Landroid/icu/text/StringCharacterIterator;
.super Ljava/lang/Object;
.source "StringCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o begin:I

.field private greylist-max-o end:I

.field private greylist-max-o pos:I

.field private greylist-max-o text:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/StringCharacterIterator;-><init>(Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/icu/text/StringCharacterIterator;-><init>(Ljava/lang/String;III)V

    .line 64
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;III)V
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .param p4, "pos"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-eqz p1, :cond_2c

    .line 81
    iput-object p1, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    .line 83
    if-ltz p2, :cond_24

    if-gt p2, p3, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_24

    .line 87
    if-lt p4, p2, :cond_1c

    if-gt p4, p3, :cond_1c

    .line 91
    iput p2, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    .line 92
    iput p3, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    .line 93
    iput p4, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    .line 94
    return-void

    .line 88
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid substring range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    nop

    .line 295
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/StringCharacterIterator;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_8

    .line 296
    .local v0, "other":Landroid/icu/text/StringCharacterIterator;
    return-object v0

    .line 298
    .end local v0    # "other":Landroid/icu/text/StringCharacterIterator;
    :catch_8
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api current()C
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    if-lt v0, v1, :cond_15

    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    if-ge v0, v1, :cond_15

    .line 168
    iget-object v0, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 171
    :cond_15
    const v0, 0xffff

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 254
    return v0

    .line 256
    :cond_4
    instance-of v1, p1, Landroid/icu/text/StringCharacterIterator;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 257
    return v2

    .line 260
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/icu/text/StringCharacterIterator;

    .line 262
    .local v1, "that":Landroid/icu/text/StringCharacterIterator;
    invoke-virtual {p0}, Landroid/icu/text/StringCharacterIterator;->hashCode()I

    move-result v3

    invoke-virtual {v1}, Landroid/icu/text/StringCharacterIterator;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 263
    return v2

    .line 265
    :cond_18
    iget-object v3, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 266
    return v2

    .line 268
    :cond_23
    iget v3, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    iget v4, v1, Landroid/icu/text/StringCharacterIterator;->pos:I

    if-ne v3, v4, :cond_37

    iget v3, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    iget v4, v1, Landroid/icu/text/StringCharacterIterator;->begin:I

    if-ne v3, v4, :cond_37

    iget v3, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    iget v4, v1, Landroid/icu/text/StringCharacterIterator;->end:I

    if-eq v3, v4, :cond_36

    goto :goto_37

    .line 271
    :cond_36
    return v0

    .line 269
    :cond_37
    :goto_37
    return v2
.end method

.method public whitelist test-api first()C
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    .line 125
    invoke-virtual {p0}, Landroid/icu/text/StringCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public whitelist test-api getBeginIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    return v0
.end method

.method public whitelist test-api getEndIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    return v0
.end method

.method public whitelist test-api getIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    iget-object v0, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api last()C
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    if-eq v0, v1, :cond_d

    .line 137
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    goto :goto_11

    .line 139
    :cond_d
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    .line 141
    :goto_11
    invoke-virtual {p0}, Landroid/icu/text/StringCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public whitelist test-api next()C
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_17

    .line 184
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    .line 185
    iget-object v0, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 188
    :cond_17
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    .line 189
    const v0, 0xffff

    return v0
.end method

.method public whitelist test-api previous()C
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    if-le v0, v1, :cond_15

    .line 202
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    .line 203
    iget-object v0, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 206
    :cond_15
    const v0, 0xffff

    return v0
.end method

.method public whitelist test-api setIndex(I)C
    .registers 4
    .param p1, "p"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    if-lt p1, v0, :cond_f

    iget v0, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    if-gt p1, v0, :cond_f

    .line 155
    iput p1, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    .line 156
    invoke-virtual {p0}, Landroid/icu/text/StringCharacterIterator;->current()C

    move-result v0

    return v0

    .line 153
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setText(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    if-eqz p1, :cond_10

    .line 110
    iput-object p1, p0, Landroid/icu/text/StringCharacterIterator;->text:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->begin:I

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Landroid/icu/text/StringCharacterIterator;->end:I

    .line 113
    iput v0, p0, Landroid/icu/text/StringCharacterIterator;->pos:I

    .line 114
    return-void

    .line 108
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
