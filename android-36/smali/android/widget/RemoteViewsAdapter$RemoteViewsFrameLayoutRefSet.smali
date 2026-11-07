.class Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
.super Landroid/util/SparseArray;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewsFrameLayoutRefSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/util/ArrayList<",
        "Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/RemoteViewsAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 426
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViewsAdapter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o add(ILandroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "layout"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .line 433
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 436
    .local v0, "refs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    if-nez v0, :cond_11

    .line 437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 438
    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->put(ILjava/lang/Object;)V

    .line 442
    :cond_11
    iput p1, p2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->cacheIndex:I

    .line 443
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method public greylist-max-o notifyOnRemoteViewsLoaded(ILandroid/widget/RemoteViews;)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/widget/RemoteViews;

    .line 451
    if-nez p2, :cond_3

    return-void

    .line 454
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 455
    .local v0, "refs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    if-eqz v0, :cond_26

    .line 457
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .line 458
    .local v2, "ref":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmRemoteViewsInteractionHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, p2, v3, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$InteractionHandler;Z)V

    .line 459
    .end local v2    # "ref":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_f

    .line 461
    :cond_26
    return-void
.end method

.method public greylist-max-o removeView(Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V
    .registers 4
    .param p1, "rvfl"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    .line 467
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->cacheIndex:I

    if-gez v0, :cond_5

    .line 468
    return-void

    .line 470
    :cond_5
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->cacheIndex:I

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 471
    .local v0, "refs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    if-eqz v0, :cond_12

    .line 472
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 474
    :cond_12
    const/4 v1, -0x1

    iput v1, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->cacheIndex:I

    .line 475
    return-void
.end method
