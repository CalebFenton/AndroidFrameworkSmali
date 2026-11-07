.class public Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "TextMeasure.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "TextMeasure"

.field public static final blacklist MEASURE_BOTTOM:I = 0x5

.field public static final blacklist MEASURE_HEIGHT:I = 0x1

.field public static final blacklist MEASURE_LEFT:I = 0x2

.field public static final blacklist MEASURE_MAX_HEIGHT_FLAG:I = 0x200

.field public static final blacklist MEASURE_MONOSPACE_FLAG:I = 0x100

.field public static final blacklist MEASURE_RIGHT:I = 0x3

.field public static final blacklist MEASURE_TOP:I = 0x4

.field public static final blacklist MEASURE_WIDTH:I = 0x0

.field private static final blacklist OP_CODE:I = 0x9b


# instance fields
.field blacklist mBounds:[F

.field public blacklist mId:I

.field public blacklist mTextId:I

.field public blacklist mType:I


# direct methods
.method public constructor blacklist <init>(III)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "textId"    # I
    .param p3, "type"    # I

    .line 54
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    .line 55
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    .line 56
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mTextId:I

    .line 57
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mType:I

    .line 58
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "textId"    # I
    .param p3, "type"    # I

    .line 97
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 100
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 101
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 122
    const/16 v0, 0x9b

    const-string v1, "TextMeasure"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 123
    const-string v1, "Measure text"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 124
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of float result of the measure"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 125
    const-string/jumbo v2, "textId"

    const-string v3, "id of text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 126
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "type: measure 0=width,1=height"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 127
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 85
    const/16 v0, 0x9b

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 76
    const-string v0, "TextMeasure"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 6
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

    .line 110
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 111
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 112
    .local v1, "textId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 113
    .local v2, "type":I
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;-><init>(III)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method private blacklist typeToString()Ljava/lang/String;
    .registers 3

    .line 176
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mType:I

    and-int/lit16 v0, v0, 0xff

    .line 177
    .local v0, "val":I
    packed-switch v0, :pswitch_data_1c

    .line 191
    const-string v1, "INVALID_TYPE"

    return-object v1

    .line 189
    :pswitch_a
    const-string v1, "MEASURE_BOTTOM"

    return-object v1

    .line 185
    :pswitch_d
    const-string v1, "MEASURE_TOP"

    return-object v1

    .line 187
    :pswitch_10
    const-string v1, "MEASURE_RIGHT"

    return-object v1

    .line 183
    :pswitch_13
    const-string v1, "MEASURE_LEFT"

    return-object v1

    .line 181
    :pswitch_16
    const-string v1, "MEASURE_HEIGHT"

    return-object v1

    .line 179
    :pswitch_19
    const-string v1, "MEASURE_WIDTH"

    return-object v1

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->toString()Ljava/lang/String;

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

    .line 139
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mType:I

    and-int/lit16 v0, v0, 0xff

    .line 140
    .local v0, "val":I
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mType:I

    shr-int/lit8 v6, v1, 0x8

    .line 141
    .local v6, "flags":I
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mTextId:I

    const/4 v5, -0x1

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v2, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getTextBounds(IIII[F)V

    .line 142
    const/4 p1, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_7a

    goto :goto_78

    .line 160
    :pswitch_1a
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    aget v1, v4, v1

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_78

    .line 153
    :pswitch_28
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    aget p1, v4, p1

    invoke-virtual {v1, v3, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 154
    goto :goto_78

    .line 156
    :pswitch_36
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    aget v3, v3, v4

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 158
    goto :goto_78

    .line 150
    :pswitch_44
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    aget v3, v4, v3

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 151
    goto :goto_78

    .line 147
    :pswitch_52
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    aget v1, v5, v1

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    aget p1, v5, p1

    sub-float/2addr v1, p1

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 148
    goto :goto_78

    .line 144
    :pswitch_65
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    aget v4, v5, v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mBounds:[F

    aget v3, v5, v3

    sub-float/2addr v4, v3

    invoke-virtual {p1, v1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 145
    nop

    .line 164
    :goto_78
    return-void

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_65
        :pswitch_52
        :pswitch_44
        :pswitch_36
        :pswitch_28
        :pswitch_1a
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 168
    nop

    .line 169
    const-string v0, "TextMeasure"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mTextId:I

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "textId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 172
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->typeToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "measureType"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 173
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatConstant["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 62
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mTextId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->mType:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 63
    return-void
.end method
