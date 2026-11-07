.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawTextAnchored.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field public static final blacklist ANCHOR_MONOSPACE_MEASURE:I = 0x2

.field public static final blacklist ANCHOR_TEXT_RTL:I = 0x1

.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawTextAnchored"

.field public static final blacklist MEASURE_EVERY_TIME:I = 0x4

.field private static final blacklist OP_CODE:I = 0x85


# instance fields
.field blacklist mBounds:[F

.field blacklist mFlags:I

.field blacklist mLastString:Ljava/lang/String;

.field blacklist mOutPanX:F

.field blacklist mOutPanY:F

.field blacklist mOutX:F

.field blacklist mOutY:F

.field blacklist mPanX:F

.field blacklist mPanY:F

.field blacklist mTextID:I

.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method public constructor blacklist <init>(IFFFFI)V
    .registers 8
    .param p1, "textID"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "panX"    # F
    .param p5, "panY"    # F
    .param p6, "flags"    # I

    .line 55
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 207
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    .line 56
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    .line 57
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    .line 58
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    .line 59
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutX:F

    .line 60
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutY:F

    .line 61
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    .line 62
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanX:F

    .line 63
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanY:F

    .line 64
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V
    .registers 8
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "textID"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "panX"    # F
    .param p5, "panY"    # F
    .param p6, "flags"    # I

    .line 176
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 178
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 179
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 180
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 181
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 182
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 183
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 191
    const/16 v0, 0x85

    const-string v1, "DrawTextAnchored"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 192
    const-string v1, "Draw text centered about an anchor point"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 193
    const/4 v1, 0x0

    const-string/jumbo v2, "textId"

    const-string v3, "id of bitmap"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 194
    const/4 v2, 0x1

    const-string/jumbo v3, "x"

    const-string v4, "The x-position of the anchor point"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 195
    const-string/jumbo v3, "y"

    const-string v4, "The y-position of the anchor point"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 196
    const-string v3, "panX"

    const-string v4, "The pan from left(-1) to right(1) 0 being centered"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 200
    const-string v3, "panY"

    const-string v4, "The pan from top(-1) to bottom(1) 0 being centered"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 204
    const-string v2, "flags"

    const-string v3, "Change the behaviour"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 205
    return-void
.end method

.method private static blacklist floatToStr(F)Ljava/lang/String;
    .registers 3
    .param p0, "v"    # F

    .line 113
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_24
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getHorizontalOffset()F
    .registers 8

    .line 211
    const/high16 v0, 0x3f800000    # 1.0f

    .line 213
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    .line 214
    .local v1, "textWidth":F
    const/4 v2, 0x0

    .line 215
    .local v2, "boxWidth":F
    sub-float v4, v2, v1

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanX:F

    add-float/2addr v6, v5

    mul-float/2addr v4, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    aget v3, v5, v3

    mul-float/2addr v3, v0

    sub-float/2addr v4, v3

    return v4
.end method

.method private blacklist getVerticalOffset()F
    .registers 8

    .line 220
    const/high16 v0, 0x3f800000    # 1.0f

    .line 221
    .local v0, "scale":F
    const/4 v1, 0x0

    .line 222
    .local v1, "boxHeight":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    .line 223
    .local v2, "textHeight":F
    sub-float v3, v1, v2

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanY:F

    sub-float/2addr v5, v6

    mul-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    aget v4, v5, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    return v3
.end method

.method public static blacklist id()I
    .registers 1

    .line 154
    const/16 v0, 0x85

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 145
    const-string v0, "DrawTextAnchored"

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

    .line 126
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 127
    .local v1, "textID":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 128
    .local v2, "x":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 129
    .local v3, "y":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 130
    .local v4, "panX":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 131
    .local v5, "panY":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    .line 133
    .local v6, "flags":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;-><init>(IFFFFI)V

    .line 135
    .local v0, "op":Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 20
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 229
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    .line 230
    move v1, v3

    goto :goto_d

    .line 231
    :cond_c
    move v1, v2

    :goto_d
    move v8, v1

    .line 233
    .local v8, "flags":I
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    move-object/from16 v4, p1

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "str":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mLastString:Ljava/lang/String;

    if-ne v1, v5, :cond_20

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2b

    .line 235
    :cond_20
    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mLastString:Ljava/lang/String;

    .line 236
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    const/4 v7, -0x1

    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getTextBounds(IIII[F)V

    .line 239
    :cond_2b
    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutX:F

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->getHorizontalOffset()F

    move-result v5

    add-float v15, v4, v5

    .line 240
    .local v15, "x":F
    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanY:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutY:F

    goto :goto_45

    :cond_3e
    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutY:F

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->getVerticalOffset()F

    move-result v5

    add-float/2addr v4, v5

    :goto_45
    move/from16 v16, v4

    .line 241
    .local v16, "y":F
    iget v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_51

    move/from16 v17, v3

    goto :goto_53

    :cond_51
    move/from16 v17, v2

    :goto_53
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v17}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextRun(IIIIIFFZ)V

    .line 242
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 76
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 77
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 79
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 80
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 82
    :cond_22
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 83
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 85
    :cond_33
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    if-lez v0, :cond_4c

    .line 86
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 88
    :cond_4c
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 246
    nop

    .line 247
    const-string v0, "DrawTextAnchored"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "textId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutX:F

    .line 249
    const-string/jumbo v3, "x"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutY:F

    .line 250
    const-string/jumbo v3, "y"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanX:F

    .line 251
    const-string v3, "panX"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanY:F

    .line 252
    const-string v3, "panY"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "flags"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 254
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawTextAnchored ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    .line 101
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->floatToStr(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    .line 103
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->floatToStr(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    .line 105
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->floatToStr(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    .line 107
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->floatToStr(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 68
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutX:F

    .line 69
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutY:F

    .line 70
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_43

    :cond_41
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    :goto_43
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanX:F

    .line 71
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_58

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_5a

    :cond_58
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    :goto_5a
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanY:F

    .line 72
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 9
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 92
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    .line 93
    return-void
.end method
