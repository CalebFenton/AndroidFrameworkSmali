.class public final Landroid/view/ViewTreeObserver;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewTreeObserver$OnWindowAttachListener;,
        Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;,
        Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;,
        Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;,
        Landroid/view/ViewTreeObserver$OnPreDrawListener;,
        Landroid/view/ViewTreeObserver$OnDrawListener;,
        Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;,
        Landroid/view/ViewTreeObserver$OnScrollChangedListener;,
        Landroid/view/ViewTreeObserver$OnWindowShownListener;,
        Landroid/view/ViewTreeObserver$InternalInsetsInfo;,
        Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;,
        Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;,
        Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    }
.end annotation


# instance fields
.field private mAlive:Z

.field private mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDrawListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnWindowAttachListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnWindowShownListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowShown:Z


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    #@6
    .line 330
    return-void
.end method

.method private checkIsAlive()V
    .locals 2

    #@0
    .prologue
    .line 816
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 817
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "This ViewTreeObserver is not alive, call getViewTreeObserver() again"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 815
    :cond_0
    return-void
.end method

.method private kill()V
    .locals 1

    #@0
    .prologue
    .line 842
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    #@3
    .line 841
    return-void
.end method


# virtual methods
.method public addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@0
    .prologue
    .line 762
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 764
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 766
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@9
    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    #@c
    .line 765
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@e
    .line 769
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@10
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    #@13
    .line 761
    return-void
.end method

.method public addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnDrawListener;

    #@0
    .prologue
    .line 654
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 656
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 657
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    #@e
    .line 660
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 653
    return-void
.end method

.method public addOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    #@0
    .prologue
    .line 796
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 797
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 799
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@c
    .line 798
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@e
    .line 801
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 795
    return-void
.end method

.method public addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    #@0
    .prologue
    .line 494
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 496
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 497
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@e
    .line 500
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 493
    return-void
.end method

.method public addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@0
    .prologue
    .line 529
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 531
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 532
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@9
    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@e
    .line 535
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@10
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    #@13
    .line 528
    return-void
.end method

.method public addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@0
    .prologue
    .line 579
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 581
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 582
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@9
    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@e
    .line 585
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@10
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    #@13
    .line 578
    return-void
.end method

.method public addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@0
    .prologue
    .line 690
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 692
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 693
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@9
    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@e
    .line 696
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@10
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    #@13
    .line 689
    return-void
.end method

.method public addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    #@0
    .prologue
    .line 724
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 726
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 727
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@e
    .line 730
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 723
    return-void
.end method

.method public addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    #@0
    .prologue
    .line 424
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 426
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 428
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@c
    .line 427
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@e
    .line 431
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 423
    return-void
.end method

.method public addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    #@0
    .prologue
    .line 459
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 461
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 463
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@c
    .line 462
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@e
    .line 466
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 458
    return-void
.end method

.method public addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowShownListener;

    #@0
    .prologue
    .line 614
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 616
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 617
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@9
    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@e
    .line 620
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@10
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    #@13
    .line 621
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mWindowShown:Z

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 622
    invoke-interface {p1}, Landroid/view/ViewTreeObserver$OnWindowShownListener;->onWindowShown()V

    #@1a
    .line 613
    :cond_1
    return-void
.end method

.method final dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@0
    .prologue
    .line 1041
    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@2
    .line 1043
    .local v3, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    if-eqz v3, :cond_1

    #@4
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    #@7
    move-result v4

    #@8
    if-lez v4, :cond_1

    #@a
    .line 1044
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    #@d
    move-result-object v0

    #@e
    .line 1046
    .local v0, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    #@11
    move-result v1

    #@12
    .line 1047
    .local v1, "count":I
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@15
    .line 1048
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@1b
    invoke-interface {v4, p1}, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;->onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 1047
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1051
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    #@24
    .line 1036
    .end local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void

    #@25
    .line 1050
    .restart local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    :catchall_0
    move-exception v4

    #@26
    .line 1051
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    #@29
    .line 1050
    throw v4
.end method

