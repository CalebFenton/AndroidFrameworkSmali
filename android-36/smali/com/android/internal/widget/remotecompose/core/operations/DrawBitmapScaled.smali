.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBitmapScaled.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawBitmapScaled"

.field private static final blacklist OP_CODE:I = 0x95

.field public static final blacklist SCALE_CROP:I = 0x5

.field public static final blacklist SCALE_FILL_BOUNDS:I = 0x6

.field public static final blacklist SCALE_FILL_HEIGHT:I = 0x3

.field public static final blacklist SCALE_FILL_WIDTH:I = 0x2

.field public static final blacklist SCALE_FIT:I = 0x4

.field public static final blacklist SCALE_FIXED_SCALE:I = 0x7

.field public static final blacklist SCALE_INSIDE:I = 0x1

.field public static final blacklist SCALE_NONE:I


# instance fields
.field blacklist mContentDescId:I

.field blacklist mDstBottom:F

.field blacklist mDstLeft:F

.field blacklist mDstRight:F

.field blacklist mDstTop:F

.field blacklist mImageId:I

.field blacklist mMode:I

.field blacklist mOutDstBottom:F

.field blacklist mOutDstLeft:F

.field blacklist mOutDstRight:F

.field blacklist mOutDstTop:F

.field blacklist mOutScaleFactor:F

.field blacklist mOutSrcBottom:F

.field blacklist mOutSrcLeft:F

.field blacklist mOutSrcRight:F

.field blacklist mOutSrcTop:F

.field blacklist mScaleFactor:F

.field blacklist mScaleType:I

.field blacklist mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

.field blacklist mSrcBottom:F

.field blacklist mSrcLeft:F

.field blacklist mSrcRight:F

.field blacklist mSrcTop:F


# direct methods
.method public constructor blacklist <init>(IFFFFFFFFIFI)V
    .registers 14
    .param p1, "imageId"    # I
    .param p2, "srcLeft"    # F
    .param p3, "srcTop"    # F
    .param p4, "srcRight"    # F
    .param p5, "srcBottom"    # F
    .param p6, "dstLeft"    # F
    .param p7, "dstTop"    # F
    .param p8, "dstRight"    # F
    .param p9, "dstBottom"    # F
    .param p10, "type"    # I
    .param p11, "scale"    # F
    .param p12, "cdId"    # I

    .line 76
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 54
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    .line 77
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    .line 78
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    .line 79
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    .line 80
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    .line 81
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    .line 82
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    .line 83
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    .line 84
    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    .line 85
    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    .line 86
    and-int/lit16 v0, p10, 0xff

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    .line 87
    shr-int/lit8 v0, p10, 0x8

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mMode:I

    .line 88
    iput p11, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    iput p11, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    .line 89
    iput p12, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    .line 90
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFFFFFIFI)V
    .registers 14
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "imageId"    # I
    .param p2, "srcLeft"    # F
    .param p3, "srcTop"    # F
    .param p4, "srcRight"    # F
    .param p5, "srcBottom"    # F
    .param p6, "dstLeft"    # F
    .param p7, "dstTop"    # F
    .param p8, "dstRight"    # F
    .param p9, "dstBottom"    # F
    .param p10, "scaleType"    # I
    .param p11, "scaleFactor"    # F
    .param p12, "cdId"    # I

    .line 252
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 255
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 256
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 257
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 258
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 260
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 261
    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 262
    invoke-virtual {p0, p8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 263
    invoke-virtual {p0, p9}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 265
    invoke-virtual {p0, p10}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 266
    invoke-virtual {p0, p11}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 267
    invoke-virtual {p0, p12}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 268
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 315
    const/16 v0, 0x95

    const-string v1, "DrawBitmapScaled"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 316
    const-string v1, "Draw a bitmap using integer coordinates"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 317
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of bitmap"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 318
    const/4 v2, 0x1

    const-string/jumbo v3, "srcLeft"

    const-string v4, "The left side of the image"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 319
    const-string/jumbo v3, "srcTop"

    const-string v4, "The top of the image"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 320
    const-string/jumbo v3, "srcRight"

    const-string v4, "The right side of the image"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 321
    const-string/jumbo v3, "srcBottom"

    const-string v4, "The bottom of the output"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 322
    const-string v3, "dstLeft"

    const-string v4, "The left side of the output"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 323
    const-string v3, "dstTop"

    const-string v4, "The top of the output"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 324
    const-string v3, "dstRight"

    const-string v4, "The right side of the output"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 325
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "type of auto scaling"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 326
    const-string/jumbo v2, "scaleFactor"

    const-string v3, "for allowed"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 327
    const-string v2, "cdId"

    const-string v3, "id of string"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 328
    return-void
.end method

.method private blacklist getScaleTypeString()Ljava/lang/String;
    .registers 2

    .line 399
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    packed-switch v0, :pswitch_data_20

    .line 417
    const-string v0, "INVALID_SCALE_TYPE"

    return-object v0

    .line 415
    :pswitch_8
    const-string v0, "SCALE_FIXED_SCALE"

    return-object v0

    .line 413
    :pswitch_b
    const-string v0, "SCALE_FILL_BOUNDS"

    return-object v0

    .line 411
    :pswitch_e
    const-string v0, "SCALE_CROP"

    return-object v0

    .line 409
    :pswitch_11
    const-string v0, "SCALE_FIT"

    return-object v0

    .line 407
    :pswitch_14
    const-string v0, "SCALE_FILL_HEIGHT"

    return-object v0

    .line 405
    :pswitch_17
    const-string v0, "SCALE_FILL_WIDTH"

    return-object v0

    .line 403
    :pswitch_1a
    const-string v0, "SCALE_INSIDE"

    return-object v0

    .line 401
    :pswitch_1d
    const-string v0, "SCALE_NONE"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist id()I
    .registers 1

    .line 218
    const/16 v0, 0x95

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 209
    const-string v0, "DrawBitmapScaled"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 15
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

    .line 277
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 279
    .local v1, "imageId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 280
    .local v2, "sLeft":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 281
    .local v3, "srcTop":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 282
    .local v4, "srcRight":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 284
    .local v5, "srcBottom":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 285
    .local v6, "dstLeft":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    .line 286
    .local v7, "dstTop":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v8

    .line 287
    .local v8, "dstRight":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v9

    .line 288
    .local v9, "dstBottom":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v10

    .line 289
    .local v10, "scaleType":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v11

    .line 290
    .local v11, "scaleFactor":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v12

    .line 291
    .local v12, "cdId":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;-><init>(IFFFFFFFFIFI)V

    .line 306
    .local v0, "op":Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method private blacklist register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "value"    # F

    .line 132
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 133
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 135
    :cond_d
    return-void
.end method

.method static blacklist str(F)Ljava/lang/String;
    .registers 3
    .param p0, "v"    # F

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-int v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getContentDescriptionId()Ljava/lang/Integer;
    .registers 2

    .line 199
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 14
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 346
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->setup(FFFFFFFFIF)V

    .line 357
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 358
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    .line 360
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    .line 361
    .local v0, "imageId":I
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mMode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_39

    .line 362
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getInteger(I)I

    move-result v0

    move v2, v0

    goto :goto_3a

    .line 361
    :cond_39
    move v2, v0

    .line 365
    .end local v0    # "imageId":I
    .local v2, "imageId":I
    :goto_3a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    float-to-int v3, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    float-to-int v4, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    float-to-int v5, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    float-to-int v6, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstLeft:F

    float-to-int v7, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstTop:F

    float-to-int v8, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstRight:F

    float-to-int v9, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstBottom:F

    float-to-int v10, v0

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    move-object v1, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v1, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IIIIIIIIII)V

    .line 376
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 377
    return-void
