.class Lcom/android/internal/telephony/cat/IconLoader;
.super Landroid/os/Handler;
.source "IconLoader.java"


# static fields
.field private static blacklist sLoader:Lcom/android/internal/telephony/cat/IconLoader;

.field private static blacklist sThread:Landroid/os/HandlerThread;


# instance fields
.field private blacklist mCurrentIcon:Landroid/graphics/Bitmap;

.field private blacklist mCurrentRecordIndex:I

.field private blacklist mEndMsg:Landroid/os/Message;

.field private blacklist mIconData:[B

.field private blacklist mIcons:[Landroid/graphics/Bitmap;

.field private blacklist mIconsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

.field private blacklist mRecordNumber:I

.field private blacklist mRecordNumbers:[I

.field private blacklist mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .registers 4

    .line 74
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x1

    .line 40
    iput p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 75
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 77
    new-instance p1, Ljava/util/HashMap;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    return-void
.end method

.method private static blacklist bitToBnW(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    const/4 p0, -0x1

    return p0

    :cond_5
    const/high16 p0, -0x1000000

    return p0
.end method

.method static blacklist getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;
    .registers 3

    .line 81
    sget-object p0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    if-eqz p1, :cond_1f

    .line 85
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "Cat Icon Loader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    .line 86
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 87
    new-instance p0, Lcom/android/internal/telephony/cat/IconLoader;

    sget-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/cat/IconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getMask(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_1a

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0xff

    return p0

    :pswitch_8
    const/16 p0, 0x7f

    return p0

    :pswitch_b
    const/16 p0, 0x3f

    return p0

    :pswitch_e
    const/16 p0, 0x1f

    return p0

    :pswitch_11
    const/16 p0, 0xf

    return p0

    :pswitch_14
    const/4 p0, 0x7

    return p0

    :pswitch_16
    const/4 p0, 0x3

    return p0

    :pswitch_18
    const/4 p0, 0x1

    return p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist handleImageDescriptor([B)Z
    .registers 3

    const/4 v0, 0x1

    .line 187
    invoke-static {p1, v0}, Lcom/android/internal/telephony/cat/ImageDescriptor;->parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    if-nez p1, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return v0
.end method

.method public static blacklist parseToBnW([BI)Landroid/graphics/Bitmap;
    .registers 13

    const/4 p1, 0x0

    .line 245
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 246
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int v3, v0, v2

    .line 249
    new-array v4, v3, [I

    const/4 v5, 0x2

    const/4 v6, 0x7

    move v7, v5

    move v8, v6

    move v5, p1

    :goto_13
    if-ge p1, v3, :cond_31

    .line 256
    rem-int/lit8 v9, p1, 0x8

    if-nez v9, :cond_21

    add-int/lit8 v5, v7, 0x1

    .line 257
    aget-byte v7, p0, v7

    move v8, v7

    move v7, v5

    move v5, v8

    move v8, v6

    :cond_21
    add-int/lit8 v9, p1, 0x1

    add-int/lit8 v10, v8, -0x1

    shr-int v8, v5, v8

    and-int/2addr v8, v1

    .line 260
    invoke-static {v8}, Lcom/android/internal/telephony/cat/IconLoader;->bitToBnW(I)I

    move-result v8

    aput v8, v4, p1

    move p1, v9

    move v8, v10

    goto :goto_13

    :cond_31
    if-eq p1, v3, :cond_3a

    .line 264
    const-string p0, "IconLoader"

    const-string p1, "parseToBnW; size error"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_3a
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v2, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseToRGB([BIZ[B)Landroid/graphics/Bitmap;
    .registers 22

    const/4 v0, 0x0

    .line 296
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    .line 297
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    .line 298
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    .line 299
    aget-byte v7, p0, v6

    and-int/lit16 v7, v7, 0xff

    move/from16 v8, p2

    if-ne v2, v8, :cond_1b

    sub-int/2addr v7, v2

    .line 302
    aput-byte v0, p3, v7

    :cond_1b
    mul-int v7, v1, v3

    .line 306
    new-array v8, v7, [I

    rsub-int/lit8 v9, v5, 0x8

    const/4 v10, 0x6

    .line 312
    aget-byte v10, p0, v10

    .line 313
    invoke-static {v5}, Lcom/android/internal/telephony/cat/IconLoader;->getMask(I)I

    move-result v11

    const/16 v12, 0x8

    .line 314
    rem-int/2addr v12, v5

    if-nez v12, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v0

    :goto_2f
    const/4 v12, 0x7

    move v13, v9

    :goto_31
    if-ge v0, v7, :cond_62

    if-gez v13, :cond_44

    add-int/lit8 v10, v12, 0x1

    .line 318
    aget-byte v12, p0, v12

    if-eqz v2, :cond_3d

    move v13, v9

    goto :goto_3f

    :cond_3d
    mul-int/lit8 v13, v13, -0x1

    :goto_3f
    move/from16 v17, v12

    move v12, v10

    move/from16 v10, v17

    :cond_44
    shr-int v14, v10, v13

    and-int/2addr v14, v11

    mul-int/2addr v14, v6

    add-int/lit8 v15, v0, 0x1

    move/from16 p1, v4

    .line 323
    aget-byte v4, p3, v14

    add-int/lit8 v16, v14, 0x1

    aget-byte v6, p3, v16

    add-int/lit8 v14, v14, 0x2

    aget-byte v14, p3, v14

    invoke-static {v4, v6, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v8, v0

    sub-int/2addr v13, v5

    move/from16 v4, p1

    move v0, v15

    const/4 v6, 0x3

    goto :goto_31

    .line 328
    :cond_62
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v1, v3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private blacklist postIcon()V
    .registers 5

    .line 222
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    aput-object v3, v0, v1

    .line 228
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    array-length v3, v1

    if-ge v2, v3, :cond_29

    .line 229
    aget v0, v1, v2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    return-void

    .line 231
    :cond_29
    iget-object p0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_30
    return-void
.end method

.method private blacklist readClut()V
    .registers 9

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    mul-int/lit8 v6, v0, 0x3

    .line 197
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 198
    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    iget-object p0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    const/4 v0, 0x4

    aget-byte v4, p0, v0

    const/4 v0, 0x5

    aget-byte v5, p0, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    return-void
.end method

.method private blacklist readIconData()V
    .registers 8

    const/4 v0, 0x2

    .line 216
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v2, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    return-void
.end method

.method private blacklist readId()V
    .registers 3

    .line 205
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    if-gez v0, :cond_b

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 207
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    return-void

    :cond_b
    const/4 v0, 0x1

    .line 210
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget p0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-virtual {v1, p0, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    return-void
.end method

.method private blacklist startLoadingIcon(I)V
    .registers 4

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 118
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 119
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 120
    iput p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 125
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    return-void

    .line 130
    :cond_27
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readId()V

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 3

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 371
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_c

    .line 372
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 373
    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    .line 375
    :cond_c
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 376
    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 138
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_70

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    goto/16 :goto_92

    .line 164
    :cond_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 165
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/telephony/cat/IconLoader;->parseToRGB([BIZ[B)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 168
    iget-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    return-void

    .line 148
    :cond_30
    const-string v0, "load icon done"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 150
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v0, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_5d

    .line 152
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cat/IconLoader;->parseToBnW([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 153
    iget-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    return-void

    :cond_5d
    const/16 v1, 0x21

    if-ne v0, v1, :cond_67

    .line 156
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 157
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readClut()V

    return-void

    .line 159
    :cond_67
    const-string p1, "else  /postIcon "

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    return-void

    .line 140
    :cond_70
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 141
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->handleImageDescriptor([B)Z

    move-result p1

    if-eqz p1, :cond_82

    .line 142
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readIconData()V

    return-void

    .line 144
    :cond_82
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unable to parse image descriptor"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8a} :catch_8a

    .line 173
    :catch_8a
    const-string p1, "Icon load failed"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    :goto_92
    return-void
.end method

.method greylist-max-r loadIcon(ILandroid/os/Message;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 110
    :cond_3
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    const/4 p2, 0x1

    .line 111
    iput p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 112
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    return-void
.end method

.method blacklist loadIcons([ILandroid/os/Message;)V
    .registers 4

    if-eqz p1, :cond_1c

    .line 93
    array-length v0, p1

    if-eqz v0, :cond_1c

    if-nez p2, :cond_8

    goto :goto_1c

    .line 96
    :cond_8
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 98
    array-length p2, p1

    new-array p2, p2, [Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    const/4 p2, 0x0

    .line 100
    iput p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    const/4 v0, 0x2

    .line 101
    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 102
    aget p1, p1, p2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    :cond_1c
    :goto_1c
    return-void
.end method
