.class Ljava/lang/CharSequence$1CodePointIterator;
.super Ljava/lang/Object;
.source "CharSequence.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/CharSequence;->codePoints()Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CodePointIterator"
.end annotation


# instance fields
.field cur:I

.field final synthetic this$0:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "this$0"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 178
    iput-object p1, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 179
    const/4 v0, 0x0

    #@6
    iput v0, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    #@8
    .line 178
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "block"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 182
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "block":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/CharSequence$1CodePointIterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 6
    .param p1, "block"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 183
    iget-object v5, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    #@2
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v4

    #@6
    .line 184
    .local v4, "length":I
    iget v2, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    #@8
    .local v2, "i":I
    move v3, v2

    #@9
    .line 186
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    #@b
    .line 187
    :try_start_0
    iget-object v5, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    add-int/lit8 v2, v3, 0x1

    #@f
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :try_start_1
    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 188
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_0

    #@19
    if-lt v2, v4, :cond_1

    #@1b
    .line 189
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    #@1e
    :goto_1
    move v3, v2

    #@1f
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@20
    .line 191
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v5, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    #@22
    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@25
    move-result v1

    #@26
    .line 192
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_2

    #@2c
    .line 193
    add-int/lit8 v2, v2, 0x1

    #@2e
    .line 194
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@31
    move-result v5

    #@32
    invoke-interface {p1, v5}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_1

    #@36
    .line 200
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :catchall_0
    move-exception v5

    #@37
    .line 201
    :goto_2
    iput v2, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    #@39
    .line 200
    throw v5

    #@3a
    .line 196
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    :cond_2
    :try_start_2
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    goto :goto_1

    #@3e
    .line 201
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_3
    iput v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    #@40
    .line 182
    return-void

    #@41
    .line 200
    :catchall_1
    move-exception v5

    #@42
    move v2, v3

    #@43
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 206
    iget v0, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    #@2
    iget-object v1, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    #@4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 125
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextInt()I
    .locals 6

    #@0
    .prologue
    .line 210
    iget-object v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    #@2
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v2

    #@6
    .line 212
    .local v2, "length":I
    iget v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    #@8
    if-lt v3, v2, :cond_0

    #@a
    .line 213
    new-instance v3, Ljava/util/NoSuchElementException;

    #@c
    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    #@f
    throw v3

    #@10
    .line 215
    :cond_0
    iget-object v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    #@12
    iget v4, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    #@14
    add-int/lit8 v5, v4, 0x1

    #@16
    iput v5, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    #@18
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    .line 216
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_1

    #@22
    iget v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    #@24
    if-ge v3, v2, :cond_1

    #@26
    .line 217
    iget-object v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    #@28
    iget v4, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    #@2a
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@2d
    move-result v1

    #@2e
    .line 218
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_1

    #@34
    .line 219
    iget v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    #@36
    add-int/lit8 v3, v3, 0x1

    #@38
    iput v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    #@3a
    .line 220
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@3d
    move-result v3

    #@3e
    return v3

    #@3f
    .line 223
    .end local v1    # "c2":C
    :cond_1
    return v0
.end method