.end method

.method blacklist print(Ljava/lang/String;FFFF)V
    .registers 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .line 144
    move-object v0, p1

    .line 145
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-float v2, p4, p2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-float v2, p5, p3

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 120
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 121
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 122
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 123
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 124
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 125
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 126
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 127
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 128
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 129
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 381
    nop

    .line 382
    const-string v0, "DrawBitmapScaled"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    .line 383
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imageId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    .line 384
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "contentDescriptionId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 385
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->getScaleTypeString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "scaleType"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mMode:I

    .line 386
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    .line 387
    const-string/jumbo v3, "scaleFactor"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    .line 388
    const-string/jumbo v3, "srcLeft"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    .line 389
    const-string/jumbo v3, "srcTop"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    .line 390
    const-string/jumbo v3, "srcRight"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    .line 391
    const-string/jumbo v3, "srcBottom"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    .line 392
    const-string v3, "dstLeft"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    .line 393
    const-string v3, "dstTop"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    .line 394
    const-string v3, "dstRight"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    .line 395
    const-string v3, "dstBottom"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 396
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawBitmapScaled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    .line 174
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    .line 176
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    .line 178
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    .line 180
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] - ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    .line 183
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    .line 185
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    .line 187
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    .line 189
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    .line 194
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 94
    nop

    .line 95
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_16

    :cond_14
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    :goto_16
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    .line 96
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2d

    :cond_2b
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    :goto_2d
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    .line 97
    nop

    .line 98
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_43

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_45

    :cond_43
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    :goto_45
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    .line 99
    nop

    .line 100
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 101
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_5d

    .line 102
    :cond_5b
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    :goto_5d
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    .line 103
    nop

    .line 104
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_73

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_75

    :cond_73
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    :goto_75
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    .line 105
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_8c

    :cond_8a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    :goto_8c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    .line 106
    nop

    .line 107
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_a4

    :cond_a2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    :goto_a4
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    .line 108
    nop

    .line 109
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 110
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_bc

    .line 111
    :cond_ba
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    :goto_bc
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    .line 112
    nop

    .line 113
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 114
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_d4

    .line 115
    :cond_d2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    :goto_d4
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    .line 116
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 15
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 152
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    iget v12, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFFFFFIFI)V

    .line 166
    return-void
.end method
