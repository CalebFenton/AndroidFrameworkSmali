.class public Landroid/app/LauncherActivity$IconResizer;
.super Ljava/lang/Object;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconResizer"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mIconHeight:I

.field private mIconWidth:I

.field private final mOldBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/app/LauncherActivity;


# direct methods
.method public constructor <init>(Landroid/app/LauncherActivity;)V
    .locals 5
    .param p1, "this$0"    # Landroid/app/LauncherActivity;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 256
    iput-object p1, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 250
    iput v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    #@8
    .line 251
    iput v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    #@a
    .line 253
    new-instance v1, Landroid/graphics/Rect;

    #@c
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v1, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    #@11
    .line 254
    new-instance v1, Landroid/graphics/Canvas;

    #@13
    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    #@16
    iput-object v1, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    #@18
    .line 257
    iget-object v1, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    #@1a
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    #@1c
    const/4 v3, 0x4

    #@1d
    .line 258
    const/4 v4, 0x2

    #@1e
    .line 257
    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    #@21
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    #@24
    .line 260
    invoke-virtual {p1}, Landroid/app/LauncherActivity;->getResources()Landroid/content/res/Resources;

    #@27
    move-result-object v0

    #@28
    .line 262
    .local v0, "resources":Landroid/content/res/Resources;
    const/high16 v1, 0x1050000

    #@2a
    .line 261
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    #@2d
    move-result v1

    #@2e
    float-to-int v1, v1

    #@2f
    iput v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    #@31
    iput v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    #@33
    .line 256
    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 278
    iget v8, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    #@3
    .line 279
    .local v8, "width":I
    iget v2, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    #@5
    .line 281
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@8
    move-result v4

    #@9
    .line 282
    .local v4, "iconWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@c
    move-result v3

    #@d
    .line 284
    .local v3, "iconHeight":I
    instance-of v11, p1, Landroid/graphics/drawable/PaintDrawable;

    #@f
    if-eqz v11, :cond_0

    #@11
    move-object v5, p1

    #@12
    .line 285
    check-cast v5, Landroid/graphics/drawable/PaintDrawable;

    #@14
    .line 286
    .local v5, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    #@17
    .line 287
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    #@1a
    .line 290
    .end local v5    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    if-lez v8, :cond_3

    #@1c
    if-lez v2, :cond_3

    #@1e
    .line 291
    if-lt v8, v4, :cond_1

    #@20
    if-ge v2, v3, :cond_6

    #@22
    .line 292
    :cond_1
    int-to-float v11, v4

    #@23
    int-to-float v12, v3

    #@24
    div-float v6, v11, v12

    #@26
    .line 294
    .local v6, "ratio":F
    if-le v4, v3, :cond_4

    #@28
    .line 295
    int-to-float v11, v8

    #@29
    div-float/2addr v11, v6

    #@2a
    float-to-int v2, v11

    #@2b
    .line 300
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@2e
    move-result v11

    #@2f
    const/4 v12, -0x1

    #@30
    if-eq v11, v12, :cond_5

    #@32
    .line 301
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@34
    .line 302
    .local v0, "c":Landroid/graphics/Bitmap$Config;
    :goto_1
    iget v11, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    #@36
    iget v12, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    #@38
    invoke-static {v11, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@3b
    move-result-object v7

    #@3c
    .line 303
    .local v7, "thumb":Landroid/graphics/Bitmap;
    iget-object v1, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    #@3e
    .line 304
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@41
    .line 310
    iget-object v11, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    #@43
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@46
    move-result-object v12

    #@47
    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4a
    .line 311
    iget v11, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    #@4c
    sub-int/2addr v11, v8

    #@4d
    div-int/lit8 v9, v11, 0x2

    #@4f
    .line 312
    .local v9, "x":I
    iget v11, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    #@51
    sub-int/2addr v11, v2

    #@52
    div-int/lit8 v10, v11, 0x2

    #@54
    .line 313
    .local v10, "y":I
    add-int v11, v9, v8

    #@56
    add-int v12, v10, v2

    #@58
    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@5b
    .line 314
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@5e
    .line 315
    iget-object v11, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    #@60
    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@63
    .line 316
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    #@65
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    iget-object v11, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    #@67
    invoke-virtual {v11}, Landroid/app/LauncherActivity;->getResources()Landroid/content/res/Resources;

    #@6a
    move-result-object v11

    #@6b
    invoke-direct {p1, v11, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@6e
    .line 317
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@71
    .line 334
    .end local v0    # "c":Landroid/graphics/Bitmap$Config;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "ratio":F
    .end local v7    # "thumb":Landroid/graphics/Bitmap;
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_3
    :goto_2
    return-object p1

    #@72
    .line 296
    .restart local v6    # "ratio":F
    :cond_4
    if-le v3, v4, :cond_2

    #@74
    .line 297
    int-to-float v11, v2

    #@75
    mul-float/2addr v11, v6

    #@76
    float-to-int v8, v11

    #@77
    goto :goto_0

    #@78
    .line 301
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@7a
    .restart local v0    # "c":Landroid/graphics/Bitmap$Config;
    goto :goto_1

    #@7b
    .line 318
    .end local v0    # "c":Landroid/graphics/Bitmap$Config;
    .end local v6    # "ratio":F
    :cond_6
    if-ge v4, v8, :cond_3

    #@7d
    if-ge v3, v2, :cond_3

    #@7f
    .line 319
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@81
    .line 320
    .restart local v0    # "c":Landroid/graphics/Bitmap$Config;
    iget v11, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    #@83
    iget v12, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    #@85
    invoke-static {v11, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@88
    move-result-object v7

    #@89
    .line 321
    .restart local v7    # "thumb":Landroid/graphics/Bitmap;
    iget-object v1, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    #@8b
    .line 322
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@8e
    .line 323
    iget-object v11, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    #@90
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@93
    move-result-object v12

    #@94
    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@97
    .line 324
    sub-int v11, v8, v4

    #@99
    div-int/lit8 v9, v11, 0x2

    #@9b
    .line 325
    .restart local v9    # "x":I
    sub-int v11, v2, v3

    #@9d
    div-int/lit8 v10, v11, 0x2

    #@9f
    .line 326
    .restart local v10    # "y":I
    add-int v11, v9, v4

    #@a1
    add-int v12, v10, v3

    #@a3
    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@a6
    .line 327
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@a9
    .line 328
    iget-object v11, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    #@ab
    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@ae
    .line 329
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    #@b0
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    iget-object v11, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    #@b2
    invoke-virtual {v11}, Landroid/app/LauncherActivity;->getResources()Landroid/content/res/Resources;

    #@b5
    move-result-object v11

    #@b6
    invoke-direct {p1, v11, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@b9
    .line 330
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@bc
    goto :goto_2
.end method
