.class public abstract Lcom/android/internal/widget/PagerAdapter;
.super Ljava/lang/Object;
.source "PagerAdapter.java"


# static fields
.field public static final blacklist POSITION_NONE:I = -0x2

.field public static final blacklist POSITION_UNCHANGED:I = -0x1


# instance fields
.field private blacklist mObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public blacklist destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 6
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method public blacklist finishUpdate(Landroid/view/View;)V
    .registers 2
    .param p1, "container"    # Landroid/view/View;

    .line 219
    return-void
.end method

.method public blacklist finishUpdate(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method public abstract blacklist getCount()I
.end method

.method public blacklist getItemPosition(Ljava/lang/Object;)I
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 268
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "position"    # I

    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPageWidth(I)F
    .registers 3
    .param p1, "position"    # I

    .line 318
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public blacklist instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 5
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method instantiateItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/PagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public blacklist notifyDataSetChanged()V
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 277
    return-void
.end method

.method public blacklist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method public blacklist restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 250
    return-void
.end method

.method public blacklist saveState()Landroid/os/Parcelable;
    .registers 2

    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public blacklist setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/PagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 138
    return-void
.end method

.method public blacklist startUpdate(Landroid/view/View;)V
    .registers 2
    .param p1, "container"    # Landroid/view/View;

    .line 159
    return-void
.end method

.method public blacklist startUpdate(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method public blacklist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 294
    iget-object v0, p0, Lcom/android/internal/widget/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 295
    return-void
.end method