.method public final dispatchOnDraw()V
    .locals 4

    #@0
    .prologue
    .line 978
    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 979
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    #@6
    .line 980
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewTreeObserver$OnDrawListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    .line 981
    .local v2, "numListeners":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@d
    .line 982
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/view/ViewTreeObserver$OnDrawListener;

    #@13
    invoke-interface {v3}, Landroid/view/ViewTreeObserver$OnDrawListener;->onDraw()V

    #@16
    .line 981
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 977
    .end local v0    # "i":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewTreeObserver$OnDrawListener;>;"
    .end local v2    # "numListeners":I
    :cond_0
    return-void
.end method

.method public final dispatchOnEnterAnimationComplete()V
    .locals 4

    #@0
    .prologue
    .line 1064
    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    .line 1066
    .local v2, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;>;"
    if-eqz v2, :cond_0

    #@4
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 1059
    :cond_0
    return-void

    #@b
    .line 1067
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    #@1b
    .line 1068
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;
    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;->onEnterAnimationComplete()V

    #@1e
    goto :goto_0
.end method

.method final dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "oldFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;

    #@0
    .prologue
    .line 888
    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    .line 889
    .local v2, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;>;"
    if-eqz v2, :cond_0

    #@4
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@7
    move-result v3

    #@8
    if-lez v3, :cond_0

    #@a
    .line 890
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    #@1a
    .line 891
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    invoke-interface {v0, p1, p2}, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;->onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V

    #@1d
    goto :goto_0

    #@1e
    .line 883
    .end local v0    # "listener":Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final dispatchOnGlobalLayout()V
    .locals 5

    #@0
    .prologue
    .line 906
    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@2
    .line 907
    .local v3, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    if-eqz v3, :cond_1

    #@4
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    #@7
    move-result v4

    #@8
    if-lez v4, :cond_1

    #@a
    .line 908
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    #@d
    move-result-object v0

    #@e
    .line 910
    .local v0, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    #@11
    move-result v1

    #@12
    .line 911
    .local v1, "count":I
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@15
    .line 912
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@1b
    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 911
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 915
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    #@24
    .line 901
    .end local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void

    #@25
    .line 914
    .restart local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    :catchall_0
    move-exception v4

    #@26
    .line 915
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    #@29
    .line 914
    throw v4
.end method

.method public final dispatchOnPreDraw()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 937
    const/4 v1, 0x0

    #@2
    .line 938
    .local v1, "cancelDraw":Z
    iget-object v4, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@4
    .line 939
    .local v4, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    if-eqz v4, :cond_2

    #@6
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    #@9
    move-result v5

    #@a
    if-lez v5, :cond_2

    #@c
    .line 940
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    #@f
    move-result-object v0

    #@10
    .line 942
    .local v0, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    #@13
    move-result v2

    #@14
    .line 943
    .local v2, "count":I
    const/4 v3, 0x0

    #@15
    .end local v1    # "cancelDraw":Z
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@17
    .line 944
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    check-cast v5, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@1d
    invoke-interface {v5}, Landroid/view/ViewTreeObserver$OnPreDrawListener;->onPreDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_0

    #@23
    move v5, v6

    #@24
    :goto_1
    or-int/2addr v1, v5

    #@25
    .line 943
    .local v1, "cancelDraw":Z
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_0

    #@28
    .line 944
    .end local v1    # "cancelDraw":Z
    :cond_0
    const/4 v5, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 947
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    #@2d
    .line 950
    .end local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    return v1

    #@2e
    .line 946
    .restart local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    :catchall_0
    move-exception v5

    #@2f
    .line 947
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    #@32
    .line 946
    throw v5
.end method

.method final dispatchOnScrollChanged()V
    .locals 5

    #@0
    .prologue
    .line 1010
    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@2
    .line 1011
    .local v3, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    if-eqz v3, :cond_1

    #@4
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    #@7
    move-result v4

    #@8
    if-lez v4, :cond_1

    #@a
    .line 1012
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    #@d
    move-result-object v0

    #@e
    .line 1014
    .local v0, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    #@11
    move-result v1

    #@12
    .line 1015
    .local v1, "count":I
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@15
    .line 1016
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@1b
    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 1015
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1019
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    #@24
    .line 1005
    .end local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void

    #@25
    .line 1018
    .restart local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    :catchall_0
    move-exception v4

    #@26
    .line 1019
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    #@29
    .line 1018
    throw v4
.end method

