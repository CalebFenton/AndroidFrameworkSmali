.class Landroid/view/ViewGroup$ViewLocationHolder;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewLocationHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/view/ViewGroup$ViewLocationHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o COMPARISON_STRATEGY_LOCATION:I = 0x2

.field public static final greylist-max-o COMPARISON_STRATEGY_STRIPE:I = 0x1

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0x20

.field private static greylist-max-o sComparisonStrategy:I

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mLayoutDirection:I

.field private final greylist-max-o mLocation:Landroid/graphics/Rect;

.field private greylist-max-o mRoot:Landroid/view/ViewGroup;

.field public greylist-max-o mView:Landroid/view/View;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 9247
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 9254
    const/4 v0, 0x1

    sput v0, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 9243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9256
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    return-void
.end method

.method private greylist-max-o clear()V
    .registers 3

    .line 9395
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    .line 9396
    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mRoot:Landroid/view/ViewGroup;

    .line 9397
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9398
    return-void
.end method

.method private static greylist-max-o compareBoundsOfTree(Landroid/view/ViewGroup$ViewLocationHolder;Landroid/view/ViewGroup$ViewLocationHolder;)I
    .registers 14
    .param p0, "holder1"    # Landroid/view/ViewGroup$ViewLocationHolder;
    .param p1, "holder2"    # Landroid/view/ViewGroup$ViewLocationHolder;

    .line 9308
    sget v0, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    .line 9310
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    if-gtz v0, :cond_12

    .line 9311
    return v1

    .line 9314
    :cond_12
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    if-ltz v0, :cond_1e

    .line 9315
    return v2

    .line 9320
    :cond_1e
    iget v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLayoutDirection:I

    if-nez v0, :cond_2f

    .line 9321
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    .line 9322
    .local v0, "leftDifference":I
    if-eqz v0, :cond_2e

    .line 9323
    return v0

    .line 9325
    .end local v0    # "leftDifference":I
    :cond_2e
    goto :goto_3c

    .line 9326
    :cond_2f
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    .line 9327
    .local v0, "rightDifference":I
    if-eqz v0, :cond_3c

    .line 9328
    neg-int v1, v0

    return v1

    .line 9332
    .end local v0    # "rightDifference":I
    :cond_3c
    :goto_3c
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    .line 9333
    .local v0, "topDifference":I
    if-eqz v0, :cond_48

    .line 9334
    return v0

    .line 9337
    :cond_48
    iget-object v3, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    .line 9338
    .local v3, "heightDiference":I
    if-eqz v3, :cond_59

    .line 9339
    neg-int v1, v3

    return v1

    .line 9342
    :cond_59
    iget-object v4, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    .line 9343
    .local v4, "widthDifference":I
    if-eqz v4, :cond_6a

    .line 9344
    neg-int v1, v4

    return v1

    .line 9348
    :cond_6a
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 9349
    .local v5, "view1Bounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 9350
    .local v6, "view2Bounds":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 9351
    .local v7, "tempRect":Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v8, v5, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 9352
    iget-object v8, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v8, v6, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 9353
    iget-object v8, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$ViewLocationHolder$$ExternalSyntheticLambda0;

    invoke-direct {v9, v7, v5}, Landroid/view/ViewGroup$ViewLocationHolder$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    .line 9357
    .local v8, "child1":Landroid/view/View;
    iget-object v9, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    new-instance v11, Landroid/view/ViewGroup$ViewLocationHolder$$ExternalSyntheticLambda1;

    invoke-direct {v11, v7, v6}, Landroid/view/ViewGroup$ViewLocationHolder$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v9, v11, v10}, Landroid/view/View;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    .line 9364
    .local v9, "child2":Landroid/view/View;
    if-eqz v8, :cond_af

    if-eqz v9, :cond_af

    .line 9365
    iget-object v1, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mRoot:Landroid/view/ViewGroup;

    .line 9366
    invoke-static {v1, v8}, Landroid/view/ViewGroup$ViewLocationHolder;->obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;

    move-result-object v1

    .line 9367
    .local v1, "childHolder1":Landroid/view/ViewGroup$ViewLocationHolder;
    iget-object v2, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mRoot:Landroid/view/ViewGroup;

    .line 9368
    invoke-static {v2, v9}, Landroid/view/ViewGroup$ViewLocationHolder;->obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;

    move-result-object v2

    .line 9369
    .local v2, "childHolder2":Landroid/view/ViewGroup$ViewLocationHolder;
    invoke-static {v1, v2}, Landroid/view/ViewGroup$ViewLocationHolder;->compareBoundsOfTree(Landroid/view/ViewGroup$ViewLocationHolder;Landroid/view/ViewGroup$ViewLocationHolder;)I

    move-result v10

    return v10

    .line 9373
    .end local v1    # "childHolder1":Landroid/view/ViewGroup$ViewLocationHolder;
    .end local v2    # "childHolder2":Landroid/view/ViewGroup$ViewLocationHolder;
    :cond_af
    if-eqz v8, :cond_b2

    .line 9374
    return v2

    .line 9377
    :cond_b2
    if-eqz v9, :cond_b5

    .line 9378
    return v1

    .line 9382
    :cond_b5
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o init(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .line 9386
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    .line 9387
    .local v0, "viewLocation":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 9388
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9389
    iput-object p2, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    .line 9390
    iput-object p1, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mRoot:Landroid/view/ViewGroup;

    .line 9391
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLayoutDirection:I

    .line 9392
    return-void
.end method

.method static synthetic blacklist lambda$compareBoundsOfTree$0(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)Z
    .registers 5
    .param p0, "tempRect"    # Landroid/graphics/Rect;
    .param p1, "view1Bounds"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;

    .line 9354
    const/4 v0, 0x1

    invoke-virtual {p2, p0, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 9355
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method static synthetic blacklist lambda$compareBoundsOfTree$1(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)Z
    .registers 5
    .param p0, "tempRect"    # Landroid/graphics/Rect;
    .param p1, "view2Bounds"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;

    .line 9358
    const/4 v0, 0x1

    invoke-virtual {p2, p0, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 9359
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static greylist-max-o obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;
    .registers 4
    .param p0, "root"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;

    .line 9265
    sget-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$ViewLocationHolder;

    .line 9266
    .local v0, "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    if-nez v0, :cond_10

    .line 9267
    new-instance v1, Landroid/view/ViewGroup$ViewLocationHolder;

    invoke-direct {v1}, Landroid/view/ViewGroup$ViewLocationHolder;-><init>()V

    move-object v0, v1

    .line 9269
    :cond_10
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->init(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 9270
    return-object v0
.end method

.method public static greylist-max-o setComparisonStrategy(I)V
    .registers 1
    .param p0, "strategy"    # I

    .line 9274
    sput p0, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    .line 9275
    return-void
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/view/ViewGroup$ViewLocationHolder;)I
    .registers 5
    .param p1, "another"    # Landroid/view/ViewGroup$ViewLocationHolder;

    .line 9285
    if-nez p1, :cond_4

    .line 9286
    const/4 v0, 0x1

    return v0

    .line 9289
    :cond_4
    invoke-static {p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->compareBoundsOfTree(Landroid/view/ViewGroup$ViewLocationHolder;Landroid/view/ViewGroup$ViewLocationHolder;)I

    move-result v0

    .line 9290
    .local v0, "boundsResult":I
    if-eqz v0, :cond_b

    .line 9291
    return v0

    .line 9296
    :cond_b
    iget-object v1, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v1

    iget-object v2, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 9243
    check-cast p1, Landroid/view/ViewGroup$ViewLocationHolder;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->compareTo(Landroid/view/ViewGroup$ViewLocationHolder;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o recycle()V
    .registers 2

    .line 9278
    invoke-direct {p0}, Landroid/view/ViewGroup$ViewLocationHolder;->clear()V

    .line 9279
    sget-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 9280
    return-void
.end method
