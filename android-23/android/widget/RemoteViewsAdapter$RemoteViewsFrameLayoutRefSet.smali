.class Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewsFrameLayoutRefSet"
.end annotation


# instance fields
.field private mReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field private mViewToLinkedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViewsAdapter;

    #@0
    .prologue
    .line 319
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 320
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    #@c
    .line 322
    new-instance v0, Ljava/util/HashMap;

    #@e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@11
    .line 321
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    #@13
    .line 319
    return-void
.end method


# virtual methods
.method public add(ILandroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "layout"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    #@0
    .prologue
    .line 329
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 333
    .local v0, "pos":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    #@6
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 334
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/util/LinkedList;

    #@14
    .line 339
    .local v1, "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    :goto_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    #@16
    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 342
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 328
    return-void

    #@1d
    .line 336
    .end local v1    # "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    #@1f
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@22
    .line 337
    .restart local v1    # "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    #@24
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 385
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    #@7
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@a
    .line 381
    return-void
.end method

.method public notifyOnRemoteViewsLoaded(ILandroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 350
    if-nez p2, :cond_0

    #@2
    return-void

    #@3
    .line 352
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v0

    #@7
    .line 353
    .local v0, "pos":Ljava/lang/Integer;
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    #@9
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_3

    #@f
    .line 355
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    #@11
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Ljava/util/LinkedList;

    #@17
    .line 356
    .local v3, "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v2

    #@1b
    .local v2, "ref$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_2

    #@21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    #@27
    .line 357
    .local v1, "ref":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@29
    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter;->-get4(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViews$OnClickHandler;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v1, p2, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@30
    .line 358
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    #@32
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_1

    #@38
    .line 359
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    #@3a
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    goto :goto_0

    #@3e
    .line 362
    .end local v1    # "ref":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    #@41
    .line 364
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    #@43
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 349
    .end local v2    # "ref$iterator":Ljava/util/Iterator;
    .end local v3    # "refs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    :cond_3
    return-void
.end method

.method public removeView(Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V
    .locals 1
    .param p1, "rvfl"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 373
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/LinkedList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    #@13
    .line 374
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mViewToLinkedList:Ljava/util/HashMap;

    #@15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 371
    :cond_0
    return-void
.end method