.method final dispatchOnTouchModeChanged(Z)V
    .locals 4
    .param p1, "inTouchMode"    # Z

    #@0
    .prologue
    .line 993
    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    .line 995
    .local v2, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;>;"
    if-eqz v2, :cond_0

    #@4
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@7
    move-result v3

    #@8
    if-lez v3, :cond_0

    #@a
    .line 996
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    #@1a
    .line 997
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
    invoke-interface {v0, p1}, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;->onTouchModeChanged(Z)V

    #@1d
    goto :goto_0

    #@1e
    .line 992
    .end local v0    # "listener":Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method final dispatchOnWindowAttachedChange(Z)V
    .locals 4
    .param p1, "attached"    # Z

    #@0
    .prologue
    .line 853
    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    .line 855
    .local v2, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnWindowAttachListener;>;"
    if-eqz v2, :cond_1

    #@4
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@7
    move-result v3

    #@8
    if-lez v3, :cond_1

    #@a
    .line 856
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    #@1a
    .line 857
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    if-eqz p1, :cond_0

    #@1c
    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnWindowAttachListener;->onWindowAttached()V

    #@1f
    goto :goto_0

    #@20
    .line 858
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnWindowAttachListener;->onWindowDetached()V

    #@23
    goto :goto_0

    #@24
    .line 848
    .end local v0    # "listener":Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method final dispatchOnWindowFocusChange(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    #@0
    .prologue
    .line 871
    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    .line 873
    .local v2, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;>;"
    if-eqz v2, :cond_0

    #@4
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@7
    move-result v3

    #@8
    if-lez v3, :cond_0

    #@a
    .line 874
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    #@1a
    .line 875
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    invoke-interface {v0, p1}, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    #@1d
    goto :goto_0

    #@1e
    .line 866
    .end local v0    # "listener":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final dispatchOnWindowShown()V
    .locals 5

    #@0
    .prologue
    .line 959
    const/4 v4, 0x1

    #@1
    iput-boolean v4, p0, Landroid/view/ViewTreeObserver;->mWindowShown:Z

    #@3
    .line 960
    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@5
    .line 961
    .local v3, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnWindowShownListener;>;"
    if-eqz v3, :cond_1

    #@7
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    #@a
    move-result v4

    #@b
    if-lez v4, :cond_1

    #@d
    .line 962
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    #@10
    move-result-object v0

    #@11
    .line 964
    .local v0, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnWindowShownListener;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    #@14
    move-result v1

    #@15
    .line 965
    .local v1, "count":I
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@18
    .line 966
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Landroid/view/ViewTreeObserver$OnWindowShownListener;

    #@1e
    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnWindowShownListener;->onWindowShown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 965
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 969
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    #@27
    .line 958
    .end local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnWindowShownListener;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void

    #@28
    .line 968
    .restart local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnWindowShownListener;>;"
    :catchall_0
    move-exception v4

    #@29
    .line 969
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    #@2c
    .line 968
    throw v4
.end method

.method final hasComputeInternalInsetsListeners()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1028
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@3
    .line 1030
    .local v0, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    #@8
    move-result v2

    #@9
    if-lez v2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :cond_0
    return v1
.end method

.method final hasOnPreDrawListeners()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 924
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@7
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    #@a
    move-result v1

    #@b
    if-lez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isAlive()Z
    .locals 1

    #@0
    .prologue
    .line 832
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    #@2
    return v0
.end method

