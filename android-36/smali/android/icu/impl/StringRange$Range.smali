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
        "Ljava/lang/Comparable<",
        "Landroid/icu/impl/StringRange$Range;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist max:I

.field blacklist min:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Landroid/icu/impl/StringRange$Range;->min:I

    .line 145
    iput p2, p0, Landroid/icu/impl/StringRange$Range;->max:I

    .line 146
    return-void
.end method


# virtual methods
.method public blacklist compareTo(Landroid/icu/impl/StringRange$Range;)I
    .registers 5
    .param p1, "that"    # Landroid/icu/impl/StringRange$Range;

    .line 153
    iget v0, p0, Landroid/icu/impl/StringRange$Range;->min:I

    iget v1, p1, Landroid/icu/impl/StringRange$Range;->min:I

    sub-int/2addr v0, v1

    .line 154
    .local v0, "diff":I
    if-eqz v0, :cond_8

    .line 155
    return v0

    .line 157
    :cond_8
    iget v1, p0, Landroid/icu/impl/StringRange$Range;->max:I

    iget v2, p1, Landroid/icu/impl/StringRange$Range;->max:I

    sub-int/2addr v1, v2

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

    .line 140
    check-cast p1, Landroid/icu/impl/StringRange$Range;

    invoke-virtual {p0, p1}, Landroid/icu/impl/StringRange$Range;->compareTo(Landroid/icu/impl/StringRange$Range;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 149
    if-eq p0, p1, :cond_14

    if-eqz p1, :cond_12

    instance-of v0, p1, Landroid/icu/impl/StringRange$Range;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/StringRange$Range;

    invoke-virtual {p0, v0}, Landroid/icu/impl/StringRange$Range;->compareTo(Landroid/icu/impl/StringRange$Range;)I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 161
    iget v0, p0, Landroid/icu/impl/StringRange$Range;->min:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/impl/StringRange$Range;->max:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/icu/impl/StringRange$Range;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    .local v0, "result":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/icu/impl/StringRange$Range;->min:I

    iget v2, p0, Landroid/icu/impl/StringRange$Range;->max:I

    if-ne v1, v2, :cond_16

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_16
    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/impl/StringRange$Range;->max:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_26
    return-object v1
.end method
