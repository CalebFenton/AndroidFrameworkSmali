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

.field public static final STYLE_ARROW:I = 0x3e8

.field public static final STYLE_CUSTOM:I = -0x1

.field private static final STYLE_DEFAULT:I = 0x3e8

.field public static final STYLE_NULL:I = 0x0

.field private static final STYLE_OEM_FIRST:I = 0x2710

.field public static final STYLE_SPOT_ANCHOR:I = 0x7d2

.field public static final STYLE_SPOT_HOVER:I = 0x7d0

.field public static final STYLE_SPOT_TOUCH:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "PointerIcon"

.field private static final gNullIcon:Landroid/view/PointerIcon;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHotSpotX:F

.field private mHotSpotY:F

.field private final mStyle:I

.field private mSystemIconResourceId:I


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
    .line 70
    new-instance v0, Landroid/view/PointerIcon;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    #@6
    sput-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    #@8
    .line 310
    new-instance v0, Landroid/view/PointerIcon$1;

    #@a
    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    #@d
    .line 309
    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    .line 42
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "style"    # I

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    iput p1, p0, Landroid/view/PointerIcon;->mStyle:I

    #@5
    .line 78
    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/PointerIcon;)V
    .locals 0
    .param p1, "style"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/PointerIcon;-><init>(I)V

    #@3
    return-void
.end method

.method public static createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    #@0
    .prologue
    .line 163
    if-nez p0, :cond_0

    #@2
    .line 164
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "bitmap must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 166
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    #@e
    .line 168
    new-instance v0, Landroid/view/PointerIcon;

    #@10
    const/4 v1, -0x1

    #@11
    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    #@14
    .line 169
    .local v0, "icon":Landroid/view/PointerIcon;
    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    #@16
    .line 170
    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    #@18
    .line 171
    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    #@1a
    .line 172
    return-object v0
.end method

