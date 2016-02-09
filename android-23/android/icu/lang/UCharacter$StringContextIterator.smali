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
    .line 4689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 4690
    iput-object p1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    #@6
    .line 4691
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    #@c
    .line 4692
    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@e
    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@10
    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    #@12
    .line 4693
    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    #@14
    .line 4689
    return-void
.end method


# virtual methods
.method public getCPLimit()I
    .locals 1

    #@0
    .prologue
    .line 4770
    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@2
    return v0
.end method

.method public getCPStart()I
    .locals 1

    #@0
    .prologue
    .line 4762
    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    #@2
    return v0
.end method

.method public moveToLimit()V
    .locals 1

    #@0
    .prologue
    .line 4718
    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    #@2
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@4
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    #@6
    .line 4717
    return-void
.end method

.method public next()I
    .locals 3

    #@0
    .prologue
    .line 4794
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
    .line 4795
    iget-object v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    #@10
    iget v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@12
    invoke-static {v1, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@15
    move-result v0

    #@16
    .line 4796
    .local v0, "c":I
    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@18
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@1b
    move-result v2

    #@1c
    add-int/2addr v1, v2

    #@1d
    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@1f
    .line 4797
    return v0

    #@20
    .line 4798
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
    .line 4799
    iget-object v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    #@2a
    iget v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@2c
    add-int/lit8 v2, v2, -0x1

    #@2e
    invoke-static {v1, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@31
    move-result v0

    #@32
    .line 4800
    .restart local v0    # "c":I
    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@34
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@37
    move-result v2

    #@38
    sub-int/2addr v1, v2

    #@39
    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@3b
    .line 4801
    return v0

    #@3c
    .line 4803
    .end local v0    # "c":I
    :cond_1
    const/4 v1, -0x1

    #@3d
    return v1
.end method

.method public nextCaseMapCP()I
    .locals 6

    #@0
    .prologue
    const v5, 0xdfff

    #@3
    .line 4735
    iget v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@5
    iput v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    #@7
    .line 4736
    iget v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@9
    iget v3, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    #@b
    if-ge v2, v3, :cond_2

    #@d
    .line 4737
    iget-object v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    #@f
    iget v3, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@11
    add-int/lit8 v4, v3, 0x1

    #@13
    iput v4, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v0

    #@19
    .line 4738
    .local v0, "c":I
    const v2, 0xd800

    #@1c
    if-le v2, v0, :cond_0

    #@1e
    if-gt v0, v5, :cond_1

    #@20
    .line 4740
    :cond_0
    const v2, 0xdbff

    #@23
    if-gt v0, v2, :cond_1

    #@25
    iget v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@27
    iget v3, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    #@29
    if-ge v2, v3, :cond_1

    #@2b
    .line 4741
    iget-object v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    #@2d
    iget v3, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v1

    #@33
    .local v1, "c2":C
    const v2, 0xdc00

    #@36
    if-gt v2, v1, :cond_1

    #@38
    .line 4742
    if-gt v1, v5, :cond_1

    #@3a
    .line 4745
    iget v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@3c
    add-int/lit8 v2, v2, 0x1

    #@3e
    iput v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@40
    .line 4746
    int-to-char v2, v0

    #@41
    invoke-static {v2, v1}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@44
    move-result v0

    #@45
    .line 4751
    .end local v1    # "c2":C
    :cond_1
    return v0

    #@46
    .line 4753
    .end local v0    # "c":I
    :cond_2
    const/4 v2, -0x1

    #@47
    return v2
.end method

.method public reset(I)V
    .locals 1
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4776
    if-lez p1, :cond_0

    #@3
    .line 4778
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    #@6
    .line 4779
    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    #@8
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@a
    .line 4775
    :goto_0
    return-void

    #@b
    .line 4780
    :cond_0
    if-gez p1, :cond_1

    #@d
    .line 4782
    const/4 v0, -0x1

    #@e
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    #@10
    .line 4783
    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    #@12
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@14
    goto :goto_0

    #@15
    .line 4786
    :cond_1
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    #@17
    .line 4787
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    #@19
    goto :goto_0
.end method

.method public setLimit(I)V
    .locals 1
    .param p1, "lim"    # I

    #@0
    .prologue
    .line 4707
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
    .line 4708
    iput p1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    #@c
    .line 4706
    :goto_0
    return-void

    #@d
    .line 4710
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
