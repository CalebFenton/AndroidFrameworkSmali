.class public Lcom/android/internal/telephony/cat/ImageDescriptor;
.super Ljava/lang/Object;
.source "ImageDescriptor.java"


# static fields
.field static final CODING_SCHEME_BASIC:I = 0x11

.field static final CODING_SCHEME_COLOUR:I = 0x21


# instance fields
.field mCodingScheme:I

.field mHeight:I

.field mHighOffset:I

.field mImageId:I

.field mLength:I

.field mLowOffset:I

.field mWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 40
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mWidth:I

    #@6
    .line 41
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHeight:I

    #@8
    .line 42
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    #@a
    .line 43
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    #@c
    .line 44
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHighOffset:I

    #@e
    .line 45
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLowOffset:I

    #@10
    .line 46
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    #@12
    .line 39
    return-void
.end method

.method static parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;
    .locals 5
    .param p0, "rawData"    # [B
    .param p1, "valueIndex"    # I

    #@0
    .prologue
    .line 57
    new-instance v0, Lcom/android/internal/telephony/cat/ImageDescriptor;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/ImageDescriptor;-><init>()V

    #@5
    .line 59
    .local v0, "d":Lcom/android/internal/telephony/cat/ImageDescriptor;
    add-int/lit8 v2, p1, 0x1

    #@7
    .end local p1    # "valueIndex":I
    .local v2, "valueIndex":I
    :try_start_0
    aget-byte v3, p0, p1

    #@9
    and-int/lit16 v3, v3, 0xff

    #@b
    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mWidth:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 60
    add-int/lit8 p1, v2, 0x1

    #@f
    .end local v2    # "valueIndex":I
    .restart local p1    # "valueIndex":I
    :try_start_1
    aget-byte v3, p0, v2

    #@11
    and-int/lit16 v3, v3, 0xff

    #@13
    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHeight:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@15
    .line 61
    add-int/lit8 v2, p1, 0x1

    #@17
    .end local p1    # "valueIndex":I
    .restart local v2    # "valueIndex":I
    :try_start_2
    aget-byte v3, p0, p1

    #@19
    and-int/lit16 v3, v3, 0xff

    #@1b
    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    #@1d
    .line 64
    add-int/lit8 p1, v2, 0x1

    #@1f
    .end local v2    # "valueIndex":I
    .restart local p1    # "valueIndex":I
    :try_start_3
    aget-byte v3, p0, v2

    #@21
    and-int/lit16 v3, v3, 0xff

    #@23
    shl-int/lit8 v3, v3, 0x8

    #@25
    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    #@27
    .line 65
    iget v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    #@29
    add-int/lit8 v2, p1, 0x1

    #@2b
    .end local p1    # "valueIndex":I
    .restart local v2    # "valueIndex":I
    :try_start_4
    aget-byte v4, p0, p1

    #@2d
    and-int/lit16 v4, v4, 0xff

    #@2f
    or-int/2addr v3, v4

    #@30
    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    #@32
    .line 67
    add-int/lit8 p1, v2, 0x1

    #@34
    .end local v2    # "valueIndex":I
    .restart local p1    # "valueIndex":I
    :try_start_5
    aget-byte v3, p0, v2

    #@36
    and-int/lit16 v3, v3, 0xff

    #@38
    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHighOffset:I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    #@3a
    .line 68
    add-int/lit8 v2, p1, 0x1

    #@3c
    .end local p1    # "valueIndex":I
    .restart local v2    # "valueIndex":I
    :try_start_6
    aget-byte v3, p0, p1

    #@3e
    and-int/lit16 v3, v3, 0xff

    #@40
    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLowOffset:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    #@42
    .line 70
    add-int/lit8 p1, v2, 0x1

    #@44
    .end local v2    # "valueIndex":I
    .restart local p1    # "valueIndex":I
    :try_start_7
    aget-byte v3, p0, v2
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    #@46
    and-int/lit16 v3, v3, 0xff

    #@48
    shl-int/lit8 v3, v3, 0x8

    #@4a
    add-int/lit8 v2, p1, 0x1

    #@4c
    .end local p1    # "valueIndex":I
    .restart local v2    # "valueIndex":I
    :try_start_8
    aget-byte v4, p0, p1

    #@4e
    and-int/lit16 v4, v4, 0xff

    #@50
    or-int/2addr v3, v4

    #@51
    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    #@53
    move p1, v2

    #@54
    .line 75
    .end local v0    # "d":Lcom/android/internal/telephony/cat/ImageDescriptor;
    .end local v2    # "valueIndex":I
    .restart local p1    # "valueIndex":I
    :goto_0
    return-object v0

    #@55
    .line 71
    .end local p1    # "valueIndex":I
    .restart local v0    # "d":Lcom/android/internal/telephony/cat/ImageDescriptor;
    .restart local v2    # "valueIndex":I
    :catch_0
    move-exception v1

    #@56
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    move p1, v2

    #@57
    .line 72
    .end local v2    # "valueIndex":I
    .restart local p1    # "valueIndex":I
    :goto_1
    const-string/jumbo v3, "ImageDescripter"

    #@5a
    const-string/jumbo v4, "parse; failed parsing image descriptor"

    #@5d
    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    #@60
    .line 73
    const/4 v0, 0x0

    #@61
    .local v0, "d":Lcom/android/internal/telephony/cat/ImageDescriptor;
    goto :goto_0

    #@62
    .line 71
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v0, "d":Lcom/android/internal/telephony/cat/ImageDescriptor;
    :catch_1
    move-exception v1

    #@63
    .restart local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_1
.end method
