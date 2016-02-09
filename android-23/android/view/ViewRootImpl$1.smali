.class Landroid/view/ViewRootImpl$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 845
    iput-object p1, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method private toViewScreenState(I)I
    .locals 1
    .param p1, "displayState"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 879
    if-ne p1, v0, :cond_0

    #@3
    .line 880
    const/4 v0, 0x0

    #@4
    .line 879
    :cond_0
    return v0
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 875
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 6
    .param p1, "displayId"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 848
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    #@3
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    if-eqz v4, :cond_1

    #@7
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    #@9
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@b
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    #@e
    move-result v4

    #@f
    if-ne v4, p1, :cond_1

    #@11
    .line 849
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    #@13
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@15
    iget v2, v4, Landroid/view/View$AttachInfo;->mDisplayState:I

    #@17
    .line 850
    .local v2, "oldDisplayState":I
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    #@19
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    #@1b
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    #@1e
    move-result v0

    #@1f
    .line 851
    .local v0, "newDisplayState":I
    if-eq v2, v0, :cond_1

    #@21
    .line 852
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    #@23
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@25
    iput v0, v4, Landroid/view/View$AttachInfo;->mDisplayState:I

    #@27
    .line 853
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    #@29
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    #@2c
    .line 854
    if-eqz v2, :cond_1

    #@2e
    .line 855
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl$1;->toViewScreenState(I)I

    #@31
    move-result v3

    #@32
    .line 856
    .local v3, "oldScreenState":I
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$1;->toViewScreenState(I)I

    #@35
    move-result v1

    #@36
    .line 857
    .local v1, "newScreenState":I
    if-eq v3, v1, :cond_0

    #@38
    .line 858
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    #@3a
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@3c
    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    #@3f
    .line 860
    :cond_0
    if-ne v2, v5, :cond_1

    #@41
    .line 862
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    #@43
    iput-boolean v5, v4, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    #@45
    .line 863
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    #@47
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    #@4a
    .line 847
    .end local v0    # "newDisplayState":I
    .end local v1    # "newScreenState":I
    .end local v2    # "oldDisplayState":I
    .end local v3    # "oldScreenState":I
    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 871
    return-void
.end method
