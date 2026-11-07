.class public Lcom/android/internal/telephony/cat/ImageDescriptor;
.super Ljava/lang/Object;
.source "ImageDescriptor.java"


# instance fields
.field blacklist mCodingScheme:I

.field blacklist mHeight:I

.field blacklist mHighOffset:I

.field blacklist mImageId:I

.field blacklist mLength:I

.field blacklist mLowOffset:I

.field blacklist mWidth:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mWidth:I

    .line 41
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHeight:I

    .line 42
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    .line 43
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHighOffset:I

    .line 45
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLowOffset:I

    .line 46
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    return-void
.end method

.method static blacklist parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;
    .registers 8

    .line 57
    const-string v0, "ImageDescriptor"

    const-string v1, ", "

    new-instance v2, Lcom/android/internal/telephony/cat/ImageDescriptor;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/ImageDescriptor;-><init>()V

    add-int/lit8 v3, p1, 0x1

    .line 59
    :try_start_b
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    iput v4, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mWidth:I

    add-int/lit8 v4, p1, 0x2

    .line 60
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHeight:I

    add-int/lit8 v3, p1, 0x3

    .line 61
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    add-int/lit8 v4, p1, 0x4

    .line 64
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iput v3, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    add-int/lit8 v5, p1, 0x5

    .line 65
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    add-int/lit8 v3, p1, 0x6

    .line 67
    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    iput v4, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHighOffset:I

    add-int/lit8 v4, p1, 0x7

    .line 68
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLowOffset:I

    add-int/lit8 p1, p1, 0x8

    .line 70
    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v3

    iput p0, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "parse; Descriptor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mWidth:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHeight:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", 0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHighOffset:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLowOffset:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_9f} :catch_a0

    return-object v2

    .line 75
    :catch_a0
    const-string p0, "parse; failed parsing image descriptor"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
