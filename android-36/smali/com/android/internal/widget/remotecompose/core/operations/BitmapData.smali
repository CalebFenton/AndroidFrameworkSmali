.class public Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "BitmapData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/SerializableToString;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "BitmapData"

.field public static final blacklist ENCODING_FILE:S = 0x2s

.field public static final blacklist ENCODING_INLINE:S = 0x0s

.field public static final blacklist ENCODING_URL:S = 0x1s

.field public static final blacklist MAX_IMAGE_DIMENSION:I = 0x1f40

.field private static final blacklist OP_CODE:I = 0x65

.field public static final blacklist TYPE_PNG:S = 0x1s

.field public static final blacklist TYPE_PNG_8888:S = 0x0s

.field public static final blacklist TYPE_PNG_ALPHA_8:S = 0x4s

.field public static final blacklist TYPE_RAW8:S = 0x2s

.field public static final blacklist TYPE_RAW8888:S = 0x3s


# instance fields
.field blacklist mBitmap:[B

.field blacklist mEncoding:S

.field blacklist mImageHeight:I

.field public final blacklist mImageId:I

.field blacklist mImageWidth:I

.field blacklist mType:S


# direct methods
.method public constructor blacklist <init>(III[B)V
    .registers 5
    .param p1, "imageId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bitmap"    # [B

    .line 86
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 87
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    .line 88
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    .line 89
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    .line 90
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    .line 91
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V
    .registers 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "imageId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bitmap"    # [B

    .line 178
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 180
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 181
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 182
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    .line 183
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;ISSSS[B)V
    .registers 9
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "imageId"    # I
    .param p2, "type"    # S
    .param p3, "width"    # S
    .param p4, "encoding"    # S
    .param p5, "height"    # S
    .param p6, "bitmap"    # [B

    .line 204
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 206
    shl-int/lit8 v0, p2, 0x10

    or-int/2addr v0, p3

    .line 207
    .local v0, "w":I
    shl-int/lit8 v1, p4, 0x10

    or-int/2addr v1, p5

    .line 208
    .local v1, "h":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 210
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    .line 211
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 8
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 257
    const/16 v0, 0x65

    const-string v1, "BitmapData"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 258
    const-string v1, "Bitmap data"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 259
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of bitmap data"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 260
    const/16 v2, 0x9

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "width of the image"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 261
    const-string/jumbo v3, "width"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 262
    const-string v5, "encoding"

    const-string v6, "height of the image"

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 264
    const-string v1, "height"

    invoke-virtual {v0, v2, v1, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 265
    const/16 v1, 0xb

    const-string/jumbo v2, "values"

    const-string v3, "length"

    const-string v4, "Array of ints"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 266
    return-void
.end method

.method private blacklist getEncodingString(S)Ljava/lang/String;
    .registers 3
    .param p1, "encoding"    # S

    .line 299
    packed-switch p1, :pswitch_data_10

    .line 307
    const-string v0, "ENCODING_INVALID"

    return-object v0

    .line 305
    :pswitch_6
    const-string v0, "ENCODING_FILE"

    return-object v0

    .line 303
    :pswitch_9
    const-string v0, "ENCODING_URL"

    return-object v0

    .line 301
    :pswitch_c
    const-string v0, "ENCODING_INLINE"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist getImageTypeString(S)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # S

    .line 312
    packed-switch p1, :pswitch_data_16

    .line 324
    const-string v0, "TYPE_INVALID"

    return-object v0

    .line 322
    :pswitch_6
    const-string v0, "TYPE_PNG_ALPHA_8"

    return-object v0

    .line 320
    :pswitch_9
    const-string v0, "TYPE_RAW8888"

    return-object v0

    .line 318
    :pswitch_c
    const-string v0, "TYPE_RAW8"

    return-object v0

    .line 316
    :pswitch_f
    const-string v0, "TYPE_PNG"

    return-object v0

    .line 314
    :pswitch_12
    const-string v0, "TYPE_PNG_8888"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist id()I
    .registers 1

    .line 151
    const/16 v0, 0x65

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 142
    const-string v0, "BitmapData"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 10
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

    .line 220
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 221
    .local v0, "imageId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 222
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 224
    .local v2, "height":I
    const v3, 0xffff

    if-le v1, v3, :cond_15

    .line 225
    shr-int/lit8 v4, v1, 0x10

    .line 226
    .local v4, "type":I
    and-int/2addr v1, v3

    goto :goto_16

    .line 228
    .end local v4    # "type":I
    :cond_15
    const/4 v4, 0x0

    .line 232
    .restart local v4    # "type":I
    :goto_16
    if-le v2, v3, :cond_1c

    .line 233
    shr-int/lit8 v5, v2, 0x10

    .line 234
    .local v5, "encoding":I
    and-int/2addr v2, v3

    goto :goto_1d

    .line 236
    .end local v5    # "encoding":I
    :cond_1c
    const/4 v5, 0x0

    .line 238
    .restart local v5    # "encoding":I
    :goto_1d
    const/4 v3, 0x1

    if-lt v1, v3, :cond_3b

    if-lt v2, v3, :cond_3b

    const/16 v3, 0x1f40

    if-gt v2, v3, :cond_3b

    if-gt v1, v3, :cond_3b

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBuffer()[B

    move-result-object v3

    .line 245
    .local v3, "bitmap":[B
    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;-><init>(III[B)V

    .line 246
    .local v6, "bitmapData":Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
    int-to-short v7, v4

    iput-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    .line 247
    int-to-short v7, v5

    iput-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    .line 248
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void

    .line 242
    .end local v3    # "bitmap":[B
    .end local v6    # "bitmapData":Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
    :cond_3b
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dimension of image is invalid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 10
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 270
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    .line 271
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    iget-short v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    iget-short v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    move-object v1, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadBitmap(ISSII[B)V

    .line 272
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 160
    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    return v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 289
    nop

    .line 290
    const-string v0, "BitmapData"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    .line 291
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imageId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    .line 292
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imageWidth"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    .line 293
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imageHeight"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    .line 294
    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getImageTypeString(S)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageType"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    .line 295
    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getEncodingString(S)Ljava/lang/String;

    move-result-object v1

    const-string v2, "encoding"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 296
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitmapData id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 285
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BITMAP DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist update(Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;)V
    .registers 3
    .param p1, "from"    # Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 99
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    .line 100
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    .line 101
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    .line 102
    iget-short v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    iput-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mType:S

    .line 103
    iget-short v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    iput-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mEncoding:S

    .line 104
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 126
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    .line 127
    return-void
.end method
