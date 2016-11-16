.class final Landroid/icu/impl/StringRange$Range;
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
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/impl/StringRange$Range;",
        ">;"
    }
.end annotation


# instance fields
.field max:I

.field min:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    #@0
    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 138
    iput p1, p0, Landroid/icu/impl/StringRange$Range;->min:I

    #@5
    .line 139
    iput p2, p0, Landroid/icu/impl/StringRange$Range;->max:I

    #@7
    .line 137
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/impl/StringRange$Range;)I
    .locals 3
    .param p1, "that"    # Landroid/icu/impl/StringRange$Range;

    #@0
    .prologue
    .line 146
    iget v1, p0, Landroid/icu/impl/StringRange$Range;->min:I

    #@2
    iget v2, p1, Landroid/icu/impl/StringRange$Range;->min:I

    #@4
    sub-int v0, v1, v2

    #@6
    .line 147
    .local v0, "diff":I
    if-eqz v0, :cond_0

    #@8
    .line 148
    return v0

    #@9
    .line 150
    :cond_0
    iget v1, p0, Landroid/icu/impl/StringRange$Range;->max:I

    #@b
    iget v2, p1, Landroid/icu/impl/StringRange$Range;->max:I

    #@d
    sub-int/2addr v1, v2

    #@e
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 145
    check-cast p1, Landroid/icu/impl/StringRange$Range;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/impl/StringRange$Range;->compareTo(Landroid/icu/impl/StringRange$Range;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 143
    check-cast p1, Landroid/icu/impl/StringRange$Range;

    #@3
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/impl/StringRange$Range;->compareTo(Landroid/icu/impl/StringRange$Range;)I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 154
    iget v0, p0, Landroid/icu/impl/StringRange$Range;->min:I

    #@2
    mul-int/lit8 v0, v0, 0x25

    #@4
    iget v1, p0, Landroid/icu/impl/StringRange$Range;->max:I

    #@6
    add-int/2addr v0, v1

    #@7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget v2, p0, Landroid/icu/impl/StringRange$Range;->min:I

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    .line 159
    .local v0, "result":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/icu/impl/StringRange$Range;->min:I

    #@d
    iget v2, p0, Landroid/icu/impl/StringRange$Range;->max:I

    #@f
    if-ne v1, v2, :cond_0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    :goto_0
    return-object v1

    #@16
    :cond_0
    const/16 v1, 0x7e

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget v2, p0, Landroid/icu/impl/StringRange$Range;->max:I

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    goto :goto_0
.end method
