.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PointerIcon$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PointerIcon"

.field public static final TYPE_ALIAS:I = 0x3f2

.field public static final TYPE_ALL_SCROLL:I = 0x3f5

.field public static final TYPE_ARROW:I = 0x3e8

.field public static final TYPE_CELL:I = 0x3ee

.field public static final TYPE_CONTEXT_MENU:I = 0x3e9

.field public static final TYPE_COPY:I = 0x3f3

.field public static final TYPE_CROSSHAIR:I = 0x3ef

.field public static final TYPE_CUSTOM:I = -0x1

.field public static final TYPE_DEFAULT:I = 0x3e8

.field public static final TYPE_GRAB:I = 0x3fc

.field public static final TYPE_GRABBING:I = 0x3fd

.field public static final TYPE_HAND:I = 0x3ea

.field public static final TYPE_HELP:I = 0x3eb

.field public static final TYPE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final TYPE_NOT_SPECIFIED:I = 0x1

.field public static final TYPE_NO_DROP:I = 0x3f4

.field public static final TYPE_NULL:I = 0x0

.field private static final TYPE_OEM_FIRST:I = 0x2710

.field public static final TYPE_SPOT_ANCHOR:I = 0x7d2

.field public static final TYPE_SPOT_HOVER:I = 0x7d0

.field public static final TYPE_SPOT_TOUCH:I = 0x7d1

.field public static final TYPE_TEXT:I = 0x3f0

.field public static final TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final TYPE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final TYPE_VERTICAL_TEXT:I = 0x3f1

.field public static final TYPE_WAIT:I = 0x3ec

.field public static final TYPE_ZOOM_IN:I = 0x3fa

.field public static final TYPE_ZOOM_OUT:I = 0x3fb

.field private static final gNullIcon:Landroid/view/PointerIcon;

