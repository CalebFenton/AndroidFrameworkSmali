.class Landroid/widget/TextView$CharWrapper;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/GraphicsOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharWrapper"
.end annotation


# instance fields
.field private greylist-max-o mChars:[C

.field private greylist-max-o mLength:I

.field private greylist-max-o mStart:I


# direct methods
.method constructor greylist-max-o <init>([CII)V
    .registers 4
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 16296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16297
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 16298
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 16299
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    .line 16300
    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 4
    .param p1, "off"    # I

    .line 16313
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public greylist-max-o drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V
    .registers 14
    .param p1, "c"    # Landroid/graphics/BaseCanvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "p"    # Landroid/graphics/Paint;

    .line 16340
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    .end local p1    # "c":Landroid/graphics/BaseCanvas;
    .end local p4    # "x":F
    .end local p5    # "y":F
    .end local p6    # "p":Landroid/graphics/Paint;
    .local v0, "c":Landroid/graphics/BaseCanvas;
    .local v4, "x":F
    .local v5, "y":F
    .local v6, "p":Landroid/graphics/Paint;
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 16341
    return-void
.end method

.method public greylist-max-o drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V
    .registers 20
    .param p1, "c"    # Landroid/graphics/BaseCanvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "p"    # Landroid/graphics/Paint;

    .line 16346
    sub-int v3, p3, p2

    .line 16347
    .local v3, "count":I
    sub-int v5, p5, p4

    .line 16348
    .local v5, "contextCount":I
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p2, v0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v4, p4, v0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 16350
    return-void
.end method

.method public whitelist getChars(II[CI)V
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "buf"    # [C
    .param p4, "off"    # I

    .line 16330
    if-ltz p1, :cond_17

    if-ltz p2, :cond_17

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_17

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p2, v0, :cond_17

    .line 16334
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16335
    return-void

    .line 16331
    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .registers 18
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextEnd"    # I
    .param p5, "isRtl"    # Z
    .param p6, "advances"    # [F
    .param p7, "advancesIndex"    # I
    .param p8, "p"    # Landroid/graphics/Paint;

    .line 16363
    sub-int v3, p2, p1

    .line 16364
    .local v3, "count":I
    sub-int v5, p4, p3

    .line 16365
    .local v5, "contextCount":I
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v4, p3, v0

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    move-object/from16 v0, p8

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    return v1
.end method

.method public blacklist getTextRunCursor(IIZIILandroid/graphics/Paint;)I
    .registers 14
    .param p1, "contextStart"    # I
    .param p2, "contextEnd"    # I
    .param p3, "isRtl"    # Z
    .param p4, "offset"    # I
    .param p5, "cursorOpt"    # I
    .param p6, "p"    # Landroid/graphics/Paint;

    .line 16372
    sub-int v3, p2, p1

    .line 16373
    .local v3, "contextCount":I
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v5, p4, v0

    move v4, p3

    move v6, p5

    move-object v0, p6

    .end local p3    # "isRtl":Z
    .end local p5    # "cursorOpt":I
    .end local p6    # "p":Landroid/graphics/Paint;
    .local v0, "p":Landroid/graphics/Paint;
    .local v4, "isRtl":Z
    .local v6, "cursorOpt":I
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result p3

    return p3
.end method

.method public greylist-max-o getTextWidths(II[FLandroid/graphics/Paint;)I
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F
    .param p4, "p"    # Landroid/graphics/Paint;

    .line 16357
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v0

    return v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 16309
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return v0
.end method

.method public greylist-max-o measureText(IILandroid/graphics/Paint;)F
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "p"    # Landroid/graphics/Paint;

    .line 16353
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    return v0
.end method

.method greylist-max-o set([CII)V
    .registers 4
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 16303
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 16304
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 16305
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    .line 16306
    return-void
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 16322
    if-ltz p1, :cond_19

    if-ltz p2, :cond_19

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_19

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p2, v0, :cond_19

    .line 16326
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 16323
    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 16318
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    iget v3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
