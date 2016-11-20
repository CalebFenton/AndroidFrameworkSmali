.class final Landroid/icu/text/PluralRanges$Matrix;
.super Ljava/lang/Object;
.source "PluralRanges.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Matrix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/text/PluralRanges$Matrix;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private data:[B


# direct methods
.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    sget v1, Landroid/icu/impl/StandardPlural;->COUNT:I

    #@5
    sget v2, Landroid/icu/impl/StandardPlural;->COUNT:I

    #@7
    mul-int/2addr v1, v2

    #@8
    new-array v1, v1, [B

    #@a
    iput-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    #@c
    .line 49
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    #@f
    array-length v1, v1

    #@10
    if-ge v0, v1, :cond_0

    #@12
    .line 50
    iget-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    #@14
    const/4 v2, -0x1

    #@15
    aput-byte v2, v1, v0

    #@17
    .line 49
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Landroid/icu/text/PluralRanges$Matrix;
    .locals 2

    #@0
    .prologue
    .line 167
    new-instance v0, Landroid/icu/text/PluralRanges$Matrix;

    #@2
    invoke-direct {v0}, Landroid/icu/text/PluralRanges$Matrix;-><init>()V

    #@5
    .line 168
    .local v0, "result":Landroid/icu/text/PluralRanges$Matrix;
    iget-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    #@7
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, [B

    #@d
    iput-object v1, v0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    #@f
    .line 169
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/icu/text/PluralRanges$Matrix;->clone()Landroid/icu/text/PluralRanges$Matrix;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public compareTo(Landroid/icu/text/PluralRanges$Matrix;)I
    .locals 5
    .param p1, "o"    # Landroid/icu/text/PluralRanges$Matrix;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 156
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    #@4
    array-length v2, v2

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 157
    iget-object v2, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    #@9
    aget-byte v2, v2, v1

    #@b
    iget-object v3, p1, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    #@d
    aget-byte v3, v3, v1

    #@f
    sub-int v0, v2, v3

    #@11
    .line 158
    .local v0, "diff":I
    if-eqz v0, :cond_0

    #@13
    .line 159
    return v0

    #@14
    .line 156
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 162
    .end local v0    # "diff":I
    :cond_1
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 155
    check-cast p1, Landroid/icu/text/PluralRanges$Matrix;

    #@2
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRanges$Matrix;->compareTo(Landroid/icu/text/PluralRanges$Matrix;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method endSame(Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;
    .locals 6
    .param p1, "end"    # Landroid/icu/impl/StandardPlural;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 93
    const/4 v0, 0x0

    #@2
    .line 94
    .local v0, "first":Landroid/icu/impl/StandardPlural;
    sget-object v4, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    #@4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v3

    #@8
    .end local v0    # "first":Landroid/icu/impl/StandardPlural;
    .local v3, "start$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_2

    #@e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/icu/impl/StandardPlural;

    #@14
    .line 95
    .local v2, "start":Landroid/icu/impl/StandardPlural;
    invoke-virtual {p0, v2, p1}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    #@17
    move-result-object v1

    #@18
    .line 96
    .local v1, "item":Landroid/icu/impl/StandardPlural;
    if-eqz v1, :cond_0

    #@1a
    .line 99
    if-nez v0, :cond_1

    #@1c
    .line 100
    move-object v0, v1

    #@1d
    .line 101
    .local v0, "first":Landroid/icu/impl/StandardPlural;
    goto :goto_0

    #@1e
    .line 103
    .end local v0    # "first":Landroid/icu/impl/StandardPlural;
    :cond_1
    if-eq v0, v1, :cond_0

    #@20
    .line 104
    return-object v5

    #@21
    .line 107
    .end local v1    # "item":Landroid/icu/impl/StandardPlural;
    .end local v2    # "start":Landroid/icu/impl/StandardPlural;
    :cond_2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 149
    instance-of v1, p1, Landroid/icu/text/PluralRanges$Matrix;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 150
    return v0

    #@6
    .line 152
    :cond_0
    check-cast p1, Landroid/icu/text/PluralRanges$Matrix;

    #@8
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRanges$Matrix;->compareTo(Landroid/icu/text/PluralRanges$Matrix;)I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    :cond_1
    return v0
.end method

.method get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;
    .locals 4
    .param p1, "start"    # Landroid/icu/impl/StandardPlural;
    .param p2, "end"    # Landroid/icu/impl/StandardPlural;

    #@0
    .prologue
    .line 84
    iget-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    #@2
    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@5
    move-result v2

    #@6
    sget v3, Landroid/icu/impl/StandardPlural;->COUNT:I

    #@8
    mul-int/2addr v2, v3

    #@9
    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@c
    move-result v3

    #@d
    add-int/2addr v2, v3

    #@e
    aget-byte v0, v1, v2

    #@10
    .line 85
    .local v0, "result":B
    if-gez v0, :cond_0

    #@12
    const/4 v1, 0x0

    #@13
    :goto_0
    return-object v1

    #@14
    :cond_0
    sget-object v1, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    #@16
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/icu/impl/StandardPlural;

    #@1c
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 140
    const/4 v1, 0x0

    #@1
    .line 141
    .local v1, "result":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 142
    mul-int/lit8 v2, v1, 0x25

    #@9
    iget-object v3, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    #@b
    aget-byte v3, v3, v0

    #@d
    add-int v1, v2, v3

    #@f
    .line 141
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 144
    :cond_0
    return v1
.end method

.method set(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V
    .locals 3
    .param p1, "start"    # Landroid/icu/impl/StandardPlural;
    .param p2, "end"    # Landroid/icu/impl/StandardPlural;
    .param p3, "result"    # Landroid/icu/impl/StandardPlural;

    #@0
    .prologue
    .line 62
    iget-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    #@2
    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@5
    move-result v0

    #@6
    sget v2, Landroid/icu/impl/StandardPlural;->COUNT:I

    #@8
    mul-int/2addr v0, v2

    #@9
    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@c
    move-result v2

    #@d
    add-int/2addr v2, v0

    #@e
    if-nez p3, :cond_0

    #@10
    const/4 v0, -0x1

    #@11
    :goto_0
    aput-byte v0, v1, v2

    #@13
    .line 61
    return-void

    #@14
    .line 63
    :cond_0
    invoke-virtual {p3}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@17
    move-result v0

    #@18
    int-to-byte v0, v0

    #@19
    goto :goto_0
.end method

.method setIfNew(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V
    .locals 4
    .param p1, "start"    # Landroid/icu/impl/StandardPlural;
    .param p2, "end"    # Landroid/icu/impl/StandardPlural;
    .param p3, "result"    # Landroid/icu/impl/StandardPlural;

    #@0
    .prologue
    .line 71
    iget-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    #@2
    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@5
    move-result v2

    #@6
    sget v3, Landroid/icu/impl/StandardPlural;->COUNT:I

    #@8
    mul-int/2addr v2, v3

    #@9
    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@c
    move-result v3

    #@d
    add-int/2addr v2, v3

    #@e
    aget-byte v0, v1, v2

    #@10
    .line 72
    .local v0, "old":B
    if-ltz v0, :cond_0

    #@12
    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Previously set value for <"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, ", "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v3, ", "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 74
    sget-object v3, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    #@38
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    .line 74
    const-string/jumbo v3, ">"

    #@43
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v1

    #@4f
    .line 76
    :cond_0
    iget-object v2, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    #@51
    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@54
    move-result v1

    #@55
    sget v3, Landroid/icu/impl/StandardPlural;->COUNT:I

    #@57
    mul-int/2addr v1, v3

    #@58
    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@5b
    move-result v3

    #@5c
    add-int/2addr v3, v1

    #@5d
    if-nez p3, :cond_1

    #@5f
    const/4 v1, -0x1

    #@60
    :goto_0
    aput-byte v1, v2, v3

    #@62
    .line 70
    return-void

    #@63
    .line 77
    :cond_1
    invoke-virtual {p3}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@66
    move-result v1

    #@67
    int-to-byte v1, v1

    #@68
    goto :goto_0
.end method

.method startSame(Landroid/icu/impl/StandardPlural;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/impl/StandardPlural;
    .locals 6
    .param p1, "start"    # Landroid/icu/impl/StandardPlural;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/StandardPlural;",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/StandardPlural;",
            ">;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/icu/impl/StandardPlural;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "endDone":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/StandardPlural;>;"
    .local p3, "emit":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    #@1
    .line 116
    const/4 v4, 0x0

    #@2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v4

    #@6
    iput-object v4, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@8
    .line 117
    const/4 v2, 0x0

    #@9
    .line 118
    .local v2, "first":Landroid/icu/impl/StandardPlural;
    sget-object v4, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    #@b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .end local v2    # "first":Landroid/icu/impl/StandardPlural;
    .local v1, "end$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_3

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/icu/impl/StandardPlural;

    #@1b
    .line 119
    .local v0, "end":Landroid/icu/impl/StandardPlural;
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    #@1e
    move-result-object v3

    #@1f
    .line 120
    .local v3, "item":Landroid/icu/impl/StandardPlural;
    if-eqz v3, :cond_0

    #@21
    .line 123
    if-nez v2, :cond_1

    #@23
    .line 124
    move-object v2, v3

    #@24
    .line 125
    .local v2, "first":Landroid/icu/impl/StandardPlural;
    goto :goto_0

    #@25
    .line 127
    .end local v2    # "first":Landroid/icu/impl/StandardPlural;
    :cond_1
    if-eq v2, v3, :cond_2

    #@27
    .line 128
    return-object v5

    #@28
    .line 131
    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-nez v4, :cond_0

    #@2e
    .line 132
    const/4 v4, 0x1

    #@2f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@32
    move-result-object v4

    #@33
    iput-object v4, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@35
    goto :goto_0

    #@36
    .line 135
    .end local v0    # "end":Landroid/icu/impl/StandardPlural;
    .end local v3    # "item":Landroid/icu/impl/StandardPlural;
    :cond_3
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 175
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    #@9
    move-result-object v7

    #@a
    array-length v8, v7

    #@b
    move v6, v5

    #@c
    :goto_0
    if-ge v6, v8, :cond_2

    #@e
    aget-object v0, v7, v6

    #@10
    .line 176
    .local v0, "i":Landroid/icu/impl/StandardPlural;
    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    #@13
    move-result-object v9

    #@14
    array-length v10, v9

    #@15
    move v4, v5

    #@16
    :goto_1
    if-ge v4, v10, :cond_1

    #@18
    aget-object v1, v9, v4

    #@1a
    .line 177
    .local v1, "j":Landroid/icu/impl/StandardPlural;
    invoke-virtual {p0, v0, v1}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    #@1d
    move-result-object v3

    #@1e
    .line 178
    .local v3, "x":Landroid/icu/impl/StandardPlural;
    if-eqz v3, :cond_0

    #@20
    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v11

    #@24
    const-string/jumbo v12, " & "

    #@27
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v11

    #@2b
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v11

    #@2f
    const-string/jumbo v12, " \u2192 "

    #@32
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v11

    #@36
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v11

    #@3a
    const-string/jumbo v12, ";\n"

    #@3d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 176
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@42
    goto :goto_1

    #@43
    .line 175
    .end local v1    # "j":Landroid/icu/impl/StandardPlural;
    .end local v3    # "x":Landroid/icu/impl/StandardPlural;
    :cond_1
    add-int/lit8 v4, v6, 0x1

    #@45
    move v6, v4

    #@46
    goto :goto_0

    #@47
    .line 183
    .end local v0    # "i":Landroid/icu/impl/StandardPlural;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    return-object v4
.end method
