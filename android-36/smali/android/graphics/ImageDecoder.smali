.class public final Landroid/graphics/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageDecoder$Source;,
        Landroid/graphics/ImageDecoder$ResourceSource;,
        Landroid/graphics/ImageDecoder$ContentResolverSource;,
        Landroid/graphics/ImageDecoder$AssetSource;,
        Landroid/graphics/ImageDecoder$ByteArraySource;,
        Landroid/graphics/ImageDecoder$ByteBufferSource;,
        Landroid/graphics/ImageDecoder$InputStreamSource;,
        Landroid/graphics/ImageDecoder$FileSource;,
        Landroid/graphics/ImageDecoder$CallableSource;,
        Landroid/graphics/ImageDecoder$OnPartialImageListener;,
        Landroid/graphics/ImageDecoder$ImageInfo;,
        Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;,
        Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;,
        Landroid/graphics/ImageDecoder$DecodeException;,
        Landroid/graphics/ImageDecoder$MemoryPolicy;,
        Landroid/graphics/ImageDecoder$Allocator;,
        Landroid/graphics/ImageDecoder$AssetInputStreamSource;
    }
.end annotation


# static fields
.field public static final whitelist ALLOCATOR_DEFAULT:I = 0x0

.field public static final whitelist ALLOCATOR_HARDWARE:I = 0x3

.field public static final whitelist ALLOCATOR_SHARED_MEMORY:I = 0x2

.field public static final whitelist ALLOCATOR_SOFTWARE:I = 0x1

.field public static final whitelist MEMORY_POLICY_DEFAULT:I = 0x1

.field public static final whitelist MEMORY_POLICY_LOW_RAM:I

.field private static blacklist sIsHevcDecoderSupported:Z

.field private static blacklist sIsHevcDecoderSupportedInitialized:Z

.field private static final blacklist sIsHevcDecoderSupportedLock:Ljava/lang/Object;

.field private static blacklist sIsP010SupportedFlagsInitialized:Z

.field private static blacklist sIsP010SupportedForAV1:Z

.field private static blacklist sIsP010SupportedForHEVC:Z

.field private static final blacklist sIsP010SupportedLock:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mAllocator:I

.field private final greylist-max-o mAnimated:Z

.field private greylist-max-o mAssetFd:Landroid/content/res/AssetFileDescriptor;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mConserveMemory:Z

.field private greylist-max-o mCropRect:Landroid/graphics/Rect;

.field private greylist-max-o mDecodeAsAlphaMask:Z

.field private greylist-max-o mDesiredColorSpace:Landroid/graphics/ColorSpace;

.field private greylist-max-o mDesiredHeight:I

.field private greylist-max-o mDesiredWidth:I

.field private final greylist-max-o mHeight:I

.field private greylist-max-o mInputStream:Ljava/io/InputStream;

.field private final greylist-max-o mIsNinePatch:Z

.field private greylist-max-o mMutable:Z

.field private greylist-max-o mNativePtr:J

.field private greylist-max-o mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

.field private greylist-max-o mOutPaddingRect:Landroid/graphics/Rect;

.field private greylist-max-o mOwnsInputStream:Z

.field private greylist-max-o mPostProcessor:Landroid/graphics/PostProcessor;

.field private greylist-max-o mSource:Landroid/graphics/ImageDecoder$Source;

