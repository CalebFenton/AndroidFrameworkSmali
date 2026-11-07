.class Landroid/view/ViewGroup$ChildListForAccessibility;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildListForAccessibility"
.end annotation


# static fields
.field private static final greylist-max-o MAX_POOL_SIZE:I = 0x20

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/ViewGroup$ChildListForAccessibility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 9162
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 9158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    .line 9167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mHolders:Ljava/util/ArrayList;

    return-void
.end method

.method private greylist-max-o clear()V
    .registers 2

    .line 9233
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9234
    return-void
.end method

.method private greylist-max-o init(Landroid/view/ViewGroup;Z)V
    .registers 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "sort"    # Z

    .line 9192
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    .line 9193
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 9194
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_13

    .line 9195
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9196
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9194
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 9198
    .end local v2    # "i":I
    :cond_13
    if-eqz p2, :cond_44

    .line 9199
    iget-object v2, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mHolders:Ljava/util/ArrayList;

    .line 9200
    .local v2, "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewGroup$ViewLocationHolder;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v1, :cond_2a

    .line 9201
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9202
    .local v4, "child":Landroid/view/View;
    invoke-static {p1, v4}, Landroid/view/ViewGroup$ViewLocationHolder;->obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;

    move-result-object v5

    .line 9203
    .local v5, "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9200
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 9205
    .end local v3    # "i":I
    :cond_2a
    invoke-direct {p0, v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->sort(Ljava/util/ArrayList;)V

    .line 9206
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2e
    if-ge v3, v1, :cond_41

    .line 9207
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$ViewLocationHolder;

    .line 9208
    .local v4, "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    iget-object v5, v4, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9209
    invoke-virtual {v4}, Landroid/view/ViewGroup$ViewLocationHolder;->recycle()V

    .line 9206
    .end local v4    # "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 9211
    .end local v3    # "i":I
    :cond_41
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 9213
    .end local v2    # "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewGroup$ViewLocationHolder;>;"
    :cond_44
    return-void
.end method

.method public static greylist-max-o obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;
    .registers 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "sort"    # Z

    .line 9170
    sget-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$ChildListForAccessibility;

    .line 9171
    .local v0, "list":Landroid/view/ViewGroup$ChildListForAccessibility;
    if-nez v0, :cond_10

    .line 9172
    new-instance v1, Landroid/view/ViewGroup$ChildListForAccessibility;

    invoke-direct {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;-><init>()V

    move-object v0, v1

    .line 9174
    :cond_10
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$ChildListForAccessibility;->init(Landroid/view/ViewGroup;Z)V

    .line 9175
    return-object v0
.end method

.method private greylist-max-o sort(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;)V"
        }
    .end annotation

    .line 9220
    .local p1, "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewGroup$ViewLocationHolder;>;"
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Landroid/view/ViewGroup$ViewLocationHolder;->setComparisonStrategy(I)V

    .line 9222
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_7} :catch_8

    .line 9229
    goto :goto_10

    .line 9223
    :catch_8
    move-exception v0

    .line 9226
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/view/ViewGroup$ViewLocationHolder;->setComparisonStrategy(I)V

    .line 9228
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 9230
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_10
    return-void
.end method


# virtual methods
.method public greylist-max-o getChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 9188
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public greylist-max-o getChildCount()I
    .registers 2

    .line 9184
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public greylist-max-o recycle()V
    .registers 2

    .line 9179
    invoke-direct {p0}, Landroid/view/ViewGroup$ChildListForAccessibility;->clear()V

    .line 9180
    sget-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 9181
    return-void
.end method
