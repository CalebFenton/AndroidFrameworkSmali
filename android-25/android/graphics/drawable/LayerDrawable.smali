.class public Landroid/graphics/drawable/LayerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LayerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/LayerDrawable$ChildDrawable;,
        Landroid/graphics/drawable/LayerDrawable$LayerState;
    }
.end annotation


# static fields
.field public static final INSET_UNDEFINED:I = -0x80000000

.field public static final PADDING_MODE_NEST:I = 0x0

.field public static final PADDING_MODE_STACK:I = 0x1


# instance fields
.field private mChildRequestedInvalidation:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

.field private mMutated:Z

.field private mPaddingB:[I

.field private mPaddingL:[I

.field private mPaddingR:[I

.field private mPaddingT:[I

.field private mSuspendChildInvalidation:Z

.field private final mTmpContainer:Landroid/graphics/Rect;

.field private final mTmpOutRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, v1

    #@2
    .line 150
    check-cast v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@4
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    #@7
    .line 149
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 101
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@a
    .line 102
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    #@11
    .line 103
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpContainer:Landroid/graphics/Rect;

    #@18
    .line 158
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@1e
    .line 159
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@20
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@22
    if-lez v0, :cond_0

    #@24
    .line 160
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    #@27
    .line 161
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    #@2a
    .line 157
    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 117
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    #@4
    .line 116
    return-void
.end method

.method constructor <init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V
    .locals 6
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 128
    invoke-direct {p0, p2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    #@4
    .line 130
    if-nez p1, :cond_0

    #@6
    .line 131
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "layers must be non-null"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 134
    :cond_0
    array-length v1, p1

    #@10
    .line 135
    .local v1, "length":I
    new-array v2, v1, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@12
    .line 136
    .local v2, "r":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@15
    .line 137
    new-instance v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@17
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@19
    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    #@1b
    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    #@1e
    aput-object v3, v2, v0

    #@20
    .line 138
    aget-object v3, v2, v0

    #@22
    aget-object v4, p1, v0

    #@24
    iput-object v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@26
    .line 139
    aget-object v3, p1, v0

    #@28
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@2b
    .line 140
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2d
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@2f
    aget-object v5, p1, v0

    #@31
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@34
    move-result v5

    #@35
    or-int/2addr v4, v5

    #@36
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@38
    .line 136
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 142
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3d
    iput v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@3f
    .line 143
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@41
    iput-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@43
    .line 145
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    #@46
    .line 146
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    #@49
    .line 127
    return-void
.end method

.method private computeNestedPadding(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1228
    iput v3, p1, Landroid/graphics/Rect;->left:I

    #@3
    .line 1229
    iput v3, p1, Landroid/graphics/Rect;->top:I

    #@5
    .line 1230
    iput v3, p1, Landroid/graphics/Rect;->right:I

    #@7
    .line 1231
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    #@9
    .line 1234
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@b
    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@d
    .line 1235
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@f
    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@11
    .line 1236
    .local v0, "N":I
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@14
    .line 1237
    aget-object v3, v1, v2

    #@16
    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    #@19
    .line 1239
    iget v3, p1, Landroid/graphics/Rect;->left:I

    #@1b
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    #@1d
    aget v4, v4, v2

    #@1f
    add-int/2addr v3, v4

    #@20
    iput v3, p1, Landroid/graphics/Rect;->left:I

    #@22
    .line 1240
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@24
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    #@26
    aget v4, v4, v2

    #@28
    add-int/2addr v3, v4

    #@29
    iput v3, p1, Landroid/graphics/Rect;->top:I

    #@2b
    .line 1241
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@2d
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    #@2f
    aget v4, v4, v2

    #@31
    add-int/2addr v3, v4

    #@32
    iput v3, p1, Landroid/graphics/Rect;->right:I

    #@34
    .line 1242
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@36
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    #@38
    aget v4, v4, v2

    #@3a
    add-int/2addr v3, v4

    #@3b
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    #@3d
    .line 1236
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 1227
    :cond_0
    return-void
.end method

.method private computeStackedPadding(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1247
    iput v3, p1, Landroid/graphics/Rect;->left:I

    #@3
    .line 1248
    iput v3, p1, Landroid/graphics/Rect;->top:I

    #@5
    .line 1249
    iput v3, p1, Landroid/graphics/Rect;->right:I

    #@7
    .line 1250
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    #@9
    .line 1253
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@b
    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@d
    .line 1254
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@f
    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@11
    .line 1255
    .local v0, "N":I
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@14
    .line 1256
    aget-object v3, v1, v2

    #@16
    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    #@19
    .line 1258
    iget v3, p1, Landroid/graphics/Rect;->left:I

    #@1b
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    #@1d
    aget v4, v4, v2

    #@1f
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@22
    move-result v3

    #@23
    iput v3, p1, Landroid/graphics/Rect;->left:I

    #@25
    .line 1259
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@27
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    #@29
    aget v4, v4, v2

    #@2b
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@2e
    move-result v3

    #@2f
    iput v3, p1, Landroid/graphics/Rect;->top:I

    #@31
    .line 1260
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@33
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    #@35
    aget v4, v4, v2

    #@37
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@3a
    move-result v3

    #@3b
    iput v3, p1, Landroid/graphics/Rect;->right:I

    #@3d
    .line 1261
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@3f
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    #@41
    aget v4, v4, v2

    #@43
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@46
    move-result v3

    #@47
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    #@49
    .line 1255
    add-int/lit8 v2, v2, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 1246
    :cond_0
    return-void
.end method

.method private createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 487
    new-instance v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@4
    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    #@6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    #@9
    .line 488
    .local v0, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput-object p1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    .line 489
    return-object v0
.end method

.method private getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1410
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@5
    .line 1411
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@7
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@9
    .line 1412
    .local v0, "N":I
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@c
    .line 1413
    aget-object v4, v1, v3

    #@e
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    .line 1414
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@12
    .line 1415
    return-object v2

    #@13
    .line 1412
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1418
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v5
.end method

.method private inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
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
    const/4 v9, 0x4

    #@1
    const/4 v8, 0x2

    #@2
    .line 250
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@4
    .line 252
    .local v4, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@7
    move-result v6

    #@8
    add-int/lit8 v2, v6, 0x1

    #@a
    .line 255
    .local v2, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@d
    move-result v5

    #@e
    .local v5, "type":I
    const/4 v6, 0x1

    #@f
    if-eq v5, v6, :cond_5

    #@11
    .line 256
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@14
    move-result v1

    #@15
    .local v1, "depth":I
    if-ge v1, v2, :cond_1

    #@17
    const/4 v6, 0x3

    #@18
    if-eq v5, v6, :cond_5

    #@1a
    .line 257
    :cond_1
    if-ne v5, v8, :cond_0

    #@1c
    .line 261
    if-gt v1, v2, :cond_0

    #@1e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    const-string/jumbo v7, "item"

    #@25
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_0

    #@2b
    .line 265
    new-instance v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@2d
    iget v6, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    #@2f
    invoke-direct {v3, v6}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    #@32
    .line 266
    .local v3, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    sget-object v6, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    #@34
    invoke-static {p1, p4, p3, v6}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@37
    move-result-object v0

    #@38
    .line 267
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    #@3b
    .line 268
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3e
    .line 274
    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@40
    if-nez v6, :cond_4

    #@42
    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@44
    if-eqz v6, :cond_2

    #@46
    .line 275
    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@48
    aget v6, v6, v9

    #@4a
    if-nez v6, :cond_4

    #@4c
    .line 276
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@4f
    move-result v5

    #@50
    if-eq v5, v9, :cond_2

    #@52
    .line 278
    if-eq v5, v8, :cond_3

    #@54
    .line 279
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@56
    new-instance v7, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@5e
    move-result-object v8

    #@5f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    .line 280
    const-string/jumbo v8, ": <item> tag requires a \'drawable\' attribute or "

    #@66
    .line 279
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    .line 281
    const-string/jumbo v8, "child tag defining a drawable"

    #@6d
    .line 279
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v7

    #@75
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@78
    throw v6

    #@79
    .line 285
    :cond_3
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@7c
    move-result-object v6

    #@7d
    iput-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@7f
    .line 286
    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@81
    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@84
    .line 287
    iget v6, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@86
    .line 288
    iget-object v7, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@88
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@8b
    move-result v7

    #@8c
    .line 287
    or-int/2addr v6, v7

    #@8d
    iput v6, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@8f
    .line 291
    :cond_4
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    #@92
    goto/16 :goto_0

    #@94
    .line 249
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "depth":I
    .end local v3    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_5
    return-void
.end method

.method private refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z
    .locals 3
    .param p1, "i"    # I
    .param p2, "r"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@0
    .prologue
    .line 1719
    iget-object v1, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v1, :cond_2

    #@4
    .line 1720
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@6
    .line 1721
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@b
    .line 1722
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@d
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    #@f
    aget v2, v2, p1

    #@11
    if-ne v1, v2, :cond_0

    #@13
    iget v1, v0, Landroid/graphics/Rect;->top:I

    #@15
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    #@17
    aget v2, v2, p1

    #@19
    if-eq v1, v2, :cond_1

    #@1b
    .line 1724
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    #@1d
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@1f
    aput v2, v1, p1

    #@21
    .line 1725
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    #@23
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@25
    aput v2, v1, p1

    #@27
    .line 1726
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    #@29
    iget v2, v0, Landroid/graphics/Rect;->right:I

    #@2b
    aput v2, v1, p1

    #@2d
    .line 1727
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    #@2f
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    #@31
    aput v2, v1, p1

    #@33
    .line 1728
    const/4 v1, 0x1

    #@34
    return v1

    #@35
    .line 1723
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->right:I

    #@37
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    #@39
    aget v2, v2, p1

    #@3b
    if-ne v1, v2, :cond_0

    #@3d
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    #@3f
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    #@41
    aget v2, v2, p1

    #@43
    if-ne v1, v2, :cond_0

    #@45
    .line 1731
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_2
    const/4 v1, 0x0

    #@46
    return v1
.end method

.method private static resolveGravity(IIIII)I
    .locals 1
    .param p0, "gravity"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "intrinsicWidth"    # I
    .param p4, "intrinsicHeight"    # I

    #@0
    .prologue
    .line 1608
    invoke-static {p0}, Landroid/view/Gravity;->isHorizontal(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1609
    if-gez p1, :cond_4

    #@8
    .line 1610
    or-int/lit8 p0, p0, 0x7

    #@a
    .line 1616
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/view/Gravity;->isVertical(I)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1

    #@10
    .line 1617
    if-gez p2, :cond_5

    #@12
    .line 1618
    or-int/lit8 p0, p0, 0x70

    #@14
    .line 1627
    :cond_1
    :goto_1
    if-gez p1, :cond_2

    #@16
    if-gez p3, :cond_2

    #@18
    .line 1628
    or-int/lit8 p0, p0, 0x7

    #@1a
    .line 1631
    :cond_2
    if-gez p2, :cond_3

    #@1c
    if-gez p4, :cond_3

    #@1e
    .line 1632
    or-int/lit8 p0, p0, 0x70

    #@20
    .line 1635
    :cond_3
    return p0

    #@21
    .line 1612
    :cond_4
    const v0, 0x800003

    #@24
    or-int/2addr p0, v0

    #@25
    goto :goto_0

    #@26
    .line 1620
    :cond_5
    or-int/lit8 p0, p0, 0x30

    #@28
    goto :goto_1
.end method

.method private resumeChildInvalidation()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 978
    iput-boolean v1, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    #@3
    .line 980
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 981
    iput-boolean v1, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    #@9
    .line 982
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    #@c
    .line 977
    :cond_0
    return-void
.end method

.method private setLayerInsetInternal(IIIIIII)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .param p6, "s"    # I
    .param p7, "e"    # I

    #@0
    .prologue
    .line 922
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 923
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@8
    .line 924
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@a
    .line 925
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@c
    .line 926
    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@e
    .line 927
    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@10
    .line 928
    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@12
    .line 921
    return-void
.end method

.method private suspendChildInvalidation()V
    .locals 1

    #@0
    .prologue
    .line 968
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    #@3
    .line 967
    return-void
.end method

.method private updateLayerBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1529
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->suspendChildInvalidation()V

    #@3
    .line 1530
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 1532
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->resumeChildInvalidation()V

    #@9
    .line 1527
    return-void

    #@a
    .line 1531
    :catchall_0
    move-exception v0

    #@b
    .line 1532
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->resumeChildInvalidation()V

    #@e
    .line 1531
    throw v0
.end method

.method private updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    .locals 36
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1537
    const/16 v28, 0x0

    #@2
    .line 1538
    .local v28, "paddingL":I
    const/16 v30, 0x0

    #@4
    .line 1539
    .local v30, "paddingT":I
    const/16 v29, 0x0

    #@6
    .line 1540
    .local v29, "paddingR":I
    const/16 v27, 0x0

    #@8
    .line 1542
    .local v27, "paddingB":I
    move-object/from16 v0, p0

    #@a
    iget-object v9, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    #@c
    .line 1543
    .local v9, "outRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    #@f
    move-result v10

    #@10
    .line 1544
    .local v10, "layoutDirection":I
    const/16 v32, 0x1

    #@12
    move/from16 v0, v32

    #@14
    if-ne v10, v0, :cond_1

    #@16
    const/16 v23, 0x1

    #@18
    .line 1545
    .local v23, "isLayoutRtl":Z
    :goto_0
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@1c
    move-object/from16 v32, v0

    #@1e
    invoke-static/range {v32 .. v32}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    #@21
    move-result v32

    #@22
    if-nez v32, :cond_2

    #@24
    const/16 v24, 0x1

    #@26
    .line 1546
    .local v24, "isPaddingNested":Z
    :goto_1
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2a
    move-object/from16 v32, v0

    #@2c
    move-object/from16 v0, v32

    #@2e
    iget-object v11, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@30
    .line 1548
    .local v11, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v14, 0x0

    #@31
    .local v14, "i":I
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@35
    move-object/from16 v32, v0

    #@37
    move-object/from16 v0, v32

    #@39
    iget v12, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@3b
    .local v12, "count":I
    :goto_2
    if-ge v14, v12, :cond_a

    #@3d
    .line 1549
    aget-object v31, v11, v14

    #@3f
    .line 1550
    .local v31, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    move-object/from16 v0, v31

    #@41
    iget-object v13, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@43
    .line 1551
    .local v13, "d":Landroid/graphics/drawable/Drawable;
    if-nez v13, :cond_3

    #@45
    .line 1548
    :cond_0
    :goto_3
    add-int/lit8 v14, v14, 0x1

    #@47
    goto :goto_2

    #@48
    .line 1544
    .end local v11    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v12    # "count":I
    .end local v13    # "d":Landroid/graphics/drawable/Drawable;
    .end local v14    # "i":I
    .end local v23    # "isLayoutRtl":Z
    .end local v24    # "isPaddingNested":Z
    .end local v31    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    const/16 v23, 0x0

    #@4a
    .restart local v23    # "isLayoutRtl":Z
    goto :goto_0

    #@4b
    .line 1545
    :cond_2
    const/16 v24, 0x0

    #@4d
    .restart local v24    # "isPaddingNested":Z
    goto :goto_1

    #@4e
    .line 1555
    .restart local v11    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .restart local v12    # "count":I
    .restart local v13    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "i":I
    .restart local v31    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_3
    move-object/from16 v0, v31

    #@50
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@52
    move/from16 v20, v0

    #@54
    .line 1556
    .local v20, "insetT":I
    move-object/from16 v0, v31

    #@56
    iget v15, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@58
    .line 1560
    .local v15, "insetB":I
    if-eqz v23, :cond_4

    #@5a
    move-object/from16 v0, v31

    #@5c
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@5e
    move/from16 v18, v0

    #@60
    .line 1561
    .local v18, "insetRtlL":I
    :goto_4
    if-eqz v23, :cond_5

    #@62
    move-object/from16 v0, v31

    #@64
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@66
    move/from16 v19, v0

    #@68
    .line 1562
    .local v19, "insetRtlR":I
    :goto_5
    const/high16 v32, -0x80000000

    #@6a
    move/from16 v0, v18

    #@6c
    move/from16 v1, v32

    #@6e
    if-ne v0, v1, :cond_6

    #@70
    move-object/from16 v0, v31

    #@72
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@74
    move/from16 v16, v0

    #@76
    .line 1563
    .local v16, "insetL":I
    :goto_6
    const/high16 v32, -0x80000000

    #@78
    move/from16 v0, v19

    #@7a
    move/from16 v1, v32

    #@7c
    if-ne v0, v1, :cond_7

    #@7e
    move-object/from16 v0, v31

    #@80
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@82
    move/from16 v17, v0

    #@84
    .line 1567
    .local v17, "insetR":I
    :goto_7
    move-object/from16 v0, p0

    #@86
    iget-object v8, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpContainer:Landroid/graphics/Rect;

    #@88
    .line 1568
    .local v8, "container":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    #@8a
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@8c
    move/from16 v32, v0

    #@8e
    add-int v32, v32, v16

    #@90
    add-int v32, v32, v28

    #@92
    move-object/from16 v0, p1

    #@94
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@96
    move/from16 v33, v0

    #@98
    add-int v33, v33, v20

    #@9a
    add-int v33, v33, v30

    #@9c
    .line 1569
    move-object/from16 v0, p1

    #@9e
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@a0
    move/from16 v34, v0

    #@a2
    sub-int v34, v34, v17

    #@a4
    sub-int v34, v34, v29

    #@a6
    move-object/from16 v0, p1

    #@a8
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@aa
    move/from16 v35, v0

    #@ac
    sub-int v35, v35, v15

    #@ae
    sub-int v35, v35, v27

    #@b0
    .line 1568
    move/from16 v0, v32

    #@b2
    move/from16 v1, v33

    #@b4
    move/from16 v2, v34

    #@b6
    move/from16 v3, v35

    #@b8
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@bb
    .line 1573
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@be
    move-result v22

    #@bf
    .line 1574
    .local v22, "intrinsicW":I
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@c2
    move-result v21

    #@c3
    .line 1575
    .local v21, "intrinsicH":I
    move-object/from16 v0, v31

    #@c5
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@c7
    move/from16 v26, v0

    #@c9
    .line 1576
    .local v26, "layerW":I
    move-object/from16 v0, v31

    #@cb
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@cd
    move/from16 v25, v0

    #@cf
    .line 1577
    .local v25, "layerH":I
    move-object/from16 v0, v31

    #@d1
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    #@d3
    move/from16 v32, v0

    #@d5
    move/from16 v0, v32

    #@d7
    move/from16 v1, v26

    #@d9
    move/from16 v2, v25

    #@db
    move/from16 v3, v22

    #@dd
    move/from16 v4, v21

    #@df
    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->resolveGravity(IIIII)I

    #@e2
    move-result v5

    #@e3
    .line 1580
    .local v5, "gravity":I
    if-gez v26, :cond_8

    #@e5
    move/from16 v6, v22

    #@e7
    .line 1581
    .local v6, "resolvedW":I
    :goto_8
    if-gez v25, :cond_9

    #@e9
    move/from16 v7, v21

    #@eb
    .line 1582
    .local v7, "resolvedH":I
    :goto_9
    invoke-static/range {v5 .. v10}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@ee
    .line 1583
    invoke-virtual {v13, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@f1
    .line 1585
    if-eqz v24, :cond_0

    #@f3
    .line 1586
    move-object/from16 v0, p0

    #@f5
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    #@f7
    move-object/from16 v32, v0

    #@f9
    aget v32, v32, v14

    #@fb
    add-int v28, v28, v32

    #@fd
    .line 1587
    move-object/from16 v0, p0

    #@ff
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    #@101
    move-object/from16 v32, v0

    #@103
    aget v32, v32, v14

    #@105
    add-int v29, v29, v32

    #@107
    .line 1588
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    #@10b
    move-object/from16 v32, v0

    #@10d
    aget v32, v32, v14

    #@10f
    add-int v30, v30, v32

    #@111
    .line 1589
    move-object/from16 v0, p0

    #@113
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    #@115
    move-object/from16 v32, v0

    #@117
    aget v32, v32, v14

    #@119
    add-int v27, v27, v32

    #@11b
    goto/16 :goto_3

    #@11d
    .line 1560
    .end local v5    # "gravity":I
    .end local v6    # "resolvedW":I
    .end local v7    # "resolvedH":I
    .end local v8    # "container":Landroid/graphics/Rect;
    .end local v16    # "insetL":I
    .end local v17    # "insetR":I
    .end local v18    # "insetRtlL":I
    .end local v19    # "insetRtlR":I
    .end local v21    # "intrinsicH":I
    .end local v22    # "intrinsicW":I
    .end local v25    # "layerH":I
    .end local v26    # "layerW":I
    :cond_4
    move-object/from16 v0, v31

    #@11f
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@121
    move/from16 v18, v0

    #@123
    .restart local v18    # "insetRtlL":I
    goto/16 :goto_4

    #@125
    .line 1561
    :cond_5
    move-object/from16 v0, v31

    #@127
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@129
    move/from16 v19, v0

    #@12b
    .restart local v19    # "insetRtlR":I
    goto/16 :goto_5

    #@12d
    .line 1562
    :cond_6
    move/from16 v16, v18

    #@12f
    .restart local v16    # "insetL":I
    goto/16 :goto_6

    #@131
    .line 1563
    :cond_7
    move/from16 v17, v19

    #@133
    .restart local v17    # "insetR":I
    goto/16 :goto_7

    #@135
    .line 1580
    .restart local v5    # "gravity":I
    .restart local v8    # "container":Landroid/graphics/Rect;
    .restart local v21    # "intrinsicH":I
    .restart local v22    # "intrinsicW":I
    .restart local v25    # "layerH":I
    .restart local v26    # "layerW":I
    :cond_8
    move/from16 v6, v26

    #@137
    .restart local v6    # "resolvedW":I
    goto :goto_8

    #@138
    :cond_9
    move/from16 v7, v25

    #@13a
    .line 1581
    goto :goto_9

    #@13b
    .line 1536
    .end local v5    # "gravity":I
    .end local v6    # "resolvedW":I
    .end local v8    # "container":Landroid/graphics/Rect;
    .end local v13    # "d":Landroid/graphics/drawable/Drawable;
    .end local v15    # "insetB":I
    .end local v16    # "insetL":I
    .end local v17    # "insetR":I
    .end local v18    # "insetRtlL":I
    .end local v19    # "insetRtlR":I
    .end local v20    # "insetT":I
    .end local v21    # "intrinsicH":I
    .end local v22    # "intrinsicW":I
    .end local v25    # "layerH":I
    .end local v26    # "layerW":I
    .end local v31    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_a
    return-void
.end method

.method private updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1, "layer"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 343
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    .line 346
    .local v4, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@8
    move-result v6

    #@9
    or-int/2addr v5, v6

    #@a
    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@c
    .line 349
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@f
    move-result-object v5

    #@10
    iput-object v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@12
    .line 351
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@15
    move-result v0

    #@16
    .line 352
    .local v0, "N":I
    const/4 v3, 0x0

    #@17
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@19
    .line 353
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@1c
    move-result v1

    #@1d
    .line 354
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    #@20
    .line 352
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_0

    #@23
    .line 356
    :pswitch_1
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@25
    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@28
    move-result v5

    #@29
    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@2b
    goto :goto_1

    #@2c
    .line 359
    :pswitch_2
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@2e
    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@31
    move-result v5

    #@32
    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@34
    goto :goto_1

    #@35
    .line 362
    :pswitch_3
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@37
    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@3a
    move-result v5

    #@3b
    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@3d
    goto :goto_1

    #@3e
    .line 365
    :pswitch_4
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@40
    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@43
    move-result v5

    #@44
    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@46
    goto :goto_1

    #@47
    .line 368
    :pswitch_5
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@49
    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@4c
    move-result v5

    #@4d
    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@4f
    goto :goto_1

    #@50
    .line 371
    :pswitch_6
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@52
    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@55
    move-result v5

    #@56
    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@58
    goto :goto_1

    #@59
    .line 374
    :pswitch_7
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@5b
    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@5e
    move-result v5

    #@5f
    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@61
    goto :goto_1

    #@62
    .line 377
    :pswitch_8
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@64
    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@67
    move-result v5

    #@68
    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@6a
    goto :goto_1

    #@6b
    .line 380
    :pswitch_9
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    #@6d
    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@70
    move-result v5

    #@71
    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    #@73
    goto :goto_1

    #@74
    .line 383
    :pswitch_a
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@76
    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@79
    move-result v5

    #@7a
    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@7c
    goto :goto_1

    #@7d
    .line 388
    .end local v1    # "attr":I
    :cond_0
    const/4 v5, 0x4

    #@7e
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@81
    move-result-object v2

    #@82
    .line 389
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    #@84
    .line 390
    iget-object v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@86
    if-eqz v5, :cond_1

    #@88
    .line 395
    iget-object v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@8a
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@8d
    .line 399
    :cond_1
    iput-object v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@8f
    .line 400
    iget-object v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@91
    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@94
    .line 401
    iget v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@96
    .line 402
    iget-object v6, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@98
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@9b
    move-result v6

    #@9c
    .line 401
    or-int/2addr v5, v6

    #@9d
    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@9f
    .line 342
    :cond_2
    return-void

    #@a0
    .line 354
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 299
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    .line 302
    .local v3, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    #@4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@7
    move-result v5

    #@8
    or-int/2addr v4, v5

    #@9
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    #@b
    .line 305
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v4

    #@f
    invoke-static {v3, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-set2(Landroid/graphics/drawable/LayerDrawable$LayerState;[I)[I

    #@12
    .line 307
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@15
    move-result v0

    #@16
    .line 308
    .local v0, "N":I
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@19
    .line 309
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@1c
    move-result v1

    #@1d
    .line 310
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    #@20
    .line 308
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 312
    :pswitch_0
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@25
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@28
    move-result v4

    #@29
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@2b
    goto :goto_1

    #@2c
    .line 315
    :pswitch_1
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@2e
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@31
    move-result v4

    #@32
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@34
    goto :goto_1

    #@35
    .line 318
    :pswitch_2
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@37
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@3a
    move-result v4

    #@3b
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@3d
    goto :goto_1

    #@3e
    .line 321
    :pswitch_3
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@40
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@43
    move-result v4

    #@44
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@46
    goto :goto_1

    #@47
    .line 324
    :pswitch_4
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@49
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@4c
    move-result v4

    #@4d
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@4f
    goto :goto_1

    #@50
    .line 327
    :pswitch_5
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@52
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@55
    move-result v4

    #@56
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@58
    goto :goto_1

    #@59
    .line 330
    :pswitch_6
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@5b
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@5e
    move-result v4

    #@5f
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@61
    goto :goto_1

    #@62
    .line 333
    :pswitch_7
    invoke-static {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get0(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    #@65
    move-result v4

    #@66
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@69
    move-result v4

    #@6a
    invoke-static {v3, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-set0(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z

    #@6d
    goto :goto_1

    #@6e
    .line 336
    :pswitch_8
    invoke-static {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    #@71
    move-result v4

    #@72
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@75
    move-result v4

    #@76
    invoke-static {v3, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-set1(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I

    #@79
    goto :goto_1

    #@7a
    .line 298
    .end local v1    # "attr":I
    :cond_0
    return-void

    #@7b
    .line 310
    nop

    #@7c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public addLayer(Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 500
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@3
    move-result-object v1

    #@4
    .line 501
    .local v1, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    #@7
    move-result v0

    #@8
    .line 502
    .local v0, "index":I
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    #@b
    .line 503
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    #@e
    .line 504
    return v0
.end method

.method addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I
    .locals 6
    .param p1, "layer"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 438
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    .line 439
    .local v3, "st":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@5
    if-eqz v4, :cond_2

    #@7
    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@9
    array-length v0, v4

    #@a
    .line 440
    .local v0, "N":I
    :goto_0
    iget v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@c
    .line 441
    .local v1, "i":I
    if-lt v1, v0, :cond_1

    #@e
    .line 442
    add-int/lit8 v4, v0, 0xa

    #@10
    new-array v2, v4, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@12
    .line 443
    .local v2, "nu":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    if-lez v1, :cond_0

    #@14
    .line 444
    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@16
    invoke-static {v4, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@19
    .line 447
    :cond_0
    iput-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@1b
    .line 450
    .end local v2    # "nu":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@1d
    aput-object p1, v4, v1

    #@1f
    .line 451
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@21
    add-int/lit8 v4, v4, 0x1

    #@23
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@25
    .line 452
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    #@28
    .line 453
    return v1

    #@29
    .line 439
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "N":I
    goto :goto_0
.end method

.method addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .locals 4
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "themeAttrs"    # [I
    .param p3, "id"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "right"    # I
    .param p7, "bottom"    # I

    #@0
    .prologue
    .line 469
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@3
    move-result-object v0

    #@4
    .line 470
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@6
    .line 471
    iput-object p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@8
    .line 472
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->isAutoMirrored()Z

    #@d
    move-result v2

    #@e
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    #@11
    .line 473
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@13
    .line 474
    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@15
    .line 475
    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@17
    .line 476
    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@19
    .line 478
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    #@1c
    .line 480
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@1e
    iget v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@20
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@23
    move-result v3

    #@24
    or-int/2addr v2, v3

    #@25
    iput v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@27
    .line 481
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@2a
    .line 483
    return-object v0
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 10
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 206
    iget-object v7, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@5
    .line 207
    .local v7, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    if-nez v7, :cond_0

    #@7
    .line 208
    return-void

    #@8
    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v8

    #@c
    const/4 v9, 0x0

    #@d
    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@10
    move-result v4

    #@11
    .line 212
    .local v4, "density":I
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->setDensity(I)V

    #@14
    .line 214
    invoke-static {v7}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get2(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I

    #@17
    move-result-object v8

    #@18
    if-eqz v8, :cond_1

    #@1a
    .line 216
    invoke-static {v7}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get2(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I

    #@1d
    move-result-object v8

    #@1e
    sget-object v9, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    #@20
    .line 215
    invoke-virtual {p1, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@23
    move-result-object v1

    #@24
    .line 217
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@27
    .line 218
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@2a
    .line 221
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v2, v7, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@2c
    .line 222
    .local v2, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, v7, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@2e
    .line 223
    .local v0, "N":I
    const/4 v5, 0x0

    #@2f
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_4

    #@31
    .line 224
    aget-object v6, v2, v5

    #@33
    .line 225
    .local v6, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->setDensity(I)V

    #@36
    .line 227
    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@38
    if-eqz v8, :cond_2

    #@3a
    .line 229
    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@3c
    sget-object v9, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    #@3e
    .line 228
    invoke-virtual {p1, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@41
    move-result-object v1

    #@42
    .line 230
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v6, v1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    #@45
    .line 231
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@48
    .line 234
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_2
    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@4a
    .line 235
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    #@4c
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@4f
    move-result v8

    #@50
    if-eqz v8, :cond_3

    #@52
    .line 236
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@55
    .line 239
    iget v8, v7, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@57
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@5a
    move-result v9

    #@5b
    or-int/2addr v8, v9

    #@5c
    iput v8, v7, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@5e
    .line 223
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@60
    goto :goto_0

    #@61
    .line 203
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_4
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 408
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canApplyTheme()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_1
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public clearMutated()V
    .locals 5

    #@0
    .prologue
    .line 1787
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 1789
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@5
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@7
    .line 1790
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@9
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@b
    .line 1791
    .local v0, "N":I
    const/4 v3, 0x0

    #@c
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@e
    .line 1792
    aget-object v4, v1, v3

    #@10
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    .line 1793
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@14
    .line 1794
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@17
    .line 1791
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1797
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v4, 0x0

    #@1b
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    #@1d
    .line 1786
    return-void
.end method

.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 166
    new-instance v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    #@5
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1007
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1008
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1009
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1010
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1011
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1012
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@14
    .line 1009
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1006
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method ensurePadding()V
    .locals 2

    #@0
    .prologue
    .line 1738
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@4
    .line 1739
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    #@a
    array-length v1, v1

    #@b
    if-lt v1, v0, :cond_0

    #@d
    .line 1740
    return-void

    #@e
    .line 1743
    :cond_0
    new-array v1, v0, [I

    #@10
    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    #@12
    .line 1744
    new-array v1, v0, [I

    #@14
    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    #@16
    .line 1745
    new-array v1, v0, [I

    #@18
    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    #@1a
    .line 1746
    new-array v1, v0, [I

    #@1c
    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    #@1e
    .line 1737
    return-void
.end method

.method public findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "id"    # I

    #@0
    .prologue
    .line 518
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 519
    .local v1, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    add-int/lit8 v0, v2, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@c
    .line 520
    aget-object v2, v1, v0

    #@e
    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@10
    if-ne v2, p1, :cond_0

    #@12
    .line 521
    aget-object v2, v1, v0

    #@14
    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    return-object v2

    #@17
    .line 519
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 525
    :cond_1
    const/4 v2, 0x0

    #@1b
    return-object v2
.end method

.method public findIndexByLayerId(I)I
    .locals 5
    .param p1, "id"    # I

    #@0
    .prologue
    .line 597
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v3, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 598
    .local v3, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 599
    .local v0, "N":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@b
    .line 600
    aget-object v1, v3, v2

    #@d
    .line 601
    .local v1, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v4, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@f
    if-ne v4, p1, :cond_0

    #@11
    .line 602
    return v2

    #@12
    .line 599
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 606
    .end local v1    # "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    const/4 v4, -0x1

    #@16
    return v4
.end method

.method public getAlpha()I
    .locals 2

    #@0
    .prologue
    .line 1365
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 1366
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@6
    .line 1367
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1369
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public getBottomPadding()I
    .locals 1

    #@0
    .prologue
    .line 1224
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@4
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 1019
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getChangingConfigurations()I

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
    .line 1759
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canConstantState()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1760
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@a
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getChangingConfigurations()I

    #@d
    move-result v1

    #@e
    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    #@10
    .line 1761
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@12
    return-object v0

    #@13
    .line 1763
    :cond_0
    const/4 v0, 0x0

    #@14
    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 656
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@4
    if-lt p1, v0, :cond_0

    #@6
    .line 657
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 659
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@e
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@10
    aget-object v0, v0, p1

    #@12
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    return-object v0
.end method

.method public getEndPadding()I
    .locals 1

    #@0
    .prologue
    .line 1190
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@4
    return v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1317
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1318
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@6
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@9
    .line 1316
    :goto_0
    return-void

    #@a
    .line 1320
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    #@d
    goto :goto_0
.end method

.method public getId(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 554
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@4
    if-lt p1, v0, :cond_0

    #@6
    .line 555
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 557
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@e
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@10
    aget-object v0, v0, p1

    #@12
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@14
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 12

    #@0
    .prologue
    .line 1683
    const/4 v3, -0x1

    #@1
    .line 1684
    .local v3, "height":I
    const/4 v8, 0x0

    #@2
    .line 1685
    .local v8, "padT":I
    const/4 v7, 0x0

    #@3
    .line 1687
    .local v7, "padB":I
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@5
    invoke-static {v10}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    #@8
    move-result v10

    #@9
    if-nez v10, :cond_1

    #@b
    const/4 v6, 0x1

    #@c
    .line 1688
    .local v6, "nest":Z
    :goto_0
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@e
    iget-object v1, v10, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@10
    .line 1689
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@12
    iget v0, v10, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@14
    .line 1690
    .local v0, "N":I
    const/4 v4, 0x0

    #@15
    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_6

    #@17
    .line 1691
    aget-object v9, v1, v4

    #@19
    .line 1692
    .local v9, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    if-nez v10, :cond_2

    #@1d
    .line 1690
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 1687
    .end local v0    # "N":I
    .end local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v4    # "i":I
    .end local v6    # "nest":Z
    .end local v9    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    const/4 v6, 0x0

    #@21
    .restart local v6    # "nest":Z
    goto :goto_0

    #@22
    .line 1698
    .restart local v0    # "N":I
    .restart local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .restart local v4    # "i":I
    .restart local v9    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@24
    if-gez v10, :cond_4

    #@26
    iget-object v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@28
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@2b
    move-result v5

    #@2c
    .line 1699
    .local v5, "minHeight":I
    :goto_3
    if-gez v5, :cond_5

    #@2e
    const/4 v2, -0x1

    #@2f
    .line 1700
    .local v2, "h":I
    :goto_4
    if-le v2, v3, :cond_3

    #@31
    .line 1701
    move v3, v2

    #@32
    .line 1704
    :cond_3
    if-eqz v6, :cond_0

    #@34
    .line 1705
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    #@36
    aget v10, v10, v4

    #@38
    add-int/2addr v8, v10

    #@39
    .line 1706
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    #@3b
    aget v10, v10, v4

    #@3d
    add-int/2addr v7, v10

    #@3e
    goto :goto_2

    #@3f
    .line 1698
    .end local v2    # "h":I
    .end local v5    # "minHeight":I
    :cond_4
    iget v5, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@41
    goto :goto_3

    #@42
    .line 1699
    .restart local v5    # "minHeight":I
    :cond_5
    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@44
    add-int/2addr v10, v5

    #@45
    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@47
    add-int/2addr v10, v11

    #@48
    add-int/2addr v10, v8

    #@49
    add-int v2, v10, v7

    #@4b
    goto :goto_4

    #@4c
    .line 1710
    .end local v5    # "minHeight":I
    .end local v9    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_6
    return v3
.end method

.method public getIntrinsicWidth()I
    .locals 19

    #@0
    .prologue
    .line 1640
    const/16 v16, -0x1

    #@2
    .line 1641
    .local v16, "width":I
    const/4 v12, 0x0

    #@3
    .line 1642
    .local v12, "padL":I
    const/4 v13, 0x0

    #@4
    .line 1644
    .local v13, "padR":I
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@8
    move-object/from16 v17, v0

    #@a
    invoke-static/range {v17 .. v17}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    #@d
    move-result v17

    #@e
    if-nez v17, :cond_1

    #@10
    const/4 v11, 0x1

    #@11
    .line 1645
    .local v11, "nest":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    #@14
    move-result v17

    #@15
    const/16 v18, 0x1

    #@17
    move/from16 v0, v17

    #@19
    move/from16 v1, v18

    #@1b
    if-ne v0, v1, :cond_2

    #@1d
    const/4 v9, 0x1

    #@1e
    .line 1646
    .local v9, "isLayoutRtl":Z
    :goto_1
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@22
    move-object/from16 v17, v0

    #@24
    move-object/from16 v0, v17

    #@26
    iget-object v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@28
    .line 1647
    .local v3, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2c
    move-object/from16 v17, v0

    #@2e
    move-object/from16 v0, v17

    #@30
    iget v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@32
    .line 1648
    .local v2, "N":I
    const/4 v4, 0x0

    #@33
    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_b

    #@35
    .line 1649
    aget-object v14, v3, v4

    #@37
    .line 1650
    .local v14, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v0, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@39
    move-object/from16 v17, v0

    #@3b
    if-nez v17, :cond_3

    #@3d
    .line 1648
    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@3f
    goto :goto_2

    #@40
    .line 1644
    .end local v2    # "N":I
    .end local v3    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v4    # "i":I
    .end local v9    # "isLayoutRtl":Z
    .end local v11    # "nest":Z
    .end local v14    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    const/4 v11, 0x0

    #@41
    .restart local v11    # "nest":Z
    goto :goto_0

    #@42
    .line 1645
    :cond_2
    const/4 v9, 0x0

    #@43
    .restart local v9    # "isLayoutRtl":Z
    goto :goto_1

    #@44
    .line 1659
    .restart local v2    # "N":I
    .restart local v3    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .restart local v4    # "i":I
    .restart local v14    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_3
    if-eqz v9, :cond_5

    #@46
    iget v7, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@48
    .line 1660
    .local v7, "insetRtlL":I
    :goto_4
    if-eqz v9, :cond_6

    #@4a
    iget v8, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@4c
    .line 1661
    .local v8, "insetRtlR":I
    :goto_5
    const/high16 v17, -0x80000000

    #@4e
    move/from16 v0, v17

    #@50
    if-ne v7, v0, :cond_7

    #@52
    iget v5, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@54
    .line 1662
    .local v5, "insetL":I
    :goto_6
    const/high16 v17, -0x80000000

    #@56
    move/from16 v0, v17

    #@58
    if-ne v8, v0, :cond_8

    #@5a
    iget v6, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@5c
    .line 1666
    .local v6, "insetR":I
    :goto_7
    iget v0, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@5e
    move/from16 v17, v0

    #@60
    if-gez v17, :cond_9

    #@62
    iget-object v0, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@64
    move-object/from16 v17, v0

    #@66
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@69
    move-result v10

    #@6a
    .line 1667
    .local v10, "minWidth":I
    :goto_8
    if-gez v10, :cond_a

    #@6c
    const/4 v15, -0x1

    #@6d
    .line 1668
    .local v15, "w":I
    :goto_9
    move/from16 v0, v16

    #@6f
    if-le v15, v0, :cond_4

    #@71
    .line 1669
    move/from16 v16, v15

    #@73
    .line 1672
    :cond_4
    if-eqz v11, :cond_0

    #@75
    .line 1673
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    #@79
    move-object/from16 v17, v0

    #@7b
    aget v17, v17, v4

    #@7d
    add-int v12, v12, v17

    #@7f
    .line 1674
    move-object/from16 v0, p0

    #@81
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    #@83
    move-object/from16 v17, v0

    #@85
    aget v17, v17, v4

    #@87
    add-int v13, v13, v17

    #@89
    goto :goto_3

    #@8a
    .line 1659
    .end local v5    # "insetL":I
    .end local v6    # "insetR":I
    .end local v7    # "insetRtlL":I
    .end local v8    # "insetRtlR":I
    .end local v10    # "minWidth":I
    .end local v15    # "w":I
    :cond_5
    iget v7, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@8c
    .restart local v7    # "insetRtlL":I
    goto :goto_4

    #@8d
    .line 1660
    :cond_6
    iget v8, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@8f
    .restart local v8    # "insetRtlR":I
    goto :goto_5

    #@90
    .line 1661
    :cond_7
    move v5, v7

    #@91
    .restart local v5    # "insetL":I
    goto :goto_6

    #@92
    .line 1662
    :cond_8
    move v6, v8

    #@93
    .restart local v6    # "insetR":I
    goto :goto_7

    #@94
    .line 1666
    :cond_9
    iget v10, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@96
    goto :goto_8

    #@97
    .line 1667
    .restart local v10    # "minWidth":I
    :cond_a
    add-int v17, v10, v5

    #@99
    add-int v17, v17, v6

    #@9b
    add-int v17, v17, v12

    #@9d
    add-int v15, v17, v13

    #@9f
    goto :goto_9

    #@a0
    .line 1678
    .end local v5    # "insetL":I
    .end local v6    # "insetR":I
    .end local v7    # "insetRtlL":I
    .end local v8    # "insetRtlR":I
    .end local v10    # "minWidth":I
    .end local v14    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_b
    return v16
.end method

.method public getLayerGravity(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 758
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 759
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    #@8
    return v1
.end method

.method public getLayerHeight(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 721
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 722
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@8
    return v1
.end method

.method public getLayerInsetBottom(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 875
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 876
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@8
    return v1
.end method

.method public getLayerInsetEnd(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 917
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 918
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@8
    return v1
.end method

.method public getLayerInsetLeft(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 815
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 816
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@8
    return v1
.end method

.method public getLayerInsetRight(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 835
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 836
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@8
    return v1
.end method

.method public getLayerInsetStart(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 896
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 897
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@8
    return v1
.end method

.method public getLayerInsetTop(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 855
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 856
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@8
    return v1
.end method

.method public getLayerWidth(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 700
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 701
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@8
    return v1
.end method

.method public getLeftPadding()I
    .locals 1

    #@0
    .prologue
    .line 1142
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@4
    return v0
.end method

.method public getNumberOfLayers()I
    .locals 1

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@4
    return v0
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 1438
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1439
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@8
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@a
    return v0

    #@b
    .line 1441
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@d
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getOpacity()I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 5
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 1272
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1273
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1274
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1275
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1276
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1277
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    #@14
    .line 1278
    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_0

    #@1a
    .line 1279
    return-void

    #@1b
    .line 1274
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1271
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 11
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1024
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@4
    .line 1025
    .local v1, "layerState":Landroid/graphics/drawable/LayerDrawable$LayerState;
    invoke-static {v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    #@7
    move-result v10

    #@8
    if-nez v10, :cond_5

    #@a
    .line 1026
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeNestedPadding(Landroid/graphics/Rect;)V

    #@d
    .line 1031
    :goto_0
    iget v7, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@f
    .line 1032
    .local v7, "paddingT":I
    iget v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@11
    .line 1036
    .local v2, "paddingB":I
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    #@14
    move-result v10

    #@15
    if-ne v10, v8, :cond_6

    #@17
    move v0, v8

    #@18
    .line 1037
    .local v0, "isLayoutRtl":Z
    :goto_1
    if-eqz v0, :cond_7

    #@1a
    iget v5, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@1c
    .line 1038
    .local v5, "paddingRtlL":I
    :goto_2
    if-eqz v0, :cond_8

    #@1e
    iget v6, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@20
    .line 1039
    .local v6, "paddingRtlR":I
    :goto_3
    if-ltz v5, :cond_9

    #@22
    move v3, v5

    #@23
    .line 1040
    .local v3, "paddingL":I
    :goto_4
    if-ltz v6, :cond_a

    #@25
    move v4, v6

    #@26
    .line 1044
    .local v4, "paddingR":I
    :goto_5
    if-ltz v3, :cond_0

    #@28
    .line 1045
    iput v3, p1, Landroid/graphics/Rect;->left:I

    #@2a
    .line 1048
    :cond_0
    if-ltz v7, :cond_1

    #@2c
    .line 1049
    iput v7, p1, Landroid/graphics/Rect;->top:I

    #@2e
    .line 1052
    :cond_1
    if-ltz v4, :cond_2

    #@30
    .line 1053
    iput v4, p1, Landroid/graphics/Rect;->right:I

    #@32
    .line 1056
    :cond_2
    if-ltz v2, :cond_3

    #@34
    .line 1057
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    #@36
    .line 1060
    :cond_3
    iget v10, p1, Landroid/graphics/Rect;->left:I

    #@38
    if-nez v10, :cond_4

    #@3a
    iget v10, p1, Landroid/graphics/Rect;->top:I

    #@3c
    if-eqz v10, :cond_b

    #@3e
    :cond_4
    :goto_6
    return v8

    #@3f
    .line 1028
    .end local v0    # "isLayoutRtl":Z
    .end local v2    # "paddingB":I
    .end local v3    # "paddingL":I
    .end local v4    # "paddingR":I
    .end local v5    # "paddingRtlL":I
    .end local v6    # "paddingRtlR":I
    .end local v7    # "paddingT":I
    :cond_5
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeStackedPadding(Landroid/graphics/Rect;)V

    #@42
    goto :goto_0

    #@43
    .restart local v2    # "paddingB":I
    .restart local v7    # "paddingT":I
    :cond_6
    move v0, v9

    #@44
    .line 1036
    goto :goto_1

    #@45
    .line 1037
    .restart local v0    # "isLayoutRtl":Z
    :cond_7
    iget v5, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@47
    .restart local v5    # "paddingRtlL":I
    goto :goto_2

    #@48
    .line 1038
    :cond_8
    iget v6, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@4a
    .restart local v6    # "paddingRtlR":I
    goto :goto_3

    #@4b
    .line 1039
    :cond_9
    iget v3, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@4d
    .restart local v3    # "paddingL":I
    goto :goto_4

    #@4e
    .line 1040
    :cond_a
    iget v4, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@50
    .restart local v4    # "paddingR":I
    goto :goto_5

    #@51
    .line 1060
    :cond_b
    iget v10, p1, Landroid/graphics/Rect;->right:I

    #@53
    if-nez v10, :cond_4

    #@55
    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    #@57
    if-nez v10, :cond_4

    #@59
    move v8, v9

    #@5a
    goto :goto_6
.end method

.method public getPaddingMode()I
    .locals 1

    #@0
    .prologue
    .line 959
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRightPadding()I
    .locals 1

    #@0
    .prologue
    .line 1158
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@4
    return v0
.end method

.method public getStartPadding()I
    .locals 1

    #@0
    .prologue
    .line 1174
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@4
    return v0
.end method

.method public getTopPadding()I
    .locals 1

    #@0
    .prologue
    .line 1207
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@4
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 8
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
    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 175
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@5
    .line 176
    .local v6, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    if-nez v6, :cond_0

    #@7
    .line 177
    return-void

    #@8
    .line 182
    :cond_0
    const/4 v7, 0x0

    #@9
    invoke-static {p1, v7}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@c
    move-result v3

    #@d
    .line 183
    .local v3, "density":I
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->setDensity(I)V

    #@10
    .line 185
    sget-object v7, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    #@12
    invoke-static {p1, p4, p3, v7}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@15
    move-result-object v1

    #@16
    .line 186
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@19
    .line 187
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@1c
    .line 189
    iget-object v2, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@1e
    .line 190
    .local v2, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@20
    .line 191
    .local v0, "N":I
    const/4 v4, 0x0

    #@21
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@23
    .line 192
    aget-object v5, v2, v4

    #@25
    .line 193
    .local v5, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->setDensity(I)V

    #@28
    .line 191
    add-int/lit8 v4, v4, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 196
    .end local v5    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@2e
    .line 198
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    #@31
    .line 199
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    #@34
    .line 172
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 988
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 989
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    #@7
    .line 987
    :goto_0
    return-void

    #@8
    .line 991
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    #@b
    goto :goto_0
.end method

.method public isAutoMirrored()Z
    .locals 1

    #@0
    .prologue
    .line 1460
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get0(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isProjected()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 416
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 417
    return v4

    #@8
    .line 420
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@a
    iget-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@c
    .line 421
    .local v2, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@e
    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@10
    .line 422
    .local v0, "N":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@13
    .line 423
    aget-object v3, v2, v1

    #@15
    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 424
    return v4

    #@1e
    .line 422
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 428
    :cond_2
    const/4 v3, 0x0

    #@22
    return v3
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 1477
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->isStateful()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public jumpToCurrentState()V
    .locals 5

    #@0
    .prologue
    .line 1465
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1466
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1467
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1468
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1469
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1470
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@14
    .line 1467
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1464
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1768
    iget-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    #@3
    if-nez v4, :cond_2

    #@5
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v4

    #@9
    if-ne v4, p0, :cond_2

    #@b
    .line 1769
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@d
    invoke-virtual {p0, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@10
    move-result-object v4

    #@11
    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@13
    .line 1770
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@15
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@17
    .line 1771
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@19
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@1b
    .line 1772
    .local v0, "N":I
    const/4 v3, 0x0

    #@1c
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@1e
    .line 1773
    aget-object v4, v1, v3

    #@20
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    .line 1774
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@24
    .line 1775
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@27
    .line 1772
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1778
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v4, 0x1

    #@2b
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    #@2d
    .line 1780
    .end local v0    # "N":I
    .end local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v3    # "i":I
    :cond_2
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1524
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    #@3
    .line 1523
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 6
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 1802
    const/4 v2, 0x0

    #@1
    .line 1804
    .local v2, "changed":Z
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    iget-object v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@5
    .line 1805
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@7
    iget v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@9
    .line 1806
    .local v0, "N":I
    const/4 v4, 0x0

    #@a
    .end local v2    # "changed":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@c
    .line 1807
    aget-object v5, v1, v4

    #@e
    iget-object v3, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    .line 1808
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@12
    .line 1809
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@15
    move-result v5

    #@16
    or-int/2addr v2, v5

    #@17
    .line 1806
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1813
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    #@1d
    move-result-object v5

    #@1e
    invoke-direct {p0, v5}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    #@21
    .line 1814
    return v2
.end method

.method protected onLevelChange(I)Z
    .locals 6
    .param p1, "level"    # I

    #@0
    .prologue
    .line 1503
    const/4 v2, 0x0

    #@1
    .line 1505
    .local v2, "changed":Z
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    iget-object v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@5
    .line 1506
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@7
    iget v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@9
    .line 1507
    .local v0, "N":I
    const/4 v4, 0x0

    #@a
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@c
    .line 1508
    aget-object v5, v1, v4

    #@e
    iget-object v3, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    .line 1509
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@12
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_0

    #@18
    .line 1510
    aget-object v5, v1, v4

    #@1a
    invoke-direct {p0, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    #@1d
    .line 1511
    const/4 v2, 0x1

    #@1e
    .line 1507
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1515
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz v2, :cond_2

    #@23
    .line 1516
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    #@26
    move-result-object v5

    #@27
    invoke-direct {p0, v5}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    #@2a
    .line 1519
    :cond_2
    return v2
.end method

.method protected onStateChange([I)Z
    .locals 6
    .param p1, "state"    # [I

    #@0
    .prologue
    .line 1482
    const/4 v2, 0x0

    #@1
    .line 1484
    .local v2, "changed":Z
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    iget-object v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@5
    .line 1485
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@7
    iget v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@9
    .line 1486
    .local v0, "N":I
    const/4 v4, 0x0

    #@a
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@c
    .line 1487
    aget-object v5, v1, v4

    #@e
    iget-object v3, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    .line 1488
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@12
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_0

    #@18
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 1489
    aget-object v5, v1, v4

    #@20
    invoke-direct {p0, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    #@23
    .line 1490
    const/4 v2, 0x1

    #@24
    .line 1486
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1494
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz v2, :cond_2

    #@29
    .line 1495
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    #@2c
    move-result-object v5

    #@2d
    invoke-direct {p0, v5}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    #@30
    .line 1498
    :cond_2
    return v2
.end method

.method refreshPadding()V
    .locals 4

    #@0
    .prologue
    .line 1750
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@4
    .line 1751
    .local v0, "N":I
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@8
    .line 1752
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@b
    .line 1753
    aget-object v3, v1, v2

    #@d
    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    #@10
    .line 1752
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1749
    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    #@0
    .prologue
    .line 997
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    #@3
    .line 996
    return-void
.end method

.method public setAlpha(I)V
    .locals 5
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 1353
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1354
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1355
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1356
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1357
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1358
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@14
    .line 1355
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1352
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 5
    .param p1, "mirrored"    # Z

    #@0
    .prologue
    .line 1446
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    invoke-static {v4, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-set0(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z

    #@5
    .line 1448
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@7
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@9
    .line 1449
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@b
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@d
    .line 1450
    .local v0, "N":I
    const/4 v3, 0x0

    #@e
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@10
    .line 1451
    aget-object v4, v1, v3

    #@12
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    .line 1452
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@16
    .line 1453
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    #@19
    .line 1450
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1445
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 5
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 1375
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1376
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1377
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1378
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1379
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1380
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@14
    .line 1377
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1374
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setDither(Z)V
    .locals 5
    .param p1, "dither"    # Z

    #@0
    .prologue
    .line 1341
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1342
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1343
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1344
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1345
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1346
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    #@14
    .line 1343
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1340
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 620
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@5
    if-lt p1, v3, :cond_0

    #@7
    .line 621
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v3

    #@d
    .line 624
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@f
    iget-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@11
    .line 625
    .local v2, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    aget-object v1, v2, p1

    #@13
    .line 626
    .local v1, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    if-eqz v3, :cond_2

    #@17
    .line 627
    if-eqz p2, :cond_1

    #@19
    .line 628
    iget-object v3, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@1e
    move-result-object v0

    #@1f
    .line 629
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@22
    .line 632
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@24
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@27
    .line 635
    :cond_2
    if-eqz p2, :cond_3

    #@29
    .line 636
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@2c
    .line 639
    :cond_3
    iput-object p2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2e
    .line 640
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@30
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    #@33
    .line 642
    invoke-direct {p0, p1, v1}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    #@36
    .line 619
    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 578
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findIndexByLayerId(I)I

    #@4
    move-result v0

    #@5
    .line 579
    .local v0, "index":I
    if-gez v0, :cond_0

    #@7
    .line 580
    return v1

    #@8
    .line 583
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    #@b
    .line 584
    const/4 v1, 0x1

    #@c
    return v1
.end method

.method public setHotspot(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 1287
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1288
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1289
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1290
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1291
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1292
    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@14
    .line 1289
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1286
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 1299
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1300
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1301
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1302
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1303
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1304
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    #@14
    .line 1301
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1308
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@19
    if-nez v4, :cond_2

    #@1b
    .line 1309
    new-instance v4, Landroid/graphics/Rect;

    #@1d
    invoke-direct {v4, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@20
    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@22
    .line 1298
    :goto_1
    return-void

    #@23
    .line 1311
    :cond_2
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@25
    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@28
    goto :goto_1
.end method

.method public setId(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "id"    # I

    #@0
    .prologue
    .line 539
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v0, p1

    #@6
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@8
    .line 538
    return-void
.end method

.method public setLayerGravity(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "gravity"    # I

    #@0
    .prologue
    .line 745
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 746
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    #@8
    .line 744
    return-void
.end method

.method public setLayerHeight(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    .line 710
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 711
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@8
    .line 709
    return-void
.end method

.method public setLayerInset(IIIII)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    const/high16 v6, -0x80000000

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    move v7, v6

    #@9
    .line 777
    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    #@c
    .line 776
    return-void
.end method

.method public setLayerInsetBottom(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "b"    # I

    #@0
    .prologue
    .line 865
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 866
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@8
    .line 864
    return-void
.end method

.method public setLayerInsetEnd(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "e"    # I

    #@0
    .prologue
    .line 907
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 908
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@8
    .line 906
    return-void
.end method

.method public setLayerInsetLeft(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "l"    # I

    #@0
    .prologue
    .line 805
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 806
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@8
    .line 804
    return-void
.end method

.method public setLayerInsetRelative(IIIII)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "e"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v3, p3

    #@4
    move v4, v2

    #@5
    move v5, p5

    #@6
    move v6, p2

    #@7
    move v7, p4

    #@8
    .line 796
    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    #@b
    .line 795
    return-void
.end method

.method public setLayerInsetRight(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "r"    # I

    #@0
    .prologue
    .line 825
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 826
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@8
    .line 824
    return-void
.end method

.method public setLayerInsetStart(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "s"    # I

    #@0
    .prologue
    .line 885
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 886
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@8
    .line 884
    return-void
.end method

.method public setLayerInsetTop(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "t"    # I

    #@0
    .prologue
    .line 845
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 846
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@8
    .line 844
    return-void
.end method

.method public setLayerSize(III)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    #@0
    .prologue
    .line 678
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 679
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@8
    .line 680
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@a
    .line 677
    return-void
.end method

.method public setLayerWidth(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "w"    # I

    #@0
    .prologue
    .line 689
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 690
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@8
    .line 688
    return-void
.end method

.method public setOpacity(I)V
    .locals 1
    .param p1, "opacity"    # I

    #@0
    .prologue
    .line 1433
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@4
    .line 1432
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 1085
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    .line 1086
    .local v0, "layerState":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@5
    .line 1087
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@7
    .line 1088
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@9
    .line 1089
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@b
    .line 1092
    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@d
    .line 1093
    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@f
    .line 1084
    return-void
.end method

.method public setPaddingMode(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 947
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    #@5
    move-result v0

    #@6
    if-eq v0, p1, :cond_0

    #@8
    .line 948
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@a
    invoke-static {v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-set1(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I

    #@d
    .line 946
    :cond_0
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 1118
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    .line 1119
    .local v0, "layerState":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@5
    .line 1120
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@7
    .line 1121
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@9
    .line 1122
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@b
    .line 1125
    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@d
    .line 1126
    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@f
    .line 1117
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 5
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 1387
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1388
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1389
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1390
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1391
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1392
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@14
    .line 1389
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1386
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 5
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 1399
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1400
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1401
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1402
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1403
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1404
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@14
    .line 1401
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1398
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 6
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    #@0
    .prologue
    .line 1326
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@3
    move-result v2

    #@4
    .line 1327
    .local v2, "changed":Z
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget-object v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@8
    .line 1328
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@a
    iget v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@c
    .line 1329
    .local v0, "N":I
    const/4 v4, 0x0

    #@d
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@f
    .line 1330
    aget-object v5, v1, v4

    #@11
    iget-object v3, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    .line 1331
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@15
    .line 1332
    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@18
    .line 1329
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1336
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v2
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1002
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/LayerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@3
    .line 1001
    return-void
.end method
