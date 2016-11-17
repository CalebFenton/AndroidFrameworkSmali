.class Lcom/android/internal/view/menu/CascadingMenuPopup$2;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@0
    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 104
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@2
    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get4(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 110
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@a
    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get4(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 111
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@16
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-set1(Lcom/android/internal/view/menu/CascadingMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;

    #@1d
    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@1f
    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get4(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;

    #@22
    move-result-object v0

    #@23
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@25
    invoke-static {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get0(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@2c
    .line 115
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@2f
    .line 108
    return-void
.end method
