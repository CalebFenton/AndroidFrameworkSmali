.class public final Landroid/view/ViewTreeObserver$InternalInsetsInfo;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewTreeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalInsetsInfo"
.end annotation


# static fields
.field public static final TOUCHABLE_INSETS_CONTENT:I = 0x1

.field public static final TOUCHABLE_INSETS_FRAME:I = 0x0

.field public static final TOUCHABLE_INSETS_REGION:I = 0x3

.field public static final TOUCHABLE_INSETS_VISIBLE:I = 0x2


# instance fields
.field public final contentInsets:Landroid/graphics/Rect;

.field mTouchableInsets:I

.field public final touchableRegion:Landroid/graphics/Region;

.field public final visibleInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 207
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@a
    .line 213
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@11
    .line 220
    new-instance v0, Landroid/graphics/Region;

    #@13
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@18
    .line 202
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 282
    if-ne p0, p1, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 283
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 285
    check-cast v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@15
    .line 286
    .local v0, "other":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    iget v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    #@17
    iget v3, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    #@19
    if-ne v2, v3, :cond_3

    #@1b
    .line 287
    iget-object v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@1d
    iget-object v3, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    .line 286
    if-eqz v2, :cond_3

    #@25
    .line 288
    iget-object v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@27
    iget-object v3, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@29
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    .line 286
    if-eqz v2, :cond_3

    #@2f
    .line 289
    iget-object v1, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@31
    iget-object v2, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@33
    invoke-virtual {v1, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    .line 286
    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 273
    iget-object v1, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    #@5
    move-result v0

    #@6
    .line 274
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@8
    iget-object v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    #@d
    move-result v2

    #@e
    add-int v0, v1, v2

    #@10
    .line 275
    mul-int/lit8 v1, v0, 0x1f

    #@12
    iget-object v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@14
    invoke-virtual {v2}, Landroid/graphics/Region;->hashCode()I

    #@17
    move-result v2

    #@18
    add-int v0, v1, v2

    #@1a
    .line 276
    mul-int/lit8 v1, v0, 0x1f

    #@1c
    iget v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    #@1e
    add-int v0, v1, v2

    #@20
    .line 277
    return v0
.end method

.method isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 265
    iget-object v1, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@3
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 266
    iget-object v1, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@b
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    #@e
    move-result v1

    #@f
    .line 265
    if-eqz v1, :cond_0

    #@11
    .line 267
    iget-object v1, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@13
    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    #@16
    move-result v1

    #@17
    .line 265
    if-eqz v1, :cond_0

    #@19
    .line 268
    iget v1, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    #@1b
    if-nez v1, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 265
    :cond_0
    return v0
.end method

.method reset()V
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@5
    .line 259
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@a
    .line 260
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@c
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    #@f
    .line 261
    const/4 v0, 0x0

    #@10
    iput v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    #@12
    .line 257
    return-void
.end method

.method set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@2
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7
    .line 294
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@9
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@b
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@e
    .line 295
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@10
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@12
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@15
    .line 296
    iget v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    #@17
    iput v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    #@19
    .line 292
    return-void
.end method

.method public setTouchableInsets(I)V
    .locals 0
    .param p1, "val"    # I

    #@0
    .prologue
    .line 252
    iput p1, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    #@2
    .line 251
    return-void
.end method
