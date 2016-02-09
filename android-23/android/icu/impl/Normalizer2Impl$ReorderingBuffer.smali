.class public final Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReorderingBuffer"
.end annotation


# instance fields
.field private final app:Ljava/lang/Appendable;

.field private final appIsStringBuilder:Z

.field private codePointLimit:I

.field private codePointStart:I

.field private final impl:Landroid/icu/impl/Normalizer2Impl;

.field private lastCC:I

.field private reorderStart:I

.field private final str:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V
    .locals 3
    .param p1, "ni"    # Landroid/icu/impl/Normalizer2Impl;
    .param p2, "dest"    # Ljava/lang/Appendable;
    .param p3, "destCapacity"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 119
    iput-object p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@7
    .line 120
    iput-object p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    #@9
    .line 121
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    #@b
    instance-of v0, v0, Ljava/lang/StringBuilder;

    #@d
    if-eqz v0, :cond_3

    #@f
    .line 122
    iput-boolean v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    #@11
    .line 123
    check-cast p2, Ljava/lang/StringBuilder;

    #@13
    .end local p2    # "dest":Ljava/lang/Appendable;
    iput-object p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@15
    .line 125
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@17
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    #@1a
    .line 126
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@1c
    .line 127
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_0

    #@24
    .line 128
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@26
    .line 118
    :goto_0
    return-void

    #@27
    .line 130
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->setIterator()V

    #@2a
    .line 131
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    #@2d
    move-result v0

    #@2e
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@30
    .line 133
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@32
    if-le v0, v2, :cond_2

    #@34
    .line 134
    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    #@37
    move-result v0

    #@38
    if-gt v0, v2, :cond_1

    #@3a
    .line 136
    :cond_2
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    #@3c
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@3e
    goto :goto_0

    #@3f
    .line 139
    .restart local p2    # "dest":Ljava/lang/Appendable;
    :cond_3
    iput-boolean v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    #@41
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    iput-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@48
    .line 141
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@4a
    .line 142
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@4c
    goto :goto_0
.end method

.method private insert(II)V
    .locals 4
    .param p1, "c"    # I
    .param p2, "cc"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 306
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->setIterator()V

    #@4
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->skipPrevious()V

    #@7
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    #@a
    move-result v0

    #@b
    if-gt v0, p2, :cond_0

    #@d
    .line 308
    const v0, 0xffff

    #@10
    if-gt p1, v0, :cond_2

    #@12
    .line 309
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@14
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    #@16
    int-to-char v2, p1

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@1a
    .line 310
    if-gt p2, v3, :cond_1

    #@1c
    .line 311
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    #@1e
    add-int/lit8 v0, v0, 0x1

    #@20
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@22
    .line 305
    :cond_1
    :goto_0
    return-void

    #@23
    .line 314
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@25
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    #@27
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    #@2e
    .line 315
    if-gt p2, v3, :cond_1

    #@30
    .line 316
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    #@32
    add-int/lit8 v0, v0, 0x2

    #@34
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@36
    goto :goto_0
.end method

.method private previousCC()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 335
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    #@3
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    #@5
    .line 336
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@7
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    #@9
    if-lt v1, v2, :cond_0

    #@b
    .line 337
    return v3

    #@c
    .line 339
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@e
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    #@13
    move-result v0

    #@14
    .line 340
    .local v0, "c":I
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    #@16
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@19
    move-result v2

    #@1a
    sub-int/2addr v1, v2

    #@1b
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    #@1d
    .line 341
    const/16 v1, 0x300

    #@1f
    if-ge v0, v1, :cond_1

    #@21
    .line 342
    return v3

    #@22
    .line 344
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@24
    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@27
    move-result v1

    #@28
    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    #@2b
    move-result v1

    #@2c
    return v1
.end method

.method private setIterator()V
    .locals 1

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    #@8
    return-void
.end method

.method private skipPrevious()V
    .locals 3

    #@0
    .prologue
    .line 331
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    #@2
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    #@4
    .line 332
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@6
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    #@8
    const/4 v2, -0x1

    #@9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    #@f
    .line 330
    return-void
.end method


