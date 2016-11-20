.class Landroid/graphics/Atlas$SlicePolicy;
.super Landroid/graphics/Atlas$Policy;
.source "Atlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlicePolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Atlas$SlicePolicy$Cell;,
        Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$SplitDecision;
    }
.end annotation


# instance fields
.field private final mPadding:I

.field private final mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

.field private final mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;


# direct methods
.method constructor <init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "splitDecision"    # Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 259
    invoke-direct {p0, v3}, Landroid/graphics/Atlas$Policy;-><init>(Landroid/graphics/Atlas$Policy;)V

    #@5
    .line 233
    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@7
    invoke-direct {v2, v3}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$SlicePolicy$Cell;)V

    #@a
    iput-object v2, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@c
    .line 260
    and-int/lit8 v2, p3, 0x2

    #@e
    if-eqz v2, :cond_0

    #@10
    const/4 v1, 0x1

    #@11
    :cond_0
    iput v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    #@13
    .line 263
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@15
    invoke-direct {v0, v3}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$SlicePolicy$Cell;)V

    #@18
    .line 264
    .local v0, "first":Landroid/graphics/Atlas$SlicePolicy$Cell;
    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    #@1a
    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    #@1c
    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    #@1e
    .line 265
    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    #@20
    mul-int/lit8 v1, v1, 0x2

    #@22
    sub-int v1, p1, v1

    #@24
    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    #@26
    .line 266
    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    #@28
    mul-int/lit8 v1, v1, 0x2

    #@2a
    sub-int v1, p2, v1

    #@2c
    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    #@2e
    .line 268
    iget-object v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@30
    iput-object v0, v1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@32
    .line 269
    iput-object p4, p0, Landroid/graphics/Atlas$SlicePolicy;->mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    #@34
    .line 259
    return-void
.end method

.method private insert(Landroid/graphics/Atlas$SlicePolicy$Cell;Landroid/graphics/Atlas$SlicePolicy$Cell;IILandroid/graphics/Atlas$Entry;)Z
    .locals 9
    .param p1, "cell"    # Landroid/graphics/Atlas$SlicePolicy$Cell;
    .param p2, "prev"    # Landroid/graphics/Atlas$SlicePolicy$Cell;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "entry"    # Landroid/graphics/Atlas$Entry;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 357
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    #@4
    if-lt v6, p3, :cond_0

    #@6
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    #@8
    if-ge v6, p4, :cond_1

    #@a
    .line 358
    :cond_0
    return v7

    #@b
    .line 362
    :cond_1
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    #@d
    sub-int v1, v6, p3

    #@f
    .line 363
    .local v1, "deltaWidth":I
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    #@11
    sub-int v0, v6, p4

    #@13
    .line 366
    .local v0, "deltaHeight":I
    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@15
    invoke-direct {v2, v8}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$SlicePolicy$Cell;)V

    #@18
    .line 367
    .local v2, "first":Landroid/graphics/Atlas$SlicePolicy$Cell;
    new-instance v4, Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@1a
    invoke-direct {v4, v8}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$SlicePolicy$Cell;)V

    #@1d
    .line 369
    .local v4, "second":Landroid/graphics/Atlas$SlicePolicy$Cell;
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    #@1f
    add-int/2addr v6, p3

    #@20
    iget v7, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    #@22
    add-int/2addr v6, v7

    #@23
    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    #@25
    .line 370
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    #@27
    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    #@29
    .line 371
    iget v6, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    #@2b
    sub-int v6, v1, v6

    #@2d
    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    #@2f
    .line 373
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    #@31
    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    #@33
    .line 374
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    #@35
    add-int/2addr v6, p4

    #@36
    iget v7, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    #@38
    add-int/2addr v6, v7

    #@39
    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    #@3b
    .line 375
    iget v6, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    #@3d
    sub-int v6, v0, v6

    #@3f
    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    #@41
    .line 377
    iget-object v6, p0, Landroid/graphics/Atlas$SlicePolicy;->mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    #@43
    invoke-interface {v6, v1, v0, p3, p4}, Landroid/graphics/Atlas$SlicePolicy$SplitDecision;->splitHorizontal(IIII)Z

    #@46
    move-result v6

    #@47
    if-eqz v6, :cond_3

    #@49
    .line 379
    iput p4, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    #@4b
    .line 380
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    #@4d
    iput v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    #@4f
    .line 394
    :goto_0
    iget v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    #@51
    if-lez v6, :cond_2

    #@53
    iget v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    #@55
    if-lez v6, :cond_2

    #@57
    .line 395
    iput-object v2, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@59
    .line 396
    move-object p2, v2

    #@5a
    .line 399
    :cond_2
    iget v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    #@5c
    if-lez v6, :cond_4

    #@5e
    iget v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    #@60
    if-lez v6, :cond_4

    #@62
    .line 400
    iput-object v4, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@64
    .line 401
    iget-object v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@66
    iput-object v6, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@68
    .line 407
    :goto_1
    iput-object v8, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@6a
    .line 410
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    #@6c
    iput v6, p5, Landroid/graphics/Atlas$Entry;->x:I

    #@6e
    .line 411
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    #@70
    iput v6, p5, Landroid/graphics/Atlas$Entry;->y:I

    #@72
    .line 413
    const/4 v6, 0x1

    #@73
    return v6

    #@74
    .line 382
    :cond_3
    iget v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    #@76
    iput v6, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    #@78
    .line 383
    iput p3, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    #@7a
    .line 388
    move-object v5, v2

    #@7b
    .line 389
    .local v5, "temp":Landroid/graphics/Atlas$SlicePolicy$Cell;
    move-object v3, v4

    #@7c
    .line 390
    .end local v2    # "first":Landroid/graphics/Atlas$SlicePolicy$Cell;
    .local v3, "first":Landroid/graphics/Atlas$SlicePolicy$Cell;
    move-object v4, v2

    #@7d
    move-object v2, v3

    #@7e
    .end local v3    # "first":Landroid/graphics/Atlas$SlicePolicy$Cell;
    .restart local v2    # "first":Landroid/graphics/Atlas$SlicePolicy$Cell;
    goto :goto_0

    #@7f
    .line 403
    .end local v5    # "temp":Landroid/graphics/Atlas$SlicePolicy$Cell;
    :cond_4
    iget-object v6, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@81
    iput-object v6, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@83
    goto :goto_1
.end method


# virtual methods
.method pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "entry"    # Landroid/graphics/Atlas$Entry;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 274
    iget-object v0, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@3
    iget-object v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@5
    .line 275
    .local v1, "cell":Landroid/graphics/Atlas$SlicePolicy$Cell;
    iget-object v2, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@7
    .line 277
    .local v2, "prev":Landroid/graphics/Atlas$SlicePolicy$Cell;
    :goto_0
    if-eqz v1, :cond_1

    #@9
    move-object v0, p0

    #@a
    move v3, p1

    #@b
    move v4, p2

    #@c
    move-object v5, p3

    #@d
    .line 278
    invoke-direct/range {v0 .. v5}, Landroid/graphics/Atlas$SlicePolicy;->insert(Landroid/graphics/Atlas$SlicePolicy$Cell;Landroid/graphics/Atlas$SlicePolicy$Cell;IILandroid/graphics/Atlas$Entry;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 279
    return-object p3

    #@14
    .line 282
    :cond_0
    move-object v2, v1

    #@15
    .line 283
    iget-object v1, v1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    #@17
    goto :goto_0

    #@18
    .line 286
    :cond_1
    return-object v6
.end method
