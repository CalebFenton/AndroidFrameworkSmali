.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBitmapFontText.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawBitmapFontText"

.field private static final blacklist OP_CODE:I = 0x30


# instance fields
.field blacklist mBitmapFontID:I

.field blacklist mEnd:I

.field blacklist mOutX:F

.field blacklist mOutY:F

.field blacklist mStart:I

.field blacklist mTextID:I

.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method public constructor blacklist <init>(IIIIFF)V
    .registers 7
    .param p1, "textID"    # I
    .param p2, "bitmapFontID"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 48
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mTextID:I

    .line 50
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mBitmapFontID:I

    .line 51
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    .line 52
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mEnd:I

    .line 53
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mOutX:F

    .line 54
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mOutY:F

    .line 55
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFF)V
    .registers 8
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "textID"    # I
    .param p2, "bitmapFontID"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 151
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 153
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 154
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 155
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 156
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 157
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 158
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 166
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->id()I

    move-result v0

    const-string v1, "DrawBitmapFontText"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 167
    const-string v1, "Draw a run of bitmap font text, all in a single direction"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 168
    const/4 v1, 0x0

    const-string/jumbo v2, "textId"

    const-string v3, "id of bitmap"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 169
    const-string v2, "bitmapFontId"

    const-string v3, "id of the bitmap font"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 170
    const-string/jumbo v2, "start"

    const-string v3, "The start of the text to render. -1=end of string"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 174
    const-string v2, "end"

    const-string v3, "The end of the text to render"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 175
    const-string v2, "contextStart"

    const-string/jumbo v3, "the index of the start of the shaping context"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 179
    const-string v2, "contextEnd"

    const-string/jumbo v3, "the index of the end of the shaping context"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 183
    const/4 v1, 0x1

    const-string/jumbo v2, "x"

    const-string v3, "The x position at which to draw the text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 184
    const-string/jumbo v2, "y"

    const-string v3, "The y position at which to draw the text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 185
    const/4 v1, 0x2

    const-string v2, "RTL"

    const-string v3, "Whether the run is in RTL direction"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 186
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 129
    const/16 v0, 0x30

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 120
    const-string v0, "DrawBitmapFontText"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 9
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 103
    .local v1, "text":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 104
    .local v2, "bitmapFont":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 105
    .local v3, "start":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 106
    .local v4, "end":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 107
    .local v5, "x":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 108
    .local v6, "y":F
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;-><init>(IIIIFF)V

    .line 110
    .local v0, "op":Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 16
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 190
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    .line 191
    .local v0, "remoteContext":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mTextID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "textToPaint":Ljava/lang/String;
    if-nez v1, :cond_d

    .line 193
    return-void

    .line 195
    :cond_d
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mEnd:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1d

    .line 196
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    if-eqz v2, :cond_34

    .line 197
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_34

    .line 199
    :cond_1d
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mEnd:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_2c

    .line 200
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_34

    .line 202
    :cond_2c
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mEnd:I

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 205
    :cond_34
    :goto_34
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mBitmapFontID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;

    .line 206
    .local v2, "bitmapFont":Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;
    if-nez v2, :cond_3f

    .line 207
    return-void

    .line 210
    :cond_3f
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    .line 211
    .local v4, "xPos":F
    const/4 v5, 0x0

    .line 212
    .local v5, "pos":I
    :goto_42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_8d

    .line 213
    invoke-virtual {v2, v1, v5}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->lookupGlyph(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    move-result-object v6

    .line 214
    .local v6, "glyph":Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
    if-nez v6, :cond_51

    .line 215
    add-int/lit8 v5, v5, 0x1

    .line 216
    goto :goto_42

    .line 219
    :cond_51
    iget-object v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    .line 220
    iget v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    if-ne v7, v3, :cond_64

    .line 222
    iget-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    iget-short v8, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    add-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v4, v7

    .line 223
    goto :goto_42

    .line 226
    :cond_64
    iget-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    int-to-float v7, v7

    add-float v10, v4, v7

    .line 227
    .end local v4    # "xPos":F
    .local v10, "xPos":F
    iget-short v4, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapWidth:S

    int-to-float v4, v4

    add-float v12, v10, v4

    .line 228
    .local v12, "xPos2":F
    iget v9, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    iget-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    int-to-float v7, v7

    add-float v11, v4, v7

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    iget-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapHeight:S

    int-to-float v7, v7

    add-float/2addr v4, v7

    iget-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    int-to-float v7, v7

    add-float v13, v4, v7

    move-object v8, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v8, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IFFFF)V

    .line 234
    iget-short p1, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    int-to-float p1, p1

    add-float v4, v12, p1

    .line 235
    .end local v6    # "glyph":Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
    .end local v10    # "xPos":F
    .end local v12    # "xPos2":F
    .restart local v4    # "xPos":F
    move-object p1, v8

    goto :goto_42

    .line 236
    .end local v8    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    :cond_8d
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 65
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 66
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 68
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 69
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 71
    :cond_22
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 240
    nop

    .line 241
    const-string v0, "DrawBitmapFontText"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mTextID:I

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "textId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mBitmapFontID:I

    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bitmapFontId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    .line 244
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "start"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mEnd:I

    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "end"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mOutX:F

    .line 246
    const-string/jumbo v3, "x"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mOutY:F

    .line 247
    const-string/jumbo v3, "y"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 248
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawBitmapFontText ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mTextID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mBitmapFontID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mEnd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mOutX:F

    .line 90
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mOutY:F

    .line 92
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 59
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mOutX:F

    .line 60
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mOutY:F

    .line 61
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 9
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 75
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mTextID:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mBitmapFontID:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mEnd:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFF)V

    .line 76
    return-void
.end method
