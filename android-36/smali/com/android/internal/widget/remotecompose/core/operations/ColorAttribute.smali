.class public Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ColorAttribute.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ColorAttribute"

.field public static final blacklist COLOR_ALPHA:S = 0x6s

.field public static final blacklist COLOR_BLUE:S = 0x5s

.field public static final blacklist COLOR_BRIGHTNESS:S = 0x2s

.field public static final blacklist COLOR_GREEN:S = 0x4s

.field public static final blacklist COLOR_HUE:S = 0x0s

.field public static final blacklist COLOR_RED:S = 0x3s

.field public static final blacklist COLOR_SATURATION:S = 0x1s

.field private static final blacklist OP_CODE:I = 0xb4


# instance fields
.field blacklist mBounds:[F

.field public blacklist mColorId:I

.field public blacklist mId:I

.field public blacklist mType:S


# direct methods
.method public constructor blacklist <init>(IIS)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "colorId"    # I
    .param p3, "type"    # S

    .line 70
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 151
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mBounds:[F

    .line 71
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    .line 72
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mColorId:I

    .line 73
    iput-short p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mType:S

    .line 74
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "textId"    # I
    .param p3, "type"    # S

    .line 113
    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 115
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 116
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 117
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 138
    const/16 v0, 0xb4

    const-string v1, "ColorAttribute"

    const-string v2, "Color Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 139
    const-string v1, "Calculate Information about a Color"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 140
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id to output"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 141
    const-string v2, "longId"

    const-string v3, "id of color"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 142
    const/16 v1, 0x9

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "the type information to extract"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 143
    return-void
.end method

.method private blacklist getTypeString()Ljava/lang/String;
    .registers 3

    .line 194
    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mType:S

    and-int/lit16 v0, v0, 0xff

    .line 195
    .local v0, "val":I
    packed-switch v0, :pswitch_data_20

    .line 211
    const-string v1, "INVALID_TIME_TYPE"

    return-object v1

    .line 209
    :pswitch_a
    const-string v1, "COLOR_ALPHA"

    return-object v1

    .line 207
    :pswitch_d
    const-string v1, "COLOR_BLUE"

    return-object v1

    .line 205
    :pswitch_10
    const-string v1, "COLOR_GREEN"

    return-object v1

    .line 203
    :pswitch_13
    const-string v1, "COLOR_RED"

    return-object v1

    .line 201
    :pswitch_16
    const-string v1, "COLOR_BRIGHTNESS"

    return-object v1

    .line 199
    :pswitch_19
    const-string v1, "COLOR_SATURATION"

    return-object v1

    .line 197
    :pswitch_1c
    const-string v1, "COLOR_HUE"

    return-object v1

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method public static blacklist id()I
    .registers 1

    .line 101
    const/16 v0, 0xb4

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 92
    const-string v0, "ColorAttribute"

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

    .line 126
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 127
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 128
    .local v1, "textId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v2

    int-to-short v2, v2

    .line 129
    .local v2, "type":S
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;-><init>(IIS)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 155
    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mType:S

    and-int/lit16 v0, v0, 0xff

    .line 157
    .local v0, "val":I
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    .line 158
    .local v1, "ctx":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mColorId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v2

    .line 159
    .local v2, "color":I
    const/high16 v3, 0x437f0000    # 255.0f

    packed-switch v0, :pswitch_data_62

    goto :goto_60

    .line 179
    :pswitch_14
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_60

    .line 176
    :pswitch_20
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    and-int/lit16 v5, v2, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 177
    goto :goto_60

    .line 173
    :pswitch_2a
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 174
    goto :goto_60

    .line 170
    :pswitch_36
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 171
    goto :goto_60

    .line 167
    :pswitch_42
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->getBrightness(I)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 168
    goto :goto_60

    .line 164
    :pswitch_4c
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->getSaturation(I)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 165
    goto :goto_60

    .line 161
    :pswitch_56
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->getHue(I)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 162
    nop

    .line 182
    :goto_60
    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_56
        :pswitch_4c
        :pswitch_42
        :pswitch_36
        :pswitch_2a
        :pswitch_20
        :pswitch_14
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 186
    nop

    .line 187
    const-string v0, "ColorAttribute"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mColorId:I

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "timeId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 190
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 191
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorAttribute["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mColorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 78
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mColorId:I

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mType:S

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V

    .line 79
    return-void
.end method
