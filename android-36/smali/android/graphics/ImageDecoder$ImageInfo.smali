.class public Landroid/graphics/ImageDecoder$ImageInfo;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mIsAnimated:Z

.field private final blacklist mMimeType:Ljava/lang/String;

.field private final greylist-max-o mSize:Landroid/util/Size;


# direct methods
.method private constructor blacklist <init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;)V
    .registers 5
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "isAnimated"    # Z
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    iput-object p1, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mSize:Landroid/util/Size;

    .line 642
    iput-boolean p2, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mIsAnimated:Z

    .line 643
    iput-object p3, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mMimeType:Ljava/lang/String;

    .line 644
    iput-object p4, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 645
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;Landroid/graphics/ImageDecoder-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/ImageDecoder$ImageInfo;-><init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;)V

    return-void
.end method


# virtual methods
.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 682
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .registers 2

    .line 660
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSize()Landroid/util/Size;
    .registers 2

    .line 652
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mSize:Landroid/util/Size;

    return-object v0
.end method

.method public whitelist isAnimated()Z
    .registers 2

    .line 670
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mIsAnimated:Z

    return v0
.end method