# virtual methods
.method public append(C)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5
    .line 209
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@8
    .line 210
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@10
    .line 211
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 220
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 221
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@c
    .line 222
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@e
    .line 223
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@16
    .line 225
    :cond_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 229
    if-eq p2, p3, :cond_0

    #@2
    .line 230
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@7
    .line 231
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@a
    .line 232
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@12
    .line 234
    :cond_0
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public append(II)V
    .locals 1
    .param p1, "c"    # I
    .param p2, "cc"    # I

    #@0
    .prologue
    .line 162
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@2
    if-le v0, p2, :cond_0

    #@4
    if-nez p2, :cond_2

    #@6
    .line 163
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@b
    .line 164
    iput p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@d
    .line 165
    const/4 v0, 0x1

    #@e
    if-gt p2, v0, :cond_1

    #@10
    .line 166
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@18
    .line 161
    :cond_1
    :goto_0
    return-void

    #@19
    .line 169
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->insert(II)V

    #@1c
    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;IIII)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "leadCC"    # I
    .param p5, "trailCC"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 175
    if-ne p2, p3, :cond_0

    #@3
    .line 176
    return-void

    #@4
    .line 178
    :cond_0
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@6
    if-le v1, p4, :cond_1

    #@8
    if-nez p4, :cond_5

    #@a
    .line 179
    :cond_1
    if-gt p5, v2, :cond_4

    #@c
    .line 180
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@11
    move-result v1

    #@12
    sub-int v2, p3, p2

    #@14
    add-int/2addr v1, v2

    #@15
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@17
    .line 184
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@19
    invoke-virtual {v1, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@1c
    .line 185
    iput p5, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@1e
    .line 174
    :cond_3
    return-void

    #@1f
    .line 181
    :cond_4
    if-gt p4, v2, :cond_2

    #@21
    .line 182
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@26
    move-result v1

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@2b
    goto :goto_0

    #@2c
    .line 187
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@2f
    move-result v0

    #@30
    .line 188
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@33
    move-result v1

    #@34
    add-int/2addr p2, v1

    #@35
    .line 189
    invoke-direct {p0, v0, p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->insert(II)V

    #@38
    .line 190
    :goto_1
    if-ge p2, p3, :cond_3

    #@3a
    .line 191
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@3d
    move-result v0

    #@3e
    .line 192
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@41
    move-result v1

    #@42
    add-int/2addr p2, v1

    #@43
    .line 193
    if-ge p2, p3, :cond_6

    #@45
    .line 195
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@47
    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@4a
    move-result v1

    #@4b
    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    #@4e
    move-result p4

    #@4f
    .line 199
    :goto_2
    invoke-virtual {p0, v0, p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    #@52
    goto :goto_1

    #@53
    .line 197
    :cond_6
    move p4, p5

    #@54
    goto :goto_2
.end method

.method public appendZeroCC(I)V
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@5
    .line 215
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@8
    .line 216
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@10
    .line 213
    return-void
.end method

.method public equals(Ljava/lang/CharSequence;II)Z
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@2
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@7
    move-result v2

    #@8
    const/4 v1, 0x0

    #@9
    move-object v3, p1

    #@a
    move v4, p2

    #@b
    move v5, p3

    #@c
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->equal(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public flush()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 243
    iget-boolean v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 244
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@a
    move-result v1

    #@b
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@d
    .line 254
    :goto_0
    iput v3, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@f
    .line 242
    return-void

    #@10
    .line 247
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    #@12
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@14
    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@17
    .line 248
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1d
    .line 249
    const/4 v1, 0x0

    #@1e
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    goto :goto_0

    #@21
    .line 250
    :catch_0
    move-exception v0

    #@22
    .line 251
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    #@24
    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v1
.end method

.method public flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 263
    iget-boolean v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 264
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@7
    invoke-virtual {v1, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@a
    .line 265
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@f
    move-result v1

    #@10
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@12
    .line 275
    :goto_0
    iput v3, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@14
    .line 276
    return-object p0

    #@15
    .line 268
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    #@17
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@19
    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@1c
    move-result-object v1

    #@1d
    invoke-interface {v1, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    #@20
    .line 269
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@22
    const/4 v2, 0x0

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@26
    .line 270
    const/4 v1, 0x0

    #@27
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    goto :goto_0

    #@2a
    .line 271
    :catch_0
    move-exception v0

    #@2b
    .line 272
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    #@2d
    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@30
    throw v1
.end method

.method public getLastCC()I
    .locals 1

    #@0
    .prologue
    .line 148
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@2
    return v0
.end method

.method public getStringBuilder()Ljava/lang/StringBuilder;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@2
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 146
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

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

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 279
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 280
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@8
    .line 281
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@a
    .line 278
    return-void
.end method

.method public removeSuffix(I)V
    .locals 3
    .param p1, "suffixLength"    # I

    #@0
    .prologue
    .line 284
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v0

    #@6
    .line 285
    .local v0, "oldLength":I
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@8
    sub-int v2, v0, p1

    #@a
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@d
    .line 286
    const/4 v1, 0x0

    #@e
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    #@10
    .line 287
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@15
    move-result v1

    #@16
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    #@18
    .line 283
    return-void
.end method

.method public setLastChar(C)V
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@2
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@d
    .line 157
    return-void
.end method