.field private greylist-max-o mTempStorage:[B

.field private greylist-max-o mUnpremultipliedRequired:Z

.field private final greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromFile(Ljava/io/File;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromFile(Ljava/io/File;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smdescribeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/graphics/ImageDecoder;->describeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreate(Ljava/nio/ByteBuffer;IIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/nio/ByteBuffer;IIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreate([BIIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/ImageDecoder;->nCreate([BIIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1984
    const/4 v0, 0x0

    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupported:Z

    .line 1985
    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedInitialized:Z

    .line 1986
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedLock:Ljava/lang/Object;

    .line 2007
    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedForAV1:Z

    .line 2008
    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedForHEVC:Z

    .line 2009
    sput-boolean v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedFlagsInitialized:Z

    .line 2010
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>(JIIZZ)V
    .registers 9
    .param p1, "nativePtr"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "animated"    # Z
    .param p6, "isNinePatch"    # Z

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    .line 837
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    .line 838
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    .line 839
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    .line 840
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    .line 854
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 855
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 864
    iput-wide p1, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    .line 865
    iput p3, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    .line 866
    iput p4, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    .line 867
    iput p3, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    .line 868
    iput p4, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 869
    iput-boolean p5, p0, Landroid/graphics/ImageDecoder;->mAnimated:Z

    .line 870
    iput-boolean p6, p0, Landroid/graphics/ImageDecoder;->mIsNinePatch:Z

    .line 871
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method private greylist-max-o callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V
    .registers 9
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .param p2, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 1685
    if-eqz p1, :cond_1e

    .line 1686
    new-instance v0, Landroid/graphics/ImageDecoder$ImageInfo;

    new-instance v1, Landroid/util/Size;

    iget v2, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    iget v3, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    iget-boolean v2, p0, Landroid/graphics/ImageDecoder;->mAnimated:Z

    .line 1688
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/ImageDecoder$ImageInfo;-><init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;Landroid/graphics/ImageDecoder-IA;)V

    .line 1689
    .local v0, "info":Landroid/graphics/ImageDecoder$ImageInfo;
    invoke-interface {p1, p0, v0, p2}, Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    .line 1691
    .end local v0    # "info":Landroid/graphics/ImageDecoder$ImageInfo;
    :cond_1e
    return-void
.end method

.method private blacklist checkForExtended()Z
    .registers 4

    .line 1658
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1659
    return v1

    .line 1661
    :cond_6
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    if-eq v0, v2, :cond_1a

    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1662
    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    if-ne v0, v2, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    .line 1661
    :cond_1b
    return v1
.end method

.method private static blacklist checkP010SupportforAV1HEVC()V
    .registers 16

    .line 2047
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 2048
    .local v0, "codecList":Landroid/media/MediaCodecList;
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_c
    const/4 v5, 0x1

    if-ge v4, v3, :cond_5b

    aget-object v6, v2, v4

    .line 2049
    .local v6, "mediaCodecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2050
    goto :goto_58

    .line 2052
    :cond_18
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v1

    :goto_1e
    if-ge v9, v8, :cond_58

    aget-object v10, v7, v9

    .line 2053
    .local v10, "mediaType":Ljava/lang/String;
    const-string/jumbo v11, "video/av01"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_34

    .line 2054
    const-string/jumbo v12, "video/hevc"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_55

    .line 2055
    :cond_34
    nop

    .line 2056
    invoke-virtual {v6, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v12

    .line 2057
    .local v12, "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3a
    iget-object v14, v12, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v14, v14

    if-ge v13, v14, :cond_55

    .line 2058
    iget-object v14, v12, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v14, v14, v13

    const/16 v15, 0x36

    if-ne v14, v15, :cond_52

    .line 2060
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_50

    .line 2061
    sput-boolean v5, Landroid/graphics/ImageDecoder;->sIsP010SupportedForAV1:Z

    goto :goto_52

    .line 2063
    :cond_50
    sput-boolean v5, Landroid/graphics/ImageDecoder;->sIsP010SupportedForHEVC:Z

    .line 2057
    :cond_52
    :goto_52
    add-int/lit8 v13, v13, 0x1

    goto :goto_3a

    .line 2052
    .end local v10    # "mediaType":Ljava/lang/String;
    .end local v12    # "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v13    # "i":I
    :cond_55
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    .line 2048
    .end local v6    # "mediaCodecInfo":Landroid/media/MediaCodecInfo;
    :cond_58
    :goto_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2070
    :cond_5b
    sput-boolean v5, Landroid/graphics/ImageDecoder;->sIsP010SupportedFlagsInitialized:Z

    .line 2071
    return-void
.end method

.method private blacklist checkState(Z)V
    .registers 6
    .param p1, "animated"    # Z

    .line 1622
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_43

    .line 1626
    iget v0, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget-object v2, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Landroid/graphics/ImageDecoder;->checkSubset(IILandroid/graphics/Rect;)V

    .line 1630
    if-nez p1, :cond_31

    iget v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_31

    .line 1631
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    if-nez v0, :cond_29

    .line 1634
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    if-nez v0, :cond_21

    goto :goto_31

    .line 1635
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot make HARDWARE Alpha mask Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1632
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot make mutable HARDWARE Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1639
    :cond_31
    :goto_31
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    if-nez v0, :cond_3a

    goto :goto_42

    .line 1640
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot draw to unpremultiplied pixels!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1642
    :cond_42
    :goto_42
    return-void

    .line 1623
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use closed ImageDecoder!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkSubset(IILandroid/graphics/Rect;)V
    .registers 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 1645
    if-nez p2, :cond_3

    .line 1646
    return-void

    .line 1648
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    const-string v1, "Subset "

    if-lez v0, :cond_53

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_53

    .line 1651
    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_22

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_22

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-gt v0, p0, :cond_22

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v0, p1, :cond_22

    .line 1655
    return-void

    .line 1652
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not contained by scaled image bounds: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1649
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is empty/unsorted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o computeDensity(Landroid/graphics/ImageDecoder$Source;)I
    .registers 10
    .param p1, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 1907
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->requestedResize()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1908
    const/4 v0, 0x0

    return v0

    .line 1911
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->getDensity()I

    move-result v0

    .line 1912
    .local v0, "srcDensity":I
    if-nez v0, :cond_f

    .line 1913
    return v0

    .line 1921
    :cond_f
    iget-boolean v1, p0, Landroid/graphics/ImageDecoder;->mIsNinePatch:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-nez v1, :cond_18

    .line 1922
    return v0

    .line 1932
    :cond_18
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1933
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    if-ne v2, v0, :cond_27

    .line 1934
    return v0

    .line 1937
    :cond_27
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->computeDstDensity()I

    move-result v2

    .line 1938
    .local v2, "dstDensity":I
    if-ne v0, v2, :cond_2e

    .line 1939
    return v0

    .line 1944
    :cond_2e
    if-ge v0, v2, :cond_39

    .line 1945
    invoke-static {}, Landroid/graphics/Compatibility;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_39

    .line 1946
    return v0

    .line 1949
    :cond_39
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 1950
    .local v3, "scale":F
    iget v4, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1951
    .local v4, "scaledWidth":I
    iget v7, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v7, v5

    float-to-int v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1952
    .local v5, "scaledHeight":I
    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 1953
    return v2
.end method

.method private static blacklist createFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 8
    .param p0, "ais"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p1, "preferAnimation"    # Z
    .param p2, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    .line 547
    .local v0, "decoder":Landroid/graphics/ImageDecoder;
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v2

    .line 548
    .local v2, "asset":J
    invoke-static {v2, v3, p1, p2}, Landroid/graphics/ImageDecoder;->nCreate(JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_16

    .line 550
    .end local v0    # "decoder":Landroid/graphics/ImageDecoder;
    .end local v2    # "asset":J
    .local v4, "decoder":Landroid/graphics/ImageDecoder;
    if-nez v4, :cond_10

    .line 551
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_15

    .line 553
    :cond_10
    iput-object p0, v4, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 554
    iput-boolean v1, v4, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 556
    nop

    .line 557
    :goto_15
    return-object v4

    .line 550
    .end local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local v0    # "decoder":Landroid/graphics/ImageDecoder;
    :catchall_16
    move-exception v2

    if-nez v0, :cond_1d

    .line 551
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_21

    .line 553
    :cond_1d
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 554
    iput-boolean v1, v0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 556
    :goto_21
    throw v2
.end method

.method private static blacklist createFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 10
    .param p0, "assetFd"    # Landroid/content/res/AssetFileDescriptor;
    .param p1, "preferAnimation"    # Z
    .param p2, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    if-eqz p0, :cond_3a

    .line 373
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 374
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    .line 376
    .local v1, "offset":J
    const/4 v3, 0x0

    .line 379
    .local v3, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_b
    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v1, v2, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 380
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-static {v0, v4, v5, p1, p2}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/FileDescriptor;JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_18} :catch_1b
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    .line 383
    .end local v3    # "decoder":Landroid/graphics/ImageDecoder;
    .local v4, "decoder":Landroid/graphics/ImageDecoder;
    goto :goto_27

    .line 385
    .end local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local v3    # "decoder":Landroid/graphics/ImageDecoder;
    :catchall_19
    move-exception v4

    goto :goto_31

    .line 381
    :catch_1b
    move-exception v4

    .line 382
    .local v4, "e":Landroid/system/ErrnoException;
    :try_start_1c
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v6, 0x1

    invoke-static {v5, v6, p1, p2}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v5
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_19

    move-object v4, v5

    .line 385
    .end local v3    # "decoder":Landroid/graphics/ImageDecoder;
    .local v4, "decoder":Landroid/graphics/ImageDecoder;
    :goto_27
    if-nez v4, :cond_2d

    .line 386
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_30

    .line 388
    :cond_2d
    iput-object p0, v4, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 390
    nop

    .line 391
    :goto_30
    return-object v4

    .line 385
    .end local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local v3    # "decoder":Landroid/graphics/ImageDecoder;
    :goto_31
    if-nez v3, :cond_37

    .line 386
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_39

    .line 388
    :cond_37
    iput-object p0, v3, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 390
    :goto_39
    throw v4

    .line 371
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "offset":J
    .end local v3    # "decoder":Landroid/graphics/ImageDecoder;
    :cond_3a
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method private static blacklist createFromFile(Ljava/io/File;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "preferAnimation"    # Z
    .param p2, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 323
    .local v0, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 325
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v2, 0x1

    :try_start_a
    sget v3, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_11} :catch_31

    .line 328
    nop

    .line 330
    const/4 v3, 0x0

    .line 332
    .local v3, "decoder":Landroid/graphics/ImageDecoder;
    const-wide/16 v4, -0x1

    :try_start_15
    invoke-static {v1, v4, v5, p1, p2}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/FileDescriptor;JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_25

    .line 334
    .end local v3    # "decoder":Landroid/graphics/ImageDecoder;
    .local v4, "decoder":Landroid/graphics/ImageDecoder;
    if-nez v4, :cond_1f

    .line 335
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_24

    .line 337
    :cond_1f
    iput-object v0, v4, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 338
    iput-boolean v2, v4, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 340
    nop

    .line 341
    :goto_24
    return-object v4

    .line 334
    .end local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local v3    # "decoder":Landroid/graphics/ImageDecoder;
    :catchall_25
    move-exception v4

    if-nez v3, :cond_2c

    .line 335
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_30

    .line 337
    :cond_2c
    iput-object v0, v3, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 338
    iput-boolean v2, v3, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 340
    :goto_30
    throw v4

    .line 326
    .end local v3    # "decoder":Landroid/graphics/ImageDecoder;
    :catch_31
    move-exception v3

    .line 327
    .local v3, "e":Landroid/system/ErrnoException;
    invoke-static {v0, v2, p1, p2}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "closeInputStream"    # Z
    .param p2, "preferAnimation"    # Z
    .param p3, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 349
    .local v0, "storage":[B
    const/4 v1, 0x0

    .line 351
    .local v1, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_5
    invoke-static {p0, v0, p2, p3}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/InputStream;[BZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_19

    .line 353
    .end local v1    # "decoder":Landroid/graphics/ImageDecoder;
    .local v2, "decoder":Landroid/graphics/ImageDecoder;
    if-nez v2, :cond_11

    .line 354
    if-eqz p1, :cond_18

    .line 355
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_18

    .line 358
    :cond_11
    iput-object p0, v2, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 359
    iput-boolean p1, v2, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 360
    iput-object v0, v2, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 362
    nop

    .line 364
    :cond_18
    :goto_18
    return-object v2

    .line 353
    .end local v2    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local v1    # "decoder":Landroid/graphics/ImageDecoder;
    :catchall_19
    move-exception v2

    if-nez v1, :cond_22

    .line 354
    if-eqz p1, :cond_28

    .line 355
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_28

    .line 358
    :cond_22
    iput-object p0, v1, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 359
    iput-boolean p1, v1, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 360
    iput-object v0, v1, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 362
    :cond_28
    :goto_28
    throw v2
.end method

.method public static whitelist createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 964
    new-instance v0, Landroid/graphics/ImageDecoder$ContentResolverSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/ImageDecoder$ContentResolverSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static greylist-max-o createSource(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)Landroid/graphics/ImageDecoder$Source;
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 976
    new-instance v0, Landroid/graphics/ImageDecoder$ContentResolverSource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$ContentResolverSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static whitelist createSource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/ImageDecoder$Source;
    .registers 3
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 985
    new-instance v0, Landroid/graphics/ImageDecoder$AssetSource;

    invoke-direct {v0, p0, p1}, Landroid/graphics/ImageDecoder$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;
    .registers 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 941
    new-instance v0, Landroid/graphics/ImageDecoder$ResourceSource;

    invoke-direct {v0, p0, p1}, Landroid/graphics/ImageDecoder$ResourceSource;-><init>(Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method public static greylist-max-o createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "is"    # Ljava/io/InputStream;

    .line 1076
    new-instance v0, Landroid/graphics/ImageDecoder$InputStreamSource;

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/ImageDecoder$InputStreamSource;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static blacklist createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "density"    # I

    .line 1090
    new-instance v0, Landroid/graphics/ImageDecoder$InputStreamSource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$InputStreamSource;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static whitelist createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 1107
    new-instance v0, Landroid/graphics/ImageDecoder$FileSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$FileSource;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static whitelist createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;
    .registers 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1063
    new-instance v0, Landroid/graphics/ImageDecoder$ByteBufferSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$ByteBufferSource;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static whitelist createSource(Ljava/util/concurrent/Callable;)Landroid/graphics/ImageDecoder$Source;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;)",
            "Landroid/graphics/ImageDecoder$Source;"
        }
    .end annotation

    .line 1128
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroid/content/res/AssetFileDescriptor;>;"
    new-instance v0, Landroid/graphics/ImageDecoder$CallableSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$CallableSource;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static whitelist createSource([B)Landroid/graphics/ImageDecoder$Source;
    .registers 3
    .param p0, "data"    # [B

    .line 1041
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/ImageDecoder;->createSource([BII)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createSource([BII)Landroid/graphics/ImageDecoder$Source;
    .registers 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1012
    if-eqz p0, :cond_1d

    .line 1015
    if-ltz p1, :cond_14

    if-ltz p2, :cond_14

    array-length v0, p0

    if-ge p1, v0, :cond_14

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_14

    .line 1020
    new-instance v0, Landroid/graphics/ImageDecoder$ByteArraySource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$ByteArraySource;-><init>([BII)V

    return-object v0

    .line 1017
    :cond_14
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "invalid offset/length!"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null byte[] in createSource!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1981
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1846
    if-eqz p1, :cond_7

    .line 1850
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1847
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener cannot be null! Use decodeBitmap(Source) to not have a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1857
    const-string v0, "ImageDecoder#decodeBitmap"

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1858
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder(Z)Landroid/graphics/ImageDecoder;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_59

    .line 1859
    .local v0, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_c
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    .line 1860
    invoke-direct {v0, p1, p0}, Landroid/graphics/ImageDecoder;->callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V

    .line 1861
    new-instance v3, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;

    invoke-direct {v3, v0}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;-><init>(Landroid/graphics/ImageDecoder;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_4d

    .line 1864
    .local v3, "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    :try_start_16
    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder;->computeDensity(Landroid/graphics/ImageDecoder$Source;)I

    move-result v4

    .line 1865
    .local v4, "srcDensity":I
    invoke-direct {v0}, Landroid/graphics/ImageDecoder;->decodeBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1866
    .local v5, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v5, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1868
    iget-object v6, v0, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 1869
    .local v6, "padding":Landroid/graphics/Rect;
    if-eqz v6, :cond_36

    .line 1870
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v7

    .line 1871
    .local v7, "np":[B
    if-eqz v7, :cond_36

    invoke-static {v7}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 1872
    iget-wide v8, v0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v8, v9, v6}, Landroid/graphics/ImageDecoder;->nGetPadding(JLandroid/graphics/Rect;)V
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_43

    .line 1875
    .end local v7    # "np":[B
    :cond_36
    nop

    .line 1876
    :try_start_37
    invoke-virtual {v3}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_4d

    .line 1877
    if-eqz v0, :cond_3f

    :try_start_3c
    invoke-virtual {v0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_59

    .line 1879
    :cond_3f
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1875
    return-object v5

    .line 1861
    .end local v4    # "srcDensity":I
    .end local v5    # "bm":Landroid/graphics/Bitmap;
    .end local v6    # "padding":Landroid/graphics/Rect;
    :catchall_43
    move-exception v4

    :try_start_44
    invoke-virtual {v3}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v5

    :try_start_49
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "decoder":Landroid/graphics/ImageDecoder;
    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :goto_4c
    throw v4
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    .line 1858
    .end local v3    # "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    .restart local v0    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .restart local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :catchall_4d
    move-exception v3

    if-eqz v0, :cond_58

    :try_start_50
    invoke-virtual {v0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v4

    :try_start_55
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :cond_58
    :goto_58
    throw v3
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    .line 1879
    .end local v0    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .restart local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :catchall_59
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1880
    throw v0
.end method

.method private greylist-max-o decodeBitmapInternal()Landroid/graphics/Bitmap;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1675
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder;->checkState(Z)V

    .line 1676
    move v3, v0

    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-eqz v4, :cond_c

    const/4 v3, 0x1

    :cond_c
    iget v4, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v5, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget-object v6, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    iget-boolean v7, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    iget v8, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    iget-boolean v9, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    iget-boolean v10, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    iget-boolean v11, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    .line 1679
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getColorSpacePtr()J

    move-result-wide v12

    .line 1680
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->checkForExtended()Z

    move-result v14

    .line 1676
    move-object v2, p0

    invoke-static/range {v0 .. v14}, Landroid/graphics/ImageDecoder;->nDecodeBitmap(JLandroid/graphics/ImageDecoder;ZIILandroid/graphics/Rect;ZIZZZJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1827
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1738
    if-eqz p1, :cond_7

    .line 1742
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1739
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener cannot be null! Use decodeDrawable(Source) to not have a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;
    .registers 26
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1749
    move-object/from16 v1, p0

    const-string v0, "ImageDecoder#decodeDrawable"

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1750
    const/4 v0, 0x1

    :try_start_a
    invoke-virtual {v1, v0}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder(Z)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_104

    .line 1751
    .local v4, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_e
    iput-object v1, v4, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_f1

    .line 1752
    move-object/from16 v5, p1

    :try_start_12
    invoke-direct {v4, v5, v1}, Landroid/graphics/ImageDecoder;->callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V

    .line 1754
    new-instance v6, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;

    invoke-direct {v6, v4}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;-><init>(Landroid/graphics/ImageDecoder;)V
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_ef

    .line 1755
    .local v6, "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    :try_start_1a
    iget-boolean v7, v4, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    if-nez v7, :cond_d4

    .line 1762
    iget-boolean v7, v4, Landroid/graphics/ImageDecoder;->mMutable:Z

    if-nez v7, :cond_ca

    .line 1768
    invoke-direct {v4, v1}, Landroid/graphics/ImageDecoder;->computeDensity(Landroid/graphics/ImageDecoder$Source;)I

    move-result v7

    move/from16 v17, v7

    .line 1769
    .local v17, "srcDensity":I
    iget-boolean v7, v4, Landroid/graphics/ImageDecoder;->mAnimated:Z

    if-eqz v7, :cond_71

    .line 1772
    iget-object v7, v4, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    const/4 v8, 0x0

    if-nez v7, :cond_33

    move-object v11, v8

    goto :goto_34

    :cond_33
    move-object v11, v4

    .line 1773
    .local v11, "postProcessPtr":Landroid/graphics/ImageDecoder;
    :goto_34
    invoke-direct {v4, v0}, Landroid/graphics/ImageDecoder;->checkState(Z)V

    .line 1774
    move-object v0, v8

    new-instance v8, Landroid/graphics/drawable/AnimatedImageDrawable;

    iget-wide v9, v4, Landroid/graphics/ImageDecoder;->mNativePtr:J

    iget v12, v4, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v13, v4, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 1776
    invoke-direct {v4}, Landroid/graphics/ImageDecoder;->getColorSpacePtr()J

    move-result-wide v14

    .line 1777
    invoke-direct {v4}, Landroid/graphics/ImageDecoder;->checkForExtended()Z

    move-result v16

    .line 1778
    invoke-virtual {v1}, Landroid/graphics/ImageDecoder$Source;->computeDstDensity()I

    move-result v18

    iget-object v7, v4, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    iget-object v0, v4, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;
    :try_end_50
    .catchall {:try_start_1a .. :try_end_50} :catchall_e0

    move-wide/from16 v22, v2

    :try_start_52
    iget-object v2, v4, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v19, v7

    const/4 v0, 0x0

    invoke-direct/range {v8 .. v21}, Landroid/graphics/drawable/AnimatedImageDrawable;-><init>(JLandroid/graphics/ImageDecoder;IIJZIILandroid/graphics/Rect;Ljava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V

    move/from16 v7, v17

    .line 1781
    .end local v17    # "srcDensity":I
    .local v7, "srcDensity":I
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    iput-object v0, v4, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 1782
    iput-object v0, v4, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;
    :try_end_64
    .catchall {:try_start_52 .. :try_end_64} :catchall_de

    .line 1783
    nop

    .line 1804
    :try_start_65
    invoke-virtual {v6}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_ed

    .line 1805
    if-eqz v4, :cond_6d

    :try_start_6a
    invoke-virtual {v4}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_102

    .line 1807
    :cond_6d
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1783
    return-object v8

    .line 1786
    .end local v7    # "srcDensity":I
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    .end local v11    # "postProcessPtr":Landroid/graphics/ImageDecoder;
    .restart local v17    # "srcDensity":I
    :cond_71
    move-wide/from16 v22, v2

    move/from16 v7, v17

    .end local v17    # "srcDensity":I
    .restart local v7    # "srcDensity":I
    :try_start_75
    invoke-direct {v4}, Landroid/graphics/ImageDecoder;->decodeBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v10, v0

    .line 1787
    .local v10, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v10, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1789
    invoke-virtual {v1}, Landroid/graphics/ImageDecoder$Source;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1790
    .local v9, "res":Landroid/content/res/Resources;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v11

    .line 1791
    .local v11, "np":[B
    if-eqz v11, :cond_b9

    invoke-static {v11}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 1792
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 1793
    .local v13, "opticalInsets":Landroid/graphics/Rect;
    invoke-virtual {v10, v13}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    .line 1794
    iget-object v0, v4, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 1795
    .local v0, "padding":Landroid/graphics/Rect;
    if-nez v0, :cond_a1

    .line 1796
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v2

    move-object v12, v0

    goto :goto_a2

    .line 1795
    :cond_a1
    move-object v12, v0

    .line 1798
    .end local v0    # "padding":Landroid/graphics/Rect;
    .local v12, "padding":Landroid/graphics/Rect;
    :goto_a2
    iget-wide v2, v4, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v2, v3, v12}, Landroid/graphics/ImageDecoder;->nGetPadding(JLandroid/graphics/Rect;)V

    .line 1799
    new-instance v8, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_75 .. :try_end_ad} :catchall_de

    .line 1804
    :try_start_ad
    invoke-virtual {v6}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_ed

    .line 1805
    if-eqz v4, :cond_b5

    :try_start_b2
    invoke-virtual {v4}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_102

    .line 1807
    :cond_b5
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1799
    return-object v8

    .line 1803
    .end local v12    # "padding":Landroid/graphics/Rect;
    .end local v13    # "opticalInsets":Landroid/graphics/Rect;
    :cond_b9
    :try_start_b9
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_be
    .catchall {:try_start_b9 .. :try_end_be} :catchall_de

    .line 1804
    :try_start_be
    invoke-virtual {v6}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_ed

    .line 1805
    if-eqz v4, :cond_c6

    :try_start_c3
    invoke-virtual {v4}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_102

    .line 1807
    :cond_c6
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1803
    return-object v0

    .line 1763
    .end local v7    # "srcDensity":I
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "bm":Landroid/graphics/Bitmap;
    .end local v11    # "np":[B
    :cond_ca
    move-wide/from16 v22, v2

    :try_start_cc
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot decode a mutable Drawable!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .end local v6    # "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    throw v0

    .line 1758
    .restart local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local v6    # "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .restart local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :cond_d4
    move-wide/from16 v22, v2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot decode a Drawable with unpremultiplied pixels!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .end local v6    # "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    throw v0
    :try_end_de
    .catchall {:try_start_cc .. :try_end_de} :catchall_de

    .line 1754
    .restart local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local v6    # "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .restart local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :catchall_de
    move-exception v0

    goto :goto_e3

    :catchall_e0
    move-exception v0

    move-wide/from16 v22, v2

    :goto_e3
    move-object v2, v0

    :try_start_e4
    invoke-virtual {v6}, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->close()V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_e8

    goto :goto_ec

    :catchall_e8
    move-exception v0

    :try_start_e9
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :goto_ec
    throw v2
    :try_end_ed
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_ed

    .line 1750
    .end local v6    # "unused":Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
    .restart local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .restart local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :catchall_ed
    move-exception v0

    goto :goto_f6

    :catchall_ef
    move-exception v0

    goto :goto_f4

    :catchall_f1
    move-exception v0

    move-object/from16 v5, p1

    :goto_f4
    move-wide/from16 v22, v2

    :goto_f6
    move-object v2, v0

    if-eqz v4, :cond_101

    :try_start_f9
    invoke-virtual {v4}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_fd

    goto :goto_101

    :catchall_fd
    move-exception v0

    :try_start_fe
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :cond_101
    :goto_101
    throw v2
    :try_end_102
    .catchall {:try_start_fe .. :try_end_102} :catchall_102

    .line 1807
    .end local v4    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .restart local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :catchall_102
    move-exception v0

    goto :goto_109

    :catchall_104
    move-exception v0

    move-object/from16 v5, p1

    move-wide/from16 v22, v2

    :goto_109
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1808
    throw v0
.end method

.method public static blacklist decodeHeader(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder$ImageInfo;
    .registers 11
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1708
    const-string v0, "ImageDecoder#decodeHeader"

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1709
    const/4 v0, 0x1

    :try_start_8
    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder(Z)Landroid/graphics/ImageDecoder;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_3c

    move-object v3, v0

    .line 1711
    .local v3, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_d
    new-instance v4, Landroid/graphics/ImageDecoder$ImageInfo;

    new-instance v5, Landroid/util/Size;

    iget v0, v3, Landroid/graphics/ImageDecoder;->mWidth:I

    iget v6, v3, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-direct {v5, v0, v6}, Landroid/util/Size;-><init>(II)V

    iget-boolean v6, v3, Landroid/graphics/ImageDecoder;->mAnimated:Z

    .line 1714
    invoke-direct {v3}, Landroid/graphics/ImageDecoder;->getMimeType()Ljava/lang/String;

    move-result-object v7

    .line 1715
    invoke-direct {v3}, Landroid/graphics/ImageDecoder;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/graphics/ImageDecoder$ImageInfo;-><init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;Landroid/graphics/ImageDecoder-IA;)V
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_2f

    .line 1716
    if-eqz v3, :cond_2b

    :try_start_28
    invoke-virtual {v3}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3c

    .line 1718
    :cond_2b
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1711
    return-object v4

    .line 1709
    :catchall_2f
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_3b

    :try_start_33
    invoke-virtual {v3}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v0

    :try_start_38
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    :cond_3b
    :goto_3b
    throw v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    .line 1718
    .end local v3    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    :catchall_3c
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1719
    throw v0
.end method

.method private static blacklist describeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;
    .registers 4
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;

    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2112
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "ID#w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2113
    iget v1, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2114
    const-string v1, ";h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2115
    iget v1, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2117
    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v2, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    if-ne v1, v2, :cond_25

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget v2, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    if-eq v1, v2, :cond_39

    .line 2119
    :cond_25
    const-string v1, ";dw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2121
    const-string v1, ";dh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2125
    :cond_39
    const-string v1, ";src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 1963
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nGetColorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getColorSpacePtr()J
    .registers 3

    .line 1666
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    if-nez v0, :cond_7

    .line 1667
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1669
    :cond_7
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getMimeType()Ljava/lang/String;
    .registers 3

    .line 1958
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nGetMimeType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getSampledSize(I)Landroid/util/Size;
    .registers 6
    .param p1, "sampleSize"    # I

    .line 1147
    if-lez p1, :cond_19

    .line 1151
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 1155
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/ImageDecoder;->nGetSampledSize(JI)Landroid/util/Size;

    move-result-object v0

    return-object v0

    .line 1152
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageDecoder is closed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1148
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sampleSize must be positive! provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getTargetDimension(III)I
    .registers 7
    .param p1, "original"    # I
    .param p2, "sampleSize"    # I
    .param p3, "computed"    # I

    .line 1192
    if-lt p2, p1, :cond_4

    .line 1193
    const/4 v0, 0x1

    return v0

    .line 1198
    :cond_4
    div-int v0, p1, p2

    .line 1199
    .local v0, "target":I
    if-ne p3, v0, :cond_9

    .line 1200
    return p3

    .line 1206
    :cond_9
    mul-int v1, p3, p2

    .line 1207
    .local v1, "reverse":I
    sub-int v2, v1, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p2, :cond_14

    .line 1209
    return p3

    .line 1213
    :cond_14
    return v0
.end method

.method private static blacklist isHevcDecoderSupported()Z
    .registers 6

    .line 1994
    sget-object v0, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1995
    :try_start_3
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedInitialized:Z

    if-eqz v1, :cond_b

    .line 1996
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupported:Z

    monitor-exit v0

    return v1

    .line 1998
    :cond_b
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    .line 1999
    .local v1, "format":Landroid/media/MediaFormat;
    const-string/jumbo v2, "mime"

    const-string/jumbo v3, "video/hevc"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    new-instance v2, Landroid/media/MediaCodecList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 2001
    .local v2, "mcl":Landroid/media/MediaCodecList;
    invoke-virtual {v2, v1}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_27

    move v3, v5

    :cond_27
    sput-boolean v3, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupported:Z

    .line 2002
    sput-boolean v5, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupportedInitialized:Z

    .line 2003
    sget-boolean v3, Landroid/graphics/ImageDecoder;->sIsHevcDecoderSupported:Z

    monitor-exit v0

    return v3

    .line 2004
    .end local v1    # "format":Landroid/media/MediaFormat;
    .end local v2    # "mcl":Landroid/media/MediaCodecList;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public static whitelist isMimeTypeSupported(Ljava/lang/String;)Z
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 898
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_118

    :cond_12
    goto/16 :goto_107

    :sswitch_14
    const-string/jumbo v1, "image/x-canon-cr2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x8

    goto/16 :goto_108

    :sswitch_21
    const-string/jumbo v1, "image/x-nikon-nrw"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xb

    goto/16 :goto_108

    :sswitch_2e
    const-string/jumbo v1, "image/x-nikon-nef"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xa

    goto/16 :goto_108

    :sswitch_3b
    const-string/jumbo v1, "image/x-olympus-orf"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xc

    goto/16 :goto_108

    :sswitch_48
    const-string/jumbo v1, "image/x-ico"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x5

    goto/16 :goto_108

    :sswitch_54
    const-string/jumbo v1, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x6

    goto/16 :goto_108

    :sswitch_60
    const-string/jumbo v1, "image/x-pentax-pef"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xf

    goto/16 :goto_108

    :sswitch_6d
    const-string/jumbo v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    goto/16 :goto_108

    :sswitch_79
    const-string/jumbo v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x3

    goto/16 :goto_108

    :sswitch_85
    const-string/jumbo v1, "image/bmp"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x4

    goto/16 :goto_108

    :sswitch_91
    const-string/jumbo v1, "image/x-panasonic-rw2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xe

    goto/16 :goto_108

    :sswitch_9e
    const-string/jumbo v1, "image/x-adobe-dng"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x9

    goto :goto_108

    :sswitch_aa
    const-string/jumbo v1, "image/webp"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    goto :goto_108

    :sswitch_b5
    const-string/jumbo v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v3

    goto :goto_108

    :sswitch_c0
    const-string/jumbo v1, "image/heif"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x11

    goto :goto_108

    :sswitch_cc
    const-string/jumbo v1, "image/heic"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x12

    goto :goto_108

    :sswitch_d8
    const-string/jumbo v1, "image/avif"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    goto :goto_108

    :sswitch_e4
    const-string/jumbo v1, "image/x-sony-arw"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x7

    goto :goto_108

    :sswitch_ef
    const-string/jumbo v1, "image/x-samsung-srw"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x10

    goto :goto_108

    :sswitch_fb
    const-string/jumbo v1, "image/x-fuji-raf"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xd

    goto :goto_108

    :goto_107
    const/4 v0, -0x1

    :goto_108
    packed-switch v0, :pswitch_data_16a

    .line 924
    return v2

    .line 922
    :pswitch_10c
    invoke-static {}, Landroid/graphics/ImageDecoder;->isP010SupportedForAV1()Z

    move-result v0

    return v0

    .line 920
    :pswitch_111
    invoke-static {}, Landroid/graphics/ImageDecoder;->isHevcDecoderSupported()Z

    move-result v0

    return v0

    .line 917
    :pswitch_116
    return v3

    nop

    :sswitch_data_118
    .sparse-switch
        -0x6fc6acff -> :sswitch_fb
        -0x617ac9e4 -> :sswitch_ef
        -0x5f082c57 -> :sswitch_e4
        -0x58abd7ba -> :sswitch_d8
        -0x58a8e8f5 -> :sswitch_cc
        -0x58a8e8f2 -> :sswitch_c0
        -0x58a7d764 -> :sswitch_b5
        -0x58a21830 -> :sswitch_aa
        -0x54d6098a -> :sswitch_9e
        -0x3ab85cc1 -> :sswitch_91
        -0x3468a12f -> :sswitch_85
        -0x34688ef0 -> :sswitch_79
        -0x34686c8b -> :sswitch_6d
        -0x13d592a1 -> :sswitch_60
        0x2c2ee2ec -> :sswitch_54
        0x4453ce0c -> :sswitch_48
        0x52243d4a -> :sswitch_3b
        0x7d1e84e8 -> :sswitch_2e
        0x7d1e868c -> :sswitch_21
        0x7dd6e2bc -> :sswitch_14
    .end sparse-switch

    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_111
        :pswitch_111
        :pswitch_10c
    .end packed-switch
.end method

.method private static blacklist isP010SupportedForAV1()Z
    .registers 2

    .line 2018
    sget-object v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2019
    :try_start_3
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedFlagsInitialized:Z

    if-eqz v1, :cond_b

    .line 2020
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedForAV1:Z

    monitor-exit v0

    return v1

    .line 2022
    :cond_b
    invoke-static {}, Landroid/graphics/ImageDecoder;->checkP010SupportforAV1HEVC()V

    .line 2023
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedForAV1:Z

    monitor-exit v0

    return v1

    .line 2024
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static blacklist isP010SupportedForHEVC()Z
    .registers 2

    .line 2034
    sget-object v0, Landroid/graphics/ImageDecoder;->sIsP010SupportedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2035
    :try_start_3
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedFlagsInitialized:Z

    if-eqz v1, :cond_b

    .line 2036
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedForHEVC:Z

    monitor-exit v0

    return v1

    .line 2038
    :cond_b
    invoke-static {}, Landroid/graphics/ImageDecoder;->checkP010SupportforAV1HEVC()V

    .line 2039
    sget-boolean v1, Landroid/graphics/ImageDecoder;->sIsP010SupportedForHEVC:Z

    monitor-exit v0

    return v1

    .line 2040
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static native greylist-max-o nClose(J)V
.end method

.method private static native blacklist nCreate(JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nCreate(Ljava/io/FileDescriptor;JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nCreate(Ljava/io/InputStream;[BZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nCreate(Ljava/nio/ByteBuffer;IIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nCreate([BIIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nDecodeBitmap(JLandroid/graphics/ImageDecoder;ZIILandroid/graphics/Rect;ZIZZZJZ)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nGetColorSpace(J)Landroid/graphics/ColorSpace;
.end method

.method private static native greylist-max-o nGetMimeType(J)Ljava/lang/String;
.end method

.method private static native greylist-max-o nGetPadding(JLandroid/graphics/Rect;)V
.end method

.method private static native greylist-max-o nGetSampledSize(JI)Landroid/util/Size;
.end method

.method private greylist-max-o onPartialImage(ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "error"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/graphics/ImageDecoder$DecodeException;
        }
    .end annotation

    .line 2091
    new-instance v0, Landroid/graphics/ImageDecoder$DecodeException;

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    invoke-direct {v0, p1, p2, v1}, Landroid/graphics/ImageDecoder$DecodeException;-><init>(ILjava/lang/Throwable;Landroid/graphics/ImageDecoder$Source;)V

    .line 2092
    .local v0, "exception":Landroid/graphics/ImageDecoder$DecodeException;
    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    .line 2093
    invoke-interface {v1, v0}, Landroid/graphics/ImageDecoder$OnPartialImageListener;->onPartialImage(Landroid/graphics/ImageDecoder$DecodeException;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2096
    return-void

    .line 2094
    :cond_14
    throw v0
.end method

.method private blacklist postProcessAndRelease(Landroid/graphics/Canvas;)I
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2079
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    invoke-interface {v0, p1}, Landroid/graphics/PostProcessor;->onPostProcess(Landroid/graphics/Canvas;)I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_a

    .line 2081
    invoke-virtual {p1}, Landroid/graphics/Canvas;->release()V

    .line 2079
    return v0

    .line 2081
    :catchall_a
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->release()V

    .line 2082
    throw v0
.end method

.method private greylist-max-o requestedResize()Z
    .registers 3

    .line 1252
    iget v0, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    if-eq v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private static blacklist traceDecoderSource(Landroid/graphics/ImageDecoder;)Ljava/lang/AutoCloseable;
    .registers 5
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;

    .line 1889
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    .line 1890
    .local v2, "resourceTracingEnabled":Z
    if-eqz v2, :cond_f

    .line 1891
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->describeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1894
    :cond_f
    new-instance v0, Landroid/graphics/ImageDecoder$1;

    invoke-direct {v0, v2}, Landroid/graphics/ImageDecoder$1;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 1604
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 1605
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1606
    return-void

    .line 1608
    :cond_10
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nClose(J)V

    .line 1609
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    .line 1611
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    if-eqz v0, :cond_22

    .line 1612
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1614
    :cond_22
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1616
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 1617
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 1618
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 1619
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 877
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 878
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 882
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 883
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 885
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_16

    .line 887
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 888
    nop

    .line 889
    return-void

    .line 887
    :catchall_16
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 888
    throw v0
.end method

.method public whitelist getAllocator()I
    .registers 2

    .line 1322
    iget v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    return v0
.end method

.method public whitelist getCrop()Landroid/graphics/Rect;
    .registers 2

    .line 1431
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getMemorySizePolicy()I
    .registers 2

    .line 1524
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist getOnPartialImageListener()Landroid/graphics/ImageDecoder$OnPartialImageListener;
    .registers 2

    .line 1403
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    return-object v0
.end method

.method public whitelist getPostProcessor()Landroid/graphics/PostProcessor;
    .registers 2

    .line 1381
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    return-object v0
.end method

.method public whitelist isDecodeAsAlphaMaskEnabled()Z
    .registers 2

    .line 1555
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    return v0
.end method

.method public whitelist isMutableRequired()Z
    .registers 2

    .line 1479
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    return v0
.end method

.method public whitelist isUnpremultipliedRequired()Z
    .registers 2

    .line 1349
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    return v0
.end method

.method public whitelist setAllocator(I)V
    .registers 5
    .param p1, "allocator"    # I

    .line 1311
    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    .line 1314
    iput p1, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    .line 1315
    return-void

    .line 1312
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid allocator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCrop(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "subset"    # Landroid/graphics/Rect;

    .line 1423
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    .line 1424
    return-void
.end method

.method public whitelist setDecodeAsAlphaMaskEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1543
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    .line 1544
    return-void
.end method

.method public whitelist setMemorySizePolicy(I)V
    .registers 3
    .param p1, "policy"    # I

    .line 1516
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    .line 1517
    return-void
.end method

.method public whitelist setMutableRequired(Z)V
    .registers 2
    .param p1, "mutable"    # Z

    .line 1472
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    .line 1473
    return-void
.end method

.method public whitelist setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnPartialImageListener;

    .line 1395
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    .line 1396
    return-void
.end method

.method public greylist-max-o setOutPaddingRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "outPadding"    # Landroid/graphics/Rect;

    .line 1448
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 1449
    return-void
.end method

.method public whitelist setPostProcessor(Landroid/graphics/PostProcessor;)V
    .registers 2
    .param p1, "postProcessor"    # Landroid/graphics/PostProcessor;

    .line 1373
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    .line 1374
    return-void
.end method

.method public whitelist setTargetColorSpace(Landroid/graphics/ColorSpace;)V
    .registers 2
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 1591
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    .line 1592
    return-void
.end method

.method public whitelist setTargetSampleSize(I)V
    .registers 6
    .param p1, "sampleSize"    # I

    .line 1245
    invoke-direct {p0, p1}, Landroid/graphics/ImageDecoder;->getSampledSize(I)Landroid/util/Size;

    move-result-object v0

    .line 1246
    .local v0, "size":Landroid/util/Size;
    iget v1, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Landroid/graphics/ImageDecoder;->getTargetDimension(III)I

    move-result v1

    .line 1247
    .local v1, "targetWidth":I
    iget v2, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, p1, v3}, Landroid/graphics/ImageDecoder;->getTargetDimension(III)I

    move-result v2

    .line 1248
    .local v2, "targetHeight":I
    invoke-virtual {p0, v1, v2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 1249
    return-void
.end method

.method public whitelist setTargetSize(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1181
    if-lez p1, :cond_9

    if-lez p2, :cond_9

    .line 1186
    iput p1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    .line 1187
    iput p2, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 1188
    return-void

    .line 1182
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions must be positive! provided ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUnpremultipliedRequired(Z)V
    .registers 2
    .param p1, "unpremultipliedRequired"    # Z

    .line 1342
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    .line 1343
    return-void
.end method
