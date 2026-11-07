.class public Landroid/filterfw/format/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# static fields
.field public static final greylist-max-o COLORSPACE_GRAY:I = 0x1

.field public static final greylist-max-o COLORSPACE_KEY:Ljava/lang/String; = "colorspace"

.field public static final greylist-max-o COLORSPACE_RGB:I = 0x2

.field public static final greylist-max-o COLORSPACE_RGBA:I = 0x3

.field public static final greylist-max-o COLORSPACE_YUV:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o bytesPerSampleForColorspace(I)I
    .registers 4
    .param p0, "colorspace"    # I

    .line 83
    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_2a

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown colorspace id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :pswitch_23
    return v0

    .line 89
    :pswitch_24
    const/4 v0, 0x4

    return v0

    .line 87
    :pswitch_26
    return v0

    .line 85
    :pswitch_27
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_24
        :pswitch_23
    .end packed-switch
.end method

.method public static greylist create(I)Landroid/filterfw/core/MutableFrameFormat;
    .registers 3
    .param p0, "colorspace"    # I

    .line 75
    nop

    .line 78
    invoke-static {p0}, Landroid/filterfw/format/ImageFormat;->bytesPerSampleForColorspace(I)I

    move-result v0

    .line 75
    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0, v1}, Landroid/filterfw/format/ImageFormat;->create(IIIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static greylist create(II)Landroid/filterfw/core/MutableFrameFormat;
    .registers 4
    .param p0, "colorspace"    # I
    .param p1, "target"    # I

    .line 66
    nop

    .line 69
    invoke-static {p0}, Landroid/filterfw/format/ImageFormat;->bytesPerSampleForColorspace(I)I

    move-result v0

    .line 66
    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0, p1}, Landroid/filterfw/format/ImageFormat;->create(IIIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static greylist create(IIII)Landroid/filterfw/core/MutableFrameFormat;
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "colorspace"    # I
    .param p3, "target"    # I

    .line 57
    nop

    .line 60
    invoke-static {p2}, Landroid/filterfw/format/ImageFormat;->bytesPerSampleForColorspace(I)I

    move-result v0

    .line 57
    invoke-static {p0, p1, p2, v0, p3}, Landroid/filterfw/format/ImageFormat;->create(IIIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o create(IIIII)Landroid/filterfw/core/MutableFrameFormat;
    .registers 8
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "colorspace"    # I
    .param p3, "bytesPerSample"    # I
    .param p4, "target"    # I

    .line 42
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p4}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 43
    .local v0, "result":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, p0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 44
    invoke-virtual {v0, p3}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 45
    const-string v1, "colorspace"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    const/4 v1, 0x1

    if-ne p4, v1, :cond_1d

    .line 47
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    .line 49
    :cond_1d
    return-object v0
.end method