.field private static final gSystemIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static sUseLargeIcons:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapFrames:[Landroid/graphics/Bitmap;

.field private mDurationPerFrame:I

.field private mHotSpotX:F

.field private mHotSpotY:F

.field private mSystemIconResourceId:I

.field private final mType:I


# direct methods
.method static synthetic -set0(Landroid/view/PointerIcon;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 140
    new-instance v0, Landroid/view/PointerIcon;

    #@3
    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    #@6
    sput-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    #@8
    .line 141
    new-instance v0, Landroid/util/SparseArray;

    #@a
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@d
    sput-object v0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    #@f
    .line 142
    sput-boolean v1, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    #@11
    .line 332
    new-instance v0, Landroid/view/PointerIcon$1;

    #@13
    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    #@16
    .line 331
    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18
    .line 43
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 155
    iput p1, p0, Landroid/view/PointerIcon;->mType:I

    #@5
    .line 154
    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/PointerIcon;)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/PointerIcon;-><init>(I)V

    #@3
    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    #@0
    .prologue
    .line 258
    if-nez p0, :cond_0

    #@2
    .line 259
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "bitmap must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 261
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    #@e
    .line 263
    new-instance v0, Landroid/view/PointerIcon;

    #@10
    const/4 v1, -0x1

    #@11
    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    #@14
    .line 264
    .local v0, "icon":Landroid/view/PointerIcon;
    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    #@16
    .line 265
    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    #@18
    .line 266
    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    #@1a
    .line 267
    return-object v0
.end method

.method public static getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 180
    const/16 v0, 0x3e8

    #@2
    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getNullIcon()Landroid/view/PointerIcon;
    .locals 1

    #@0
    .prologue
    .line 167
    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    #@2
    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/16 v8, 0x3e8

    #@4
    const/4 v6, 0x0

    #@5
    .line 194
    if-nez p0, :cond_0

    #@7
    .line 195
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v6, "context must not be null"

    #@c
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v5

    #@10
    .line 198
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 199
    sget-object v5, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    #@14
    return-object v5

    #@15
    .line 202
    :cond_1
    sget-object v5, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Landroid/view/PointerIcon;

    #@1d
    .line 203
    .local v2, "icon":Landroid/view/PointerIcon;
    if-eqz v2, :cond_2

    #@1f
    .line 204
    return-object v2

    #@20
    .line 207
    :cond_2
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    #@23
    move-result v4

    #@24
    .line 208
    .local v4, "typeIndex":I
    if-nez v4, :cond_3

    #@26
    .line 209
    invoke-static {v8}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    #@29
    move-result v4

    #@2a
    .line 212
    :cond_3
    sget-boolean v5, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    #@2c
    if-eqz v5, :cond_4

    #@2e
    .line 213
    const v1, 0x103034e

    #@31
    .line 215
    .local v1, "defStyle":I
    :goto_0
    sget-object v5, Lcom/android/internal/R$styleable;->Pointer:[I

    #@33
    .line 214
    invoke-virtual {p0, v7, v5, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@36
    move-result-object v0

    #@37
    .line 217
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3a
    move-result v3

    #@3b
    .line 218
    .local v3, "resourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3e
    .line 220
    if-ne v3, v9, :cond_6

    #@40
    .line 221
    const-string/jumbo v5, "PointerIcon"

    #@43
    new-instance v6, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v7, "Missing theme resources for pointer icon type "

    #@4b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 222
    if-ne p1, v8, :cond_5

    #@5c
    sget-object v5, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    #@5e
    :goto_1
    return-object v5

    #@5f
    .line 213
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "defStyle":I
    .end local v3    # "resourceId":I
    :cond_4
    const v1, 0x103034d

    #@62
    .restart local v1    # "defStyle":I
    goto :goto_0

    #@63
    .line 222
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v3    # "resourceId":I
    :cond_5
    invoke-static {p0, v8}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    #@66
    move-result-object v5

    #@67
    goto :goto_1

    #@68
    .line 225
    :cond_6
    new-instance v2, Landroid/view/PointerIcon;

    #@6a
    .end local v2    # "icon":Landroid/view/PointerIcon;
    invoke-direct {v2, p1}, Landroid/view/PointerIcon;-><init>(I)V

    #@6d
    .line 226
    .restart local v2    # "icon":Landroid/view/PointerIcon;
    const/high16 v5, -0x1000000

    #@6f
    and-int/2addr v5, v3

    #@70
    const/high16 v6, 0x1000000

    #@72
    if-ne v5, v6, :cond_7

    #@74
    .line 227
    iput v3, v2, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@76
    .line 231
    :goto_2
    sget-object v5, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    #@78
    invoke-virtual {v5, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@7b
    .line 232
    return-object v2

    #@7c
    .line 229
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7f
    move-result-object v5

    #@80
    invoke-direct {v2, p0, v5, v3}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    #@83
    goto :goto_2
.end method

.method private static getSystemIconTypeIndex(I)I
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 480
    sparse-switch p0, :sswitch_data_0

    #@4
    .line 532
    return v0

    #@5
    .line 482
    :sswitch_0
    return v0

    #@6
    .line 484
    :sswitch_1
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 486
    :sswitch_2
    const/4 v0, 0x2

    #@9
    return v0

    #@a
    .line 488
    :sswitch_3
    const/4 v0, 0x3

    #@b
    return v0

    #@c
    .line 490
    :sswitch_4
    const/4 v0, 0x5

    #@d
    return v0

    #@e
    .line 492
    :sswitch_5
    const/4 v0, 0x4

    #@f
    return v0

    #@10
    .line 494
    :sswitch_6
    const/4 v0, 0x6

    #@11
    return v0

    #@12
    .line 496
    :sswitch_7
    const/4 v0, 0x7

    #@13
    return v0

    #@14
    .line 498
    :sswitch_8
    const/16 v0, 0x8

    #@16
    return v0

    #@17
    .line 500
    :sswitch_9
    const/16 v0, 0x9

    #@19
    return v0

    #@1a
    .line 502
    :sswitch_a
    const/16 v0, 0xa

    #@1c
    return v0

    #@1d
    .line 504
    :sswitch_b
    const/16 v0, 0xb

    #@1f
    return v0

    #@20
    .line 506
    :sswitch_c
    const/16 v0, 0xc

    #@22
    return v0

    #@23
    .line 508
    :sswitch_d
    const/16 v0, 0xd

    #@25
    return v0

    #@26
    .line 510
    :sswitch_e
    const/16 v0, 0xf

    #@28
    return v0

    #@29
    .line 512
    :sswitch_f
    const/16 v0, 0xe

    #@2b
    return v0

    #@2c
    .line 514
    :sswitch_10
    const/16 v0, 0x10

    #@2e
    return v0

    #@2f
    .line 516
    :sswitch_11
    const/16 v0, 0x11

    #@31
    return v0

    #@32
    .line 518
    :sswitch_12
    const/16 v0, 0x12

    #@34
    return v0

    #@35
    .line 521
    :sswitch_13
    const/16 v0, 0x13

    #@37
    return v0

    #@38
    .line 524
    :sswitch_14
    const/16 v0, 0x14

    #@3a
    return v0

    #@3b
    .line 526
    :sswitch_15
    const/16 v0, 0x15

    #@3d
    return v0

    #@3e
    .line 528
    :sswitch_16
    const/16 v0, 0x16

    #@40
    return v0

    #@41
    .line 530
    :sswitch_17
    const/16 v0, 0x17

    #@43
    return v0

    #@44
    .line 480
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_5
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_6
        0x3ec -> :sswitch_7
        0x3ee -> :sswitch_8
        0x3ef -> :sswitch_9
        0x3f0 -> :sswitch_a
        0x3f1 -> :sswitch_b
        0x3f2 -> :sswitch_c
        0x3f3 -> :sswitch_d
        0x3f4 -> :sswitch_f
        0x3f5 -> :sswitch_e
        0x3f6 -> :sswitch_10
        0x3f7 -> :sswitch_11
        0x3f8 -> :sswitch_12
        0x3f9 -> :sswitch_13
        0x3fa -> :sswitch_14
        0x3fb -> :sswitch_15
        0x3fc -> :sswitch_16
        0x3fd -> :sswitch_17
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_3
    .end sparse-switch
.end method

.method public static load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 292
    if-nez p0, :cond_0

    #@3
    .line 293
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "resources must not be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 296
    :cond_0
    new-instance v0, Landroid/view/PointerIcon;

    #@e
    const/4 v1, -0x1

    #@f
    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    #@12
    .line 297
    .local v0, "icon":Landroid/view/PointerIcon;
    invoke-direct {v0, v2, p0, p1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    #@15
    .line 298
    return-object v0
.end method

.method private loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I

    #@0
    .prologue
    .line 400
    invoke-virtual/range {p2 .. p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@3
    move-result-object v12

    #@4
    .line 405
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v14, "pointer-icon"

    #@7
    invoke-static {v12, v14}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@a
    .line 408
    sget-object v14, Lcom/android/internal/R$styleable;->PointerIcon:[I

    #@c
    .line 407
    move-object/from16 v0, p2

    #@e
    invoke-virtual {v0, v12, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@11
    move-result-object v1

    #@12
    .line 409
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    #@13
    const/4 v15, 0x0

    #@14
    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@17
    move-result v3

    #@18
    .line 410
    .local v3, "bitmapRes":I
    const/4 v14, 0x0

    #@19
    const/4 v15, 0x1

    #@1a
    invoke-virtual {v1, v15, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1d
    move-result v9

    #@1e
    .line 411
    .local v9, "hotSpotX":F
    const/4 v14, 0x0

    #@1f
    const/4 v15, 0x2

    #@20
    invoke-virtual {v1, v15, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@23
    move-result v10

    #@24
    .line 412
    .local v10, "hotSpotY":F
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 416
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    #@2a
    .line 419
    if-nez v3, :cond_0

    #@2c
    .line 420
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v15, "<pointer-icon> is missing bitmap attribute."

    #@31
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v14

    #@35
    .line 413
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "bitmapRes":I
    .end local v9    # "hotSpotX":F
    .end local v10    # "hotSpotY":F
    :catch_0
    move-exception v6

    #@36
    .line 414
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@38
    const-string/jumbo v15, "Exception parsing pointer icon resource."

    #@3b
    invoke-direct {v14, v15, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3e
    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 415
    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    #@40
    .line 416
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    #@43
    .line 415
    throw v14

    #@44
    .line 424
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    .restart local v3    # "bitmapRes":I
    .restart local v9    # "hotSpotX":F
    .restart local v10    # "hotSpotY":F
    :cond_0
    if-nez p1, :cond_2

    #@46
    .line 425
    move-object/from16 v0, p2

    #@48
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@4b
    move-result-object v4

    #@4c
    .line 429
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    instance-of v14, v4, Landroid/graphics/drawable/AnimationDrawable;

    #@4e
    if-eqz v14, :cond_1

    #@50
    move-object v2, v4

    #@51
    .line 431
    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    #@53
    .line 432
    .local v2, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    #@56
    move-result v7

    #@57
    .line 433
    .local v7, "frames":I
    const/4 v14, 0x0

    #@58
    invoke-virtual {v2, v14}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    #@5b
    move-result-object v4

    #@5c
    .line 434
    const/4 v14, 0x1

    #@5d
    if-ne v7, v14, :cond_3

    #@5f
    .line 435
    const-string/jumbo v14, "PointerIcon"

    #@62
    const-string/jumbo v15, "Animation icon with single frame -- simply treating the first frame as a normal bitmap icon."

    #@65
    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 459
    .end local v2    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v7    # "frames":I
    :cond_1
    instance-of v14, v4, Landroid/graphics/drawable/BitmapDrawable;

    #@6a
    if-nez v14, :cond_7

    #@6c
    .line 460
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@6e
    const-string/jumbo v15, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    #@71
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@74
    throw v14

    #@75
    .line 427
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v0, p1

    #@77
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7a
    move-result-object v4

    #@7b
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@7c
    .line 439
    .restart local v2    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v7    # "frames":I
    :cond_3
    const/4 v14, 0x0

    #@7d
    invoke-virtual {v2, v14}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    #@80
    move-result v14

    #@81
    move-object/from16 v0, p0

    #@83
    iput v14, v0, Landroid/view/PointerIcon;->mDurationPerFrame:I

    #@85
    .line 440
    add-int/lit8 v14, v7, -0x1

    #@87
    new-array v14, v14, [Landroid/graphics/Bitmap;

    #@89
    move-object/from16 v0, p0

    #@8b
    iput-object v14, v0, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    #@8d
    .line 441
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@90
    move-result v13

    #@91
    .line 442
    .local v13, "width":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@94
    move-result v8

    #@95
    .line 443
    .local v8, "height":I
    const/4 v11, 0x1

    #@96
    .local v11, "i":I
    :goto_1
    if-ge v11, v7, :cond_1

    #@98
    .line 444
    invoke-virtual {v2, v11}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    #@9b
    move-result-object v5

    #@9c
    .line 445
    .local v5, "drawableFrame":Landroid/graphics/drawable/Drawable;
    instance-of v14, v5, Landroid/graphics/drawable/BitmapDrawable;

    #@9e
    if-nez v14, :cond_4

    #@a0
    .line 446
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@a2
    const-string/jumbo v15, "Frame of an animated pointer icon must refer to a bitmap drawable."

    #@a5
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v14

    #@a9
    .line 449
    :cond_4
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@ac
    move-result v14

    #@ad
    if-ne v14, v13, :cond_5

    #@af
    .line 450
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@b2
    move-result v14

    #@b3
    if-eq v14, v8, :cond_6

    #@b5
    .line 451
    :cond_5
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@b7
    new-instance v15, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v16, "The bitmap size of "

    #@bf
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v15

    #@c3
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v15

    #@c7
    const-string/jumbo v16, "-th frame "

    #@ca
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v15

    #@ce
    .line 452
    const-string/jumbo v16, "is different. All frames should have the exact same size and "

    #@d1
    .line 451
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v15

    #@d5
    .line 453
    const-string/jumbo v16, "share the same hotspot."

    #@d8
    .line 451
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v15

    #@dc
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v15

    #@e0
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e3
    throw v14

    #@e4
    .line 455
    :cond_6
    move-object/from16 v0, p0

    #@e6
    iget-object v14, v0, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    #@e8
    add-int/lit8 v15, v11, -0x1

    #@ea
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    #@ec
    .end local v5    # "drawableFrame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@ef
    move-result-object v16

    #@f0
    aput-object v16, v14, v15

    #@f2
    .line 443
    add-int/lit8 v11, v11, 0x1

    #@f4
    goto :goto_1

    #@f5
    .line 465
    .end local v2    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v7    # "frames":I
    .end local v8    # "height":I
    .end local v11    # "i":I
    .end local v13    # "width":I
    :cond_7
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    #@f7
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@fa
    move-result-object v14

    #@fb
    move-object/from16 v0, p0

    #@fd
    iput-object v14, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    #@ff
    .line 466
    move-object/from16 v0, p0

    #@101
    iput v9, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    #@103
    .line 467
    move-object/from16 v0, p0

    #@105
    iput v10, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    #@107
    .line 399
    return-void
.end method

.method public static setUseLargeIcons(Z)V
    .locals 1
    .param p0, "use"    # Z

    #@0
    .prologue
    .line 240
    sput-boolean p0, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    #@2
    .line 241
    sget-object v0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@7
    .line 239
    return-void
.end method

.method private static validateHotSpot(Landroid/graphics/Bitmap;FF)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 471
    cmpg-float v0, p1, v1

    #@3
    if-ltz v0, :cond_0

    #@5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@8
    move-result v0

    #@9
    int-to-float v0, v0

    #@a
    cmpl-float v0, p1, v0

    #@c
    if-ltz v0, :cond_1

    #@e
    .line 472
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "x hotspot lies outside of the bitmap area"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 474
    :cond_1
    cmpg-float v0, p2, v1

    #@19
    if-ltz v0, :cond_2

    #@1b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@1e
    move-result v0

    #@1f
    int-to-float v0, v0

    #@20
    cmpl-float v0, p2, v0

    #@22
    if-ltz v0, :cond_3

    #@24
    .line 475
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v1, "y hotspot lies outside of the bitmap area"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 470
    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 358
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 376
    if-ne p0, p1, :cond_0

    #@4
    .line 377
    return v4

    #@5
    .line 380
    :cond_0
    if-eqz p1, :cond_2

    #@7
    instance-of v1, p1, Landroid/view/PointerIcon;

    #@9
    if-eqz v1, :cond_2

    #@b
    move-object v0, p1

    #@c
    .line 384
    check-cast v0, Landroid/view/PointerIcon;

    #@e
    .line 385
    .local v0, "otherIcon":Landroid/view/PointerIcon;
    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    #@10
    iget v2, v0, Landroid/view/PointerIcon;->mType:I

    #@12
    if-ne v1, v2, :cond_1

    #@14
    .line 386
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@16
    iget v2, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@18
    if-eq v1, v2, :cond_3

    #@1a
    .line 387
    :cond_1
    return v3

    #@1b
    .line 381
    .end local v0    # "otherIcon":Landroid/view/PointerIcon;
    :cond_2
    return v3

    #@1c
    .line 390
    .restart local v0    # "otherIcon":Landroid/view/PointerIcon;
    :cond_3
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@1e
    if-nez v1, :cond_6

    #@20
    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    #@22
    iget-object v2, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    #@24
    if-ne v1, v2, :cond_4

    #@26
    .line 391
    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    #@28
    iget v2, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    #@2a
    cmpl-float v1, v1, v2

    #@2c
    if-eqz v1, :cond_5

    #@2e
    .line 393
    :cond_4
    return v3

    #@2f
    .line 392
    :cond_5
    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    #@31
    iget v2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    #@33
    cmpl-float v1, v1, v2

    #@35
    if-nez v1, :cond_4

    #@37
    .line 396
    :cond_6
    return v4
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 328
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    #@2
    return v0
.end method

.method public load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 312
    if-nez p1, :cond_0

    #@2
    .line 313
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "context must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 316
    :cond_0
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@d
    if-eqz v1, :cond_1

    #@f
    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 317
    :cond_1
    return-object p0

    #@14
    .line 320
    :cond_2
    new-instance v0, Landroid/view/PointerIcon;

    #@16
    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    #@18
    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    #@1b
    .line 321
    .local v0, "result":Landroid/view/PointerIcon;
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@1d
    iput v1, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@1f
    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v1

    #@23
    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@25
    invoke-direct {v0, p1, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    #@28
    .line 323
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 362
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 364
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 365
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 366
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@10
    if-nez v0, :cond_0

    #@12
    .line 367
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    #@14
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 368
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@1c
    .line 369
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@21
    .line 361
    :cond_0
    return-void
.end method
