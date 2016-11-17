.class Lcom/android/internal/telephony/cat/IconLoader;
.super Landroid/os/Handler;
.source "IconLoader.java"


# static fields
.field private static final CLUT_ENTRY_SIZE:I = 0x3

.field private static final CLUT_LOCATION_OFFSET:I = 0x4

.field private static final EVENT_READ_CLUT_DONE:I = 0x3

.field private static final EVENT_READ_EF_IMG_RECOED_DONE:I = 0x1

.field private static final EVENT_READ_ICON_DONE:I = 0x2

.field private static final STATE_MULTI_ICONS:I = 0x2

.field private static final STATE_SINGLE_ICON:I = 0x1

.field private static sLoader:Lcom/android/internal/telephony/cat/IconLoader;

.field private static sThread:Landroid/os/HandlerThread;


# instance fields
.field private mCurrentIcon:Landroid/graphics/Bitmap;

.field private mCurrentRecordIndex:I

.field private mEndMsg:Landroid/os/Message;

.field private mIconData:[B

.field private mIcons:[Landroid/graphics/Bitmap;

.field private mIconsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

.field private mRecordNumber:I

.field private mRecordNumbers:[I

.field private mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 50
    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@3
    .line 51
    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    #@5
    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 71
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@4
    .line 37
    const/4 v0, 0x1

    #@5
    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    #@7
    .line 38
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    #@9
    .line 39
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    #@b
    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@d
    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    #@f
    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    #@11
    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    #@13
    .line 46
    const/4 v0, 0x0

    #@14
    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    #@16
    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    #@18
    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    #@1a
    .line 72
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@1c
    .line 74
    new-instance v0, Ljava/util/HashMap;

    #@1e
    const/16 v1, 0x32

    #@20
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@23
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    #@25
    .line 70
    return-void
.end method

.method private static bitToBnW(I)I
    .locals 1
    .param p0, "bit"    # I

    #@0
    .prologue
    .line 273
    const/4 v0, 0x1

    #@1
    if-ne p0, v0, :cond_0

    #@3
    .line 274
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 276
    :cond_0
    const/high16 v0, -0x1000000

    #@7
    return v0
.end method

.method static getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;
    .locals 2
    .param p0, "caller"    # Landroid/os/Handler;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 78
    sget-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 79
    sget-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@7
    return-object v0

    #@8
    .line 81
    :cond_0
    if-eqz p1, :cond_1

    #@a
    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    #@c
    const-string/jumbo v1, "Cat Icon Loader"

    #@f
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    #@14
    .line 83
    sget-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    #@16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@19
    .line 84
    new-instance v0, Lcom/android/internal/telephony/cat/IconLoader;

    #@1b
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    #@1d
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/cat/IconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@24
    return-object v0

    #@25
    .line 86
    :cond_1
    return-object v1
.end method

.method private static getMask(I)I
    .locals 1
    .param p0, "numOfBits"    # I

    #@0
    .prologue
    .line 335
    const/4 v0, 0x0

    #@1
    .line 337
    .local v0, "mask":I
    packed-switch p0, :pswitch_data_0

    #@4
    .line 363
    :goto_0
    return v0

    #@5
    .line 339
    :pswitch_0
    const/4 v0, 0x1

    #@6
    .line 340
    goto :goto_0

    #@7
    .line 342
    :pswitch_1
    const/4 v0, 0x3

    #@8
    .line 343
    goto :goto_0

    #@9
    .line 345
    :pswitch_2
    const/4 v0, 0x7

    #@a
    .line 346
    goto :goto_0

    #@b
    .line 348
    :pswitch_3
    const/16 v0, 0xf

    #@d
    .line 349
    goto :goto_0

    #@e
    .line 351
    :pswitch_4
    const/16 v0, 0x1f

    #@10
    .line 352
    goto :goto_0

    #@11
    .line 354
    :pswitch_5
    const/16 v0, 0x3f

    #@13
    .line 355
    goto :goto_0

    #@14
    .line 357
    :pswitch_6
    const/16 v0, 0x7f

    #@16
    .line 358
    goto :goto_0

    #@17
    .line 360
    :pswitch_7
    const/16 v0, 0xff

    #@19
    .line 361
    goto :goto_0

    #@1a
    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleImageDescriptor([B)Z
    .locals 2
    .param p1, "rawData"    # [B

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 183
    invoke-static {p1, v1}, Lcom/android/internal/telephony/cat/ImageDescriptor;->parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    #@7
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 185
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 187
    :cond_0
    return v1
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "data"    # [B
    .param p1, "length"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 241
    const/4 v8, 0x1

    #@2
    .local v8, "valueIndex":I
    aget-byte v11, p0, v11

    #@4
    and-int/lit16 v10, v11, 0xff

    #@6
    .line 242
    .local v10, "width":I
    add-int/lit8 v9, v8, 0x1

    #@8
    .end local v8    # "valueIndex":I
    .local v9, "valueIndex":I
    aget-byte v11, p0, v8

    #@a
    and-int/lit16 v3, v11, 0xff

    #@c
    .line 243
    .local v3, "height":I
    mul-int v4, v10, v3

    #@e
    .line 245
    .local v4, "numOfPixels":I
    new-array v7, v4, [I

    #@10
    .line 247
    .local v7, "pixels":[I
    const/4 v5, 0x0

    #@11
    .line 248
    .local v5, "pixelIndex":I
    const/4 v0, 0x7

    #@12
    .line 249
    .local v0, "bitIndex":I
    const/4 v2, 0x0

    #@13
    .local v2, "currentByte":B
    move v6, v5

    #@14
    .line 250
    .end local v2    # "currentByte":B
    .end local v5    # "pixelIndex":I
    .local v6, "pixelIndex":I
    :goto_0
    if-ge v6, v4, :cond_0

    #@16
    .line 252
    rem-int/lit8 v11, v6, 0x8

    #@18
    if-nez v11, :cond_2

    #@1a
    .line 253
    add-int/lit8 v8, v9, 0x1

    #@1c
    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    aget-byte v2, p0, v9

    #@1e
    .line 254
    .local v2, "currentByte":B
    const/4 v0, 0x7

    #@1f
    .line 256
    .end local v2    # "currentByte":B
    :goto_1
    add-int/lit8 v5, v6, 0x1

    #@21
    .end local v6    # "pixelIndex":I
    .restart local v5    # "pixelIndex":I
    add-int/lit8 v1, v0, -0x1

    #@23
    .end local v0    # "bitIndex":I
    .local v1, "bitIndex":I
    shr-int v11, v2, v0

    #@25
    and-int/lit8 v11, v11, 0x1

    #@27
    invoke-static {v11}, Lcom/android/internal/telephony/cat/IconLoader;->bitToBnW(I)I

    #@2a
    move-result v11

    #@2b
    aput v11, v7, v6

    #@2d
    move v0, v1

    #@2e
    .end local v1    # "bitIndex":I
    .restart local v0    # "bitIndex":I
    move v6, v5

    #@2f
    .end local v5    # "pixelIndex":I
    .restart local v6    # "pixelIndex":I
    move v9, v8

    #@30
    .end local v8    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    goto :goto_0

    #@31
    .line 259
    :cond_0
    if-eq v6, v4, :cond_1

    #@33
    .line 260
    const-string/jumbo v11, "IconLoader"

    #@36
    const-string/jumbo v12, "parseToBnW; size error"

    #@39
    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    .line 262
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@3e
    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@41
    move-result-object v11

    #@42
    return-object v11

    #@43
    :cond_2
    move v8, v9

    #@44
    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ[B)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z
    .param p3, "clut"    # [B

    #@0
    .prologue
    .line 291
    const/16 v19, 0x0

    #@2
    .line 292
    const/16 v16, 0x1

    #@4
    .local v16, "valueIndex":I
    aget-byte v19, p0, v19

    #@6
    move/from16 v0, v19

    #@8
    and-int/lit16 v0, v0, 0xff

    #@a
    move/from16 v18, v0

    #@c
    .line 293
    .local v18, "width":I
    add-int/lit8 v17, v16, 0x1

    #@e
    .end local v16    # "valueIndex":I
    .local v17, "valueIndex":I
    aget-byte v19, p0, v16

    #@10
    move/from16 v0, v19

    #@12
    and-int/lit16 v9, v0, 0xff

    #@14
    .line 294
    .local v9, "height":I
    add-int/lit8 v16, v17, 0x1

    #@16
    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    aget-byte v19, p0, v17

    #@18
    move/from16 v0, v19

    #@1a
    and-int/lit16 v4, v0, 0xff

    #@1c
    .line 295
    .local v4, "bitsPerImg":I
    add-int/lit8 v17, v16, 0x1

    #@1e
    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    aget-byte v19, p0, v16

    #@20
    move/from16 v0, v19

    #@22
    and-int/lit16 v11, v0, 0xff

    #@24
    .line 297
    .local v11, "numOfClutEntries":I
    if-eqz p2, :cond_0

    #@26
    .line 298
    add-int/lit8 v19, v11, -0x1

    #@28
    const/16 v20, 0x0

    #@2a
    aput-byte v20, p3, v19

    #@2c
    .line 301
    :cond_0
    mul-int v12, v18, v9

    #@2e
    .line 302
    .local v12, "numOfPixels":I
    new-array v15, v12, [I

    #@30
    .line 305
    .local v15, "pixels":[I
    const/4 v13, 0x0

    #@31
    .line 306
    .local v13, "pixelIndex":I
    rsub-int/lit8 v5, v4, 0x8

    #@33
    .line 307
    .local v5, "bitsStartOffset":I
    move v2, v5

    #@34
    .line 304
    .local v2, "bitIndex":I
    const/16 v19, 0x6

    #@36
    .line 308
    const/16 v16, 0x7

    #@38
    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    aget-byte v8, p0, v19

    #@3a
    .line 309
    .local v8, "currentByte":B
    invoke-static {v4}, Lcom/android/internal/telephony/cat/IconLoader;->getMask(I)I

    #@3d
    move-result v10

    #@3e
    .line 310
    .local v10, "mask":I
    const/16 v19, 0x8

    #@40
    rem-int v19, v19, v4

    #@42
    if-nez v19, :cond_1

    #@44
    const/4 v3, 0x1

    #@45
    .local v3, "bitsOverlaps":Z
    move v14, v13

    #@46
    .end local v13    # "pixelIndex":I
    .local v14, "pixelIndex":I
    move/from16 v17, v16

    #@48
    .line 311
    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    :goto_0
    if-ge v14, v12, :cond_3

    #@4a
    .line 313
    if-gez v2, :cond_4

    #@4c
    .line 314
    add-int/lit8 v16, v17, 0x1

    #@4e
    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    aget-byte v8, p0, v17

    #@50
    .line 315
    if-eqz v3, :cond_2

    #@52
    move v2, v5

    #@53
    .line 317
    :goto_1
    shr-int v19, v8, v2

    #@55
    and-int v6, v19, v10

    #@57
    .line 318
    .local v6, "clutEntry":I
    mul-int/lit8 v7, v6, 0x3

    #@59
    .line 319
    .local v7, "clutIndex":I
    add-int/lit8 v13, v14, 0x1

    #@5b
    .end local v14    # "pixelIndex":I
    .restart local v13    # "pixelIndex":I
    aget-byte v19, p3, v7

    #@5d
    .line 320
    add-int/lit8 v20, v7, 0x1

    #@5f
    aget-byte v20, p3, v20

    #@61
    add-int/lit8 v21, v7, 0x2

    #@63
    aget-byte v21, p3, v21

    #@65
    .line 319
    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    #@68
    move-result v19

    #@69
    aput v19, v15, v14

    #@6b
    .line 321
    sub-int/2addr v2, v4

    #@6c
    move v14, v13

    #@6d
    .end local v13    # "pixelIndex":I
    .restart local v14    # "pixelIndex":I
    move/from16 v17, v16

    #@6f
    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    goto :goto_0

    #@70
    .line 310
    .end local v3    # "bitsOverlaps":Z
    .end local v6    # "clutEntry":I
    .end local v7    # "clutIndex":I
    .end local v14    # "pixelIndex":I
    .end local v17    # "valueIndex":I
    .restart local v13    # "pixelIndex":I
    .restart local v16    # "valueIndex":I
    :cond_1
    const/4 v3, 0x0

    #@71
    .restart local v3    # "bitsOverlaps":Z
    move v14, v13

    #@72
    .end local v13    # "pixelIndex":I
    .restart local v14    # "pixelIndex":I
    move/from16 v17, v16

    #@74
    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    goto :goto_0

    #@75
    .line 315
    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    :cond_2
    mul-int/lit8 v2, v2, -0x1

    #@77
    goto :goto_1

    #@78
    .line 325
    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    :cond_3
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@7a
    .line 324
    move/from16 v0, v18

    #@7c
    move-object/from16 v1, v19

    #@7e
    invoke-static {v15, v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@81
    move-result-object v19

    #@82
    return-object v19

    #@83
    :cond_4
    move/from16 v16, v17

    #@85
    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    goto :goto_1
.end method

.method private postIcon()V
    .locals 3

    #@0
    .prologue
    .line 218
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_1

    #@5
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    #@7
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    #@9
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b
    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    #@d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@10
    .line 217
    :cond_0
    :goto_0
    return-void

    #@11
    .line 221
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    #@13
    const/4 v1, 0x2

    #@14
    if-ne v0, v1, :cond_0

    #@16
    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    #@18
    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    #@1a
    add-int/lit8 v2, v1, 0x1

    #@1c
    iput v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    #@1e
    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    #@20
    aput-object v2, v0, v1

    #@22
    .line 224
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    #@24
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    #@26
    array-length v1, v1

    #@27
    if-ge v0, v1, :cond_2

    #@29
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    #@2b
    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    #@2d
    aget v0, v0, v1

    #@2f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    #@32
    goto :goto_0

    #@33
    .line 227
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    #@35
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    #@37
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@39
    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    #@3b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@3e
    goto :goto_0
.end method

.method private readClut()V
    .locals 7

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    #@3
    aget-byte v0, v0, v1

    #@5
    mul-int/lit8 v4, v0, 0x3

    #@7
    .line 193
    .local v4, "length":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v5

    #@b
    .line 194
    .local v5, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    #@f
    iget v1, v1, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    #@11
    .line 195
    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    #@13
    const/4 v3, 0x4

    #@14
    aget-byte v2, v2, v3

    #@16
    .line 196
    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    #@18
    const/4 v6, 0x5

    #@19
    aget-byte v3, v3, v6

    #@1b
    .line 194
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    #@1e
    .line 191
    return-void
.end method

.method private readIconData()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 212
    const/4 v0, 0x2

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v5

    #@6
    .line 213
    .local v5, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@8
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    #@a
    iget v1, v1, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    #@c
    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    #@e
    iget v4, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    #@10
    move v3, v2

    #@11
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    #@14
    .line 211
    return-void
.end method

.method private readId()V
    .locals 3

    #@0
    .prologue
    .line 201
    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    #@2
    if-gez v1, :cond_0

    #@4
    .line 202
    const/4 v1, 0x0

    #@5
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    #@7
    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    #@a
    .line 204
    return-void

    #@b
    .line 206
    :cond_0
    const/4 v1, 0x1

    #@c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    .line 207
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@12
    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    #@14
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    #@17
    .line 200
    return-void
.end method

.method private startLoadingIcon(I)V
    .locals 2
    .param p1, "recordNumber"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 113
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    #@3
    .line 114
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    #@5
    .line 115
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    #@7
    .line 116
    iput p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    #@9
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    #@17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/graphics/Bitmap;

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    #@23
    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    #@26
    .line 122
    return-void

    #@27
    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readId()V

    #@2a
    .line 111
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 366
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@3
    .line 367
    sget-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 368
    sget-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    #@9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    #@c
    .line 369
    sput-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    #@e
    .line 371
    :cond_0
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    #@10
    .line 372
    sput-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@12
    .line 365
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 134
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v4, :pswitch_data_0

    #@5
    .line 130
    :goto_0
    return-void

    #@6
    .line 136
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/os/AsyncResult;

    #@a
    .line 137
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@c
    check-cast v4, [B

    #@e
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/IconLoader;->handleImageDescriptor([B)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readIconData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    goto :goto_0

    #@18
    .line 168
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    #@19
    .line 169
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Icon load failed"

    #@1c
    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@1f
    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    #@22
    goto :goto_0

    #@23
    .line 140
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/Exception;

    #@25
    const-string/jumbo v5, "Unable to parse image descriptor"

    #@28
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@2b
    throw v4

    #@2c
    .line 144
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string/jumbo v4, "load icon done"

    #@2f
    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@32
    .line 145
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@34
    check-cast v0, Landroid/os/AsyncResult;

    #@36
    .line 146
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@38
    check-cast v3, [B

    #@3a
    .line 147
    .local v3, "rawData":[B
    iget-object v4, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    #@3c
    iget v4, v4, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    #@3e
    const/16 v5, 0x11

    #@40
    if-ne v4, v5, :cond_1

    #@42
    .line 148
    array-length v4, v3

    #@43
    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/IconLoader;->parseToBnW([BI)Landroid/graphics/Bitmap;

    #@46
    move-result-object v4

    #@47
    iput-object v4, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    #@49
    .line 149
    iget-object v4, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    #@4b
    iget v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    #@4d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v5

    #@51
    iget-object v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    #@53
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    .line 150
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    #@59
    goto :goto_0

    #@5a
    .line 151
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    #@5c
    iget v4, v4, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    #@5e
    const/16 v5, 0x21

    #@60
    if-ne v4, v5, :cond_2

    #@62
    .line 152
    iput-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    #@64
    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readClut()V

    #@67
    goto :goto_0

    #@68
    .line 155
    :cond_2
    const-string/jumbo v4, "else  /postIcon "

    #@6b
    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@6e
    .line 156
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    #@71
    goto :goto_0

    #@72
    .line 160
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "rawData":[B
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@74
    check-cast v0, Landroid/os/AsyncResult;

    #@76
    .line 161
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@78
    check-cast v1, [B

    #@7a
    .line 162
    .local v1, "clut":[B
    iget-object v4, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    #@7c
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    #@7e
    array-length v5, v5

    #@7f
    .line 163
    const/4 v6, 0x0

    #@80
    .line 162
    invoke-static {v4, v5, v6, v1}, Lcom/android/internal/telephony/cat/IconLoader;->parseToRGB([BIZ[B)Landroid/graphics/Bitmap;

    #@83
    move-result-object v4

    #@84
    iput-object v4, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    #@86
    .line 164
    iget-object v4, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    #@88
    iget v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    #@8a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v5

    #@8e
    iget-object v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    #@90
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@93
    .line 165
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@96
    goto/16 :goto_0

    #@98
    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method loadIcon(ILandroid/os/Message;)V
    .locals 1
    .param p1, "recordNumber"    # I
    .param p2, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 103
    if-nez p2, :cond_0

    #@2
    .line 104
    return-void

    #@3
    .line 106
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    #@5
    .line 107
    const/4 v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    #@8
    .line 108
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    #@b
    .line 102
    return-void
.end method

.method loadIcons([ILandroid/os/Message;)V
    .locals 2
    .param p1, "recordNumbers"    # [I
    .param p2, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 90
    if-eqz p1, :cond_0

    #@3
    array-length v0, p1

    #@4
    if-nez v0, :cond_1

    #@6
    .line 91
    :cond_0
    return-void

    #@7
    .line 90
    :cond_1
    if-eqz p2, :cond_0

    #@9
    .line 93
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    #@b
    .line 95
    array-length v0, p1

    #@c
    new-array v0, v0, [Landroid/graphics/Bitmap;

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    #@10
    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    #@12
    .line 97
    iput v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    #@14
    .line 98
    const/4 v0, 0x2

    #@15
    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    #@17
    .line 99
    aget v0, p1, v1

    #@19
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    #@1c
    .line 89
    return-void
.end method
