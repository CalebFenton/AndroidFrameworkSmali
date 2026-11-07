.class public Landroid/window/WindowInfosListenerForTest;
.super Ljava/lang/Object;
.source "WindowInfosListenerForTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowInfosListenerForTest$DisplayInfo;,
        Landroid/window/WindowInfosListenerForTest$WindowInfo;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WindowInfosListenerForTest"


# instance fields
.field private final blacklist mConsumersToBiConsumers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;>;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$DisplayInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$DisplayInfo;",
            ">;>;",
            "Landroid/window/WindowInfosListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbuildParams([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)Landroid/util/Pair;
    .registers 2

    invoke-static {p0, p1}, Landroid/window/WindowInfosListenerForTest;->buildParams([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowInfosListenerForTest;->mListeners:Landroid/util/ArrayMap;

    .line 188
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowInfosListenerForTest;->mConsumersToBiConsumers:Landroid/util/ArrayMap;

    .line 189
    return-void
.end method

.method private static blacklist buildParams([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)Landroid/util/Pair;
    .registers 20
    .param p0, "windowHandles"    # [Landroid/view/InputWindowHandle;
    .param p1, "displayInfos"    # [Landroid/window/WindowInfosListener$DisplayInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/InputWindowHandle;",
            "[",
            "Landroid/window/WindowInfosListener$DisplayInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$DisplayInfo;",
            ">;>;"
        }
    .end annotation

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    .local v2, "outWindowInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/WindowInfosListenerForTest$WindowInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 290
    .local v3, "outDisplayInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/WindowInfosListenerForTest$DisplayInfo;>;"
    new-instance v4, Landroid/util/SparseArray;

    array-length v5, v1

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 291
    .local v4, "displayInfoById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/window/WindowInfosListener$DisplayInfo;>;"
    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_19
    if-ge v7, v5, :cond_25

    aget-object v8, v1, v7

    .line 292
    .local v8, "displayInfo":Landroid/window/WindowInfosListener$DisplayInfo;
    iget v9, v8, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    invoke-virtual {v4, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    .end local v8    # "displayInfo":Landroid/window/WindowInfosListener$DisplayInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 295
    :cond_25
    array-length v5, v1

    move v7, v6

    :goto_27
    if-ge v7, v5, :cond_3a

    aget-object v8, v1, v7

    .line 296
    .restart local v8    # "displayInfo":Landroid/window/WindowInfosListener$DisplayInfo;
    new-instance v9, Landroid/window/WindowInfosListenerForTest$DisplayInfo;

    iget v10, v8, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    iget-object v11, v8, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    invoke-direct {v9, v10, v11}, Landroid/window/WindowInfosListenerForTest$DisplayInfo;-><init>(ILandroid/graphics/Matrix;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v8    # "displayInfo":Landroid/window/WindowInfosListener$DisplayInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 299
    :cond_3a
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 300
    .local v5, "tmp":Landroid/graphics/RectF;
    array-length v7, v0

    :goto_40
    if-ge v6, v7, :cond_7e

    aget-object v8, v0, v6

    .line 301
    .local v8, "handle":Landroid/view/InputWindowHandle;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v8, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v15, v9

    .line 304
    .local v15, "bounds":Landroid/graphics/Rect;
    iget v9, v8, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/WindowInfosListener$DisplayInfo;

    .line 305
    .local v9, "display":Landroid/window/WindowInfosListener$DisplayInfo;
    if-eqz v9, :cond_61

    .line 306
    invoke-virtual {v5, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 307
    iget-object v10, v9, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v10, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 308
    invoke-virtual {v5, v15}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 311
    :cond_61
    new-instance v11, Landroid/window/WindowInfosListenerForTest$WindowInfo;

    invoke-virtual {v8}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v12

    iget-object v13, v8, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    iget v14, v8, Landroid/view/InputWindowHandle;->displayId:I

    iget v10, v8, Landroid/view/InputWindowHandle;->inputConfig:I

    iget-object v0, v8, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move/from16 v16, v10

    invoke-direct/range {v11 .. v17}, Landroid/window/WindowInfosListenerForTest$WindowInfo;-><init>(Landroid/os/IBinder;Ljava/lang/String;ILandroid/graphics/Rect;ILandroid/graphics/Matrix;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v8    # "handle":Landroid/view/InputWindowHandle;
    .end local v9    # "display":Landroid/window/WindowInfosListener$DisplayInfo;
    .end local v15    # "bounds":Landroid/graphics/Rect;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_40

    .line 315
    :cond_7e
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$addWindowInfosListener$0(Ljava/util/function/Consumer;Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "windowHandles"    # Ljava/util/List;
    .param p2, "displayInfos"    # Ljava/util/List;

    .line 208
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist addWindowInfosListener(Ljava/util/function/BiConsumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$DisplayInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 225
    .local p1, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/List<Landroid/window/WindowInfosListenerForTest$WindowInfo;>;Ljava/util/List<Landroid/window/WindowInfosListenerForTest$DisplayInfo;>;>;"
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 226
    .local v0, "calledWithInitialState":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Landroid/window/WindowInfosListenerForTest$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/window/WindowInfosListenerForTest$1;-><init>(Landroid/window/WindowInfosListenerForTest;Ljava/util/concurrent/CountDownLatch;Ljava/util/function/BiConsumer;)V

    .line 241
    .local v1, "listener":Landroid/window/WindowInfosListenerForTest$1;
    iget-object v2, p0, Landroid/window/WindowInfosListenerForTest;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    nop

    .line 243
    invoke-virtual {v1}, Landroid/window/WindowInfosListenerForTest$1;->register()Landroid/util/Pair;

    move-result-object v2

    .line 244
    .local v2, "initialState":Landroid/util/Pair;, "Landroid/util/Pair<[Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [Landroid/view/InputWindowHandle;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Landroid/window/WindowInfosListener$DisplayInfo;

    .line 245
    invoke-static {v3, v4}, Landroid/window/WindowInfosListenerForTest;->buildParams([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)Landroid/util/Pair;

    move-result-object v3

    .line 247
    .local v3, "params":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/window/WindowInfosListenerForTest$WindowInfo;>;Ljava/util/List<Landroid/window/WindowInfosListenerForTest$DisplayInfo;>;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 249
    return-void
.end method

.method public blacklist addWindowInfosListener(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/window/WindowInfosListenerForTest$WindowInfo;>;>;"
    new-instance v0, Landroid/window/WindowInfosListenerForTest$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/window/WindowInfosListenerForTest$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    .line 209
    .local v0, "biConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/List<Landroid/window/WindowInfosListenerForTest$WindowInfo;>;Ljava/util/List<Landroid/window/WindowInfosListenerForTest$DisplayInfo;>;>;"
    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest;->mConsumersToBiConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {p0, v0}, Landroid/window/WindowInfosListenerForTest;->addWindowInfosListener(Ljava/util/function/BiConsumer;)V

    .line 211
    return-void
.end method

.method public blacklist removeWindowInfosListener(Ljava/util/function/BiConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$DisplayInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 278
    .local p1, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/List<Landroid/window/WindowInfosListenerForTest$WindowInfo;>;Ljava/util/List<Landroid/window/WindowInfosListenerForTest$DisplayInfo;>;>;"
    iget-object v0, p0, Landroid/window/WindowInfosListenerForTest;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowInfosListener;

    .line 279
    .local v0, "listener":Landroid/window/WindowInfosListener;
    if-nez v0, :cond_b

    .line 280
    return-void

    .line 282
    :cond_b
    invoke-virtual {v0}, Landroid/window/WindowInfosListener;->unregister()V

    .line 283
    return-void
.end method

.method public blacklist removeWindowInfosListener(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/window/WindowInfosListenerForTest$WindowInfo;>;>;"
    iget-object v0, p0, Landroid/window/WindowInfosListenerForTest;->mConsumersToBiConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiConsumer;

    .line 264
    .local v0, "biConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/List<Landroid/window/WindowInfosListenerForTest$WindowInfo;>;Ljava/util/List<Landroid/window/WindowInfosListenerForTest$DisplayInfo;>;>;"
    if-nez v0, :cond_b

    .line 265
    return-void

    .line 267
    :cond_b
    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowInfosListener;

    .line 268
    .local v1, "listener":Landroid/window/WindowInfosListener;
    if-nez v1, :cond_16

    .line 269
    return-void

    .line 271
    :cond_16
    invoke-virtual {v1}, Landroid/window/WindowInfosListener;->unregister()V

    .line 272
    return-void
.end method