.method merge(Landroid/view/ViewTreeObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/ViewTreeObserver;

    #@0
    .prologue
    .line 341
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 342
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@6
    if-eqz v0, :cond_9

    #@8
    .line 343
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    #@f
    .line 349
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 350
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@15
    if-eqz v0, :cond_a

    #@17
    .line 351
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@19
    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@1b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    #@1e
    .line 357
    :cond_1
    :goto_1
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 358
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@24
    if-eqz v0, :cond_b

    #@26
    .line 359
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@28
    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2a
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    #@2d
    .line 365
    :cond_2
    :goto_2
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@2f
    if-eqz v0, :cond_3

    #@31
    .line 366
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@33
    if-eqz v0, :cond_c

    #@35
    .line 367
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@37
    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@39
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    #@3c
    .line 373
    :cond_3
    :goto_3
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@3e
    if-eqz v0, :cond_4

    #@40
    .line 374
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@42
    if-eqz v0, :cond_d

    #@44
    .line 375
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@46
    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@48
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    #@4b
    .line 381
    :cond_4
    :goto_4
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4d
    if-eqz v0, :cond_5

    #@4f
    .line 382
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@51
    if-eqz v0, :cond_e

    #@53
    .line 383
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@55
    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@57
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    #@5a
    .line 389
    :cond_5
    :goto_5
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@5c
    if-eqz v0, :cond_6

    #@5e
    .line 390
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@60
    if-eqz v0, :cond_f

    #@62
    .line 391
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@64
    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@66
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    #@69
    .line 397
    :cond_6
    :goto_6
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@6b
    if-eqz v0, :cond_7

    #@6d
    .line 398
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@6f
    if-eqz v0, :cond_10

    #@71
    .line 399
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@73
    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@75
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    #@78
    .line 405
    :cond_7
    :goto_7
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@7a
    if-eqz v0, :cond_8

    #@7c
    .line 406
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@7e
    if-eqz v0, :cond_11

    #@80
    .line 407
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@82
    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@84
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    #@87
    .line 413
    :cond_8
    :goto_8
    invoke-direct {p1}, Landroid/view/ViewTreeObserver;->kill()V

    #@8a
    .line 340
    return-void

    #@8b
    .line 345
    :cond_9
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@8d
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@8f
    goto :goto_0

    #@90
    .line 353
    :cond_a
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@92
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@94
    goto :goto_1

    #@95
    .line 361
    :cond_b
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@97
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@99
    goto :goto_2

    #@9a
    .line 369
    :cond_c
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@9c
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@9e
    goto :goto_3

    #@9f
    .line 377
    :cond_d
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@a1
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@a3
    goto :goto_4

    #@a4
    .line 385
    :cond_e
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a6
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a8
    goto :goto_5

    #@a9
    .line 393
    :cond_f
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@ab
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@ad
    goto :goto_6

    #@ae
    .line 401
    :cond_10
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@b0
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@b2
    goto :goto_7

    #@b3
    .line 409
    :cond_11
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@b5
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@b7
    goto :goto_8
.end method

.method public removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 551
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@3
    .line 550
    return-void
.end method

.method public removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@0
    .prologue
    .line 785
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 786
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 787
    return-void

    #@8
    .line 789
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@a
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    #@d
    .line 784
    return-void
.end method

.method public removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnDrawListener;

    #@0
    .prologue
    .line 675
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 676
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 677
    return-void

    #@8
    .line 679
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    .line 674
    return-void
.end method

.method public removeOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    #@0
    .prologue
    .line 808
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 809
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 810
    return-void

    #@8
    .line 812
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    .line 807
    return-void
.end method

.method public removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    #@0
    .prologue
    .line 513
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 514
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 515
    return-void

    #@8
    .line 517
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    .line 512
    return-void
.end method

.method public removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@0
    .prologue
    .line 564
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 565
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 566
    return-void

    #@8
    .line 568
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@a
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    #@d
    .line 563
    return-void
.end method

.method public removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@0
    .prologue
    .line 598
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 599
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 600
    return-void

    #@8
    .line 602
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@a
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    #@d
    .line 597
    return-void
.end method

.method public removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@0
    .prologue
    .line 709
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 710
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 711
    return-void

    #@8
    .line 713
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@a
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    #@d
    .line 708
    return-void
.end method

.method public removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    #@0
    .prologue
    .line 743
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 744
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 745
    return-void

    #@8
    .line 747
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    .line 742
    return-void
.end method

.method public removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    #@0
    .prologue
    .line 444
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 445
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 446
    return-void

    #@8
    .line 448
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    .line 443
    return-void
.end method

.method public removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    #@0
    .prologue
    .line 479
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 480
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 481
    return-void

    #@8
    .line 483
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    .line 478
    return-void
.end method

.method public removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnWindowShownListener;

    #@0
    .prologue
    .line 637
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    #@3
    .line 638
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 639
    return-void

    #@8
    .line 641
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    #@a
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    #@d
    .line 636
    return-void
.end method
