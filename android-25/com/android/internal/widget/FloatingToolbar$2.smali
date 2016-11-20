.class Lcom/android/internal/widget/FloatingToolbar$2;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mNewRect:Landroid/graphics/Rect;

.field private final mOldRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/widget/FloatingToolbar;

    #@0
    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 108
    new-instance v0, Landroid/graphics/Rect;

    #@7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->mNewRect:Landroid/graphics/Rect;

    #@c
    .line 109
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->mOldRect:Landroid/graphics/Rect;

    #@13
    .line 106
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "newLeft"    # I
    .param p3, "newRight"    # I
    .param p4, "newTop"    # I
    .param p5, "newBottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldRight"    # I
    .param p8, "oldTop"    # I
    .param p9, "oldBottom"    # I

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->mNewRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    #@5
    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->mOldRect:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v0, p6, p7, p8, p9}, Landroid/graphics/Rect;->set(IIII)V

    #@a
    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    #@c
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->-get0(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->mNewRect:Landroid/graphics/Rect;

    #@18
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$2;->mOldRect:Landroid/graphics/Rect;

    #@1a
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 115
    :cond_0
    :goto_0
    return-void

    #@21
    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    #@23
    const/4 v1, 0x1

    #@24
    invoke-static {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;->-set0(Lcom/android/internal/widget/FloatingToolbar;Z)Z

    #@27
    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    #@29
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/FloatingToolbar;

    #@2c
    goto :goto_0
.end method
