.class public Landroid/graphics/drawable/NinePatchDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NinePatchDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    }
.end annotation


# static fields
.field private static final DEFAULT_DITHER:Z


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mMutated:Z

.field private mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

.field private mOpticalInsets:Landroid/graphics/Insets;

.field private mOutlineInsets:Landroid/graphics/Rect;

.field private mOutlineRadius:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mTargetDensity:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 89
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@4
    .line 77
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@6
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@8
    .line 83
    const/16 v0, 0xa0

    #@a
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@c
    .line 86
    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    #@e
    .line 87
    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    #@10
    .line 90
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@12
    invoke-direct {v0}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>()V

    #@15
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@17
    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "chunk"    # [B
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "opticalInsets"    # Landroid/graphics/Rect;
    .param p6, "srcName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 121
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    new-instance v1, Landroid/graphics/NinePatch;

    #@4
    invoke-direct {v1, p2, p3, p6}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    #@7
    invoke-direct {v0, v1, p4, p5}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@a
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    #@d
    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "chunk"    # [B
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "srcName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    new-instance v1, Landroid/graphics/NinePatch;

    #@4
    invoke-direct {v1, p2, p3, p5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    #@7
    invoke-direct {v0, v1, p4}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    #@a
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    #@d
    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "patch"    # Landroid/graphics/NinePatch;

    #@0
    .prologue
    .line 142
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    new-instance v1, Landroid/graphics/Rect;

    #@4
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@7
    invoke-direct {v0, p2, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    #@a
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    #@d
    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B
    .param p3, "padding"    # Landroid/graphics/Rect;
    .param p4, "srcName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 101
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    new-instance v1, Landroid/graphics/NinePatch;

    #@4
    invoke-direct {v1, p1, p2, p4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    #@7
    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    #@e
    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/graphics/NinePatch;)V
    .locals 2
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 134
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    new-instance v1, Landroid/graphics/Rect;

    #@4
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@7
    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    #@e
    .line 133
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 725
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@4
    .line 77
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@6
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@8
    .line 83
    const/16 v0, 0xa0

    #@a
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@c
    .line 86
    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    #@e
    .line 87
    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    #@10
    .line 726
    iput-object p1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@12
    .line 728
    invoke-direct {p0, p2}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@15
    .line 725
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private computeBitmapSize()V
    .locals 18

    #@0
    .prologue
    .line 662
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@4
    iget-object v4, v12, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@6
    .line 663
    .local v4, "ninePatch":Landroid/graphics/NinePatch;
    if-nez v4, :cond_0

    #@8
    .line 664
    return-void

    #@9
    .line 667
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getDensity()I

    #@c
    move-result v7

    #@d
    .line 668
    .local v7, "sourceDensity":I
    move-object/from16 v0, p0

    #@f
    iget v10, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@11
    .line 670
    .local v10, "targetDensity":I
    move-object/from16 v0, p0

    #@13
    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@15
    iget-object v8, v12, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    #@17
    .line 671
    .local v8, "sourceOpticalInsets":Landroid/graphics/Insets;
    sget-object v12, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@19
    if-eq v8, v12, :cond_2

    #@1b
    .line 673
    iget v12, v8, Landroid/graphics/Insets;->left:I

    #@1d
    const/4 v13, 0x1

    #@1e
    .line 672
    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@21
    move-result v3

    #@22
    .line 675
    .local v3, "left":I
    iget v12, v8, Landroid/graphics/Insets;->top:I

    #@24
    const/4 v13, 0x1

    #@25
    .line 674
    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@28
    move-result v11

    #@29
    .line 677
    .local v11, "top":I
    iget v12, v8, Landroid/graphics/Insets;->right:I

    #@2b
    const/4 v13, 0x1

    #@2c
    .line 676
    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@2f
    move-result v6

    #@30
    .line 679
    .local v6, "right":I
    iget v12, v8, Landroid/graphics/Insets;->bottom:I

    #@32
    const/4 v13, 0x1

    #@33
    .line 678
    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@36
    move-result v1

    #@37
    .line 680
    .local v1, "bottom":I
    invoke-static {v3, v11, v6, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@3a
    move-result-object v12

    #@3b
    move-object/from16 v0, p0

    #@3d
    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@3f
    .line 685
    .end local v1    # "bottom":I
    .end local v3    # "left":I
    .end local v6    # "right":I
    .end local v11    # "top":I
    :goto_0
    move-object/from16 v0, p0

    #@41
    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@43
    iget-object v9, v12, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    #@45
    .line 686
    .local v9, "sourcePadding":Landroid/graphics/Rect;
    if-eqz v9, :cond_3

    #@47
    .line 687
    move-object/from16 v0, p0

    #@49
    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    #@4b
    if-nez v12, :cond_1

    #@4d
    .line 688
    new-instance v12, Landroid/graphics/Rect;

    #@4f
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@52
    move-object/from16 v0, p0

    #@54
    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    #@56
    .line 690
    :cond_1
    move-object/from16 v0, p0

    #@58
    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    #@5a
    .line 691
    iget v13, v9, Landroid/graphics/Rect;->left:I

    #@5c
    const/4 v14, 0x0

    #@5d
    .line 690
    invoke-static {v13, v7, v10, v14}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@60
    move-result v13

    #@61
    iput v13, v12, Landroid/graphics/Rect;->left:I

    #@63
    .line 692
    move-object/from16 v0, p0

    #@65
    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    #@67
    .line 693
    iget v13, v9, Landroid/graphics/Rect;->top:I

    #@69
    const/4 v14, 0x0

    #@6a
    .line 692
    invoke-static {v13, v7, v10, v14}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@6d
    move-result v13

    #@6e
    iput v13, v12, Landroid/graphics/Rect;->top:I

    #@70
    .line 694
    move-object/from16 v0, p0

    #@72
    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    #@74
    .line 695
    iget v13, v9, Landroid/graphics/Rect;->right:I

    #@76
    const/4 v14, 0x0

    #@77
    .line 694
    invoke-static {v13, v7, v10, v14}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@7a
    move-result v13

    #@7b
    iput v13, v12, Landroid/graphics/Rect;->right:I

    #@7d
    .line 696
    move-object/from16 v0, p0

    #@7f
    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    #@81
    .line 697
    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    #@83
    const/4 v14, 0x0

    #@84
    .line 696
    invoke-static {v13, v7, v10, v14}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@87
    move-result v13

    #@88
    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    #@8a
    .line 703
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getHeight()I

    #@8d
    move-result v12

    #@8e
    const/4 v13, 0x1

    #@8f
    .line 702
    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@92
    move-result v12

    #@93
    move-object/from16 v0, p0

    #@95
    iput v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    #@97
    .line 705
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getWidth()I

    #@9a
    move-result v12

    #@9b
    const/4 v13, 0x1

    #@9c
    .line 704
    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@9f
    move-result v12

    #@a0
    move-object/from16 v0, p0

    #@a2
    iput v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    #@a4
    .line 707
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    #@a7
    move-result-object v12

    #@a8
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;

    #@ab
    move-result-object v2

    #@ac
    .line 708
    .local v2, "insets":Landroid/graphics/NinePatch$InsetStruct;
    if-eqz v2, :cond_4

    #@ae
    .line 709
    iget-object v5, v2, Landroid/graphics/NinePatch$InsetStruct;->outlineRect:Landroid/graphics/Rect;

    #@b0
    .line 710
    .local v5, "outlineRect":Landroid/graphics/Rect;
    iget v12, v5, Landroid/graphics/Rect;->left:I

    #@b2
    iget v13, v5, Landroid/graphics/Rect;->top:I

    #@b4
    .line 711
    iget v14, v5, Landroid/graphics/Rect;->right:I

    #@b6
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    #@b8
    int-to-float v0, v10

    #@b9
    move/from16 v16, v0

    #@bb
    int-to-float v0, v7

    #@bc
    move/from16 v17, v0

    #@be
    div-float v16, v16, v17

    #@c0
    .line 710
    invoke-static/range {v12 .. v16}, Landroid/graphics/NinePatch$InsetStruct;->scaleInsets(IIIIF)Landroid/graphics/Rect;

    #@c3
    move-result-object v12

    #@c4
    move-object/from16 v0, p0

    #@c6
    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    #@c8
    .line 713
    iget v12, v2, Landroid/graphics/NinePatch$InsetStruct;->outlineRadius:F

    #@ca
    .line 712
    invoke-static {v12, v7, v10}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    #@cd
    move-result v12

    #@ce
    move-object/from16 v0, p0

    #@d0
    iput v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineRadius:F

    #@d2
    .line 661
    .end local v5    # "outlineRect":Landroid/graphics/Rect;
    :goto_2
    return-void

    #@d3
    .line 682
    .end local v2    # "insets":Landroid/graphics/NinePatch$InsetStruct;
    .end local v9    # "sourcePadding":Landroid/graphics/Rect;
    :cond_2
    sget-object v12, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@d5
    move-object/from16 v0, p0

    #@d7
    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@d9
    goto/16 :goto_0

    #@db
    .line 699
    .restart local v9    # "sourcePadding":Landroid/graphics/Rect;
    :cond_3
    const/4 v12, 0x0

    #@dc
    move-object/from16 v0, p0

    #@de
    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    #@e0
    goto :goto_1

    #@e1
    .line 715
    .restart local v2    # "insets":Landroid/graphics/NinePatch$InsetStruct;
    :cond_4
    const/4 v12, 0x0

    #@e2
    move-object/from16 v0, p0

    #@e4
    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    #@e6
    goto :goto_2
.end method

.method private needsMirroring()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 377
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->isAutoMirrored()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getLayoutDirection()I

    #@b
    move-result v2

    #@c
    if-ne v2, v0, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    move v0, v1

    #@10
    goto :goto_0
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 735
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    .line 738
    .local v0, "state":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    iget-boolean v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 739
    iget-boolean v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@8
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setDither(Z)V

    #@b
    .line 745
    :cond_0
    if-nez p1, :cond_1

    #@d
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 746
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@13
    invoke-virtual {v1}, Landroid/graphics/NinePatch;->getDensity()I

    #@16
    move-result v1

    #@17
    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@19
    .line 750
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@1b
    iget-object v2, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@1d
    iget-object v3, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@1f
    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@25
    .line 751
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->computeBitmapSize()V

    #@28
    .line 734
    return-void

    #@29
    .line 748
    :cond_1
    iget v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@2b
    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@2e
    move-result v1

    #@2f
    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@31
    goto :goto_0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 16
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v7

    #@4
    .line 413
    .local v7, "r":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    #@6
    iget-object v9, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@8
    .line 416
    .local v9, "state":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    iget v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    #@a
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@d
    move-result v14

    #@e
    or-int/2addr v13, v14

    #@f
    iput v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    #@11
    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@14
    move-result-object v13

    #@15
    iput-object v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    #@17
    .line 421
    iget-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@19
    const/4 v14, 0x1

    #@1a
    move-object/from16 v0, p1

    #@1c
    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1f
    move-result v13

    #@20
    iput-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@22
    .line 423
    const/4 v13, 0x0

    #@23
    const/4 v14, 0x0

    #@24
    move-object/from16 v0, p1

    #@26
    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@29
    move-result v8

    #@2a
    .line 424
    .local v8, "srcResId":I
    if-eqz v8, :cond_3

    #@2c
    .line 425
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    #@2e
    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@31
    .line 426
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    iget-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@33
    if-eqz v13, :cond_0

    #@35
    const/4 v13, 0x0

    #@36
    :goto_0
    iput-boolean v13, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    #@38
    .line 427
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3b
    move-result-object v13

    #@3c
    iget v13, v13, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@3e
    iput v13, v5, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    #@40
    .line 429
    new-instance v6, Landroid/graphics/Rect;

    #@42
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    #@45
    .line 430
    .local v6, "padding":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    #@47
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@4a
    .line 431
    .local v4, "opticalInsets":Landroid/graphics/Rect;
    const/4 v1, 0x0

    #@4b
    .line 434
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v12, Landroid/util/TypedValue;

    #@4d
    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    #@50
    .line 435
    .local v12, "value":Landroid/util/TypedValue;
    invoke-virtual {v7, v8, v12}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    #@53
    move-result-object v3

    #@54
    .line 437
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v7, v12, v3, v6, v5}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@57
    move-result-object v1

    #@58
    .line 439
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5b
    .line 444
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v12    # "value":Landroid/util/TypedValue;
    :goto_1
    if-nez v1, :cond_1

    #@5d
    .line 445
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    #@5f
    new-instance v14, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@67
    move-result-object v15

    #@68
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v14

    #@6c
    .line 446
    const-string/jumbo v15, ": <nine-patch> requires a valid src attribute"

    #@6f
    .line 445
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v14

    #@73
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v14

    #@77
    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v13

    #@7b
    .line 426
    .end local v4    # "opticalInsets":Landroid/graphics/Rect;
    .end local v6    # "padding":Landroid/graphics/Rect;
    :cond_0
    const/4 v13, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 447
    .restart local v4    # "opticalInsets":Landroid/graphics/Rect;
    .restart local v6    # "padding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    #@80
    move-result-object v13

    #@81
    if-nez v13, :cond_2

    #@83
    .line 448
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    #@85
    new-instance v14, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@8d
    move-result-object v15

    #@8e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v14

    #@92
    .line 449
    const-string/jumbo v15, ": <nine-patch> requires a valid 9-patch source image"

    #@95
    .line 448
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v14

    #@99
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v14

    #@9d
    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v13

    #@a1
    .line 452
    :cond_2
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    #@a4
    .line 454
    new-instance v13, Landroid/graphics/NinePatch;

    #@a6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    #@a9
    move-result-object v14

    #@aa
    invoke-direct {v13, v1, v14}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    #@ad
    iput-object v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@af
    .line 455
    iput-object v6, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    #@b1
    .line 456
    invoke-static {v4}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    #@b4
    move-result-object v13

    #@b5
    iput-object v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    #@b7
    .line 460
    .end local v4    # "opticalInsets":Landroid/graphics/Rect;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "padding":Landroid/graphics/Rect;
    :cond_3
    iget-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    #@b9
    const/4 v14, 0x4

    #@ba
    .line 459
    move-object/from16 v0, p1

    #@bc
    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@bf
    move-result v13

    #@c0
    iput-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    #@c2
    .line 461
    iget v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    #@c4
    const/4 v14, 0x3

    #@c5
    move-object/from16 v0, p1

    #@c7
    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@ca
    move-result v13

    #@cb
    iput v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    #@cd
    .line 463
    const/4 v13, 0x5

    #@ce
    const/4 v14, -0x1

    #@cf
    move-object/from16 v0, p1

    #@d1
    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    #@d4
    move-result v11

    #@d5
    .line 464
    .local v11, "tintMode":I
    const/4 v13, -0x1

    #@d6
    if-eq v11, v13, :cond_4

    #@d8
    .line 465
    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@da
    invoke-static {v11, v13}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@dd
    move-result-object v13

    #@de
    iput-object v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@e0
    .line 468
    :cond_4
    const/4 v13, 0x2

    #@e1
    move-object/from16 v0, p1

    #@e3
    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@e6
    move-result-object v10

    #@e7
    .line 469
    .local v10, "tint":Landroid/content/res/ColorStateList;
    if-eqz v10, :cond_5

    #@e9
    .line 470
    iput-object v10, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@eb
    .line 411
    :cond_5
    return-void

    #@ec
    .line 440
    .end local v10    # "tint":Landroid/content/res/ColorStateList;
    .end local v11    # "tintMode":I
    .restart local v4    # "opticalInsets":Landroid/graphics/Rect;
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "padding":Landroid/graphics/Rect;
    :catch_0
    move-exception v2

    #@ed
    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_1
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 476
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 478
    iget-object v2, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@5
    .line 479
    .local v2, "state":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    if-nez v2, :cond_0

    #@7
    .line 480
    return-void

    #@8
    .line 483
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 485
    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    #@e
    sget-object v4, Lcom/android/internal/R$styleable;->NinePatchDrawable:[I

    #@10
    .line 484
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@13
    move-result-object v0

    #@14
    .line 487
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 491
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 495
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_0
    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@1c
    if-eqz v3, :cond_2

    #@1e
    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@20
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 496
    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@28
    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@2b
    move-result-object v3

    #@2c
    iput-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@2e
    .line 499
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v3

    #@32
    invoke-direct {p0, v3}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@35
    .line 475
    return-void

    #@36
    .line 488
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@37
    .line 489
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/drawable/NinePatchDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 491
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3d
    goto :goto_0

    #@3e
    .line 490
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@3f
    .line 491
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@42
    .line 490
    throw v3
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 504
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->canApplyTheme()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 557
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 558
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    #@6
    .line 556
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 194
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@4
    .line 196
    .local v13, "state":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v1

    #@8
    .line 197
    .local v1, "bounds":Landroid/graphics/Rect;
    const/4 v10, -0x1

    #@9
    .line 200
    .local v10, "restoreToCount":I
    move-object/from16 v0, p0

    #@b
    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@d
    if-eqz v14, :cond_6

    #@f
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@12
    move-result-object v14

    #@13
    invoke-virtual {v14}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    #@16
    move-result-object v14

    #@17
    if-nez v14, :cond_6

    #@19
    .line 201
    move-object/from16 v0, p0

    #@1b
    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v15, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@21
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@24
    .line 202
    const/4 v2, 0x1

    #@25
    .line 208
    .local v2, "clearColorFilter":Z
    :goto_0
    iget v14, v13, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    #@27
    const/high16 v15, 0x3f800000    # 1.0f

    #@29
    cmpl-float v14, v14, v15

    #@2b
    if-eqz v14, :cond_7

    #@2d
    .line 209
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@30
    move-result-object v14

    #@31
    invoke-virtual {v14}, Landroid/graphics/Paint;->getAlpha()I

    #@34
    move-result v9

    #@35
    .line 210
    .local v9, "restoreAlpha":I
    move-object/from16 v0, p0

    #@37
    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@39
    int-to-float v15, v9

    #@3a
    iget v0, v13, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    #@3c
    move/from16 v16, v0

    #@3e
    mul-float v15, v15, v16

    #@40
    const/high16 v16, 0x3f000000    # 0.5f

    #@42
    add-float v15, v15, v16

    #@44
    float-to-int v15, v15

    #@45
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    #@48
    .line 215
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    #@4b
    move-result v14

    #@4c
    if-nez v14, :cond_8

    #@4e
    const/4 v5, 0x1

    #@4f
    .line 216
    .local v5, "needsDensityScaling":Z
    :goto_2
    if-eqz v5, :cond_1

    #@51
    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@54
    move-result v10

    #@55
    .line 220
    move-object/from16 v0, p0

    #@57
    iget v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@59
    int-to-float v14, v14

    #@5a
    iget-object v15, v13, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@5c
    invoke-virtual {v15}, Landroid/graphics/NinePatch;->getDensity()I

    #@5f
    move-result v15

    #@60
    int-to-float v15, v15

    #@61
    div-float v11, v14, v15

    #@63
    .line 221
    .local v11, "scale":F
    iget v14, v1, Landroid/graphics/Rect;->left:I

    #@65
    int-to-float v7, v14

    #@66
    .line 222
    .local v7, "px":F
    iget v14, v1, Landroid/graphics/Rect;->top:I

    #@68
    int-to-float v8, v14

    #@69
    .line 223
    .local v8, "py":F
    move-object/from16 v0, p1

    #@6b
    invoke-virtual {v0, v11, v11, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    #@6e
    .line 225
    move-object/from16 v0, p0

    #@70
    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTempRect:Landroid/graphics/Rect;

    #@72
    if-nez v14, :cond_0

    #@74
    .line 226
    new-instance v14, Landroid/graphics/Rect;

    #@76
    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    #@79
    move-object/from16 v0, p0

    #@7b
    iput-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTempRect:Landroid/graphics/Rect;

    #@7d
    .line 230
    :cond_0
    move-object/from16 v0, p0

    #@7f
    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTempRect:Landroid/graphics/Rect;

    #@81
    .line 231
    .local v12, "scaledBounds":Landroid/graphics/Rect;
    iget v14, v1, Landroid/graphics/Rect;->left:I

    #@83
    iput v14, v12, Landroid/graphics/Rect;->left:I

    #@85
    .line 232
    iget v14, v1, Landroid/graphics/Rect;->top:I

    #@87
    iput v14, v12, Landroid/graphics/Rect;->top:I

    #@89
    .line 233
    iget v14, v1, Landroid/graphics/Rect;->left:I

    #@8b
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@8e
    move-result v15

    #@8f
    int-to-float v15, v15

    #@90
    div-float/2addr v15, v11

    #@91
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    #@94
    move-result v15

    #@95
    add-int/2addr v14, v15

    #@96
    iput v14, v12, Landroid/graphics/Rect;->right:I

    #@98
    .line 234
    iget v14, v1, Landroid/graphics/Rect;->top:I

    #@9a
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@9d
    move-result v15

    #@9e
    int-to-float v15, v15

    #@9f
    div-float/2addr v15, v11

    #@a0
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    #@a3
    move-result v15

    #@a4
    add-int/2addr v14, v15

    #@a5
    iput v14, v12, Landroid/graphics/Rect;->bottom:I

    #@a7
    .line 235
    move-object v1, v12

    #@a8
    .line 238
    .end local v7    # "px":F
    .end local v8    # "py":F
    .end local v11    # "scale":F
    .end local v12    # "scaledBounds":Landroid/graphics/Rect;
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/NinePatchDrawable;->needsMirroring()Z

    #@ab
    move-result v6

    #@ac
    .line 239
    .local v6, "needsMirroring":Z
    if-eqz v6, :cond_2

    #@ae
    .line 240
    if-ltz v10, :cond_9

    #@b0
    .line 243
    :goto_3
    iget v14, v1, Landroid/graphics/Rect;->left:I

    #@b2
    iget v15, v1, Landroid/graphics/Rect;->right:I

    #@b4
    add-int/2addr v14, v15

    #@b5
    int-to-float v14, v14

    #@b6
    const/high16 v15, 0x40000000    # 2.0f

    #@b8
    div-float v3, v14, v15

    #@ba
    .line 244
    .local v3, "cx":F
    iget v14, v1, Landroid/graphics/Rect;->top:I

    #@bc
    iget v15, v1, Landroid/graphics/Rect;->bottom:I

    #@be
    add-int/2addr v14, v15

    #@bf
    int-to-float v14, v14

    #@c0
    const/high16 v15, 0x40000000    # 2.0f

    #@c2
    div-float v4, v14, v15

    #@c4
    .line 245
    .local v4, "cy":F
    const/high16 v14, -0x40800000    # -1.0f

    #@c6
    const/high16 v15, 0x3f800000    # 1.0f

    #@c8
    move-object/from16 v0, p1

    #@ca
    invoke-virtual {v0, v14, v15, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    #@cd
    .line 248
    .end local v3    # "cx":F
    .end local v4    # "cy":F
    :cond_2
    iget-object v14, v13, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget-object v15, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@d3
    move-object/from16 v0, p1

    #@d5
    invoke-virtual {v14, v0, v1, v15}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@d8
    .line 250
    if-ltz v10, :cond_3

    #@da
    .line 251
    move-object/from16 v0, p1

    #@dc
    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@df
    .line 254
    :cond_3
    if-eqz v2, :cond_4

    #@e1
    .line 255
    move-object/from16 v0, p0

    #@e3
    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@e5
    const/4 v15, 0x0

    #@e6
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@e9
    .line 258
    :cond_4
    if-ltz v9, :cond_5

    #@eb
    .line 259
    move-object/from16 v0, p0

    #@ed
    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@ef
    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    #@f2
    .line 193
    :cond_5
    return-void

    #@f3
    .line 204
    .end local v2    # "clearColorFilter":Z
    .end local v5    # "needsDensityScaling":Z
    .end local v6    # "needsMirroring":Z
    .end local v9    # "restoreAlpha":I
    :cond_6
    const/4 v2, 0x0

    #@f4
    .restart local v2    # "clearColorFilter":Z
    goto/16 :goto_0

    #@f6
    .line 212
    :cond_7
    const/4 v9, -0x1

    #@f7
    .restart local v9    # "restoreAlpha":I
    goto/16 :goto_1

    #@f9
    .line 215
    :cond_8
    const/4 v5, 0x0

    #@fa
    goto/16 :goto_2

    #@fc
    .line 240
    .restart local v5    # "needsDensityScaling":Z
    .restart local v6    # "needsMirroring":Z
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@ff
    move-result v10

    #@100
    goto :goto_3
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 328
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 330
    const/16 v0, 0xff

    #@6
    return v0

    #@7
    .line 332
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 265
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@6
    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->getChangingConfigurations()I

    #@9
    move-result v1

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    #@0
    .prologue
    .line 540
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getChangingConfigurations()I

    #@5
    move-result v1

    #@6
    iput v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    #@8
    .line 541
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@a
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 523
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    #@2
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 518
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    #@2
    return v0
.end method

.method public getOpacity()I
    .locals 2

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@4
    invoke-virtual {v0}, Landroid/graphics/NinePatch;->hasAlpha()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 529
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@c
    if-eqz v0, :cond_1

    #@e
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@10
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    #@13
    move-result v0

    #@14
    const/16 v1, 0xff

    #@16
    if-ge v0, v1, :cond_1

    #@18
    .line 530
    :cond_0
    const/4 v0, -0x3

    #@19
    .line 528
    :goto_0
    return v0

    #@1a
    .line 530
    :cond_1
    const/4 v0, -0x1

    #@1b
    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 5

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@2
    .line 308
    .local v0, "opticalInsets":Landroid/graphics/Insets;
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->needsMirroring()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 309
    iget v1, v0, Landroid/graphics/Insets;->right:I

    #@a
    iget v2, v0, Landroid/graphics/Insets;->top:I

    #@c
    .line 310
    iget v3, v0, Landroid/graphics/Insets;->left:I

    #@e
    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    #@10
    .line 309
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 312
    :cond_0
    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v6

    #@4
    .line 281
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 282
    return-void

    #@b
    .line 285
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@d
    if-eqz v0, :cond_1

    #@f
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 287
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@15
    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@17
    invoke-virtual {v0}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;

    #@1e
    move-result-object v7

    #@1f
    .line 288
    .local v7, "insets":Landroid/graphics/NinePatch$InsetStruct;
    if-eqz v7, :cond_1

    #@21
    .line 289
    iget v0, v6, Landroid/graphics/Rect;->left:I

    #@23
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    #@25
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@27
    add-int/2addr v1, v0

    #@28
    .line 290
    iget v0, v6, Landroid/graphics/Rect;->top:I

    #@2a
    iget-object v2, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    #@2c
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@2e
    add-int/2addr v2, v0

    #@2f
    .line 291
    iget v0, v6, Landroid/graphics/Rect;->right:I

    #@31
    iget-object v3, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    #@33
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@35
    sub-int v3, v0, v3

    #@37
    .line 292
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    #@39
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    #@3b
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@3d
    sub-int v4, v0, v4

    #@3f
    .line 293
    iget v5, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineRadius:F

    #@41
    move-object v0, p1

    #@42
    .line 289
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    #@45
    .line 294
    iget v0, v7, Landroid/graphics/NinePatch$InsetStruct;->outlineAlpha:F

    #@47
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getAlpha()I

    #@4a
    move-result v1

    #@4b
    int-to-float v1, v1

    #@4c
    const/high16 v2, 0x437f0000    # 255.0f

    #@4e
    div-float/2addr v1, v2

    #@4f
    mul-float/2addr v0, v1

    #@50
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    #@53
    .line 295
    return-void

    #@54
    .line 299
    .end local v7    # "insets":Landroid/graphics/NinePatch$InsetStruct;
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    #@57
    .line 279
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 270
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 271
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    #@7
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@a
    .line 272
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@c
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@e
    or-int/2addr v1, v2

    #@f
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@11
    or-int/2addr v1, v2

    #@12
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@14
    or-int/2addr v1, v2

    #@15
    if-eqz v1, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    :cond_0
    return v0

    #@19
    .line 274
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 2

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 510
    new-instance v0, Landroid/graphics/Paint;

    #@6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@b
    .line 511
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    #@11
    .line 513
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@13
    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@4
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/graphics/NinePatch;->getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 399
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 401
    sget-object v1, Lcom/android/internal/R$styleable;->NinePatchDrawable:[I

    #@5
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/NinePatchDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 402
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@c
    .line 403
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@f
    .line 405
    invoke-direct {p0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@12
    .line 398
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    #@4
    return v0
.end method

.method public isFilterBitmap()Z
    .locals 1

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public isStateful()Z
    .locals 2

    #@0
    .prologue
    .line 574
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    .line 575
    .local v0, "s":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    if-eqz v1, :cond_1

    #@c
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@e
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@11
    move-result v1

    #@12
    :goto_0
    return v1

    #@13
    :cond_0
    const/4 v1, 0x1

    #@14
    goto :goto_0

    #@15
    :cond_1
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 546
    iget-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_0

    #@a
    .line 547
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@c
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V

    #@11
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@13
    .line 548
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    #@16
    .line 550
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    .line 564
    .local v0, "state":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 565
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@c
    iget-object v2, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@e
    iget-object v3, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@16
    .line 566
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 569
    :cond_0
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_0

    #@4
    const/16 v0, 0xff

    #@6
    if-ne p1, v0, :cond_0

    #@8
    .line 320
    return-void

    #@9
    .line 322
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@10
    .line 323
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@13
    .line 317
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    iput-boolean p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    #@4
    .line 372
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_0

    #@4
    if-nez p1, :cond_0

    #@6
    .line 339
    return-void

    #@7
    .line 341
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@e
    .line 342
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@11
    .line 336
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_0

    #@4
    if-nez p1, :cond_0

    #@6
    .line 364
    return-void

    #@7
    .line 367
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    #@e
    .line 368
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@11
    .line 360
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    #@0
    .prologue
    .line 387
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@7
    .line 388
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@a
    .line 386
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .param p1, "density"    # I

    #@0
    .prologue
    .line 180
    if-nez p1, :cond_0

    #@2
    .line 181
    const/16 p1, 0xa0

    #@4
    .line 184
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@6
    if-eq v0, p1, :cond_1

    #@8
    .line 185
    iput p1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@a
    .line 187
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->computeBitmapSize()V

    #@d
    .line 188
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@10
    .line 179
    :cond_1
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    #@7
    .line 155
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 168
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@2
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    #@5
    .line 167
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    .line 348
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@8
    iget-object v1, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    .line 349
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@13
    .line 346
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4
    .line 355
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@8
    iget-object v1, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    .line 356
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@13
    .line 353
    return-void
.end method
