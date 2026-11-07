.class public Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ImageAttribute.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ImageAttribute"

.field public static final blacklist IMAGE_HEIGHT:S = 0x1s

.field public static final blacklist IMAGE_WIDTH:S = 0x0s

.field private static final blacklist OP_CODE:I = 0xab


# instance fields
.field private final blacklist mArgs:[I

.field blacklist mBounds:[F

.field public blacklist mId:I

.field blacklist mImageId:I

.field blacklist mType:S


# direct methods
.method public constructor blacklist <init>(IIS[I)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "imageId"    # I
    .param p3, "type"    # S
    .param p4, "args"    # [I

    .line 54
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 153
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mBounds:[F

    .line 55
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mId:I

    .line 56
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mImageId:I

    .line 57
    iput-short p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mType:S

    .line 58
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mArgs:[I

    .line 59
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V
    .registers 7
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "imageId"    # I
    .param p3, "type"    # S
    .param p4, "args"    # [I

    .line 100
    const/16 v0, 0xab

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 102
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 103
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 104
    if-nez p4, :cond_15

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    goto :goto_26

    .line 107
    :cond_15
    array-length v0, p4

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    array-length v1, p4

    if-ge v0, v1, :cond_26

    .line 109
    aget v1, p4, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 112
    .end local v0    # "i":I
    :cond_26
    :goto_26
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 138
    const/16 v0, 0xab

    const-string v1, "ImageAttribute"

    const-string v2, "Image Attributes"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 139
    const-string v1, "Measure text"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 140
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of float result of the measure"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 141
    const-string v2, "ImageId"

    const-string v3, "id of the image"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 142
    const/16 v2, 0x9

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "type: measure 0=width,1=height"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 143
    const-string v3, "len"

    const-string v4, "number of additional arguments (currently 0)"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 144
    const-string v2, "a"

    const-string v4, "number of arguments"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 145
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 86
    const/16 v0, 0xab

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 77
    const-string v0, "ImageAttribute"

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

    .line 121
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 122
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 123
    .local v1, "imageId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v2

    int-to-short v2, v2

    .line 124
    .local v2, "type":S
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v3

    int-to-short v3, v3

    .line 125
    .local v3, "len":S
    new-array v4, v3, [I

    .line 126
    .local v4, "args":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    array-length v6, v4

    if-ge v5, v6, :cond_21

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    aput v6, v4, v5

    .line 126
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 129
    .end local v5    # "i":I
    :cond_21
    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;

    invoke-direct {v5, v0, v1, v2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;-><init>(IIS[I)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method private blacklist typeToString()Ljava/lang/String;
    .registers 2

    .line 179
    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mType:S

    packed-switch v0, :pswitch_data_e

    .line 185
    const-string v0, "INVALID_TYPE"

    return-object v0

    .line 183
    :pswitch_8
    const-string v0, "IMAGE_HEIGHT"

    return-object v0

    .line 181
    :pswitch_b
    const-string v0, "IMAGE_WIDTH"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 157
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mImageId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 158
    .local v0, "bitmapData":Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mType:S

    packed-switch v1, :pswitch_data_32

    goto :goto_30

    .line 163
    :pswitch_12
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mId:I

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_30

    .line 160
    :pswitch_21
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mId:I

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 161
    nop

    .line 166
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_21
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 170
    nop

    .line 171
    const-string v0, "ImageAttribute"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mId:I

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mImageId:I

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imageId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mArgs:[I

    .line 174
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "args"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 175
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->typeToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 176
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageAttribute["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 63
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mImageId:I

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mType:S

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mArgs:[I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V

    .line 64
    return-void
.end method
