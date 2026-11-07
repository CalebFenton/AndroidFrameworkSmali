.class public Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "TextAttribute.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "TextMeasure"

.field public static final blacklist MEASURE_BOTTOM:S = 0x5s

.field public static final blacklist MEASURE_HEIGHT:S = 0x1s

.field public static final blacklist MEASURE_LEFT:S = 0x2s

.field public static final blacklist MEASURE_MAX_HEIGHT_FLAG:I = 0x200

.field public static final blacklist MEASURE_MONOSPACE_FLAG:I = 0x100

.field public static final blacklist MEASURE_RIGHT:S = 0x3s

.field public static final blacklist MEASURE_TOP:S = 0x4s

.field public static final blacklist MEASURE_WIDTH:S = 0x0s

.field private static final blacklist OP_CODE:I = 0xaa

.field public static final blacklist TEXT_LENGTH:S = 0x6s


# instance fields
.field blacklist mBounds:[F

.field public blacklist mId:I

.field public blacklist mTextId:I

.field public blacklist mType:S


# direct methods
.method public constructor blacklist <init>(IIS)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "textId"    # I
    .param p3, "type"    # S

    .line 56
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 139
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mBounds:[F

    .line 57
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mId:I

    .line 58
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mTextId:I

    .line 59
    iput-short p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mType:S

    .line 60
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "textId"    # I
    .param p3, "type"    # S

    .line 99
    const/16 v0, 0xaa

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 101
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 102
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 104
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 126
    const/16 v0, 0xaa

    const-string v1, "TextMeasure"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 127
    const-string v1, "Measure text"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 128
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of float result of the measure"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 129
    const-string/jumbo v2, "textId"

    const-string v3, "id of text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 130
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "type: measure 0=width,1=height"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 131
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 87
    const/16 v0, 0xaa

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 78
    const-string v0, "TextMeasure"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 7
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

    .line 113
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 114
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 115
    .local v1, "textId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v2

    int-to-short v2, v2

    .line 116
    .local v2, "type":S
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v3

    int-to-short v3, v3

    .line 117
    .local v3, "len":S
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;-><init>(IIS)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method private blacklist typeToString()Ljava/lang/String;
    .registers 2

    .line 183
    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mType:S

    packed-switch v0, :pswitch_data_1e

    .line 199
    const-string v0, "INVALID_TYPE"

    return-object v0

    .line 197
    :pswitch_8
    const-string v0, "TEXT_LENGTH"

    return-object v0

    .line 195
    :pswitch_b
    const-string v0, "MEASURE_BOTTOM"

    return-object v0

    .line 193
    :pswitch_e
    const-string v0, "MEASURE_TOP"

    return-object v0

    .line 191
    :pswitch_11
    const-string v0, "MEASURE_RIGHT"

    return-object v0

    .line 189
    :pswitch_14
    const-string v0, "MEASURE_LEFT"

    return-object v0

    .line 187
    :pswitch_17
    const-string v0, "MEASURE_HEIGHT"

    return-object v0

    .line 185
    :pswitch_1a
    const-string v0, "MEASURE_WIDTH"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 10
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 143
    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mType:S

    and-int/lit16 v0, v0, 0xff

    .line 144
    .local v0, "val":I
    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mType:S

    shr-int/lit8 v6, v1, 0x8

    .line 145
    .local v6, "flags":I
    const/4 v1, 0x5

    if-gt v0, v1, :cond_16

    .line 146
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mTextId:I

    const/4 v5, -0x1

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mBounds:[F

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v2, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getTextBounds(IIII[F)V

    goto :goto_17

    .line 145
    .end local v2    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    :cond_16
    move-object v2, p1

    .line 148
    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .restart local v2    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    :goto_17
    const/4 p1, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_94

    goto/16 :goto_93

    .line 168
    :pswitch_20
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mTextId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_93

    .line 165
    :pswitch_35
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mId:I

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mBounds:[F

    aget v1, v4, v1

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 166
    goto :goto_93

    .line 159
    :pswitch_43
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mId:I

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mBounds:[F

    aget p1, v4, p1

    invoke-virtual {v1, v3, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 160
    goto :goto_93

    .line 162
    :pswitch_51
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mId:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mBounds:[F

    aget v3, v3, v4

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 163
    goto :goto_93

    .line 156
    :pswitch_5f
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mId:I

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mBounds:[F

    aget v3, v4, v3

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 157
    goto :goto_93

    .line 153
    :pswitch_6d
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mId:I

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mBounds:[F

    aget v1, v5, v1

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mBounds:[F

    aget p1, v5, p1

    sub-float/2addr v1, p1

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 154
    goto :goto_93

    .line 150
    :pswitch_80
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mId:I

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mBounds:[F

    aget v4, v5, v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mBounds:[F

    aget v3, v5, v3

    sub-float/2addr v4, v3

    invoke-virtual {p1, v1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 151
    nop

    .line 171
    :goto_93
    return-void

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_80
        :pswitch_6d
        :pswitch_5f
        :pswitch_51
        :pswitch_43
        :pswitch_35
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 175
    nop

    .line 176
    const-string v0, "TextMeasure"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mId:I

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mTextId:I

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "textId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 179
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->typeToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "measureType"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 180
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatConstant["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 64
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mTextId:I

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->mType:S

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V

    .line 65
    return-void
.end method
