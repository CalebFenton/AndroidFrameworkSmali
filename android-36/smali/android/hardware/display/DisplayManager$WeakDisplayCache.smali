.class final Landroid/hardware/display/DisplayManager$WeakDisplayCache;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakDisplayCache"
.end annotation


# instance fields
.field private final blacklist mDisplayCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 2197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2198
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->mDisplayCache:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/display/DisplayManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/hardware/display/DisplayManager$WeakDisplayCache;-><init>()V

    return-void
.end method

.method private blacklist removeStaleEntries()V
    .registers 5

    .line 2229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2230
    .local v0, "staleEntriesIndices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->mDisplayCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 2231
    iget-object v2, p0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->mDisplayCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_23

    .line 2232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2230
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2236
    .end local v1    # "i":I
    :cond_26
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 2239
    iget-object v2, p0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->mDisplayCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2236
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 2241
    .end local v1    # "i":I
    :cond_3f
    return-void
.end method


# virtual methods
.method blacklist get(I)Landroid/view/Display;
    .registers 4
    .param p1, "displayId"    # I

    .line 2207
    iget-object v0, p0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->mDisplayCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2208
    .local v0, "wrDisplay":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    if-nez v0, :cond_c

    .line 2209
    const/4 v1, 0x0

    return-object v1

    .line 2211
    :cond_c
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    return-object v1
.end method

.method blacklist put(Landroid/view/Display;)V
    .registers 5
    .param p1, "display"    # Landroid/view/Display;

    .line 2221
    invoke-direct {p0}, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->removeStaleEntries()V

    .line 2222
    iget-object v0, p0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->mDisplayCache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2223
    return-void
.end method
