.class public final Ljava/text/StringCharacterIterator;
.super Ljava/lang/Object;
.source "StringCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field end:I

.field offset:I

.field start:I

.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 38
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@6
    .line 39
    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@8
    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    #@a
    .line 40
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    #@12
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "location"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 58
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@6
    .line 59
    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    #@8
    .line 60
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    #@10
    .line 61
    if-ltz p2, :cond_0

    #@12
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    #@14
    if-le p2, v0, :cond_1

    #@16
    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1b
    throw v0

    #@1c
    .line 64
    :cond_1
    iput p2, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@1e
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "location"    # I

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@5
    .line 86
    if-ltz p2, :cond_0

    #@7
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    if-le p3, v0, :cond_1

    #@f
    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@14
    throw v0

    #@15
    .line 86
    :cond_1
    if-gt p2, p3, :cond_0

    #@17
    .line 87
    if-lt p4, p2, :cond_0

    #@19
    if-gt p4, p3, :cond_0

    #@1b
    .line 90
    iput p2, p0, Ljava/text/StringCharacterIterator;->start:I

    #@1d
    .line 91
    iput p3, p0, Ljava/text/StringCharacterIterator;->end:I

    #@1f
    .line 92
    iput p4, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@21
    .line 84
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 105
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 106
    :catch_0
    move-exception v0

    #@6
    .line 107
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v1
.end method

.method public current()C
    .locals 2

    #@0
    .prologue
    .line 118
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@2
    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 119
    const v0, 0xffff

    #@9
    return v0

    #@a
    .line 121
    :cond_0
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@c
    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 138
    instance-of v2, p1, Ljava/text/StringCharacterIterator;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 139
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 141
    check-cast v0, Ljava/text/StringCharacterIterator;

    #@9
    .line 142
    .local v0, "it":Ljava/text/StringCharacterIterator;
    iget-object v2, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@b
    iget-object v3, v0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    iget v2, p0, Ljava/text/StringCharacterIterator;->start:I

    #@15
    iget v3, v0, Ljava/text/StringCharacterIterator;->start:I

    #@17
    if-ne v2, v3, :cond_1

    #@19
    iget v2, p0, Ljava/text/StringCharacterIterator;->end:I

    #@1b
    iget v3, v0, Ljava/text/StringCharacterIterator;->end:I

    #@1d
    if-ne v2, v3, :cond_1

    #@1f
    .line 143
    iget v2, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@21
    iget v3, v0, Ljava/text/StringCharacterIterator;->offset:I

    #@23
    if-ne v2, v3, :cond_1

    #@25
    const/4 v1, 0x1

    #@26
    .line 142
    :cond_1
    return v1
.end method

.method public first()C
    .locals 2

    #@0
    .prologue
    .line 154
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    #@2
    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 155
    const v0, 0xffff

    #@9
    return v0

    #@a
    .line 157
    :cond_0
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    #@c
    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@e
    .line 158
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@10
    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public getBeginIndex()I
    .locals 1

    #@0
    .prologue
    .line 167
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    #@2
    return v0
.end method

.method public getEndIndex()I
    .locals 1

    #@0
    .prologue
    .line 176
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    #@2
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 185
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/text/StringCharacterIterator;->start:I

    #@8
    add-int/2addr v0, v1

    #@9
    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    #@b
    add-int/2addr v0, v1

    #@c
    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method

.method public last()C
    .locals 2

    #@0
    .prologue
    .line 201
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    #@2
    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 202
    const v0, 0xffff

    #@9
    return v0

    #@a
    .line 204
    :cond_0
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@10
    .line 205
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@12
    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public next()C
    .locals 2

    #@0
    .prologue
    .line 215
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@2
    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 216
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    #@a
    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@c
    .line 217
    const v0, 0xffff

    #@f
    return v0

    #@10
    .line 219
    :cond_0
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@12
    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    iput v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public previous()C
    .locals 2

    #@0
    .prologue
    .line 229
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@2
    iget v1, p0, Ljava/text/StringCharacterIterator;->start:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 230
    const v0, 0xffff

    #@9
    return v0

    #@a
    .line 232
    :cond_0
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@c
    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    iput v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public setIndex(I)C
    .locals 2
    .param p1, "location"    # I

    #@0
    .prologue
    .line 247
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v0

    #@e
    .line 250
    :cond_1
    iput p1, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@10
    .line 251
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@12
    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    #@14
    if-ne v0, v1, :cond_2

    #@16
    .line 252
    const v0, 0xffff

    #@19
    return v0

    #@1a
    .line 254
    :cond_2
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@1c
    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v0

    #@22
    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 265
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    #@3
    .line 266
    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    #@5
    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    #@7
    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    #@d
    .line 264
    return-void
.end method
