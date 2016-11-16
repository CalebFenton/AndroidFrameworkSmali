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
.field private mChars:[C

.field private mLength:I

.field private mStart:I


# direct methods
.method static synthetic -set0(Landroid/widget/TextView$CharWrapper;[C)[C
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    #@2
    return-object p1
.end method

.method public constructor <init>([CII)V
    .locals 0
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 10118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 10119
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    #@5
    .line 10120
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@7
    .line 10121
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    #@9
    .line 10118
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "off"    # I

    #@0
    .prologue
    .line 10135
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    #@2
    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@4
    add-int/2addr v1, p1

    #@5
    aget-char v0, v0, v1

    #@7
    return v0
.end method

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 10161
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    #@2
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@4
    add-int v2, p2, v0

    #@6
    sub-int v3, p3, p2

    #@8
    move-object v0, p1

    #@9
    move v4, p4

    #@a
    move v5, p5

    #@b
    move-object v6, p6

    #@c
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    #@f
    .line 10160
    return-void
.end method

.method public drawTextRun(Landroid/graphics/Canvas;IIIIFFZLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 10166
    sub-int v3, p3, p2

    #@2
    .line 10167
    .local v3, "count":I
    sub-int v5, p5, p4

    #@4
    .line 10168
    .local v5, "contextCount":I
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    #@6
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@8
    add-int v2, p2, v0

    #@a
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@c
    add-int v4, p4, v0

    #@e
    move-object v0, p1

    #@f
    move/from16 v6, p6

    #@11
    move/from16 v7, p7

    #@13
    move/from16 v8, p8

    #@15
    move-object/from16 v9, p9

    #@17
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    #@1a
    .line 10165
    return-void
.end method

.method public getChars(II[CI)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "buf"    # [C
    .param p4, "off"    # I

    #@0
    .prologue
    .line 10152
    if-ltz p1, :cond_0

    #@2
    if-gez p2, :cond_1

    #@4
    .line 10153
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, ", "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 10152
    :cond_1
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    #@24
    if-gt p1, v0, :cond_0

    #@26
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    #@28
    if-gt p2, v0, :cond_0

    #@2a
    .line 10156
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    #@2c
    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@2e
    add-int/2addr v1, p1

    #@2f
    sub-int v2, p2, p1

    #@31
    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@34
    .line 10151
    return-void
.end method

.method public getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextEnd"    # I
    .param p5, "isRtl"    # Z
    .param p6, "advances"    # [F
    .param p7, "advancesIndex"    # I
    .param p8, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 10183
    sub-int v3, p2, p1

    #@2
    .line 10184
    .local v3, "count":I
    sub-int v5, p4, p3

    #@4
    .line 10185
    .local v5, "contextCount":I
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    #@6
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@8
    add-int v2, p1, v0

    #@a
    .line 10186
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@c
    add-int v4, p3, v0

    #@e
    move-object/from16 v0, p8

    #@10
    move v6, p5

    #@11
    move-object v7, p6

    #@12
    move/from16 v8, p7

    #@14
    .line 10185
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 7
    .param p1, "contextStart"    # I
    .param p2, "contextEnd"    # I
    .param p3, "dir"    # I
    .param p4, "offset"    # I
    .param p5, "cursorOpt"    # I
    .param p6, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 10192
    sub-int v3, p2, p1

    #@2
    .line 10193
    .local v3, "contextCount":I
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    #@4
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@6
    add-int v2, p1, v0

    #@8
    .line 10194
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@a
    add-int v5, p4, v0

    #@c
    move-object v0, p6

    #@d
    move v4, p3

    #@e
    move v6, p5

    #@f
    .line 10193
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F
    .param p4, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 10177
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    #@2
    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@4
    add-int/2addr v1, p1

    #@5
    sub-int v2, p2, p1

    #@7
    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 10131
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    #@2
    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 10173
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    #@2
    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@4
    add-int/2addr v1, p1

    #@5
    sub-int v2, p2, p1

    #@7
    invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    #@a
    move-result v0

    #@b
    return v0
.end method

.method set([CII)V
    .locals 0
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 10125
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    #@2
    .line 10126
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@4
    .line 10127
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    #@6
    .line 10124
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 10144
    if-ltz p1, :cond_0

    #@2
    if-gez p2, :cond_1

    #@4
    .line 10145
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, ", "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 10144
    :cond_1
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    #@24
    if-gt p1, v0, :cond_0

    #@26
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    #@28
    if-gt p2, v0, :cond_0

    #@2a
    .line 10148
    new-instance v0, Ljava/lang/String;

    #@2c
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    #@2e
    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@30
    add-int/2addr v2, p1

    #@31
    sub-int v3, p2, p1

    #@33
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    #@36
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 10140
    new-instance v0, Ljava/lang/String;

    #@2
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    #@4
    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    #@6
    iget v3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    #@8
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    #@b
    return-object v0
.end method
