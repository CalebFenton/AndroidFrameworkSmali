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
.field private final greylist-max-o app:Ljava/lang/Appendable;

.field private final greylist-max-o appIsStringBuilder:Z

.field private greylist-max-o codePointLimit:I

.field private greylist-max-o codePointStart:I

.field private final greylist-max-o impl:Landroid/icu/impl/Normalizer2Impl;

.field private greylist-max-o lastCC:I

.field private greylist-max-o reorderStart:I

.field private final greylist-max-o str:Ljava/lang/StringBuilder;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V
    .registers 7
    .param p1, "ni"    # Landroid/icu/impl/Normalizer2Impl;
    .param p2, "dest"    # Ljava/lang/Appendable;
    .param p3, "destCapacity"    # I

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 144
    iput-object p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    .line 145
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    .line 147
    move-object v2, p2

    check-cast v2, Ljava/lang/StringBuilder;

    iput-object v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    .line 149
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 150
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 151
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_28

    .line 152
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    goto :goto_4e

    .line 154
    :cond_28
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->setIterator()V

    .line 155
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 157
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    if-le v1, v0, :cond_3c

    .line 158
    :goto_35
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result v1

    if-le v1, v0, :cond_3c

    goto :goto_35

    .line 160
    :cond_3c
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_4e

    .line 163
    :cond_41
    iput-boolean v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    .line 165
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 166
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 168
    :goto_4e
    return-void
.end method

.method private greylist-max-o insert(II)V
    .registers 7
    .param p1, "c"    # I
    .param p2, "cc"    # I

    .line 327
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->setIterator()V

    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->skipPrevious()V

    :goto_6
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result v0

    if-le v0, p2, :cond_d

    goto :goto_6

    .line 329
    :cond_d
    const v0, 0xffff

    const/4 v1, 0x1

    if-gt p1, v0, :cond_23

    .line 330
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    int-to-char v3, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 331
    if-gt p2, v1, :cond_36

    .line 332
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_36

    .line 335
    :cond_23
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 336
    if-gt p2, v1, :cond_36

    .line 337
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 340
    :cond_36
    :goto_36
    return-void
.end method

.method private greylist-max-o previousCC()I
    .registers 4

    .line 356
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    .line 357
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    if-lt v0, v1, :cond_c

    .line 358
    const/4 v0, 0x0

    return v0

    .line 360
    :cond_c
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v0

    .line 361
    .local v0, "c":I
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    .line 362
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybeYesCP(I)I

    move-result v1

    return v1
.end method

.method private greylist-max-o setIterator()V
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    return-void
.end method

.method private greylist-max-o skipPrevious()V
    .registers 4

    .line 352
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    .line 353
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    .line 354
    return-void
.end method


# virtual methods
.method public blacklist append(C)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .registers 3
    .param p1, "c"    # C

    .line 229
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 231
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 232
    return-object p0
.end method

.method public blacklist append(Ljava/lang/CharSequence;)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 241
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_16

    .line 242
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 244
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 246
    :cond_16
    return-object p0
.end method

.method public blacklist append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 250
    if-eq p2, p3, :cond_12

    .line 251
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 253
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 255
    :cond_12
    return-object p0
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist append(II)V
    .registers 4
    .param p1, "c"    # I
    .param p2, "cc"    # I

    .line 181
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    if-le v0, p2, :cond_b

    if-nez p2, :cond_7

    goto :goto_b

    .line 188
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->insert(II)V

    goto :goto_1d

    .line 182
    :cond_b
    :goto_b
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 183
    iput p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 184
    const/4 v0, 0x1

    if-gt p2, v0, :cond_1d

    .line 185
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 190
    :cond_1d
    :goto_1d
    return-void
.end method

.method public blacklist append(Ljava/lang/CharSequence;IIZII)V
    .registers 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "isNFD"    # Z
    .param p5, "leadCC"    # I
    .param p6, "trailCC"    # I

    .line 193
    if-ne p2, p3, :cond_3

    .line 194
    return-void

    .line 196
    :cond_3
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    if-le v0, p5, :cond_42

    if-nez p5, :cond_a

    goto :goto_42

    .line 205
    :cond_a
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 206
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    .line 207
    invoke-direct {p0, v0, p5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->insert(II)V

    .line 208
    :goto_16
    if-ge p2, p3, :cond_63

    .line 209
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 210
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    .line 211
    if-ge p2, p3, :cond_3d

    .line 212
    if-eqz p4, :cond_30

    .line 213
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybeYes(I)I

    move-result p5

    goto :goto_3e

    .line 215
    :cond_30
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result p5

    goto :goto_3e

    .line 218
    :cond_3d
    move p5, p6

    .line 220
    :goto_3e
    invoke-virtual {p0, v0, p5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    goto :goto_16

    .line 197
    .end local v0    # "c":I
    :cond_42
    :goto_42
    const/4 v0, 0x1

    if-gt p6, v0, :cond_51

    .line 198
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_5c

    .line 199
    :cond_51
    if-gt p5, v0, :cond_5c

    .line 200
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 202
    :cond_5c
    :goto_5c
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 203
    iput p6, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 223
    :cond_63
    return-void
.end method

.method public blacklist appendZeroCC(I)V
    .registers 3
    .param p1, "c"    # I

    .line 235
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 237
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 238
    return-void
.end method

.method public blacklist equals(Ljava/lang/CharSequence;II)Z
    .registers 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 177
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v1, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "s":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "limit":I
    .local v3, "s":Ljava/lang/CharSequence;
    .local v4, "start":I
    .local v5, "limit":I
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->equal(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method public blacklist flush()V
    .registers 4

    .line 264
    iget-boolean v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 265
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_1d

    .line 268
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 269
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 270
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_20

    .line 273
    nop

    .line 275
    :goto_1d
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 276
    return-void

    .line 271
    :catch_20
    move-exception v0

    .line 272
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 284
    iget-boolean v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 285
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 286
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_26

    .line 289
    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 290
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 291
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_25} :catch_29

    .line 294
    nop

    .line 296
    :goto_26
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 297
    return-object p0

    .line 292
    :catch_29
    move-exception v0

    .line 293
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getLastCC()I
    .registers 2

    .line 172
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    return v0
.end method

.method public blacklist getStringBuilder()Ljava/lang/StringBuilder;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist length()I
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public blacklist remove()V
    .registers 3

    .line 300
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 301
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 302
    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 303
    return-void
.end method

.method public blacklist removeSuffix(I)V
    .registers 5
    .param p1, "suffixLength"    # I

    .line 305
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 306
    .local v0, "oldLength":I
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    sub-int v2, v0, p1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 307
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 308
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 309
    return-void
.end method
