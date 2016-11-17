.class Landroid/app/ActionBar$FollowOutOfActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FollowOutOfActionBar"
.end annotation


# instance fields
.field private final mContainer:Landroid/view/ViewGroup;

.field private final mFocusRoot:Landroid/view/ViewGroup;

.field private final mToolbar:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "focusRoot"    # Landroid/view/ViewGroup;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "toolbar"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1464
    iput-object p2, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mContainer:Landroid/view/ViewGroup;

    #@5
    .line 1465
    iput-object p3, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mToolbar:Landroid/view/ViewGroup;

    #@7
    .line 1466
    iput-object p1, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mFocusRoot:Landroid/view/ViewGroup;

    #@9
    .line 1463
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1471
    if-nez p2, :cond_0

    #@3
    .line 1472
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@6
    .line 1473
    iget-object v1, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mFocusRoot:Landroid/view/ViewGroup;

    #@8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 1474
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_1

    #@e
    .line 1475
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@11
    .line 1470
    .end local v0    # "focused":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    #@12
    .line 1477
    .restart local v0    # "focused":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mFocusRoot:Landroid/view/ViewGroup;

    #@14
    invoke-virtual {v1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@17
    goto :goto_0
.end method

.method public run()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1484
    iget-object v0, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mContainer:Landroid/view/ViewGroup;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1485
    iget-object v0, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mContainer:Landroid/view/ViewGroup;

    #@7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    #@a
    .line 1487
    :cond_0
    iget-object v0, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mToolbar:Landroid/view/ViewGroup;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1488
    iget-object v0, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mToolbar:Landroid/view/ViewGroup;

    #@10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    #@13
    .line 1483
    :cond_1
    return-void
.end method
