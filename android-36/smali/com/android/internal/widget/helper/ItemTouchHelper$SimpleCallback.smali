.class public abstract Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;
.super Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private blacklist mDefaultDragDirs:I

.field private blacklist mDefaultSwipeDirs:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "dragDirs"    # I
    .param p2, "swipeDirs"    # I

    .line 2179
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 2180
    iput p2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2181
    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2182
    return-void
.end method


# virtual methods
.method public blacklist getDragDirs(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .registers 4
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 2227
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return v0
.end method

.method public blacklist getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .registers 5
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 2232
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->getDragDirs(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 2233
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v1

    .line 2232
    invoke-static {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->makeMovementFlags(II)I

    move-result v0

    return v0
.end method

.method public blacklist getSwipeDirs(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .registers 4
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 2214
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return v0
.end method

.method public blacklist setDefaultDragDirs(I)V
    .registers 2
    .param p1, "defaultDragDirs"    # I

    .line 2201
    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2202
    return-void
.end method

.method public blacklist setDefaultSwipeDirs(I)V
    .registers 2
    .param p1, "defaultSwipeDirs"    # I

    .line 2191
    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2192
    return-void
.end method