.method public static getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 102
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
    .line 90
    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    #@2
    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    const/16 v7, 0x3e8

    #@4
    const/4 v6, 0x0

    #@5
    .line 116
    if-nez p0, :cond_0

    #@7
    .line 117
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v5, "context must not be null"

    #@c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v4

    #@10
    .line 120
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 121
    sget-object v4, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    #@14
    return-object v4

    #@15
    .line 124
    :cond_1
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconStyleIndex(I)I

    #@18
    move-result v3

    #@19
    .line 125
    .local v3, "styleIndex":I
    if-nez v3, :cond_2

    #@1b
    .line 126
    invoke-static {v7}, Landroid/view/PointerIcon;->getSystemIconStyleIndex(I)I

    #@1e
    move-result v3

    #@1f
    .line 130
    :cond_2
    sget-object v4, Lcom/android/internal/R$styleable;->Pointer:[I

    #@21
    .line 131
    const v5, 0x1160030

    #@24
    .line 129
    invoke-virtual {p0, v9, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@27
    move-result-object v0

    #@28
    .line 132
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2b
    move-result v2

    #@2c
    .line 133
    .local v2, "resourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2f
    .line 135
    if-ne v2, v8, :cond_4

    #@31
    .line 136
    const-string/jumbo v4, "PointerIcon"

    #@34
    new-instance v5, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v6, "Missing theme resources for pointer icon style "

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 137
    if-ne p1, v7, :cond_3

    #@4d
    sget-object v4, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    #@4f
    :goto_0
    return-object v4

    #@50
    :cond_3
    invoke-static {p0, v7}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    #@53
    move-result-object v4

    #@54
    goto :goto_0

    #@55
    .line 140
    :cond_4
    new-instance v1, Landroid/view/PointerIcon;

    #@57
    invoke-direct {v1, p1}, Landroid/view/PointerIcon;-><init>(I)V

    #@5a
    .line 141
    .local v1, "icon":Landroid/view/PointerIcon;
    const/high16 v4, -0x1000000

    #@5c
    and-int/2addr v4, v2

    #@5d
    const/high16 v5, 0x1000000

    #@5f
    if-ne v4, v5, :cond_5

    #@61
    .line 142
    iput v2, v1, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@63
    .line 146
    :goto_1
    return-object v1

    #@64
    .line 144
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@67
    move-result-object v4

    #@68
    invoke-direct {v1, p0, v4, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    #@6b
    goto :goto_1
.end method

.method private static getSystemIconStyleIndex(I)I
    .locals 1
    .param p0, "style"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 428
    sparse-switch p0, :sswitch_data_0

    #@4
    .line 438
    return v0

    #@5
    .line 430
    :sswitch_0
    return v0

    #@6
    .line 432
    :sswitch_1
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 434
    :sswitch_2
    const/4 v0, 0x2

    #@9
    return v0

    #@a
    .line 436
    :sswitch_3
    const/4 v0, 0x3

    #@b
    return v0

    #@c
    .line 428
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_3
    .end sparse-switch
.end method

.method public static loadCustomIcon(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 197
    if-nez p0, :cond_0

    #@3
    .line 198
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "resources must not be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 201
    :cond_0
    new-instance v0, Landroid/view/PointerIcon;

    #@e
    const/4 v1, -0x1

    #@f
    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    #@12
    .line 202
    .local v0, "icon":Landroid/view/PointerIcon;
    invoke-direct {v0, v2, p0, p1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    #@15
    .line 203
    return-object v0
.end method

.method private loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I

    #@0
    .prologue
    .line 378
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@3
    move-result-object v6

    #@4
    .line 383
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v7, "pointer-icon"

    #@7
    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@a
    .line 386
    sget-object v7, Lcom/android/internal/R$styleable;->PointerIcon:[I

    #@c
    .line 385
    invoke-virtual {p2, v6, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@f
    move-result-object v0

    #@10
    .line 387
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    #@11
    const/4 v8, 0x0

    #@12
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@15
    move-result v1

    #@16
    .line 388
    .local v1, "bitmapRes":I
    const/4 v7, 0x0

    #@17
    const/4 v8, 0x1

    #@18
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1b
    move-result v4

    #@1c
    .line 389
    .local v4, "hotSpotX":F
    const/4 v7, 0x0

    #@1d
    const/4 v8, 0x2

    #@1e
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@21
    move-result v5

    #@22
    .line 390
    .local v5, "hotSpotY":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 394
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@28
    .line 397
    if-nez v1, :cond_0

    #@2a
    .line 398
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string/jumbo v8, "<pointer-icon> is missing bitmap attribute."

    #@2f
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v7

    #@33
    .line 391
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "bitmapRes":I
    .end local v4    # "hotSpotX":F
    .end local v5    # "hotSpotY":F
    :catch_0
    move-exception v3

    #@34
    .line 392
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@36
    const-string/jumbo v8, "Exception parsing pointer icon resource."

    #@39
    invoke-direct {v7, v8, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3c
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    .line 393
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    #@3e
    .line 394
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@41
    .line 393
    throw v7

    #@42
    .line 402
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "bitmapRes":I
    .restart local v4    # "hotSpotX":F
    .restart local v5    # "hotSpotY":F
    :cond_0
    if-nez p1, :cond_1

    #@44
    .line 403
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@47
    move-result-object v2

    #@48
    .line 407
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    instance-of v7, v2, Landroid/graphics/drawable/BitmapDrawable;

    #@4a
    if-nez v7, :cond_2

    #@4c
    .line 408
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@4e
    const-string/jumbo v8, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    #@51
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@54
    throw v7

    #@55
    .line 405
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@58
    move-result-object v2

    #@59
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@5a
    .line 413
    :cond_2
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    #@5c
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@5f
    move-result-object v7

    #@60
    iput-object v7, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    #@62
    .line 414
    iput v4, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    #@64
    .line 415
    iput v5, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    #@66
    .line 377
    return-void
.end method

.method private throwIfIconIsNotLoaded()V
    .locals 2

    #@0
    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/view/PointerIcon;->isLoaded()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "The icon is not loaded."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 303
    :cond_0
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
    .line 419
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
    .line 420
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "x hotspot lies outside of the bitmap area"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 422
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
    .line 423
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v1, "y hotspot lies outside of the bitmap area"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 418
    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 336
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
    .line 354
    if-ne p0, p1, :cond_0

    #@4
    .line 355
    return v4

    #@5
    .line 358
    :cond_0
    if-eqz p1, :cond_2

    #@7
    instance-of v1, p1, Landroid/view/PointerIcon;

    #@9
    if-eqz v1, :cond_2

    #@b
    move-object v0, p1

    #@c
    .line 362
    check-cast v0, Landroid/view/PointerIcon;

    #@e
    .line 363
    .local v0, "otherIcon":Landroid/view/PointerIcon;
    iget v1, p0, Landroid/view/PointerIcon;->mStyle:I

    #@10
    iget v2, v0, Landroid/view/PointerIcon;->mStyle:I

    #@12
    if-ne v1, v2, :cond_1

    #@14
    .line 364
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@16
    iget v2, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@18
    if-eq v1, v2, :cond_3

    #@1a
    .line 365
    :cond_1
    return v3

    #@1b
    .line 359
    .end local v0    # "otherIcon":Landroid/view/PointerIcon;
    :cond_2
    return v3

    #@1c
    .line 368
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
    .line 369
    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    #@28
    iget v2, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    #@2a
    cmpl-float v1, v1, v2

    #@2c
    if-eqz v1, :cond_5

    #@2e
    .line 371
    :cond_4
    return v3

    #@2f
    .line 370
    :cond_5
    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    #@31
    iget v2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    #@33
    cmpl-float v1, v1, v2

    #@35
    if-nez v1, :cond_4

    #@37
    .line 374
    :cond_6
    return v4
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 271
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    #@3
    .line 272
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    #@5
    return-object v0
.end method

.method public getHotSpotX()F
    .locals 1

    #@0
    .prologue
    .line 285
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    #@3
    .line 286
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    #@5
    return v0
.end method

.method public getHotSpotY()F
    .locals 1

    #@0
    .prologue
    .line 299
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    #@3
    .line 300
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    #@5
    return v0
.end method

.method public getStyle()I
    .locals 1

    #@0
    .prologue
    .line 258
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    #@2
    return v0
.end method

.method public isLoaded()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 249
    iget-object v2, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    #@4
    if-nez v2, :cond_0

    #@6
    iget v2, p0, Landroid/view/PointerIcon;->mStyle:I

    #@8
    if-nez v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    move v0, v1

    #@c
    goto :goto_0
.end method

.method public isNullIcon()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 238
    iget v1, p0, Landroid/view/PointerIcon;->mStyle:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 218
    if-nez p1, :cond_0

    #@2
    .line 219
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "context must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 222
    :cond_0
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@d
    if-eqz v1, :cond_1

    #@f
    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 223
    :cond_1
    return-object p0

    #@14
    .line 226
    :cond_2
    new-instance v0, Landroid/view/PointerIcon;

    #@16
    iget v1, p0, Landroid/view/PointerIcon;->mStyle:I

    #@18
    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    #@1b
    .line 227
    .local v0, "result":Landroid/view/PointerIcon;
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@1d
    iput v1, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@1f
    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v1

    #@23
    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@25
    invoke-direct {v0, p1, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    #@28
    .line 229
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 340
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 342
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 343
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 344
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    #@10
    if-nez v0, :cond_0

    #@12
    .line 345
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    #@14
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 346
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@1c
    .line 347
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@21
    .line 339
    :cond_0
    return-void
.end method
