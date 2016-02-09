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
.field public static final PADDING_MODE_NEST:I = 0x0

.field public static final PADDING_MODE_STACK:I = 0x1

.field private static final UNDEFINED_INSET:I = -0x80000000


# instance fields
.field private mHotspotBounds:Landroid/graphics/Rect;

.field mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

.field private mMutated:Z

.field private mPaddingB:[I

.field private mPaddingL:[I

.field private mPaddingR:[I

.field private mPaddingT:[I

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
    .line 140
    check-cast v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@4
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    #@7
    .line 139
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 143
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 94
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@a
    .line 95
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    #@11
    .line 96
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpContainer:Landroid/graphics/Rect;

    #@18
    .line 144
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@1e
    .line 145
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@20
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@22
    if-lez v0, :cond_0

    #@24
    .line 146
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    #@27
    .line 147
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    #@2a
    .line 143
    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 107
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    #@4
    .line 106
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
    .line 118
    invoke-direct {p0, p2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    #@4
    .line 120
    if-nez p1, :cond_0

    #@6
    .line 121
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "layers must be non-null"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 124
    :cond_0
    array-length v1, p1

    #@10
    .line 125
    .local v1, "length":I
    new-array v2, v1, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@12
    .line 126
    .local v2, "r":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@15
    .line 127
    new-instance v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@17
    invoke-direct {v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>()V

    #@1a
    aput-object v3, v2, v0

    #@1c
    .line 128
    aget-object v3, v2, v0

    #@1e
    aget-object v4, p1, v0

    #@20
    iput-object v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    .line 129
    aget-object v3, p1, v0

    #@24
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@27
    .line 130
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@29
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@2b
    aget-object v5, p1, v0

    #@2d
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@30
    move-result v5

    #@31
    or-int/2addr v4, v5

    #@32
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@34
    .line 126
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 132
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@39
    iput v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@3b
    .line 133
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3d
    iput-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@3f
    .line 135
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    #@42
    .line 136
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    #@45
    .line 117
    return-void
.end method

.method private computeNestedPadding(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1133
    iput v3, p1, Landroid/graphics/Rect;->left:I

    #@3
    .line 1134
    iput v3, p1, Landroid/graphics/Rect;->top:I

    #@5
    .line 1135
    iput v3, p1, Landroid/graphics/Rect;->right:I

    #@7
    .line 1136
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    #@9
    .line 1139
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@b
    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@d
    .line 1140
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@f
    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@11
    .line 1141
    .local v0, "N":I
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@14
    .line 1142
    aget-object v3, v1, v2

    #@16
    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    #@19
    .line 1144
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
    .line 1145
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
    .line 1146
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
    .line 1147
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
    .line 1141
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 1132
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
    .line 1152
    iput v3, p1, Landroid/graphics/Rect;->left:I

    #@3
    .line 1153
    iput v3, p1, Landroid/graphics/Rect;->top:I

    #@5
    .line 1154
    iput v3, p1, Landroid/graphics/Rect;->right:I

    #@7
    .line 1155
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    #@9
    .line 1158
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@b
    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@d
    .line 1159
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@f
    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@11
    .line 1160
    .local v0, "N":I
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@14
    .line 1161
    aget-object v3, v1, v2

    #@16
    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    #@19
    .line 1163
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
    .line 1164
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
    .line 1165
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
    .line 1166
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
    .line 1160
    add-int/lit8 v2, v2, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 1151
    :cond_0
    return-void
.end method

.method private createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 421
    new-instance v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@2
    invoke-direct {v0}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>()V

    #@5
    .line 422
    .local v0, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput-object p1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    .line 423
    return-object v0
.end method

.method private getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1315
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@5
    .line 1316
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@7
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@9
    .line 1317
    .local v0, "N":I
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@c
    .line 1318
    aget-object v4, v1, v3

    #@e
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    .line 1319
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@12
    .line 1320
    return-object v2

    #@13
    .line 1317
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1323
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
    .line 222
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@4
    .line 224
    .local v4, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@7
    move-result v6

    #@8
    add-int/lit8 v2, v6, 0x1

    #@a
    .line 227
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
    if-eq v5, v6, :cond_6

    #@11
    .line 228
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@14
    move-result v1

    #@15
    .local v1, "depth":I
    if-ge v1, v2, :cond_1

    #@17
    const/4 v6, 0x3

    #@18
    if-eq v5, v6, :cond_6

    #@1a
    .line 229
    :cond_1
    if-ne v5, v8, :cond_0

    #@1c
    .line 233
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
    .line 237
    new-instance v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@2d
    invoke-direct {v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>()V

    #@30
    .line 238
    .local v3, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    sget-object v6, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    #@32
    invoke-static {p1, p4, p3, v6}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@35
    move-result-object v0

    #@36
    .line 239
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    #@39
    .line 240
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3c
    .line 245
    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3e
    if-nez v6, :cond_4

    #@40
    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@42
    if-eqz v6, :cond_2

    #@44
    .line 246
    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@46
    aget v6, v6, v9

    #@48
    if-nez v6, :cond_4

    #@4a
    .line 247
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@4d
    move-result v5

    #@4e
    if-eq v5, v9, :cond_2

    #@50
    .line 249
    if-eq v5, v8, :cond_3

    #@52
    .line 250
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@54
    new-instance v7, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@5c
    move-result-object v8

    #@5d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    .line 251
    const-string/jumbo v8, ": <item> tag requires a \'drawable\' attribute or "

    #@64
    .line 250
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v7

    #@68
    .line 252
    const-string/jumbo v8, "child tag defining a drawable"

    #@6b
    .line 250
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v7

    #@6f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v7

    #@73
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@76
    throw v6

    #@77
    .line 254
    :cond_3
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@7a
    move-result-object v6

    #@7b
    iput-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@7d
    .line 257
    :cond_4
    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@7f
    if-eqz v6, :cond_5

    #@81
    .line 258
    iget v6, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@83
    .line 259
    iget-object v7, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@85
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@88
    move-result v7

    #@89
    .line 258
    or-int/2addr v6, v7

    #@8a
    iput v6, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@8c
    .line 260
    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@8e
    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@91
    .line 263
    :cond_5
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    #@94
    goto/16 :goto_0

    #@96
    .line 221
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "depth":I
    .end local v3    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_6
    return-void
.end method

.method private refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z
    .locals 3
    .param p1, "i"    # I
    .param p2, "r"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@0
    .prologue
    .line 1602
    iget-object v1, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v1, :cond_2

    #@4
    .line 1603
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@6
    .line 1604
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@b
    .line 1605
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
    .line 1607
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    #@1d
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@1f
    aput v2, v1, p1

    #@21
    .line 1608
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    #@23
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@25
    aput v2, v1, p1

    #@27
    .line 1609
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    #@29
    iget v2, v0, Landroid/graphics/Rect;->right:I

    #@2b
    aput v2, v1, p1

    #@2d
    .line 1610
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    #@2f
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    #@31
    aput v2, v1, p1

    #@33
    .line 1611
    const/4 v1, 0x1

    #@34
    return v1

    #@35
    .line 1606
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
    .line 1614
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
    .line 1491
    invoke-static {p0}, Landroid/view/Gravity;->isHorizontal(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1492
    if-gez p1, :cond_4

    #@8
    .line 1493
    or-int/lit8 p0, p0, 0x7

    #@a
    .line 1499
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/view/Gravity;->isVertical(I)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1

    #@10
    .line 1500
    if-gez p2, :cond_5

    #@12
    .line 1501
    or-int/lit8 p0, p0, 0x70

    #@14
    .line 1510
    :cond_1
    :goto_1
    if-gez p1, :cond_2

    #@16
    if-gez p3, :cond_2

    #@18
    .line 1511
    or-int/lit8 p0, p0, 0x7

    #@1a
    .line 1514
    :cond_2
    if-gez p2, :cond_3

    #@1c
    if-gez p4, :cond_3

    #@1e
    .line 1515
    or-int/lit8 p0, p0, 0x70

    #@20
    .line 1518
    :cond_3
    return p0

    #@21
    .line 1495
    :cond_4
    const v0, 0x800003

    #@24
    or-int/2addr p0, v0

    #@25
    goto :goto_0

    #@26
    .line 1503
    :cond_5
    or-int/lit8 p0, p0, 0x30

    #@28
    goto :goto_1
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
    .line 854
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 855
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@8
    .line 856
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@a
    .line 857
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@c
    .line 858
    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@e
    .line 859
    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@10
    .line 860
    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@12
    .line 853
    return-void
.end method

.method private updateLayerBounds(Landroid/graphics/Rect;)V
    .locals 27
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1421
    const/16 v18, 0x0

    #@2
    .line 1422
    .local v18, "padL":I
    const/16 v20, 0x0

    #@4
    .line 1423
    .local v20, "padT":I
    const/16 v19, 0x0

    #@6
    .line 1424
    .local v19, "padR":I
    const/16 v17, 0x0

    #@8
    .line 1426
    .local v17, "padB":I
    move-object/from16 v0, p0

    #@a
    iget-object v8, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    #@c
    .line 1427
    .local v8, "outRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    #@f
    move-result v9

    #@10
    .line 1428
    .local v9, "layoutDirection":I
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@14
    move-object/from16 v22, v0

    #@16
    invoke-static/range {v22 .. v22}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    #@19
    move-result v22

    #@1a
    if-nez v22, :cond_1

    #@1c
    const/16 v16, 0x1

    #@1e
    .line 1429
    .local v16, "nest":Z
    :goto_0
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@22
    move-object/from16 v22, v0

    #@24
    move-object/from16 v0, v22

    #@26
    iget-object v11, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@28
    .line 1430
    .local v11, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2c
    move-object/from16 v22, v0

    #@2e
    move-object/from16 v0, v22

    #@30
    iget v10, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@32
    .line 1431
    .local v10, "N":I
    const/4 v13, 0x0

    #@33
    .local v13, "i":I
    :goto_1
    if-ge v13, v10, :cond_a

    #@35
    .line 1432
    aget-object v21, v11, v13

    #@37
    .line 1433
    .local v21, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    move-object/from16 v0, v21

    #@39
    iget-object v12, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3b
    .line 1434
    .local v12, "d":Landroid/graphics/drawable/Drawable;
    if-nez v12, :cond_2

    #@3d
    .line 1431
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 1428
    .end local v10    # "N":I
    .end local v11    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v12    # "d":Landroid/graphics/drawable/Drawable;
    .end local v13    # "i":I
    .end local v16    # "nest":Z
    .end local v21    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    const/16 v16, 0x0

    #@42
    .restart local v16    # "nest":Z
    goto :goto_0

    #@43
    .line 1438
    .restart local v10    # "N":I
    .restart local v11    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .restart local v12    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "i":I
    .restart local v21    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    move-object/from16 v0, p0

    #@45
    iget-object v7, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpContainer:Landroid/graphics/Rect;

    #@47
    .line 1439
    .local v7, "container":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@4a
    move-result-object v22

    #@4b
    move-object/from16 v0, v22

    #@4d
    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@50
    .line 1447
    const/16 v22, 0x1

    #@52
    move/from16 v0, v22

    #@54
    if-ne v9, v0, :cond_5

    #@56
    .line 1448
    move-object/from16 v0, v21

    #@58
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@5a
    move/from16 v22, v0

    #@5c
    const/high16 v23, -0x80000000

    #@5e
    move/from16 v0, v22

    #@60
    move/from16 v1, v23

    #@62
    if-ne v0, v1, :cond_3

    #@64
    move-object/from16 v0, v21

    #@66
    iget v14, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@68
    .line 1449
    .local v14, "insetL":I
    :goto_3
    move-object/from16 v0, v21

    #@6a
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@6c
    move/from16 v22, v0

    #@6e
    const/high16 v23, -0x80000000

    #@70
    move/from16 v0, v22

    #@72
    move/from16 v1, v23

    #@74
    if-ne v0, v1, :cond_4

    #@76
    move-object/from16 v0, v21

    #@78
    iget v15, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@7a
    .line 1457
    .local v15, "insetR":I
    :goto_4
    move-object/from16 v0, p1

    #@7c
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@7e
    move/from16 v22, v0

    #@80
    add-int v22, v22, v14

    #@82
    add-int v22, v22, v18

    #@84
    move-object/from16 v0, p1

    #@86
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@88
    move/from16 v23, v0

    #@8a
    move-object/from16 v0, v21

    #@8c
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@8e
    move/from16 v24, v0

    #@90
    add-int v23, v23, v24

    #@92
    add-int v23, v23, v20

    #@94
    .line 1458
    move-object/from16 v0, p1

    #@96
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@98
    move/from16 v24, v0

    #@9a
    sub-int v24, v24, v15

    #@9c
    sub-int v24, v24, v19

    #@9e
    move-object/from16 v0, p1

    #@a0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@a2
    move/from16 v25, v0

    #@a4
    move-object/from16 v0, v21

    #@a6
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@a8
    move/from16 v26, v0

    #@aa
    sub-int v25, v25, v26

    #@ac
    sub-int v25, v25, v17

    #@ae
    .line 1457
    move/from16 v0, v22

    #@b0
    move/from16 v1, v23

    #@b2
    move/from16 v2, v24

    #@b4
    move/from16 v3, v25

    #@b6
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@b9
    .line 1461
    move-object/from16 v0, v21

    #@bb
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    #@bd
    move/from16 v22, v0

    #@bf
    move-object/from16 v0, v21

    #@c1
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@c3
    move/from16 v23, v0

    #@c5
    move-object/from16 v0, v21

    #@c7
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@c9
    move/from16 v24, v0

    #@cb
    .line 1462
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@ce
    move-result v25

    #@cf
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@d2
    move-result v26

    #@d3
    .line 1461
    invoke-static/range {v22 .. v26}, Landroid/graphics/drawable/LayerDrawable;->resolveGravity(IIIII)I

    #@d6
    move-result v4

    #@d7
    .line 1463
    .local v4, "gravity":I
    move-object/from16 v0, v21

    #@d9
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@db
    move/from16 v22, v0

    #@dd
    if-gez v22, :cond_8

    #@df
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@e2
    move-result v5

    #@e3
    .line 1464
    .local v5, "w":I
    :goto_5
    move-object/from16 v0, v21

    #@e5
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@e7
    move/from16 v22, v0

    #@e9
    if-gez v22, :cond_9

    #@eb
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@ee
    move-result v6

    #@ef
    .line 1465
    .local v6, "h":I
    :goto_6
    invoke-static/range {v4 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@f2
    .line 1466
    invoke-virtual {v12, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@f5
    .line 1468
    if-eqz v16, :cond_0

    #@f7
    .line 1469
    move-object/from16 v0, p0

    #@f9
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    #@fb
    move-object/from16 v22, v0

    #@fd
    aget v22, v22, v13

    #@ff
    add-int v18, v18, v22

    #@101
    .line 1470
    move-object/from16 v0, p0

    #@103
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    #@105
    move-object/from16 v22, v0

    #@107
    aget v22, v22, v13

    #@109
    add-int v19, v19, v22

    #@10b
    .line 1471
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    #@10f
    move-object/from16 v22, v0

    #@111
    aget v22, v22, v13

    #@113
    add-int v20, v20, v22

    #@115
    .line 1472
    move-object/from16 v0, p0

    #@117
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    #@119
    move-object/from16 v22, v0

    #@11b
    aget v22, v22, v13

    #@11d
    add-int v17, v17, v22

    #@11f
    goto/16 :goto_2

    #@121
    .line 1448
    .end local v4    # "gravity":I
    .end local v5    # "w":I
    .end local v6    # "h":I
    .end local v14    # "insetL":I
    .end local v15    # "insetR":I
    :cond_3
    move-object/from16 v0, v21

    #@123
    iget v14, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@125
    .restart local v14    # "insetL":I
    goto/16 :goto_3

    #@127
    .line 1449
    :cond_4
    move-object/from16 v0, v21

    #@129
    iget v15, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@12b
    .restart local v15    # "insetR":I
    goto/16 :goto_4

    #@12d
    .line 1451
    .end local v14    # "insetL":I
    .end local v15    # "insetR":I
    :cond_5
    move-object/from16 v0, v21

    #@12f
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@131
    move/from16 v22, v0

    #@133
    const/high16 v23, -0x80000000

    #@135
    move/from16 v0, v22

    #@137
    move/from16 v1, v23

    #@139
    if-ne v0, v1, :cond_6

    #@13b
    move-object/from16 v0, v21

    #@13d
    iget v14, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@13f
    .line 1452
    .restart local v14    # "insetL":I
    :goto_7
    move-object/from16 v0, v21

    #@141
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@143
    move/from16 v22, v0

    #@145
    const/high16 v23, -0x80000000

    #@147
    move/from16 v0, v22

    #@149
    move/from16 v1, v23

    #@14b
    if-ne v0, v1, :cond_7

    #@14d
    move-object/from16 v0, v21

    #@14f
    iget v15, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@151
    .restart local v15    # "insetR":I
    goto/16 :goto_4

    #@153
    .line 1451
    .end local v14    # "insetL":I
    .end local v15    # "insetR":I
    :cond_6
    move-object/from16 v0, v21

    #@155
    iget v14, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@157
    .restart local v14    # "insetL":I
    goto :goto_7

    #@158
    .line 1452
    :cond_7
    move-object/from16 v0, v21

    #@15a
    iget v15, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@15c
    .restart local v15    # "insetR":I
    goto/16 :goto_4

    #@15e
    .line 1463
    .restart local v4    # "gravity":I
    :cond_8
    move-object/from16 v0, v21

    #@160
    iget v5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@162
    .restart local v5    # "w":I
    goto :goto_5

    #@163
    .line 1464
    :cond_9
    move-object/from16 v0, v21

    #@165
    iget v6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@167
    .restart local v6    # "h":I
    goto :goto_6

    #@168
    .line 1420
    .end local v4    # "gravity":I
    .end local v5    # "w":I
    .end local v6    # "h":I
    .end local v7    # "container":Landroid/graphics/Rect;
    .end local v12    # "d":Landroid/graphics/drawable/Drawable;
    .end local v14    # "insetL":I
    .end local v15    # "insetR":I
    .end local v21    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_a
    return-void
.end method

.method private updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "layer"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 268
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    .line 271
    .local v1, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@7
    move-result v3

    #@8
    or-int/2addr v2, v3

    #@9
    iput v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@b
    .line 274
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v2

    #@f
    iput-object v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@11
    .line 277
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@13
    const/4 v3, 0x5

    #@14
    .line 276
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@17
    move-result v2

    #@18
    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@1a
    .line 279
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@1c
    const/4 v3, 0x6

    #@1d
    .line 278
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@20
    move-result v2

    #@21
    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@23
    .line 281
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@25
    const/4 v3, 0x7

    #@26
    .line 280
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@29
    move-result v2

    #@2a
    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@2c
    .line 283
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@2e
    const/16 v3, 0x8

    #@30
    .line 282
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@33
    move-result v2

    #@34
    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@36
    .line 285
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@38
    const/16 v3, 0x9

    #@3a
    .line 284
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@3d
    move-result v2

    #@3e
    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@40
    .line 287
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@42
    const/16 v3, 0xa

    #@44
    .line 286
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@47
    move-result v2

    #@48
    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@4a
    .line 289
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@4c
    const/4 v3, 0x3

    #@4d
    .line 288
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@50
    move-result v2

    #@51
    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@53
    .line 291
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@55
    const/4 v3, 0x2

    #@56
    .line 290
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@59
    move-result v2

    #@5a
    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@5c
    .line 293
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    #@5e
    const/4 v3, 0x0

    #@5f
    .line 292
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@62
    move-result v2

    #@63
    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    #@65
    .line 294
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@67
    const/4 v3, 0x1

    #@68
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@6b
    move-result v2

    #@6c
    iput v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@6e
    .line 296
    const/4 v2, 0x4

    #@6f
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@72
    move-result-object v0

    #@73
    .line 297
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@75
    .line 298
    iput-object v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@77
    .line 267
    :cond_0
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 174
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    .line 177
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
    .line 180
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v4

    #@f
    iput-object v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    #@11
    .line 182
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@14
    move-result v0

    #@15
    .line 183
    .local v0, "N":I
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@18
    .line 184
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@1b
    move-result v1

    #@1c
    .line 185
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    #@1f
    .line 183
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 187
    :pswitch_0
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@24
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@27
    move-result v4

    #@28
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@2a
    goto :goto_1

    #@2b
    .line 190
    :pswitch_1
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@2d
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@30
    move-result v4

    #@31
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@33
    goto :goto_1

    #@34
    .line 193
    :pswitch_2
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@36
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@39
    move-result v4

    #@3a
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@3c
    goto :goto_1

    #@3d
    .line 196
    :pswitch_3
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@3f
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@42
    move-result v4

    #@43
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@45
    goto :goto_1

    #@46
    .line 199
    :pswitch_4
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@48
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@4b
    move-result v4

    #@4c
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@4e
    goto :goto_1

    #@4f
    .line 202
    :pswitch_5
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@51
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@54
    move-result v4

    #@55
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@57
    goto :goto_1

    #@58
    .line 205
    :pswitch_6
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@5a
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@5d
    move-result v4

    #@5e
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@60
    goto :goto_1

    #@61
    .line 208
    :pswitch_7
    invoke-static {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get0(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    #@64
    move-result v4

    #@65
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@68
    move-result v4

    #@69
    invoke-static {v3, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-set0(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z

    #@6c
    goto :goto_1

    #@6d
    .line 211
    :pswitch_8
    invoke-static {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    #@70
    move-result v4

    #@71
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@74
    move-result v4

    #@75
    invoke-static {v3, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-set1(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I

    #@78
    goto :goto_1

    #@79
    .line 173
    .end local v1    # "attr":I
    :cond_0
    return-void

    #@7a
    .line 185
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
    .line 434
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@3
    move-result-object v1

    #@4
    .line 435
    .local v1, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    #@7
    move-result v0

    #@8
    .line 436
    .local v0, "index":I
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    #@b
    .line 437
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    #@e
    .line 438
    return v0
.end method

.method addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I
    .locals 6
    .param p1, "layer"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 372
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    .line 373
    .local v3, "st":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@5
    if-eqz v4, :cond_2

    #@7
    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@9
    array-length v0, v4

    #@a
    .line 374
    .local v0, "N":I
    :goto_0
    iget v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@c
    .line 375
    .local v1, "i":I
    if-lt v1, v0, :cond_1

    #@e
    .line 376
    add-int/lit8 v4, v0, 0xa

    #@10
    new-array v2, v4, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@12
    .line 377
    .local v2, "nu":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    if-lez v1, :cond_0

    #@14
    .line 378
    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@16
    invoke-static {v4, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@19
    .line 381
    :cond_0
    iput-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@1b
    .line 384
    .end local v2    # "nu":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@1d
    aput-object p1, v4, v1

    #@1f
    .line 385
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@21
    add-int/lit8 v4, v4, 0x1

    #@23
    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@25
    .line 386
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    #@28
    .line 387
    return v1

    #@29
    .line 373
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
    .line 403
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@3
    move-result-object v0

    #@4
    .line 404
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@6
    .line 405
    iput-object p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@8
    .line 406
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->isAutoMirrored()Z

    #@d
    move-result v2

    #@e
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    #@11
    .line 407
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@13
    .line 408
    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@15
    .line 409
    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@17
    .line 410
    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@19
    .line 412
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    #@1c
    .line 414
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
    .line 415
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@2a
    .line 417
    return-object v0
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 9
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 304
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 306
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@5
    .line 307
    .local v6, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    if-nez v6, :cond_0

    #@7
    .line 308
    return-void

    #@8
    .line 311
    :cond_0
    iget-object v7, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    #@a
    if-eqz v7, :cond_1

    #@c
    .line 312
    iget-object v7, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    #@e
    sget-object v8, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    #@10
    invoke-virtual {p1, v7, v8}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@13
    move-result-object v1

    #@14
    .line 313
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@17
    .line 314
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 317
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v2, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@1c
    .line 318
    .local v2, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@1e
    .line 319
    .local v0, "N":I
    const/4 v4, 0x0

    #@1f
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    #@21
    .line 320
    aget-object v5, v2, v4

    #@23
    .line 321
    .local v5, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v7, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@25
    if-eqz v7, :cond_2

    #@27
    .line 322
    iget-object v7, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    #@29
    .line 323
    sget-object v8, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    #@2b
    .line 322
    invoke-virtual {p1, v7, v8}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@2e
    move-result-object v1

    #@2f
    .line 324
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5, v1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    #@32
    .line 325
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@35
    .line 328
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_2
    iget-object v3, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@37
    .line 329
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    #@39
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@3c
    move-result v7

    #@3d
    if-eqz v7, :cond_3

    #@3f
    .line 330
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@42
    .line 333
    iget v7, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@44
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@47
    move-result v8

    #@48
    or-int/2addr v7, v8

    #@49
    iput v7, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@4b
    .line 319
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 337
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    #@51
    .line 303
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 342
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
    .line 1670
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 1672
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@5
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@7
    .line 1673
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@9
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@b
    .line 1674
    .local v0, "N":I
    const/4 v3, 0x0

    #@c
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@e
    .line 1675
    aget-object v4, v1, v3

    #@10
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    .line 1676
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@14
    .line 1677
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@17
    .line 1674
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1680
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v4, 0x0

    #@1b
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    #@1d
    .line 1669
    return-void
.end method

.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 152
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
    .line 911
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 912
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 913
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 914
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 915
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 916
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@14
    .line 913
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 910
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method ensurePadding()V
    .locals 2

    #@0
    .prologue
    .line 1621
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@4
    .line 1622
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
    .line 1623
    return-void

    #@e
    .line 1626
    :cond_0
    new-array v1, v0, [I

    #@10
    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    #@12
    .line 1627
    new-array v1, v0, [I

    #@14
    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    #@16
    .line 1628
    new-array v1, v0, [I

    #@18
    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    #@1a
    .line 1629
    new-array v1, v0, [I

    #@1c
    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    #@1e
    .line 1620
    return-void
.end method

.method public findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "id"    # I

    #@0
    .prologue
    .line 452
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 453
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
    .line 454
    aget-object v2, v1, v0

    #@e
    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@10
    if-ne v2, p1, :cond_0

    #@12
    .line 455
    aget-object v2, v1, v0

    #@14
    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    return-object v2

    #@17
    .line 453
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 459
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
    .line 531
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v3, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 532
    .local v3, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 533
    .local v0, "N":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@b
    .line 534
    aget-object v1, v3, v2

    #@d
    .line 535
    .local v1, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v4, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@f
    if-ne v4, p1, :cond_0

    #@11
    .line 536
    return v2

    #@12
    .line 533
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 540
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
    .line 1270
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 1271
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@6
    .line 1272
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1274
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
    .line 1129
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
    .line 923
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
    .line 1642
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canConstantState()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1643
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@a
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getChangingConfigurations()I

    #@d
    move-result v1

    #@e
    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    #@10
    .line 1644
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@12
    return-object v0

    #@13
    .line 1646
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
    .line 590
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@4
    if-lt p1, v0, :cond_0

    #@6
    .line 591
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 593
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
    .line 1095
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
    .line 1222
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1223
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@6
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@9
    .line 1221
    :goto_0
    return-void

    #@a
    .line 1225
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
    .line 488
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@4
    if-lt p1, v0, :cond_0

    #@6
    .line 489
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 491
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
    .line 1568
    const/4 v3, -0x1

    #@1
    .line 1569
    .local v3, "height":I
    const/4 v8, 0x0

    #@2
    .line 1570
    .local v8, "padT":I
    const/4 v7, 0x0

    #@3
    .line 1572
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
    .line 1573
    .local v6, "nest":Z
    :goto_0
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@e
    iget-object v1, v10, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@10
    .line 1574
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@12
    iget v0, v10, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@14
    .line 1575
    .local v0, "N":I
    const/4 v4, 0x0

    #@15
    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_5

    #@17
    .line 1576
    aget-object v9, v1, v4

    #@19
    .line 1577
    .local v9, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    if-nez v10, :cond_2

    #@1d
    .line 1575
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 1572
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
    .line 1581
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
    .line 1582
    .local v5, "minHeight":I
    :goto_3
    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@2e
    add-int/2addr v10, v5

    #@2f
    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@31
    add-int/2addr v10, v11

    #@32
    add-int/2addr v10, v8

    #@33
    add-int v2, v10, v7

    #@35
    .line 1583
    .local v2, "h":I
    if-le v2, v3, :cond_3

    #@37
    .line 1584
    move v3, v2

    #@38
    .line 1587
    :cond_3
    if-eqz v6, :cond_0

    #@3a
    .line 1588
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    #@3c
    aget v10, v10, v4

    #@3e
    add-int/2addr v8, v10

    #@3f
    .line 1589
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    #@41
    aget v10, v10, v4

    #@43
    add-int/2addr v7, v10

    #@44
    goto :goto_2

    #@45
    .line 1581
    .end local v2    # "h":I
    .end local v5    # "minHeight":I
    :cond_4
    iget v5, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@47
    .restart local v5    # "minHeight":I
    goto :goto_3

    #@48
    .line 1593
    .end local v5    # "minHeight":I
    .end local v9    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_5
    return v3
.end method

.method public getIntrinsicWidth()I
    .locals 15

    #@0
    .prologue
    const/high16 v14, -0x80000000

    #@2
    .line 1523
    const/4 v12, -0x1

    #@3
    .line 1524
    .local v12, "width":I
    const/4 v8, 0x0

    #@4
    .line 1525
    .local v8, "padL":I
    const/4 v9, 0x0

    #@5
    .line 1527
    .local v9, "padR":I
    iget-object v13, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@7
    invoke-static {v13}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    #@a
    move-result v13

    #@b
    if-nez v13, :cond_1

    #@d
    const/4 v7, 0x1

    #@e
    .line 1528
    .local v7, "nest":Z
    :goto_0
    iget-object v13, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@10
    iget-object v1, v13, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@12
    .line 1529
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v13, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@14
    iget v0, v13, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@16
    .line 1530
    .local v0, "N":I
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_a

    #@19
    .line 1531
    aget-object v10, v1, v2

    #@1b
    .line 1532
    .local v10, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v13, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1d
    if-nez v13, :cond_2

    #@1f
    .line 1530
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_1

    #@22
    .line 1527
    .end local v0    # "N":I
    .end local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2    # "i":I
    .end local v7    # "nest":Z
    .end local v10    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    const/4 v7, 0x0

    #@23
    .restart local v7    # "nest":Z
    goto :goto_0

    #@24
    .line 1542
    .restart local v0    # "N":I
    .restart local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .restart local v2    # "i":I
    .restart local v10    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    #@27
    move-result v5

    #@28
    .line 1543
    .local v5, "layoutDirection":I
    const/4 v13, 0x1

    #@29
    if-ne v5, v13, :cond_6

    #@2b
    .line 1544
    iget v13, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@2d
    if-ne v13, v14, :cond_4

    #@2f
    iget v3, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@31
    .line 1545
    .local v3, "insetL":I
    :goto_3
    iget v13, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@33
    if-ne v13, v14, :cond_5

    #@35
    iget v4, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@37
    .line 1551
    .local v4, "insetR":I
    :goto_4
    iget v13, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@39
    if-gez v13, :cond_9

    #@3b
    iget-object v13, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3d
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@40
    move-result v6

    #@41
    .line 1552
    .local v6, "minWidth":I
    :goto_5
    add-int v13, v6, v3

    #@43
    add-int/2addr v13, v4

    #@44
    add-int/2addr v13, v8

    #@45
    add-int v11, v13, v9

    #@47
    .line 1553
    .local v11, "w":I
    if-le v11, v12, :cond_3

    #@49
    .line 1554
    move v12, v11

    #@4a
    .line 1557
    :cond_3
    if-eqz v7, :cond_0

    #@4c
    .line 1558
    iget-object v13, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    #@4e
    aget v13, v13, v2

    #@50
    add-int/2addr v8, v13

    #@51
    .line 1559
    iget-object v13, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    #@53
    aget v13, v13, v2

    #@55
    add-int/2addr v9, v13

    #@56
    goto :goto_2

    #@57
    .line 1544
    .end local v3    # "insetL":I
    .end local v4    # "insetR":I
    .end local v6    # "minWidth":I
    .end local v11    # "w":I
    :cond_4
    iget v3, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@59
    .restart local v3    # "insetL":I
    goto :goto_3

    #@5a
    .line 1545
    :cond_5
    iget v4, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@5c
    .restart local v4    # "insetR":I
    goto :goto_4

    #@5d
    .line 1547
    .end local v3    # "insetL":I
    .end local v4    # "insetR":I
    :cond_6
    iget v13, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@5f
    if-ne v13, v14, :cond_7

    #@61
    iget v3, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@63
    .line 1548
    .restart local v3    # "insetL":I
    :goto_6
    iget v13, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@65
    if-ne v13, v14, :cond_8

    #@67
    iget v4, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@69
    .restart local v4    # "insetR":I
    goto :goto_4

    #@6a
    .line 1547
    .end local v3    # "insetL":I
    .end local v4    # "insetR":I
    :cond_7
    iget v3, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@6c
    .restart local v3    # "insetL":I
    goto :goto_6

    #@6d
    .line 1548
    :cond_8
    iget v4, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@6f
    .restart local v4    # "insetR":I
    goto :goto_4

    #@70
    .line 1551
    :cond_9
    iget v6, v10, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@72
    .restart local v6    # "minWidth":I
    goto :goto_5

    #@73
    .line 1563
    .end local v3    # "insetL":I
    .end local v4    # "insetR":I
    .end local v5    # "layoutDirection":I
    .end local v6    # "minWidth":I
    .end local v10    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_a
    return v12
.end method

.method public getLayerGravity(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 692
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 693
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
    .line 655
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 656
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
    .line 809
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 810
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
    .line 849
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 850
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
    .line 749
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 750
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
    .line 769
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 770
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
    .line 829
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 830
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
    .line 789
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 790
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
    .line 634
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 635
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@8
    return v1
.end method

.method public getLeftPadding()I
    .locals 1

    #@0
    .prologue
    .line 1047
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
    .line 500
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
    .line 1343
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1344
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@8
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@a
    return v0

    #@b
    .line 1346
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
    .line 1177
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1178
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1179
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1180
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1181
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1182
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    #@14
    .line 1183
    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_0

    #@1a
    .line 1184
    return-void

    #@1b
    .line 1179
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1176
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 928
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@4
    .line 929
    .local v0, "layerState":Landroid/graphics/drawable/LayerDrawable$LayerState;
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    #@7
    move-result v7

    #@8
    if-nez v7, :cond_5

    #@a
    .line 930
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeNestedPadding(Landroid/graphics/Rect;)V

    #@d
    .line 937
    :goto_0
    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@f
    if-ltz v7, :cond_0

    #@11
    .line 938
    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@13
    iput v7, p1, Landroid/graphics/Rect;->top:I

    #@15
    .line 941
    :cond_0
    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@17
    if-ltz v7, :cond_1

    #@19
    .line 942
    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@1b
    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    #@1d
    .line 947
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    #@20
    move-result v7

    #@21
    if-ne v7, v5, :cond_6

    #@23
    .line 948
    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@25
    .line 949
    .local v3, "paddingRtlLeft":I
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@27
    .line 955
    .local v4, "paddingRtlRight":I
    :goto_1
    if-ltz v3, :cond_7

    #@29
    move v1, v3

    #@2a
    .line 956
    .local v1, "paddingLeft":I
    :goto_2
    if-ltz v1, :cond_2

    #@2c
    .line 957
    iput v1, p1, Landroid/graphics/Rect;->left:I

    #@2e
    .line 960
    :cond_2
    if-ltz v4, :cond_8

    #@30
    move v2, v4

    #@31
    .line 961
    .local v2, "paddingRight":I
    :goto_3
    if-ltz v2, :cond_3

    #@33
    .line 962
    iput v2, p1, Landroid/graphics/Rect;->right:I

    #@35
    .line 965
    :cond_3
    iget v7, p1, Landroid/graphics/Rect;->left:I

    #@37
    if-nez v7, :cond_4

    #@39
    iget v7, p1, Landroid/graphics/Rect;->top:I

    #@3b
    if-eqz v7, :cond_9

    #@3d
    :cond_4
    :goto_4
    return v5

    #@3e
    .line 932
    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .end local v3    # "paddingRtlLeft":I
    .end local v4    # "paddingRtlRight":I
    :cond_5
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeStackedPadding(Landroid/graphics/Rect;)V

    #@41
    goto :goto_0

    #@42
    .line 951
    :cond_6
    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@44
    .line 952
    .restart local v3    # "paddingRtlLeft":I
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@46
    .restart local v4    # "paddingRtlRight":I
    goto :goto_1

    #@47
    .line 955
    :cond_7
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@49
    .restart local v1    # "paddingLeft":I
    goto :goto_2

    #@4a
    .line 960
    :cond_8
    iget v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@4c
    .restart local v2    # "paddingRight":I
    goto :goto_3

    #@4d
    .line 965
    :cond_9
    iget v7, p1, Landroid/graphics/Rect;->right:I

    #@4f
    if-nez v7, :cond_4

    #@51
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    #@53
    if-nez v7, :cond_4

    #@55
    move v5, v6

    #@56
    goto :goto_4
.end method

.method public getPaddingMode()I
    .locals 1

    #@0
    .prologue
    .line 891
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
    .line 1063
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
    .line 1079
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
    .line 1112
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@4
    return v0
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
    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 160
    sget-object v1, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    #@5
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 161
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@c
    .line 162
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@f
    .line 164
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@12
    .line 166
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    #@15
    .line 167
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    #@18
    .line 157
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 896
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    #@3
    .line 895
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    #@0
    .prologue
    .line 1365
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
    .line 350
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 351
    return v4

    #@8
    .line 354
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@a
    iget-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@c
    .line 355
    .local v2, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@e
    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@10
    .line 356
    .local v0, "N":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@13
    .line 357
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
    .line 358
    return v4

    #@1e
    .line 356
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 362
    :cond_2
    const/4 v3, 0x0

    #@22
    return v3
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 1370
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->isStateful()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1651
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
    .line 1652
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@d
    invoke-virtual {p0, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@10
    move-result-object v4

    #@11
    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@13
    .line 1653
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@15
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@17
    .line 1654
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@19
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@1b
    .line 1655
    .local v0, "N":I
    const/4 v3, 0x0

    #@1c
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@1e
    .line 1656
    aget-object v4, v1, v3

    #@20
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    .line 1657
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@24
    .line 1658
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@27
    .line 1655
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1661
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v4, 0x1

    #@2b
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    #@2d
    .line 1663
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
    .line 1417
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    #@3
    .line 1416
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 6
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 1685
    const/4 v2, 0x0

    #@1
    .line 1687
    .local v2, "changed":Z
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    iget-object v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@5
    .line 1688
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@7
    iget v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@9
    .line 1689
    .local v0, "N":I
    const/4 v4, 0x0

    #@a
    .end local v2    # "changed":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@c
    .line 1690
    aget-object v5, v1, v4

    #@e
    iget-object v3, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    .line 1691
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@12
    .line 1692
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@15
    move-result v5

    #@16
    or-int/2addr v2, v5

    #@17
    .line 1689
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1696
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    #@1d
    move-result-object v5

    #@1e
    invoke-direct {p0, v5}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    #@21
    .line 1697
    return v2
.end method

.method protected onLevelChange(I)Z
    .locals 6
    .param p1, "level"    # I

    #@0
    .prologue
    .line 1396
    const/4 v2, 0x0

    #@1
    .line 1398
    .local v2, "changed":Z
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    iget-object v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@5
    .line 1399
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@7
    iget v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@9
    .line 1400
    .local v0, "N":I
    const/4 v4, 0x0

    #@a
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@c
    .line 1401
    aget-object v5, v1, v4

    #@e
    iget-object v3, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    .line 1402
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@12
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_0

    #@18
    .line 1403
    aget-object v5, v1, v4

    #@1a
    invoke-direct {p0, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    #@1d
    .line 1404
    const/4 v2, 0x1

    #@1e
    .line 1400
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1408
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz v2, :cond_2

    #@23
    .line 1409
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    #@26
    move-result-object v5

    #@27
    invoke-direct {p0, v5}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    #@2a
    .line 1412
    :cond_2
    return v2
.end method

.method protected onStateChange([I)Z
    .locals 6
    .param p1, "state"    # [I

    #@0
    .prologue
    .line 1375
    const/4 v2, 0x0

    #@1
    .line 1377
    .local v2, "changed":Z
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    iget-object v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@5
    .line 1378
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@7
    iget v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@9
    .line 1379
    .local v0, "N":I
    const/4 v4, 0x0

    #@a
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@c
    .line 1380
    aget-object v5, v1, v4

    #@e
    iget-object v3, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    .line 1381
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
    .line 1382
    aget-object v5, v1, v4

    #@20
    invoke-direct {p0, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    #@23
    .line 1383
    const/4 v2, 0x1

    #@24
    .line 1379
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1387
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz v2, :cond_2

    #@29
    .line 1388
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    #@2c
    move-result-object v5

    #@2d
    invoke-direct {p0, v5}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    #@30
    .line 1391
    :cond_2
    return v2
.end method

.method refreshPadding()V
    .locals 4

    #@0
    .prologue
    .line 1633
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@4
    .line 1634
    .local v0, "N":I
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@8
    .line 1635
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@b
    .line 1636
    aget-object v3, v1, v2

    #@d
    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    #@10
    .line 1635
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1632
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
    .line 901
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    #@3
    .line 900
    return-void
.end method

.method public setAlpha(I)V
    .locals 5
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 1258
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1259
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1260
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1261
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1262
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1263
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@14
    .line 1260
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1257
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 5
    .param p1, "mirrored"    # Z

    #@0
    .prologue
    .line 1351
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    invoke-static {v4, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-set0(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z

    #@5
    .line 1353
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@7
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@9
    .line 1354
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@b
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@d
    .line 1355
    .local v0, "N":I
    const/4 v3, 0x0

    #@e
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@10
    .line 1356
    aget-object v4, v1, v3

    #@12
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    .line 1357
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@16
    .line 1358
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    #@19
    .line 1355
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1350
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 5
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 1280
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1281
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1282
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1283
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1284
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1285
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@14
    .line 1282
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1279
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setDither(Z)V
    .locals 5
    .param p1, "dither"    # Z

    #@0
    .prologue
    .line 1246
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1247
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1248
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1249
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1250
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1251
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    #@14
    .line 1248
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1245
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
    .line 554
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@5
    if-lt p1, v3, :cond_0

    #@7
    .line 555
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v3

    #@d
    .line 558
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@f
    iget-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@11
    .line 559
    .local v2, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    aget-object v1, v2, p1

    #@13
    .line 560
    .local v1, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    if-eqz v3, :cond_2

    #@17
    .line 561
    if-eqz p2, :cond_1

    #@19
    .line 562
    iget-object v3, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@1e
    move-result-object v0

    #@1f
    .line 563
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@22
    .line 566
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@24
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@27
    .line 569
    :cond_2
    if-eqz p2, :cond_3

    #@29
    .line 570
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@2c
    .line 573
    :cond_3
    iput-object p2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2e
    .line 574
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@30
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    #@33
    .line 576
    invoke-direct {p0, p1, v1}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    #@36
    .line 553
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
    .line 512
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findIndexByLayerId(I)I

    #@4
    move-result v0

    #@5
    .line 513
    .local v0, "index":I
    if-gez v0, :cond_0

    #@7
    .line 514
    return v1

    #@8
    .line 517
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    #@b
    .line 518
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
    .line 1192
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1193
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1194
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1195
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1196
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1197
    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@14
    .line 1194
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1191
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
    .line 1204
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1205
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1206
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1207
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1208
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1209
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    #@14
    .line 1206
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1213
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@19
    if-nez v4, :cond_2

    #@1b
    .line 1214
    new-instance v4, Landroid/graphics/Rect;

    #@1d
    invoke-direct {v4, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@20
    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@22
    .line 1203
    :goto_1
    return-void

    #@23
    .line 1216
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
    .line 473
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v0, p1

    #@6
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@8
    .line 472
    return-void
.end method

.method public setLayerGravity(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "gravity"    # I

    #@0
    .prologue
    .line 679
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 680
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    #@8
    .line 678
    return-void
.end method

.method public setLayerHeight(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    .line 644
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 645
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@8
    .line 643
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
    .line 711
    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    #@c
    .line 710
    return-void
.end method

.method public setLayerInsetBottom(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "b"    # I

    #@0
    .prologue
    .line 799
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 800
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    #@8
    .line 798
    return-void
.end method

.method public setLayerInsetEnd(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "e"    # I

    #@0
    .prologue
    .line 839
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 840
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    #@8
    .line 838
    return-void
.end method

.method public setLayerInsetLeft(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "l"    # I

    #@0
    .prologue
    .line 739
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 740
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    #@8
    .line 738
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
    .line 730
    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    #@b
    .line 729
    return-void
.end method

.method public setLayerInsetRight(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "r"    # I

    #@0
    .prologue
    .line 759
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 760
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    #@8
    .line 758
    return-void
.end method

.method public setLayerInsetStart(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "s"    # I

    #@0
    .prologue
    .line 819
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 820
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    #@8
    .line 818
    return-void
.end method

.method public setLayerInsetTop(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "t"    # I

    #@0
    .prologue
    .line 779
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 780
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    #@8
    .line 778
    return-void
.end method

.method public setLayerSize(III)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    #@0
    .prologue
    .line 612
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 613
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@8
    .line 614
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    #@a
    .line 611
    return-void
.end method

.method public setLayerWidth(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "w"    # I

    #@0
    .prologue
    .line 623
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    aget-object v0, v1, p1

    #@6
    .line 624
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    #@8
    .line 622
    return-void
.end method

.method public setOpacity(I)V
    .locals 1
    .param p1, "opacity"    # I

    #@0
    .prologue
    .line 1338
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@4
    .line 1337
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
    .line 990
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    .line 991
    .local v0, "layerState":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@5
    .line 992
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@7
    .line 993
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@9
    .line 994
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@b
    .line 997
    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@d
    .line 998
    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@f
    .line 989
    return-void
.end method

.method public setPaddingMode(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 879
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    #@5
    move-result v0

    #@6
    if-eq v0, p1, :cond_0

    #@8
    .line 880
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@a
    invoke-static {v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-set1(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I

    #@d
    .line 878
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
    .line 1023
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@3
    .line 1024
    .local v0, "layerState":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@5
    .line 1025
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@7
    .line 1026
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@9
    .line 1027
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@b
    .line 1030
    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@d
    .line 1031
    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@f
    .line 1022
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 5
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 1292
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1293
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1294
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1295
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1296
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1297
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@14
    .line 1294
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1291
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 5
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 1304
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 1305
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 1306
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@b
    .line 1307
    aget-object v4, v1, v3

    #@d
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    .line 1308
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@11
    .line 1309
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@14
    .line 1306
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1303
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
    .line 1231
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@3
    move-result v2

    #@4
    .line 1232
    .local v2, "changed":Z
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget-object v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@8
    .line 1233
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@a
    iget v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@c
    .line 1234
    .local v0, "N":I
    const/4 v4, 0x0

    #@d
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@f
    .line 1235
    aget-object v5, v1, v4

    #@11
    iget-object v3, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    .line 1236
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@15
    .line 1237
    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@18
    .line 1234
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1241
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
    .line 906
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/LayerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@3
    .line 905
    return-void
.end method
