.class Landroid/icu/lang/UCharacter$StringContextIterator;
.super Ljava/lang/Object;
.source "UCharacter.java"

# interfaces
.implements Landroid/icu/impl/UCaseProps$ContextIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UCharacter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringContextIterator"
.end annotation


# instance fields
.field protected cpLimit:I

.field protected cpStart:I

.field protected dir:I

.field protected index:I

.field protected limit:I

.field protected s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 4137
    iput-object p1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    #@6
    .line 4138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    #@c
    .line 4139
    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@e
    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@10
    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    #@12
    .line 4140
    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    #@14
    .line 4136
    return-void
.end method


# virtual methods
.method public getCPLimit()I
    .locals 1

    #@0
    .prologue
    .line 4203
    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@2
    return v0
.end method

.method public getCPStart()I
    .locals 1

    #@0
    .prologue
    .line 4195
    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    #@2
    return v0
.end method

.method public moveToLimit()V
    .locals 1

    #@0
    .prologue
    .line 4165
    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    #@2
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@4
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    #@6
    .line 4164
    return-void
.end method

.method public next()I
    .locals 3

    #@0
    .prologue
    .line 4227
    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    #@2
    if-lez v1, :cond_0

    #@4
    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@6
    iget-object v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    #@8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    if-ge v1, v2, :cond_0

    #@e
    .line 4228
    iget-object v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    #@10
    iget v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    #@15
    move-result v0

    #@16
    .line 4229
    .local v0, "c":I
    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@18
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@1b
    move-result v2

    #@1c
    add-int/2addr v1, v2

    #@1d
    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@1f
    .line 4230
    return v0

    #@20
    .line 4231
    .end local v0    # "c":I
    :cond_0
    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    #@22
    if-gez v1, :cond_1

    #@24
    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@26
    if-lez v1, :cond_1

    #@28
    .line 4232
    iget-object v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    #@2a
    iget v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointBefore(I)I

    #@2f
    move-result v0

    #@30
    .line 4233
    .restart local v0    # "c":I
    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@32
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@35
    move-result v2

    #@36
    sub-int/2addr v1, v2

    #@37
    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@39
    .line 4234
    return v0

    #@3a
    .line 4236
    .end local v0    # "c":I
    :cond_1
    const/4 v1, -0x1

    #@3b
    return v1
.end method

.method public nextCaseMapCP()I
    .locals 3

    #@0
    .prologue
    .line 4180
    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@2
    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    #@4
    .line 4181
    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@6
    iget v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 4182
    iget-object v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    #@c
    iget v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    #@11
    move-result v0

    #@12
    .line 4183
    .local v0, "c":I
    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@14
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@17
    move-result v2

    #@18
    add-int/2addr v1, v2

    #@19
    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@1b
    .line 4184
    return v0

    #@1c
    .line 4186
    .end local v0    # "c":I
    :cond_0
    const/4 v1, -0x1

    #@1d
    return v1
.end method

.method public reset(I)V
    .locals 1
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4209
    if-lez p1, :cond_0

    #@3
    .line 4211
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    #@6
    .line 4212
    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@8
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@a
    .line 4208
    :goto_0
    return-void

    #@b
    .line 4213
    :cond_0
    if-gez p1, :cond_1

    #@d
    .line 4215
    const/4 v0, -0x1

    #@e
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    #@10
    .line 4216
    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    #@12
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@14
    goto :goto_0

    #@15
    .line 4219
    :cond_1
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    #@17
    .line 4220
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@19
    goto :goto_0
.end method

.method public setLimit(I)V
    .locals 1
    .param p1, "lim"    # I

    #@0
    .prologue
    .line 4154
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-gt p1, v0, :cond_0

    #@a
    .line 4155
    iput p1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    #@c
    .line 4153
    :goto_0
    return-void

    #@d
    .line 4157
    :cond_0
    iget-object v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    #@f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    #@15
    goto :goto_0
.end method
