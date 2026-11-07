.class public final Landroid/media/ImageWriter$Builder;
.super Ljava/lang/Object;
.source "ImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDataSpace:I

.field private blacklist mHardwareBufferFormat:I

.field private blacklist mHeight:I

.field private blacklist mImageFormat:I

.field private blacklist mMaxImages:I

.field private blacklist mSurface:Landroid/view/Surface;

.field private blacklist mUsage:J

.field private blacklist mUseLegacyImageFormat:Z

.field private blacklist mUseSurfaceImageFormatInfo:Z

.field private blacklist mWidth:I


# direct methods
.method public constructor whitelist <init>(Landroid/view/Surface;)V
    .registers 6
    .param p1, "surface"    # Landroid/view/Surface;

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mWidth:I

    .line 889
    iput v0, p0, Landroid/media/ImageWriter$Builder;->mHeight:I

    .line 890
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    .line 891
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    .line 892
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/media/ImageWriter$Builder;->mUsage:J

    .line 893
    iput v0, p0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    .line 894
    iput v1, p0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    .line 895
    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    .line 896
    iput-boolean v1, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    .line 906
    iput-object p1, p0, Landroid/media/ImageWriter$Builder;->mSurface:Landroid/view/Surface;

    .line 907
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/ImageWriter;
    .registers 14

    .line 1027
    iget-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    if-eqz v0, :cond_19

    .line 1028
    new-instance v1, Landroid/media/ImageWriter;

    iget-object v2, p0, Landroid/media/ImageWriter$Builder;->mSurface:Landroid/view/Surface;

    iget v3, p0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    iget-boolean v4, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    iget v5, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    iget v6, p0, Landroid/media/ImageWriter$Builder;->mWidth:I

    iget v7, p0, Landroid/media/ImageWriter$Builder;->mHeight:I

    iget-wide v8, p0, Landroid/media/ImageWriter$Builder;->mUsage:J

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIJLandroid/media/ImageWriter-IA;)V

    return-object v1

    .line 1031
    :cond_19
    new-instance v2, Landroid/media/ImageWriter;

    iget-object v3, p0, Landroid/media/ImageWriter$Builder;->mSurface:Landroid/view/Surface;

    iget v4, p0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    iget-boolean v5, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    iget v6, p0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    iget v7, p0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    iget v8, p0, Landroid/media/ImageWriter$Builder;->mWidth:I

    iget v9, p0, Landroid/media/ImageWriter$Builder;->mHeight:I

    iget-wide v10, p0, Landroid/media/ImageWriter$Builder;->mUsage:J

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIIJLandroid/media/ImageWriter-IA;)V

    return-object v2
.end method

.method public whitelist setDataSpace(I)Landroid/media/ImageWriter$Builder;
    .registers 3
    .param p1, "dataSpace"    # I

    .line 996
    iput p1, p0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    .line 997
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    .line 998
    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    .line 999
    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    .line 1000
    return-object p0
.end method

.method public whitelist setHardwareBufferFormat(I)Landroid/media/ImageWriter$Builder;
    .registers 3
    .param p1, "hardwareBufferFormat"    # I

    .line 979
    iput p1, p0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    .line 980
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    .line 981
    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    .line 982
    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    .line 983
    return-object p0
.end method

.method public whitelist setImageFormat(I)Landroid/media/ImageWriter$Builder;
    .registers 5
    .param p1, "imageFormat"    # I

    .line 949
    invoke-static {p1}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 950
    invoke-static {p1}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    .line 951
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid imageFormat is specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :cond_26
    :goto_26
    iput p1, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    .line 955
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    .line 956
    iput v0, p0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    .line 957
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    .line 958
    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    .line 959
    return-object p0
.end method

.method public whitelist setMaxImages(I)Landroid/media/ImageWriter$Builder;
    .registers 2
    .param p1, "maxImages"    # I

    .line 933
    iput p1, p0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    .line 934
    return-object p0
.end method

.method public whitelist setUsage(J)Landroid/media/ImageWriter$Builder;
    .registers 3
    .param p1, "usage"    # J

    .line 1017
    iput-wide p1, p0, Landroid/media/ImageWriter$Builder;->mUsage:J

    .line 1018
    return-object p0
.end method

.method public whitelist setWidthAndHeight(II)Landroid/media/ImageWriter$Builder;
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 920
    iput p1, p0, Landroid/media/ImageWriter$Builder;->mWidth:I

    .line 921
    iput p2, p0, Landroid/media/ImageWriter$Builder;->mHeight:I

    .line 922
    return-object p0
.end method
