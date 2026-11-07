.class public Landroid/graphics/drawable/LayerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LayerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/LayerDrawable$LayerState;,
        Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    }
.end annotation


# static fields
.field public static final whitelist INSET_UNDEFINED:I = -0x80000000

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "LayerDrawable"

.field public static final whitelist PADDING_MODE_NEST:I = 0x0

.field public static final whitelist PADDING_MODE_STACK:I = 0x1


# instance fields
.field private greylist-max-o mChildRequestedInvalidation:Z

.field private greylist-max-o mHotspotBounds:Landroid/graphics/Rect;

.field greylist mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

.field private greylist-max-o mMutated:Z

.field private greylist-max-o mPaddingB:[I

.field private greylist-max-o mPaddingL:[I

.field private greylist-max-o mPaddingR:[I

.field private greylist-max-o mPaddingT:[I

.field private greylist-max-o mSuspendChildInvalidation:Z

.field private final greylist-max-o mTmpContainer:Landroid/graphics/Rect;

.field private final greylist-max-o mTmpOutRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 158
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 159
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 165
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpContainer:Landroid/graphics/Rect;

    .line 166
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 167
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-lez v0, :cond_2a

    .line 168
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 169
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    .line 171
    :cond_2a
    return-void
.end method

.method public constructor whitelist <init>([Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    .line 123
    return-void
.end method

.method constructor greylist-max-o <init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V
    .registers 10
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 135
    if-eqz p1, :cond_3f

    .line 139
    array-length v0, p1

    .line 140
    .local v0, "length":I
    new-array v1, v0, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 141
    .local v1, "r":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_30

    .line 142
    new-instance v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    aput-object v3, v1, v2

    .line 143
    aget-object v3, p1, v2

    .line 144
    .local v3, "child":Landroid/graphics/drawable/Drawable;
    aget-object v4, v1, v2

    iput-object v3, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 145
    if-eqz v3, :cond_2d

    .line 146
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 147
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 141
    .end local v3    # "child":Landroid/graphics/drawable/Drawable;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 150
    .end local v2    # "i":I
    :cond_30
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput v0, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 151
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput-object v1, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 153
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    .line 155
    return-void

    .line 136
    .end local v0    # "length":I
    .end local v1    # "r":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "layers must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o computeNestedPadding(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1235
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1236
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1237
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1238
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1241
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1242
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1243
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_40

    .line 1244
    aget-object v3, v0, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1246
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 1247
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 1248
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 1249
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1243
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1251
    .end local v2    # "i":I
    :cond_40
    return-void
.end method

.method private greylist-max-o computeStackedPadding(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1254
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1255
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1256
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1257
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1260
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1261
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1262
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_4c

    .line 1263
    aget-object v3, v0, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1265
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 1266
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 1267
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 1268
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1262
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1270
    .end local v2    # "i":I
    :cond_4c
    return-void
.end method

.method private greylist-max-o createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .registers 4
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 489
    new-instance v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    .line 490
    .local v0, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput-object p1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 491
    return-object v0
.end method

.method private greylist-max-o getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1417
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1418
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1419
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_15

    .line 1420
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1421
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_12

    .line 1422
    return-object v3

    .line 1419
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1425
    .end local v2    # "i":I
    :cond_15
    const/4 v2, 0x0

    return-object v2
.end method

.method private greylist-max-o inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 15
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

    .line 250
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 252
    .local v0, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 255
    .local v1, "innerDepth":I
    :cond_8
    :goto_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    if-eq v3, v2, :cond_92

    .line 256
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .local v5, "depth":I
    if-ge v3, v1, :cond_19

    const/4 v3, 0x3

    if-eq v4, v3, :cond_92

    .line 257
    :cond_19
    const/4 v3, 0x2

    if-eq v4, v3, :cond_1d

    .line 258
    goto :goto_8

    .line 261
    :cond_1d
    if-gt v5, v1, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 262
    goto :goto_8

    .line 265
    :cond_2d
    new-instance v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    .line 266
    .local v6, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    sget-object v7, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    invoke-static {p1, p4, p3, v7}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 267
    .local v7, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v6, v7}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 268
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_8d

    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    const/4 v9, 0x4

    if-eqz v8, :cond_4f

    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    aget v8, v8, v9

    if-nez v8, :cond_8d

    .line 276
    :cond_4f
    :goto_4f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v4, v8

    if-ne v8, v9, :cond_57

    goto :goto_4f

    .line 278
    :cond_57
    if-ne v4, v3, :cond_70

    .line 285
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 286
    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 287
    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 288
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v8

    or-int/2addr v3, v8

    iput v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    goto :goto_8d

    .line 279
    :cond_70
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    :cond_8d
    :goto_8d
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    .line 292
    .end local v6    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v7    # "a":Landroid/content/res/TypedArray;
    goto/16 :goto_8

    .line 293
    .end local v5    # "depth":I
    :cond_92
    return-void
.end method

.method private greylist-max-o refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z
    .registers 6
    .param p1, "i"    # I
    .param p2, "r"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1731
    iget-object v0, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_45

    .line 1732
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 1733
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1734
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_2b

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_2b

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_2b

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v2, v2, p1

    if-eq v1, v2, :cond_45

    .line 1736
    :cond_2b
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aput v2, v1, p1

    .line 1737
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    aput v2, v1, p1

    .line 1738
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    aput v2, v1, p1

    .line 1739
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    aput v2, v1, p1

    .line 1740
    const/4 v1, 0x1

    return v1

    .line 1743
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_45
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o resolveGravity(IIIII)I
    .registers 6
    .param p0, "gravity"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "intrinsicWidth"    # I
    .param p4, "intrinsicHeight"    # I

    .line 1620
    invoke-static {p0}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1621
    if-gez p1, :cond_b

    .line 1622
    or-int/lit8 p0, p0, 0x7

    goto :goto_f

    .line 1624
    :cond_b
    const v0, 0x800003

    or-int/2addr p0, v0

    .line 1628
    :cond_f
    :goto_f
    invoke-static {p0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1629
    if-gez p2, :cond_1a

    .line 1630
    or-int/lit8 p0, p0, 0x70

    goto :goto_1c

    .line 1632
    :cond_1a
    or-int/lit8 p0, p0, 0x30

    .line 1639
    :cond_1c
    :goto_1c
    if-gez p1, :cond_22

    if-gez p3, :cond_22

    .line 1640
    or-int/lit8 p0, p0, 0x7

    .line 1643
    :cond_22
    if-gez p2, :cond_28

    if-gez p4, :cond_28

    .line 1644
    or-int/lit8 p0, p0, 0x70

    .line 1647
    :cond_28
    return p0
.end method

.method private greylist-max-o resumeChildInvalidation()V
    .registers 3

    .line 980
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    .line 982
    iget-boolean v1, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    if-eqz v1, :cond_c

    .line 983
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    .line 984
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    .line 986
    :cond_c
    return-void
.end method

.method private greylist-max-o setLayerInsetInternal(IIIIIII)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .param p6, "s"    # I
    .param p7, "e"    # I

    .line 924
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 925
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 926
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 927
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 928
    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 929
    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 930
    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 931
    return-void
.end method

.method private greylist-max-o suspendChildInvalidation()V
    .registers 2

    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    .line 971
    return-void
.end method

.method private greylist-max-o updateLayerBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1541
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->suspendChildInvalidation()V

    .line 1542
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    .line 1544
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->resumeChildInvalidation()V

    .line 1545
    nop

    .line 1546
    return-void

    .line 1544
    :catchall_b
    move-exception v0

    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->resumeChildInvalidation()V

    .line 1545
    throw v0
.end method

.method private greylist-max-o updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    .registers 32
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1549
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1550
    .local v2, "paddingL":I
    const/4 v3, 0x0

    .line 1551
    .local v3, "paddingT":I
    const/4 v4, 0x0

    .line 1552
    .local v4, "paddingR":I
    const/4 v5, 0x0

    .line 1554
    .local v5, "paddingB":I
    iget-object v10, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    .line 1555
    .local v10, "outRect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v11

    .line 1556
    .local v11, "layoutDirection":I
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v11, v7, :cond_14

    move v8, v7

    goto :goto_15

    :cond_14
    move v8, v6

    :goto_15
    move v12, v8

    .line 1557
    .local v12, "isLayoutRtl":Z
    iget-object v8, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v8}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v8

    if-nez v8, :cond_1f

    move v6, v7

    :cond_1f
    move v13, v6

    .line 1558
    .local v13, "isPaddingNested":Z
    iget-object v6, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v14, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1560
    .local v14, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v15, v7, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .local v15, "count":I
    :goto_29
    if-ge v6, v15, :cond_101

    .line 1561
    aget-object v7, v14, v6

    .line 1562
    .local v7, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1563
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_3d

    .line 1564
    move/from16 v16, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v25, v5

    move/from16 v26, v6

    goto/16 :goto_f3

    .line 1567
    :cond_3d
    iget v9, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 1568
    .local v9, "insetT":I
    move/from16 v16, v2

    .end local v2    # "paddingL":I
    .local v16, "paddingL":I
    iget v2, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 1572
    .local v2, "insetB":I
    if-eqz v12, :cond_4a

    move/from16 v17, v2

    .end local v2    # "insetB":I
    .local v17, "insetB":I
    iget v2, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    goto :goto_4e

    .end local v17    # "insetB":I
    .restart local v2    # "insetB":I
    :cond_4a
    move/from16 v17, v2

    .end local v2    # "insetB":I
    .restart local v17    # "insetB":I
    iget v2, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1573
    .local v2, "insetRtlL":I
    :goto_4e
    if-eqz v12, :cond_55

    move/from16 v18, v3

    .end local v3    # "paddingT":I
    .local v18, "paddingT":I
    iget v3, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    goto :goto_59

    .end local v18    # "paddingT":I
    .restart local v3    # "paddingT":I
    :cond_55
    move/from16 v18, v3

    .end local v3    # "paddingT":I
    .restart local v18    # "paddingT":I
    iget v3, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1574
    .local v3, "insetRtlR":I
    :goto_59
    move/from16 v19, v4

    .end local v4    # "paddingR":I
    .local v19, "paddingR":I
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_62

    iget v4, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    goto :goto_63

    :cond_62
    move v4, v2

    .line 1575
    .local v4, "insetL":I
    :goto_63
    move/from16 v21, v2

    const/high16 v2, -0x80000000

    .end local v2    # "insetRtlL":I
    .local v21, "insetRtlL":I
    if-ne v3, v2, :cond_6c

    iget v2, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    goto :goto_6d

    :cond_6c
    move v2, v3

    .line 1579
    .local v2, "insetR":I
    :goto_6d
    move/from16 v20, v9

    .end local v9    # "insetT":I
    .local v20, "insetT":I
    iget-object v9, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpContainer:Landroid/graphics/Rect;

    .line 1580
    .local v9, "container":Landroid/graphics/Rect;
    move/from16 v22, v2

    .end local v2    # "insetR":I
    .local v22, "insetR":I
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    add-int v2, v2, v16

    move/from16 v23, v3

    .end local v3    # "insetRtlR":I
    .local v23, "insetRtlR":I
    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v20

    add-int v3, v3, v18

    move/from16 v24, v4

    .end local v4    # "insetL":I
    .local v24, "insetL":I
    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, v4, v22

    sub-int v4, v4, v19

    move/from16 v25, v5

    .end local v5    # "paddingB":I
    .local v25, "paddingB":I
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v5, v17

    sub-int v5, v5, v25

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1585
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1586
    .local v2, "intrinsicW":I
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1587
    .local v3, "intrinsicH":I
    iget v4, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1588
    .local v4, "layerW":I
    iget v5, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1589
    .local v5, "layerH":I
    iget v1, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    invoke-static {v1, v4, v5, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->resolveGravity(IIIII)I

    move-result v1

    .line 1592
    .local v1, "gravity":I
    if-gez v4, :cond_aa

    move/from16 v26, v2

    goto :goto_ac

    :cond_aa
    move/from16 v26, v4

    .line 1593
    .local v26, "resolvedW":I
    :goto_ac
    if-gez v5, :cond_b1

    move/from16 v27, v3

    goto :goto_b3

    :cond_b1
    move/from16 v27, v5

    .line 1594
    .local v27, "resolvedH":I
    :goto_b3
    move/from16 v29, v6

    move v6, v1

    move-object v1, v8

    move/from16 v8, v27

    move/from16 v27, v20

    move-object/from16 v20, v7

    move/from16 v7, v26

    move/from16 v26, v29

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    .local v6, "gravity":I
    .local v7, "resolvedW":I
    .local v8, "resolvedH":I
    .local v20, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .local v26, "i":I
    .local v27, "insetT":I
    invoke-static/range {v6 .. v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1595
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1597
    if-eqz v13, :cond_f1

    .line 1598
    move-object/from16 v28, v1

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .local v28, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v1, v1, v26

    add-int v1, v16, v1

    .line 1599
    .end local v16    # "paddingL":I
    .local v1, "paddingL":I
    move/from16 v16, v1

    .end local v1    # "paddingL":I
    .restart local v16    # "paddingL":I
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v1, v1, v26

    add-int v1, v19, v1

    .line 1600
    .end local v19    # "paddingR":I
    .local v1, "paddingR":I
    move/from16 v19, v1

    .end local v1    # "paddingR":I
    .restart local v19    # "paddingR":I
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v1, v1, v26

    add-int v1, v18, v1

    .line 1601
    .end local v18    # "paddingT":I
    .local v1, "paddingT":I
    move/from16 v18, v1

    .end local v1    # "paddingT":I
    .restart local v18    # "paddingT":I
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v1, v1, v26

    add-int v1, v25, v1

    move v5, v1

    move/from16 v2, v16

    move/from16 v3, v18

    move/from16 v4, v19

    .end local v25    # "paddingB":I
    .local v1, "paddingB":I
    goto :goto_fb

    .line 1597
    .end local v28    # "d":Landroid/graphics/drawable/Drawable;
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    .restart local v25    # "paddingB":I
    :cond_f1
    move-object/from16 v28, v1

    .line 1560
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "resolvedW":I
    .end local v8    # "resolvedH":I
    .end local v9    # "container":Landroid/graphics/Rect;
    .end local v16    # "paddingL":I
    .end local v17    # "insetB":I
    .end local v18    # "paddingT":I
    .end local v19    # "paddingR":I
    .end local v20    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v21    # "insetRtlL":I
    .end local v22    # "insetR":I
    .end local v23    # "insetRtlR":I
    .end local v24    # "insetL":I
    .end local v25    # "paddingB":I
    .end local v26    # "i":I
    .end local v27    # "insetT":I
    .local v2, "paddingL":I
    .local v3, "paddingT":I
    .local v4, "paddingR":I
    .local v5, "paddingB":I
    .local v6, "i":I
    :goto_f3
    move/from16 v5, v25

    move/from16 v2, v16

    move/from16 v3, v18

    move/from16 v4, v19

    .end local v6    # "i":I
    .restart local v26    # "i":I
    :goto_fb
    add-int/lit8 v6, v26, 0x1

    move-object/from16 v1, p1

    .end local v26    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_29

    .line 1604
    .end local v6    # "i":I
    .end local v15    # "count":I
    :cond_101
    return-void
.end method

.method private greylist-max-o updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V
    .registers 8
    .param p1, "layer"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .line 343
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 346
    .local v0, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 349
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 351
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 352
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v1, :cond_7d

    .line 353
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 354
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_a2

    :pswitch_1f
    goto :goto_7a

    .line 371
    :pswitch_20
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 372
    goto :goto_7a

    .line 368
    :pswitch_29
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 369
    goto :goto_7a

    .line 365
    :pswitch_32
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 366
    goto :goto_7a

    .line 362
    :pswitch_3b
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 363
    goto :goto_7a

    .line 359
    :pswitch_44
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 360
    goto :goto_7a

    .line 356
    :pswitch_4d
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 357
    goto :goto_7a

    .line 374
    :pswitch_56
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 375
    goto :goto_7a

    .line 377
    :pswitch_5f
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 378
    goto :goto_7a

    .line 383
    :pswitch_68
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    goto :goto_7a

    .line 380
    :pswitch_71
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 381
    nop

    .line 352
    .end local v3    # "attr":I
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 388
    .end local v2    # "i":I
    :cond_7d
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 389
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_a0

    .line 390
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8e

    .line 395
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 399
    :cond_8e
    iput-object v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 400
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 401
    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 402
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 404
    :cond_a0
    return-void

    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_71
        :pswitch_68
        :pswitch_5f
        :pswitch_56
        :pswitch_1f
        :pswitch_4d
        :pswitch_44
        :pswitch_3b
        :pswitch_32
        :pswitch_29
        :pswitch_20
    .end packed-switch
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 7
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 299
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 302
    .local v0, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 305
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;[I)V

    .line 307
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 308
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v1, :cond_7b

    .line 309
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 310
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_7c

    goto :goto_78

    .line 336
    :pswitch_21
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-static {v0, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;I)V

    goto :goto_78

    .line 333
    :pswitch_2d
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-static {v0, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)V

    .line 334
    goto :goto_78

    .line 330
    :pswitch_39
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 331
    goto :goto_78

    .line 327
    :pswitch_42
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 328
    goto :goto_78

    .line 312
    :pswitch_4b
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 313
    goto :goto_78

    .line 318
    :pswitch_54
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 319
    goto :goto_78

    .line 324
    :pswitch_5d
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 325
    goto :goto_78

    .line 315
    :pswitch_66
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 316
    goto :goto_78

    .line 321
    :pswitch_6f
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 322
    nop

    .line 308
    .end local v3    # "attr":I
    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 340
    .end local v2    # "i":I
    :cond_7b
    return-void

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_66
        :pswitch_5d
        :pswitch_54
        :pswitch_4b
        :pswitch_42
        :pswitch_39
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public whitelist addLayer(Landroid/graphics/drawable/Drawable;)I
    .registers 4
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 502
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    move-result-object v0

    .line 503
    .local v0, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    move-result v1

    .line 504
    .local v1, "index":I
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 505
    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 506
    return v1
.end method

.method greylist-max-r addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I
    .registers 8
    .param p1, "layer"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 440
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 441
    .local v0, "st":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    array-length v1, v1

    goto :goto_c

    :cond_b
    move v1, v2

    .line 442
    .local v1, "N":I
    :goto_c
    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 443
    .local v3, "i":I
    if-lt v3, v1, :cond_1d

    .line 444
    add-int/lit8 v4, v1, 0xa

    new-array v4, v4, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 445
    .local v4, "nu":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    if-lez v3, :cond_1b

    .line 446
    iget-object v5, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    :cond_1b
    iput-object v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 452
    .end local v4    # "nu":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1d
    iget-object v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aput-object p1, v2, v3

    .line 453
    iget v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 454
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    .line 455
    return v3
.end method

.method greylist-max-o addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .registers 12
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "themeAttrs"    # [I
    .param p3, "id"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "right"    # I
    .param p7, "bottom"    # I

    .line 471
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    move-result-object v0

    .line 472
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 473
    iput-object p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 474
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->isAutoMirrored()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 475
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 476
    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 477
    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 478
    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 480
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    .line 482
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 483
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 485
    return-object v0
.end method

.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 11
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 208
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 210
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 211
    .local v0, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    .line 212
    .local v1, "density":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->setDensity(I)V

    .line 214
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I

    move-result-object v2

    if-eqz v2, :cond_27

    .line 215
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 217
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 218
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_27
    iget-object v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 222
    .local v2, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 223
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2c
    if-ge v4, v3, :cond_5e

    .line 224
    aget-object v5, v2, v4

    .line 225
    .local v5, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->setDensity(I)V

    .line 227
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    if-eqz v6, :cond_45

    .line 228
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    sget-object v7, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 230
    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 231
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :cond_45
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 235
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_5b

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 236
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 239
    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 223
    .end local v5    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 242
    .end local v4    # "i":I
    :cond_5e
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public greylist-max-o clearMutated()V
    .registers 5

    .line 1800
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 1802
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1803
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1804
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_1a

    .line 1805
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1806
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_17

    .line 1807
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 1804
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1810
    .end local v2    # "i":I
    :cond_1a
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    .line 1811
    return-void
.end method

.method greylist-max-o createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 174
    new-instance v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1014
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1015
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1016
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_17

    .line 1017
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1018
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_14

    .line 1019
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1016
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1022
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method greylist ensurePadding()V
    .registers 3

    .line 1751
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1752
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    array-length v1, v1

    if-lt v1, v0, :cond_e

    .line 1753
    return-void

    .line 1756
    :cond_e
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    .line 1757
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    .line 1758
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    .line 1759
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    .line 1760
    return-void
.end method

.method public whitelist findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "id"    # I

    .line 520
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 521
    .local v0, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1a

    .line 522
    aget-object v2, v0, v1

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v2, p1, :cond_17

    .line 523
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v2

    .line 521
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 527
    .end local v1    # "i":I
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist findIndexByLayerId(I)I
    .registers 7
    .param p1, "id"    # I

    .line 599
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 600
    .local v0, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 601
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_15

    .line 602
    aget-object v3, v0, v2

    .line 603
    .local v3, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v4, p1, :cond_12

    .line 604
    return v2

    .line 601
    .end local v3    # "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 608
    .end local v2    # "i":I
    :cond_15
    const/4 v2, -0x1

    return v2
.end method

.method public whitelist getAlpha()I
    .registers 3

    .line 1372
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1373
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_b

    .line 1374
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    return v1

    .line 1376
    :cond_b
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    return v1
.end method

.method public whitelist getBottomPadding()I
    .registers 2

    .line 1231
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 1026
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 1772
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1773
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 1774
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    return-object v0

    .line 1776
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "index"    # I

    .line 658
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-ge p1, v0, :cond_f

    .line 661
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 659
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getEndPadding()I
    .registers 2

    .line 1197
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    return v0
.end method

.method public whitelist getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 1324
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    .line 1325
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d

    .line 1327
    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    .line 1329
    :goto_d
    return-void
.end method

.method public whitelist getId(I)I
    .registers 3
    .param p1, "index"    # I

    .line 556
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-ge p1, v0, :cond_f

    .line 559
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    return v0

    .line 557
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 12

    .line 1695
    const/4 v0, -0x1

    .line 1696
    .local v0, "height":I
    const/4 v1, 0x0

    .line 1697
    .local v1, "padT":I
    const/4 v2, 0x0

    .line 1699
    .local v2, "padB":I
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    .line 1700
    .local v3, "nest":Z
    :goto_e
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1701
    .local v4, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v5, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1702
    .local v5, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_17
    if-ge v6, v5, :cond_4b

    .line 1703
    aget-object v7, v4, v6

    .line 1704
    .local v7, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_20

    .line 1705
    goto :goto_48

    .line 1710
    :cond_20
    iget v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    if-gez v8, :cond_2b

    iget-object v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    goto :goto_2d

    :cond_2b
    iget v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1711
    .local v8, "minHeight":I
    :goto_2d
    if-gez v8, :cond_31

    const/4 v9, -0x1

    goto :goto_39

    :cond_31
    iget v9, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v9, v8

    iget v10, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    add-int/2addr v9, v10

    add-int/2addr v9, v1

    add-int/2addr v9, v2

    .line 1712
    .local v9, "h":I
    :goto_39
    if-le v9, v0, :cond_3c

    .line 1713
    move v0, v9

    .line 1716
    :cond_3c
    if-eqz v3, :cond_48

    .line 1717
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v10, v10, v6

    add-int/2addr v1, v10

    .line 1718
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v10, v10, v6

    add-int/2addr v2, v10

    .line 1702
    .end local v7    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v8    # "minHeight":I
    .end local v9    # "h":I
    :cond_48
    :goto_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 1722
    .end local v6    # "i":I
    :cond_4b
    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 18

    .line 1652
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .line 1653
    .local v1, "width":I
    const/4 v2, 0x0

    .line 1654
    .local v2, "padL":I
    const/4 v3, 0x0

    .line 1656
    .local v3, "padR":I
    iget-object v4, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_11

    move v4, v6

    goto :goto_12

    :cond_11
    move v4, v5

    .line 1657
    .local v4, "nest":Z
    :goto_12
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v7

    if-ne v7, v6, :cond_19

    move v5, v6

    .line 1658
    .local v5, "isLayoutRtl":Z
    :cond_19
    iget-object v6, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1659
    .local v6, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v7, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v7, v7, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1660
    .local v7, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_22
    if-ge v8, v7, :cond_76

    .line 1661
    aget-object v9, v6, v8

    .line 1662
    .local v9, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_2b

    .line 1663
    goto :goto_73

    .line 1671
    :cond_2b
    if-eqz v5, :cond_30

    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    goto :goto_32

    :cond_30
    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1672
    .local v10, "insetRtlL":I
    :goto_32
    if-eqz v5, :cond_37

    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    goto :goto_39

    :cond_37
    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1673
    .local v11, "insetRtlR":I
    :goto_39
    const/high16 v12, -0x80000000

    if-ne v10, v12, :cond_40

    iget v13, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    goto :goto_41

    :cond_40
    move v13, v10

    .line 1674
    .local v13, "insetL":I
    :goto_41
    if-ne v11, v12, :cond_46

    iget v12, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    goto :goto_47

    :cond_46
    move v12, v11

    .line 1678
    .local v12, "insetR":I
    :goto_47
    iget v14, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    if-gez v14, :cond_52

    iget-object v14, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    goto :goto_54

    :cond_52
    iget v14, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1679
    .local v14, "minWidth":I
    :goto_54
    if-gez v14, :cond_58

    const/4 v15, -0x1

    goto :goto_5d

    :cond_58
    add-int v15, v14, v13

    add-int/2addr v15, v12

    add-int/2addr v15, v2

    add-int/2addr v15, v3

    .line 1680
    .local v15, "w":I
    :goto_5d
    if-le v15, v1, :cond_60

    .line 1681
    move v1, v15

    .line 1684
    :cond_60
    if-eqz v4, :cond_71

    .line 1685
    move/from16 v16, v1

    .end local v1    # "width":I
    .local v16, "width":I
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v1, v1, v8

    add-int/2addr v2, v1

    .line 1686
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v1, v1, v8

    add-int/2addr v3, v1

    move/from16 v1, v16

    goto :goto_73

    .line 1684
    .end local v16    # "width":I
    .restart local v1    # "width":I
    :cond_71
    move/from16 v16, v1

    .line 1660
    .end local v9    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v10    # "insetRtlL":I
    .end local v11    # "insetRtlR":I
    .end local v12    # "insetR":I
    .end local v13    # "insetL":I
    .end local v14    # "minWidth":I
    .end local v15    # "w":I
    :goto_73
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 1690
    .end local v8    # "i":I
    :cond_76
    return v1
.end method

.method public whitelist getLayerGravity(I)I
    .registers 4
    .param p1, "index"    # I

    .line 760
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 761
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    return v1
.end method

.method public whitelist getLayerHeight(I)I
    .registers 4
    .param p1, "index"    # I

    .line 723
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 724
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    return v1
.end method

.method public whitelist getLayerInsetBottom(I)I
    .registers 4
    .param p1, "index"    # I

    .line 877
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 878
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    return v1
.end method

.method public whitelist getLayerInsetEnd(I)I
    .registers 4
    .param p1, "index"    # I

    .line 919
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 920
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    return v1
.end method

.method public whitelist getLayerInsetLeft(I)I
    .registers 4
    .param p1, "index"    # I

    .line 817
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 818
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    return v1
.end method

.method public whitelist getLayerInsetRight(I)I
    .registers 4
    .param p1, "index"    # I

    .line 837
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 838
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    return v1
.end method

.method public whitelist getLayerInsetStart(I)I
    .registers 4
    .param p1, "index"    # I

    .line 898
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 899
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    return v1
.end method

.method public whitelist getLayerInsetTop(I)I
    .registers 4
    .param p1, "index"    # I

    .line 857
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 858
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    return v1
.end method

.method public whitelist getLayerWidth(I)I
    .registers 4
    .param p1, "index"    # I

    .line 702
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 703
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    return v1
.end method

.method public whitelist getLeftPadding()I
    .registers 2

    .line 1149
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    return v0
.end method

.method public whitelist getNumberOfLayers()I
    .registers 2

    .line 568
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    return v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 1445
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    if-eqz v0, :cond_b

    .line 1446
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    return v0

    .line 1448
    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getOpacity()I

    move-result v0

    return v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 7
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 1279
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1280
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1281
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_1e

    .line 1282
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1283
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1b

    .line 1284
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 1285
    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1286
    return-void

    .line 1281
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1290
    .end local v2    # "i":I
    :cond_1e
    return-void
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .registers 13
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1031
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1032
    .local v0, "layerState":Landroid/graphics/drawable/LayerDrawable$LayerState;
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v1

    if-nez v1, :cond_c

    .line 1033
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeNestedPadding(Landroid/graphics/Rect;)V

    goto :goto_f

    .line 1035
    :cond_c
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeStackedPadding(Landroid/graphics/Rect;)V

    .line 1038
    :goto_f
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1039
    .local v1, "paddingT":I
    iget v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1043
    .local v2, "paddingB":I
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1d

    move v3, v5

    goto :goto_1e

    :cond_1d
    move v3, v4

    .line 1044
    .local v3, "isLayoutRtl":Z
    :goto_1e
    if-eqz v3, :cond_23

    iget v6, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    goto :goto_25

    :cond_23
    iget v6, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1045
    .local v6, "paddingRtlL":I
    :goto_25
    if-eqz v3, :cond_2a

    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    goto :goto_2c

    :cond_2a
    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1046
    .local v7, "paddingRtlR":I
    :goto_2c
    if-ltz v6, :cond_30

    move v8, v6

    goto :goto_32

    :cond_30
    iget v8, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1047
    .local v8, "paddingL":I
    :goto_32
    if-ltz v7, :cond_36

    move v9, v7

    goto :goto_38

    :cond_36
    iget v9, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1051
    .local v9, "paddingR":I
    :goto_38
    if-ltz v8, :cond_3c

    .line 1052
    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 1055
    :cond_3c
    if-ltz v1, :cond_40

    .line 1056
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1059
    :cond_40
    if-ltz v9, :cond_44

    .line 1060
    iput v9, p1, Landroid/graphics/Rect;->right:I

    .line 1063
    :cond_44
    if-ltz v2, :cond_48

    .line 1064
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1067
    :cond_48
    iget v10, p1, Landroid/graphics/Rect;->left:I

    if-nez v10, :cond_58

    iget v10, p1, Landroid/graphics/Rect;->top:I

    if-nez v10, :cond_58

    iget v10, p1, Landroid/graphics/Rect;->right:I

    if-nez v10, :cond_58

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz v10, :cond_59

    :cond_58
    move v4, v5

    :cond_59
    return v4
.end method

.method public whitelist getPaddingMode()I
    .registers 2

    .line 961
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    return v0
.end method

.method public whitelist getRightPadding()I
    .registers 2

    .line 1165
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    return v0
.end method

.method public whitelist getStartPadding()I
    .registers 2

    .line 1181
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    return v0
.end method

.method public whitelist getTopPadding()I
    .registers 2

    .line 1214
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    return v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 1489
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->hasFocusStateSpecified()Z

    move-result v0

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 12
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

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 185
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 186
    .local v0, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    .line 187
    .local v1, "density":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->setDensity(I)V

    .line 189
    sget-object v2, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 190
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 191
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    iget-object v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 194
    .local v3, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 195
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1e
    if-ge v5, v4, :cond_28

    .line 196
    aget-object v6, v3, v5

    .line 197
    .local v6, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->setDensity(I)V

    .line 195
    .end local v6    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 200
    .end local v5    # "i":I
    :cond_28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 202
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 203
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    .line 204
    return-void
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 990
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    if-eqz v0, :cond_8

    .line 991
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    goto :goto_10

    .line 996
    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    .line 998
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    .line 1000
    :goto_10
    return-void
.end method

.method public whitelist isAutoMirrored()Z
    .registers 2

    .line 1467
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    move-result v0

    return v0
.end method

.method public whitelist isProjected()Z
    .registers 7

    .line 416
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 417
    return v1

    .line 420
    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 421
    .local v0, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 422
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v2, :cond_23

    .line 423
    aget-object v4, v0, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 424
    .local v4, "childDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 425
    return v1

    .line 422
    .end local v4    # "childDrawable":Landroid/graphics/drawable/Drawable;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 429
    .end local v3    # "i":I
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 1484
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .registers 5

    .line 1472
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1473
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1474
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_17

    .line 1475
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1476
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_14

    .line 1477
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1474
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1480
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1781
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    if-nez v0, :cond_2d

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2d

    .line 1782
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1783
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1784
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1785
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-ge v2, v1, :cond_2a

    .line 1786
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1787
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_27

    .line 1788
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1785
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1791
    .end local v2    # "i":I
    :cond_2a
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    .line 1793
    .end local v0    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v1    # "N":I
    :cond_2d
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1536
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 1537
    return-void
.end method

.method public whitelist onLayoutDirectionChanged(I)Z
    .registers 8
    .param p1, "layoutDirection"    # I

    .line 1815
    const/4 v0, 0x0

    .line 1817
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1818
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1819
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_1a

    .line 1820
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1821
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_17

    .line 1822
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1819
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1826
    .end local v3    # "i":I
    :cond_1a
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 1827
    return v0
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 8
    .param p1, "level"    # I

    .line 1515
    const/4 v0, 0x0

    .line 1517
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1518
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1519
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_21

    .line 1520
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1521
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1e

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1522
    aget-object v5, v1, v3

    invoke-direct {p0, v3, v5}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1523
    const/4 v0, 0x1

    .line 1519
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1527
    .end local v3    # "i":I
    :cond_21
    if-eqz v0, :cond_2a

    .line 1528
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 1531
    :cond_2a
    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .registers 8
    .param p1, "state"    # [I

    .line 1494
    const/4 v0, 0x0

    .line 1496
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1497
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1498
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_27

    .line 1499
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1500
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_24

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1501
    aget-object v5, v1, v3

    invoke-direct {p0, v3, v5}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1502
    const/4 v0, 0x1

    .line 1498
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1506
    .end local v3    # "i":I
    :cond_27
    if-eqz v0, :cond_30

    .line 1507
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 1510
    :cond_30
    return v0
.end method

.method greylist-max-o refreshPadding()V
    .registers 5

    .line 1763
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1764
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1765
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_13

    .line 1766
    aget-object v3, v1, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1765
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1768
    .end local v2    # "i":I
    :cond_13
    return-void
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 1004
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 1005
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 6
    .param p1, "alpha"    # I

    .line 1360
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1361
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1362
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_17

    .line 1363
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1364
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_14

    .line 1365
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1362
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1368
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method public whitelist setAutoMirrored(Z)V
    .registers 6
    .param p1, "mirrored"    # Z

    .line 1453
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)V

    .line 1455
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1456
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1457
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_1c

    .line 1458
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1459
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_19

    .line 1460
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 1457
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1463
    .end local v2    # "i":I
    :cond_1c
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 6
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 1382
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1383
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1384
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_17

    .line 1385
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1386
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_14

    .line 1387
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1384
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1390
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method public whitelist setDither(Z)V
    .registers 6
    .param p1, "dither"    # Z

    .line 1348
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1349
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1350
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_17

    .line 1351
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1352
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_14

    .line 1353
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1350
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1356
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method public whitelist setDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 622
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-ge p1, v0, :cond_31

    .line 626
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 627
    .local v0, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    aget-object v1, v0, p1

    .line 628
    .local v1, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_21

    .line 629
    if-eqz p2, :cond_1b

    .line 630
    iget-object v2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 631
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 634
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_1b
    iget-object v2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 637
    :cond_21
    if-eqz p2, :cond_26

    .line 638
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 641
    :cond_26
    iput-object p2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 642
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    .line 644
    invoke-direct {p0, p1, v1}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 645
    return-void

    .line 623
    .end local v0    # "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v1    # "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_31
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .registers 5
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 580
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findIndexByLayerId(I)I

    move-result v0

    .line 581
    .local v0, "index":I
    if-gez v0, :cond_8

    .line 582
    const/4 v1, 0x0

    return v1

    .line 585
    :cond_8
    invoke-virtual {p0, v0, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 586
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist setHotspot(FF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1294
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1295
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1296
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_17

    .line 1297
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1298
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_14

    .line 1299
    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1296
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1302
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .registers 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1306
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1307
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1308
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_17

    .line 1309
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1310
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_14

    .line 1311
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1308
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1315
    .end local v2    # "i":I
    :cond_17
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_23

    .line 1316
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    goto :goto_28

    .line 1318
    :cond_23
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1320
    :goto_28
    return-void
.end method

.method public whitelist setId(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "id"    # I

    .line 541
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 542
    return-void
.end method

.method public whitelist setLayerGravity(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "gravity"    # I

    .line 747
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 748
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 749
    return-void
.end method

.method public whitelist setLayerHeight(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "h"    # I

    .line 712
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 713
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 714
    return-void
.end method

.method public whitelist setLayerInset(IIIII)V
    .registers 14
    .param p1, "index"    # I
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 779
    const/high16 v6, -0x80000000

    const/high16 v7, -0x80000000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "index":I
    .end local p2    # "l":I
    .end local p3    # "t":I
    .end local p4    # "r":I
    .end local p5    # "b":I
    .local v1, "index":I
    .local v2, "l":I
    .local v3, "t":I
    .local v4, "r":I
    .local v5, "b":I
    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    .line 780
    return-void
.end method

.method public whitelist setLayerInsetBottom(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "b"    # I

    .line 867
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 868
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 869
    return-void
.end method

.method public whitelist setLayerInsetEnd(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "e"    # I

    .line 909
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 910
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 911
    return-void
.end method

.method public whitelist setLayerInsetLeft(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "l"    # I

    .line 807
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 808
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 809
    return-void
.end method

.method public whitelist setLayerInsetRelative(IIIII)V
    .registers 14
    .param p1, "index"    # I
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "e"    # I
    .param p5, "b"    # I

    .line 798
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v6, p2

    move v3, p3

    move v7, p4

    move v5, p5

    .end local p1    # "index":I
    .end local p2    # "s":I
    .end local p3    # "t":I
    .end local p4    # "e":I
    .end local p5    # "b":I
    .local v1, "index":I
    .local v3, "t":I
    .local v5, "b":I
    .local v6, "s":I
    .local v7, "e":I
    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    .line 799
    return-void
.end method

.method public whitelist setLayerInsetRight(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "r"    # I

    .line 827
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 828
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 829
    return-void
.end method

.method public whitelist setLayerInsetStart(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "s"    # I

    .line 887
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 888
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 889
    return-void
.end method

.method public whitelist setLayerInsetTop(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "t"    # I

    .line 847
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 848
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 849
    return-void
.end method

.method public whitelist setLayerSize(III)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 680
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 681
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 682
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 683
    return-void
.end method

.method public whitelist setLayerWidth(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "w"    # I

    .line 691
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 692
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 693
    return-void
.end method

.method public whitelist setOpacity(I)V
    .registers 3
    .param p1, "opacity"    # I

    .line 1440
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 1441
    return-void
.end method

.method public whitelist setPadding(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1092
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1093
    .local v0, "layerState":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1094
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1095
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1096
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1099
    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1100
    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1101
    return-void
.end method

.method public whitelist setPaddingMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 949
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 950
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;I)V

    .line 952
    :cond_d
    return-void
.end method

.method public whitelist setPaddingRelative(IIII)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 1125
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1126
    .local v0, "layerState":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1127
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1128
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1129
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1132
    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1133
    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1134
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 6
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 1406
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1407
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1408
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_17

    .line 1409
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1410
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_14

    .line 1411
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1408
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1414
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .registers 6
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 1394
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1395
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1396
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_17

    .line 1397
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1398
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_14

    .line 1399
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1396
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1402
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 8
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 1333
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 1334
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1335
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1336
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_1b

    .line 1337
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1338
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_18

    .line 1339
    invoke-virtual {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1336
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1343
    .end local v3    # "i":I
    :cond_1b
    return v0
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 1009
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/LayerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 1010
    return-void
.end method
